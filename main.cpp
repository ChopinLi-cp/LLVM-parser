#include <iostream>
#include <llvm/IR/CallSite.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstVisitor.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/Debug.h>
#include <llvm/Support/DynamicLibrary.h>
#include <llvm/Support/Format.h>
#include <llvm/Support/ManagedStatic.h>
#include <llvm/Support/MathExtras.h>
#include <llvm/Support/Memory.h>
#include <llvm/Support/MemoryBuffer.h>
#include <llvm/Support/Path.h>
#include <llvm/Support/PrettyStackTrace.h>
#include <llvm/Support/Process.h>
#include <llvm/Support/Program.h>
#include <llvm/Support/Signals.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/raw_ostream.h>

#include "llvm/IR/ValueSymbolTable.h"

#include <llvm/IR/GetElementPtrTypeIterator.h>
#include <llvm/ADT/ArrayRef.h>

#include "llvmir-emul.h"

using namespace llvm;
using namespace std;

namespace retdec {
namespace llvmir_emul {
namespace {

template<typename T>
std::string llvmObjToString(const T *t) {
    std::string str;
    llvm::raw_string_ostream ss(str);
    if (t) {
        t->print(ss);
        cout << t << endl;
    } else {
        ss << "nullptr";
        cout << ss.str() << endl;
    }
    return ss.str();
}

//
//=============================================================================
// Binary Instruction Implementations
//=============================================================================
//

#define IMPLEMENT_BINARY_OPERATOR(OP, TY) \
case Type::TY##TyID: \
    Dest.TY##Val = Src1.TY##Val OP Src2.TY##Val; \
break

void executeFAddInst(
        GenericValue &Dest,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty) {
    switch (Ty->getTypeID()) {
        IMPLEMENT_BINARY_OPERATOR(+, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_BINARY_OPERATOR(+, Double);
        default:
            dbgs() << "Unhandled type for FAdd instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
}

void executeFSubInst(
        GenericValue &Dest,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    switch (Ty->getTypeID())
    {
        IMPLEMENT_BINARY_OPERATOR(-, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_BINARY_OPERATOR(-, Double);
        default:
            dbgs() << "Unhandled type for FSub instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
}

void executeFMulInst(
        GenericValue &Dest,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    switch (Ty->getTypeID())
    {
        IMPLEMENT_BINARY_OPERATOR(*, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_BINARY_OPERATOR(*, Double);
        default:
            dbgs() << "Unhandled type for FMul instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
}

void executeFDivInst(
        GenericValue &Dest,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    switch (Ty->getTypeID())
    {
        IMPLEMENT_BINARY_OPERATOR(/, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_BINARY_OPERATOR(/, Double);
        default:
            dbgs() << "Unhandled type for FDiv instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
}

void executeFRemInst(
        GenericValue &Dest,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    switch (Ty->getTypeID())
    {
        case Type::FloatTyID:
            Dest.FloatVal = fmod(Src1.FloatVal, Src2.FloatVal);
            break;
        case Type::X86_FP80TyID:
        case Type::DoubleTyID:
            Dest.DoubleVal = fmod(Src1.DoubleVal, Src2.DoubleVal);
            break;
        default:
            dbgs() << "Unhandled type for Rem instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
}

#define IMPLEMENT_INTEGER_ICMP(OP, TY) \
    case Type::IntegerTyID:  \
        Dest.IntVal = APInt(1,Src1.IntVal.OP(Src2.IntVal)); \
        break;

#define IMPLEMENT_VECTOR_INTEGER_ICMP(OP, TY)                              \
    case Type::VectorTyID:                                                 \
    {                                                                      \
        assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());      \
        Dest.AggregateVal.resize( Src1.AggregateVal.size() );              \
        for(uint32_t _i=0;_i<Src1.AggregateVal.size();_i++)                \
            Dest.AggregateVal[_i].IntVal = APInt(1,                        \
            Src1.AggregateVal[_i].IntVal.OP(Src2.AggregateVal[_i].IntVal));\
    } break;

// Handle pointers specially because they must be compared with only as much
// width as the host has.  We _do not_ want to be comparing 64 bit values when
// running on a 32-bit target, otherwise the upper 32 bits might mess up
// comparisons if they contain garbage.
// Matula: This may not be the case for emulation, but it will probable be ok.

#define IMPLEMENT_POINTER_ICMP(OP) \
	case Type::PointerTyID: \
		Dest.IntVal = APInt(1, *(reinterpret_cast<int *>(reinterpret_cast<intptr_t>(Src1.PointerVal))) OP \
				*(reinterpret_cast<int *>(reinterpret_cast<intptr_t>(Src2.PointerVal)))); \
		break;


GenericValue executeICMP_EQ(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(eq,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(eq,Ty);
        IMPLEMENT_POINTER_ICMP(==);
        default:
            dbgs() << "Unhandled type for ICMP_EQ predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_NE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(ne,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(ne,Ty);
        IMPLEMENT_POINTER_ICMP(!=);
        default:
            dbgs() << "Unhandled type for ICMP_EQ predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_ULT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(ult,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(ult,Ty);
        IMPLEMENT_POINTER_ICMP(<);
        default:
            dbgs() << "Unhandled type for ICMP_ULT predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_SLT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(slt,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(slt,Ty);
        IMPLEMENT_POINTER_ICMP(<);
        default:
            dbgs() << "Unhandled type for ICMP_SLT predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_UGT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(ugt,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(ugt,Ty);
        IMPLEMENT_POINTER_ICMP(>);
        default:
            dbgs() << "Unhandled type for ICMP_UGT predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_SGT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(sgt,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(sgt,Ty);
        IMPLEMENT_POINTER_ICMP(>);
        default:
            dbgs() << "Unhandled type for ICMP_SGT predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_ULE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(ule,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(ule,Ty);
        IMPLEMENT_POINTER_ICMP(<=);
        default:
            dbgs() << "Unhandled type for ICMP_ULE predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_SLE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(sle,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(sle,Ty);
        IMPLEMENT_POINTER_ICMP(<=);
        default:
            dbgs() << "Unhandled type for ICMP_SLE predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_UGE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(uge,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(uge,Ty);
        IMPLEMENT_POINTER_ICMP(>=);
        default:
            dbgs() << "Unhandled type for ICMP_UGE predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeICMP_SGE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_INTEGER_ICMP(sge,Ty);
        IMPLEMENT_VECTOR_INTEGER_ICMP(sge,Ty);
        IMPLEMENT_POINTER_ICMP(>=);
        default:
            dbgs() << "Unhandled type for ICMP_SGE predicate: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}


//
//=============================================================================
// Binary Instruction Implementations(Float)
//=============================================================================
//

#define IMPLEMENT_FCMP(OP, TY) \
	case Type::TY##TyID: \
		Dest.IntVal = APInt(1,Src1.TY##Val OP Src2.TY##Val); \
		break

#define IMPLEMENT_VECTOR_FCMP_T(OP, TY)                                 \
	assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());       \
	Dest.AggregateVal.resize( Src1.AggregateVal.size() );               \
	for( uint32_t _i=0;_i<Src1.AggregateVal.size();_i++)                \
		Dest.AggregateVal[_i].IntVal = APInt(1,                         \
		Src1.AggregateVal[_i].TY##Val OP Src2.AggregateVal[_i].TY##Val);\
	break;

#define IMPLEMENT_VECTOR_FCMP(OP)                                   \
	case Type::VectorTyID:                                          \
	if (cast<VectorType>(Ty)->getElementType()->isFloatTy())        \
	{                                                               \
		IMPLEMENT_VECTOR_FCMP_T(OP, Float);                         \
	}                                                               \
	else                                                            \
	{                                                               \
		IMPLEMENT_VECTOR_FCMP_T(OP, Double);                        \
	}

GenericValue executeFCMP_OEQ(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(==, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(==, Double);
        IMPLEMENT_VECTOR_FCMP(==);
        default:
            dbgs() << "Unhandled type for FCmp EQ instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

#define IMPLEMENT_SCALAR_NANS(TY, X,Y)                                \
	if (TY->isFloatTy())                                              \
	{                                                                 \
		if (X.FloatVal != X.FloatVal || Y.FloatVal != Y.FloatVal)     \
		{                                                             \
			Dest.IntVal = APInt(1,false);                             \
			return Dest;                                              \
		}                                                             \
	}                                                                 \
	else                                                              \
	{                                                                 \
		if (X.DoubleVal != X.DoubleVal || Y.DoubleVal != Y.DoubleVal) \
		{                                                             \
			Dest.IntVal = APInt(1,false);                             \
			return Dest;                                              \
		}                                                             \
	}

#define MASK_VECTOR_NANS_T(X,Y, TZ, FLAG)                                 \
	assert(X.AggregateVal.size() == Y.AggregateVal.size());               \
	Dest.AggregateVal.resize( X.AggregateVal.size() );                    \
	for( uint32_t _i=0;_i<X.AggregateVal.size();_i++)                     \
	{                                                                     \
		if (X.AggregateVal[_i].TZ##Val != X.AggregateVal[_i].TZ##Val ||   \
				Y.AggregateVal[_i].TZ##Val != Y.AggregateVal[_i].TZ##Val) \
				Dest.AggregateVal[_i].IntVal = APInt(1,FLAG);             \
		else                                                              \
		{                                                                 \
			Dest.AggregateVal[_i].IntVal = APInt(1,!FLAG);                \
		}                                                                 \
	}

#define MASK_VECTOR_NANS(TY, X,Y, FLAG)                                \
	if (TY->isVectorTy())                                              \
	{                                                                  \
		if (cast<VectorType>(TY)->getElementType()->isFloatTy())       \
		{                                                              \
			MASK_VECTOR_NANS_T(X, Y, Float, FLAG)                      \
		}                                                              \
		else                                                           \
		{                                                              \
			MASK_VECTOR_NANS_T(X, Y, Double, FLAG)                     \
		}                                                              \
	}

static GenericValue executeFCMP_ONE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    // if input is scalar value and Src1 or Src2 is NaN return false
    IMPLEMENT_SCALAR_NANS(Ty, Src1, Src2)
    // if vector input detect NaNs and fill mask
    MASK_VECTOR_NANS(Ty, Src1, Src2, false)
    GenericValue DestMask = Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(!=, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(!=, Double);
        IMPLEMENT_VECTOR_FCMP(!=);
        default:
            dbgs() << "Unhandled type for FCmp NE instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    // in vector case mask out NaN elements
    if (Ty->isVectorTy())
        for( size_t _i=0; _i<Src1.AggregateVal.size(); _i++)
            if (DestMask.AggregateVal[_i].IntVal == false)
                Dest.AggregateVal[_i].IntVal = APInt(1,false);

    return Dest;
}

GenericValue executeFCMP_OLE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(<=, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(<=, Double);
        IMPLEMENT_VECTOR_FCMP(<=);
        default:
            dbgs() << "Unhandled type for FCmp LE instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeFCMP_OGE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(>=, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(>=, Double);
        IMPLEMENT_VECTOR_FCMP(>=);
        default:
            dbgs() << "Unhandled type for FCmp GE instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeFCMP_OLT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(<, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(<, Double);
        IMPLEMENT_VECTOR_FCMP(<);
        default:
            dbgs() << "Unhandled type for FCmp LT instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

GenericValue executeFCMP_OGT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    switch (Ty->getTypeID())
    {
        IMPLEMENT_FCMP(>, Float);
        case Type::X86_FP80TyID:
        IMPLEMENT_FCMP(>, Double);
        IMPLEMENT_VECTOR_FCMP(>);
        default:
            dbgs() << "Unhandled type for FCmp GT instruction: " << *Ty << "\n";
            llvm_unreachable(nullptr);
    }
    return Dest;
}

#define IMPLEMENT_UNORDERED(TY, X,Y)                                         \
	if (TY->isFloatTy())                                                     \
	{                                                                        \
		if (X.FloatVal != X.FloatVal || Y.FloatVal != Y.FloatVal)            \
		{                                                                    \
			Dest.IntVal = APInt(1,true);                                     \
			return Dest;                                                     \
		}                                                                    \
	} else if (X.DoubleVal != X.DoubleVal || Y.DoubleVal != Y.DoubleVal)     \
	{                                                                        \
		Dest.IntVal = APInt(1,true);                                         \
		return Dest;                                                         \
	}

#define IMPLEMENT_VECTOR_UNORDERED(TY, X, Y, FUNC)                           \
	if (TY->isVectorTy())                                                    \
	{                                                                        \
		GenericValue DestMask = Dest;                                        \
		Dest = FUNC(Src1, Src2, Ty);                                         \
		for (size_t _i = 0; _i < Src1.AggregateVal.size(); _i++)             \
			if (DestMask.AggregateVal[_i].IntVal == true)                    \
				Dest.AggregateVal[_i].IntVal = APInt(1, true);               \
		return Dest;                                                         \
	}

GenericValue executeFCMP_UEQ(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_OEQ)
    return executeFCMP_OEQ(Src1, Src2, Ty);
}

GenericValue executeFCMP_UNE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_ONE)
    return executeFCMP_ONE(Src1, Src2, Ty);
}

GenericValue executeFCMP_ULE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_OLE)
    return executeFCMP_OLE(Src1, Src2, Ty);
}

GenericValue executeFCMP_UGE(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_OGE)
    return executeFCMP_OGE(Src1, Src2, Ty);
}

GenericValue executeFCMP_ULT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_OLT)
    return executeFCMP_OLT(Src1, Src2, Ty);
}

GenericValue executeFCMP_UGT(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    IMPLEMENT_UNORDERED(Ty, Src1, Src2)
    MASK_VECTOR_NANS(Ty, Src1, Src2, true)
    IMPLEMENT_VECTOR_UNORDERED(Ty, Src1, Src2, executeFCMP_OGT)
    return executeFCMP_OGT(Src1, Src2, Ty);
}

GenericValue executeFCMP_ORD(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    if(Ty->isVectorTy())
    {
        assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());
        Dest.AggregateVal.resize( Src1.AggregateVal.size() );
        if (cast<VectorType>(Ty)->getElementType()->isFloatTy())
        {
            for( size_t _i=0;_i<Src1.AggregateVal.size();_i++)
                Dest.AggregateVal[_i].IntVal = APInt(
                        1,
                        ( (Src1.AggregateVal[_i].FloatVal ==
                           Src1.AggregateVal[_i].FloatVal) &&
                          (Src2.AggregateVal[_i].FloatVal ==
                           Src2.AggregateVal[_i].FloatVal)));
        }
        else
        {
            for( size_t _i=0;_i<Src1.AggregateVal.size();_i++)
                Dest.AggregateVal[_i].IntVal = APInt(
                        1,
                        ( (Src1.AggregateVal[_i].DoubleVal ==
                           Src1.AggregateVal[_i].DoubleVal) &&
                          (Src2.AggregateVal[_i].DoubleVal ==
                           Src2.AggregateVal[_i].DoubleVal)));
        }
    }
    else if (Ty->isFloatTy())
    {
        Dest.IntVal = APInt(1,(Src1.FloatVal == Src1.FloatVal &&
                               Src2.FloatVal == Src2.FloatVal));
    }
    else
    {
        Dest.IntVal = APInt(1,(Src1.DoubleVal == Src1.DoubleVal &&
                               Src2.DoubleVal == Src2.DoubleVal));
    }
    return Dest;
}

GenericValue executeFCMP_UNO(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Dest;
    if(Ty->isVectorTy())
    {
        assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());
        Dest.AggregateVal.resize( Src1.AggregateVal.size() );
        if (cast<VectorType>(Ty)->getElementType()->isFloatTy())
        {
            for( size_t _i=0;_i<Src1.AggregateVal.size();_i++)
                Dest.AggregateVal[_i].IntVal = APInt(
                        1,
                        ( (Src1.AggregateVal[_i].FloatVal !=
                           Src1.AggregateVal[_i].FloatVal) ||
                          (Src2.AggregateVal[_i].FloatVal !=
                           Src2.AggregateVal[_i].FloatVal)));
        }
        else
        {
            for( size_t _i=0;_i<Src1.AggregateVal.size();_i++)
                Dest.AggregateVal[_i].IntVal = APInt(1,
                                                     ( (Src1.AggregateVal[_i].DoubleVal !=
                                                        Src1.AggregateVal[_i].DoubleVal) ||
                                                       (Src2.AggregateVal[_i].DoubleVal !=
                                                        Src2.AggregateVal[_i].DoubleVal)));
        }
    }
    else if (Ty->isFloatTy())
    {
        Dest.IntVal = APInt(1,(Src1.FloatVal != Src1.FloatVal ||
                               Src2.FloatVal != Src2.FloatVal));
    }
    else
    {
        Dest.IntVal = APInt(1,(Src1.DoubleVal != Src1.DoubleVal ||
                               Src2.DoubleVal != Src2.DoubleVal));
    }
    return Dest;
}

GenericValue executeFCMP_BOOL(
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty,
        const bool val)
{
    GenericValue Dest;
    if(Ty->isVectorTy())
    {
        assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());
        Dest.AggregateVal.resize( Src1.AggregateVal.size() );
        for( size_t _i=0; _i<Src1.AggregateVal.size(); _i++)
        {
            Dest.AggregateVal[_i].IntVal = APInt(1,val);
        }
    }
    else
    {
        Dest.IntVal = APInt(1, val);
    }

    return Dest;
}

GenericValue executeCmpInst(
        unsigned predicate,
        GenericValue Src1,
        GenericValue Src2,
        Type *Ty)
{
    GenericValue Result;
    switch (predicate)
    {
        case ICmpInst::ICMP_EQ:    return executeICMP_EQ(Src1, Src2, Ty);
        case ICmpInst::ICMP_NE:    return executeICMP_NE(Src1, Src2, Ty);
        case ICmpInst::ICMP_UGT:   return executeICMP_UGT(Src1, Src2, Ty);
        case ICmpInst::ICMP_SGT:   return executeICMP_SGT(Src1, Src2, Ty);
        case ICmpInst::ICMP_ULT:   return executeICMP_ULT(Src1, Src2, Ty);
        case ICmpInst::ICMP_SLT:   return executeICMP_SLT(Src1, Src2, Ty);
        case ICmpInst::ICMP_UGE:   return executeICMP_UGE(Src1, Src2, Ty);
        case ICmpInst::ICMP_SGE:   return executeICMP_SGE(Src1, Src2, Ty);
        case ICmpInst::ICMP_ULE:   return executeICMP_ULE(Src1, Src2, Ty);
        case ICmpInst::ICMP_SLE:   return executeICMP_SLE(Src1, Src2, Ty);
        case FCmpInst::FCMP_ORD:   return executeFCMP_ORD(Src1, Src2, Ty);
        case FCmpInst::FCMP_UNO:   return executeFCMP_UNO(Src1, Src2, Ty);
        case FCmpInst::FCMP_OEQ:   return executeFCMP_OEQ(Src1, Src2, Ty);
        case FCmpInst::FCMP_UEQ:   return executeFCMP_UEQ(Src1, Src2, Ty);
        case FCmpInst::FCMP_ONE:   return executeFCMP_ONE(Src1, Src2, Ty);
        case FCmpInst::FCMP_UNE:   return executeFCMP_UNE(Src1, Src2, Ty);
        case FCmpInst::FCMP_OLT:   return executeFCMP_OLT(Src1, Src2, Ty);
        case FCmpInst::FCMP_ULT:   return executeFCMP_ULT(Src1, Src2, Ty);
        case FCmpInst::FCMP_OGT:   return executeFCMP_OGT(Src1, Src2, Ty);
        case FCmpInst::FCMP_UGT:   return executeFCMP_UGT(Src1, Src2, Ty);
        case FCmpInst::FCMP_OLE:   return executeFCMP_OLE(Src1, Src2, Ty);
        case FCmpInst::FCMP_ULE:   return executeFCMP_ULE(Src1, Src2, Ty);
        case FCmpInst::FCMP_OGE:   return executeFCMP_OGE(Src1, Src2, Ty);
        case FCmpInst::FCMP_UGE:   return executeFCMP_UGE(Src1, Src2, Ty);
        case FCmpInst::FCMP_FALSE: return executeFCMP_BOOL(Src1, Src2, Ty, false);
        case FCmpInst::FCMP_TRUE:  return executeFCMP_BOOL(Src1, Src2, Ty, true);
        default:
            dbgs() << "Unhandled Cmp predicate\n";
            llvm_unreachable(nullptr);
    }
    return Result;
}

//
//=============================================================================
// Ternary Instruction Implementations
//=============================================================================
//

GenericValue executeSelectInst(
        GenericValue Src1,
        GenericValue Src2,
        GenericValue Src3,
        Type *Ty)
{
    GenericValue Dest;
    if(Ty->isVectorTy())
    {
        assert(Src1.AggregateVal.size() == Src2.AggregateVal.size());
        assert(Src2.AggregateVal.size() == Src3.AggregateVal.size());
        Dest.AggregateVal.resize( Src1.AggregateVal.size() );
        for (size_t i = 0; i < Src1.AggregateVal.size(); ++i)
            Dest.AggregateVal[i] = (Src1.AggregateVal[i].IntVal == 0) ?
                                   Src3.AggregateVal[i] : Src2.AggregateVal[i];
    }
    else
    {
        Dest = (Src1.IntVal == 0) ? Src3 : Src2;
    }
    return Dest;
}

//
//=============================================================================
// Terminator Instruction Implementations
//=============================================================================
//

// switchToNewBasicBlock - This method is used to jump to a new basic block.
// This function handles the actual updating of block and instruction iterators
// as well as execution of all of the PHI nodes in the destination block.
//
// This method does this because all of the PHI nodes must be executed
// atomically, reading their inputs before any of the results are updated.  Not
// doing this can cause problems if the PHI nodes depend on other PHI nodes for
// their inputs.  If the input PHI node is updated before it is read, incorrect
// results can happen.  Thus we use a two phase approach.
//
void switchToNewBasicBlock(
        BasicBlock* Dest,
        LocalExecutionContext& SF,
        GlobalExecutionContext& GC)
{
    BasicBlock *PrevBB = SF.curBB;      // Remember where we came from...
    SF.curBB   = Dest;                  // Update CurBB to branch destination
    SF.curInst = SF.curBB->begin();     // Update new instruction ptr...

    if (!isa<PHINode>(SF.curInst))
    {
        return;  // Nothing fancy to do
    }

    // Loop over all of the PHI nodes in the current block, reading their inputs.
    std::vector<GenericValue> ResultValues;

    for (; PHINode *PN = dyn_cast<PHINode>(SF.curInst); ++SF.curInst)
    {
        // Search for the value corresponding to this previous bb...
        int i = PN->getBasicBlockIndex(PrevBB);
        assert(i != -1 && "PHINode doesn't contain entry for predecessor??");
        Value *IncomingValue = PN->getIncomingValue(i);

        // Save the incoming value for this PHI node...
        ResultValues.push_back(GC.getOperandValue(IncomingValue, SF));
    }

    // Now loop over all of the PHI nodes setting their values...
    SF.curInst = SF.curBB->begin();
    for (unsigned i = 0; isa<PHINode>(SF.curInst); ++SF.curInst, ++i)
    {
        PHINode *PN = cast<PHINode>(SF.curInst);
        GC.setValue(PN, ResultValues[i]);
    }
}

//
//=============================================================================
// Memory Instruction Implementations
//=============================================================================
//

/**
* getElementOffset - The workhorse for getelementptr.
*/
GenericValue executeGEPOperation(
        Value *Ptr,
        gep_type_iterator I,
        gep_type_iterator E,
        LocalExecutionContext& SF,
        GlobalExecutionContext& GC)
{
    assert(Ptr->getType()->isPointerTy()
           && "Cannot getElementOffset of a nonpointer type!");

    const DataLayout *DL = GC.getModule()->getDataLayout(); // **** change auto to const

    uint64_t Total = 0;

    for (; I != E; ++I)
    {
        if (StructType *STy = NULL) //****I.getStructTypeOrNull()
        {
            const StructLayout *SLO = DL->getStructLayout(STy); // **** change . to ->

            const ConstantInt *CPU = cast<ConstantInt>(I.getOperand());
            unsigned Index = unsigned(CPU->getZExtValue());

            Total += SLO->getElementOffset(Index);
        }
        else
        {
            // Get the index number for the array... which must be long type...
            GenericValue IdxGV = GC.getOperandValue(I.getOperand(), SF);

            int64_t Idx;
            unsigned BitWidth = cast<IntegerType>(
                    I.getOperand()->getType())->getBitWidth();
            if (BitWidth == 32)
            {
                Idx = static_cast<int64_t>(static_cast<int32_t>(IdxGV.IntVal.getZExtValue()));
            }
            else
            {
                assert(BitWidth == 64 && "Invalid index type for getelementptr");
                Idx = static_cast<int64_t>(IdxGV.IntVal.getZExtValue());
            }
            Total += DL->getTypeAllocSize(I.getIndexedType()) * Idx; // **** change . to ->
        }
    }

    GenericValue Result;
    Result.PointerVal = static_cast<char*>(GC.getOperandValue(Ptr, SF).PointerVal) + Total;
    return Result;
}

//
//=============================================================================
// Conversion Instruction Implementations
//=============================================================================
//

GenericValue executeTruncInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);
    Type *SrcTy = SrcVal->getType();
    if (SrcTy->isVectorTy())
    {
        Type *DstVecTy = DstTy->getScalarType();
        unsigned DBitWidth = cast<IntegerType>(DstVecTy)->getBitWidth();
        unsigned NumElts = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal
        Dest.AggregateVal.resize(NumElts);
        for (unsigned i = 0; i < NumElts; i++)
            Dest.AggregateVal[i].IntVal = Src.AggregateVal[i].IntVal.trunc(DBitWidth);
    }
    else
    {
        IntegerType *DITy = cast<IntegerType>(DstTy);
        unsigned DBitWidth = DITy->getBitWidth();
        Dest.IntVal = Src.IntVal.trunc(DBitWidth);
    }
    return Dest;
}

GenericValue executeSExtInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    Type *SrcTy = SrcVal->getType();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);
    if (SrcTy->isVectorTy())
    {
        Type *DstVecTy = DstTy->getScalarType();
        unsigned DBitWidth = cast<IntegerType>(DstVecTy)->getBitWidth();
        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal.
        Dest.AggregateVal.resize(size);
        for (unsigned i = 0; i < size; i++)
            Dest.AggregateVal[i].IntVal = Src.AggregateVal[i].IntVal.sext(DBitWidth);
    }
    else
    {
        auto *DITy = cast<IntegerType>(DstTy);
        unsigned DBitWidth = DITy->getBitWidth();
        Dest.IntVal = Src.IntVal.sext(DBitWidth);
    }
    return Dest;
}

GenericValue executeZExtInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    Type *SrcTy = SrcVal->getType();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);
    if (SrcTy->isVectorTy())
    {
        Type *DstVecTy = DstTy->getScalarType();
        unsigned DBitWidth = cast<IntegerType>(DstVecTy)->getBitWidth();

        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal.
        Dest.AggregateVal.resize(size);
        for (unsigned i = 0; i < size; i++)
            Dest.AggregateVal[i].IntVal = Src.AggregateVal[i].IntVal.zext(DBitWidth);
    }
    else
    {
        auto *DITy = cast<IntegerType>(DstTy);
        unsigned DBitWidth = DITy->getBitWidth();
        Dest.IntVal = Src.IntVal.zextOrTrunc(DBitWidth);
    }
    return Dest;
}

GenericValue executeFPTruncInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcVal->getType()->getTypeID() == Type::VectorTyID)
    {
        assert(SrcVal->getType()->getScalarType()->isDoubleTy() &&
               DstTy->getScalarType()->isFloatTy() &&
               "Invalid FPTrunc instruction");

        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal.
        Dest.AggregateVal.resize(size);
        for (unsigned i = 0; i < size; i++)
        {
            Dest.AggregateVal[i].FloatVal = static_cast<float>(Src.AggregateVal[i].DoubleVal);
        }
    }
    else if (SrcVal->getType()->isDoubleTy() && DstTy->isFloatTy())
    {
        Dest.FloatVal = static_cast<float>(Src.DoubleVal);
    }
    else if (SrcVal->getType()->isX86_FP80Ty() && DstTy->isFloatTy())
    {
        Dest.FloatVal = static_cast<float>(Src.DoubleVal);
    }
    else if (SrcVal->getType()->isX86_FP80Ty() && DstTy->isDoubleTy())
    {
        Dest.DoubleVal = Src.DoubleVal;
    }
    else
    {
        assert(false && "some other type combo");
    }

    return Dest;
}

GenericValue executeFPExtInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcVal->getType()->getTypeID() == Type::VectorTyID)
    {
        assert(SrcVal->getType()->getScalarType()->isFloatTy() &&
               DstTy->getScalarType()->isDoubleTy() && "Invalid FPExt instruction");

        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal.
        Dest.AggregateVal.resize(size);
        for (unsigned i = 0; i < size; i++)
            Dest.AggregateVal[i].DoubleVal = static_cast<double>(Src.AggregateVal[i].FloatVal);
    }
    else if (SrcVal->getType()->isFloatTy()
             && (DstTy->isDoubleTy() || DstTy->isX86_FP80Ty()))
    {
        Dest.DoubleVal = static_cast<double>(Src.FloatVal);
    }
    else if (SrcVal->getType()->isDoubleTy() && DstTy->isX86_FP80Ty())
    {
        Dest.DoubleVal = Src.DoubleVal;
    }
    else
    {
        assert(false && "some other type combo");
    }

    return Dest;
}

GenericValue executeFPToUIInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    Type *SrcTy = SrcVal->getType();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcTy->getTypeID() == Type::VectorTyID)
    {
        Type *DstVecTy = DstTy->getScalarType();
        Type *SrcVecTy = SrcTy->getScalarType();
        uint32_t DBitWidth = cast<IntegerType>(DstVecTy)->getBitWidth();
        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal.
        Dest.AggregateVal.resize(size);

        if (SrcVecTy->getTypeID() == Type::FloatTyID)
        {
            assert(SrcVecTy->isFloatingPointTy() && "Invalid FPToUI instruction");
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].IntVal = APIntOps::RoundFloatToAPInt(
                        Src.AggregateVal[i].FloatVal, DBitWidth);
        }
        else
        {
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].IntVal = APIntOps::RoundDoubleToAPInt(
                        Src.AggregateVal[i].DoubleVal, DBitWidth);
        }
    }
    else
    {
        // scalar
        uint32_t DBitWidth = cast<IntegerType>(DstTy)->getBitWidth();
        assert(SrcTy->isFloatingPointTy() && "Invalid FPToUI instruction");

        if (SrcTy->getTypeID() == Type::FloatTyID)
        {
            Dest.IntVal = APIntOps::RoundFloatToAPInt(Src.FloatVal, DBitWidth);
        }
        else
        {
            Dest.IntVal = APIntOps::RoundDoubleToAPInt(Src.DoubleVal, DBitWidth);
        }
    }

    return Dest;
}

GenericValue executeFPToSIInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    Type *SrcTy = SrcVal->getType();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcTy->getTypeID() == Type::VectorTyID)
    {
        Type *DstVecTy = DstTy->getScalarType();
        Type *SrcVecTy = SrcTy->getScalarType();
        uint32_t DBitWidth = cast<IntegerType>(DstVecTy)->getBitWidth();
        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal
        Dest.AggregateVal.resize(size);

        if (SrcVecTy->getTypeID() == Type::FloatTyID)
        {
            assert(SrcVecTy->isFloatingPointTy() && "Invalid FPToSI instruction");
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].IntVal = APIntOps::RoundFloatToAPInt(
                        Src.AggregateVal[i].FloatVal, DBitWidth);
        }
        else
        {
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].IntVal = APIntOps::RoundDoubleToAPInt(
                        Src.AggregateVal[i].DoubleVal, DBitWidth);
        }
    }
    else
    {
        // scalar
        unsigned DBitWidth = cast<IntegerType>(DstTy)->getBitWidth();
        assert(SrcTy->isFloatingPointTy() && "Invalid FPToSI instruction");

        if (SrcTy->getTypeID() == Type::FloatTyID)
        {
            Dest.IntVal = APIntOps::RoundFloatToAPInt(Src.FloatVal, DBitWidth);
        }
        else
        {
            Dest.IntVal = APIntOps::RoundDoubleToAPInt(Src.DoubleVal, DBitWidth);
        }
    }
    return Dest;
}

GenericValue executeUIToFPInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcVal->getType()->getTypeID() == Type::VectorTyID)
    {
        Type *DstVecTy = DstTy->getScalarType();
        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal
        Dest.AggregateVal.resize(size);

        if (DstVecTy->getTypeID() == Type::FloatTyID)
        {
            assert(DstVecTy->isFloatingPointTy()
                   && "Invalid UIToFP instruction");
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].FloatVal = APIntOps::RoundAPIntToFloat(
                        Src.AggregateVal[i].IntVal);
        }
        else
        {
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].DoubleVal = APIntOps::RoundAPIntToDouble(
                        Src.AggregateVal[i].IntVal);
        }
    }
    else
    {
        // scalar
        assert(DstTy->isFloatingPointTy() && "Invalid UIToFP instruction");
        if (DstTy->getTypeID() == Type::FloatTyID)
        {
            Dest.FloatVal = APIntOps::RoundAPIntToFloat(Src.IntVal);
        }
        else
        {
            Dest.DoubleVal = APIntOps::RoundAPIntToDouble(Src.IntVal);
        }
    }
    return Dest;
}

GenericValue executeSIToFPInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if (SrcVal->getType()->getTypeID() == Type::VectorTyID)
    {
        Type *DstVecTy = DstTy->getScalarType();
        unsigned size = Src.AggregateVal.size();
        // the sizes of src and dst vectors must be equal
        Dest.AggregateVal.resize(size);

        if (DstVecTy->getTypeID() == Type::FloatTyID)
        {
            assert(DstVecTy->isFloatingPointTy() && "Invalid SIToFP instruction");
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].FloatVal =
                        APIntOps::RoundSignedAPIntToFloat(Src.AggregateVal[i].IntVal);
        }
        else
        {
            for (unsigned i = 0; i < size; i++)
                Dest.AggregateVal[i].DoubleVal =
                        APIntOps::RoundSignedAPIntToDouble(Src.AggregateVal[i].IntVal);
        }
    }
    else
    {
        // scalar
        assert(DstTy->isFloatingPointTy() && "Invalid SIToFP instruction");

        if (DstTy->getTypeID() == Type::FloatTyID)
        {
            Dest.FloatVal = APIntOps::RoundSignedAPIntToFloat(Src.IntVal);
        }
        else
        {
            Dest.DoubleVal = APIntOps::RoundSignedAPIntToDouble(Src.IntVal);
        }
    }

    return Dest;
}

GenericValue executePtrToIntInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    uint32_t DBitWidth = cast<IntegerType>(DstTy)->getBitWidth();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);
    assert(SrcVal->getType()->isPointerTy() && "Invalid PtrToInt instruction");

    Dest.IntVal = APInt(DBitWidth, reinterpret_cast<intptr_t>(Src.PointerVal));
    return Dest;
}

GenericValue executeIntToPtrInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);
    assert(DstTy->isPointerTy() && "Invalid PtrToInt instruction");

    uint32_t PtrSize = SF.getModule()->getDataLayout()->getPointerSizeInBits(); // **** change the second . to ->
    if (PtrSize != Src.IntVal.getBitWidth())
    {
        Src.IntVal = Src.IntVal.zextOrTrunc(PtrSize);
    }

    Dest.PointerVal = PointerTy(static_cast<intptr_t>(Src.IntVal.getZExtValue()));
    return Dest;
}

GenericValue executeBitCastInst(
        Value *SrcVal,
        Type *DstTy,
        LocalExecutionContext &SF,
        GlobalExecutionContext& GC)
{
    // This instruction supports bitwise conversion of vectors to integers and
    // to vectors of other types (as long as they have the same size)
    Type *SrcTy = SrcVal->getType();
    GenericValue Dest, Src = GC.getOperandValue(SrcVal, SF);

    if ((SrcTy->getTypeID() == Type::VectorTyID)
        || (DstTy->getTypeID() == Type::VectorTyID))
    {
        // vector src bitcast to vector dst or vector src bitcast to scalar dst or
        // scalar src bitcast to vector dst
        bool isLittleEndian = SF.getModule()->getDataLayout()->isLittleEndian(); // **** change the second . to ->
        GenericValue TempDst, TempSrc, SrcVec;
        Type *SrcElemTy;
        Type *DstElemTy;
        unsigned SrcBitSize;
        unsigned DstBitSize;
        unsigned SrcNum;
        unsigned DstNum;

        if (SrcTy->getTypeID() == Type::VectorTyID)
        {
            SrcElemTy = SrcTy->getScalarType();
            SrcBitSize = SrcTy->getScalarSizeInBits();
            SrcNum = Src.AggregateVal.size();
            SrcVec = Src;
        }
        else
        {
            // if src is scalar value, make it vector <1 x type>
            SrcElemTy = SrcTy;
            SrcBitSize = SrcTy->getPrimitiveSizeInBits();
            SrcNum = 1;
            SrcVec.AggregateVal.push_back(Src);
        }

        if (DstTy->getTypeID() == Type::VectorTyID)
        {
            DstElemTy = DstTy->getScalarType();
            DstBitSize = DstTy->getScalarSizeInBits();
            DstNum = (SrcNum * SrcBitSize) / DstBitSize;
        }
        else
        {
            DstElemTy = DstTy;
            DstBitSize = DstTy->getPrimitiveSizeInBits();
            DstNum = 1;
        }

        if (SrcNum * SrcBitSize != DstNum * DstBitSize)
            llvm_unreachable("Invalid BitCast");

        // If src is floating point, cast to integer first.
        TempSrc.AggregateVal.resize(SrcNum);
        if (SrcElemTy->isFloatTy())
        {
            for (unsigned i = 0; i < SrcNum; i++)
                TempSrc.AggregateVal[i].IntVal = APInt::floatToBits(
                        SrcVec.AggregateVal[i].FloatVal);

        }
        else if (SrcElemTy->isDoubleTy() || SrcElemTy->isX86_FP80Ty())
        {
            for (unsigned i = 0; i < SrcNum; i++)
                TempSrc.AggregateVal[i].IntVal = APInt::doubleToBits(
                        SrcVec.AggregateVal[i].DoubleVal);
        }
        else if (SrcElemTy->isIntegerTy())
        {
            for (unsigned i = 0; i < SrcNum; i++)
                TempSrc.AggregateVal[i].IntVal = SrcVec.AggregateVal[i].IntVal;
        }
        else
        {
            // Pointers are not allowed as the element type of vector.
            llvm_unreachable("Invalid Bitcast");
        }

        // now TempSrc is integer type vector
        if (DstNum < SrcNum)
        {
            // Example: bitcast <4 x i32> <i32 0, i32 1, i32 2, i32 3> to <2 x i64>
            unsigned Ratio = SrcNum / DstNum;
            unsigned SrcElt = 0;
            for (unsigned i = 0; i < DstNum; i++)
            {
                GenericValue Elt;
                Elt.IntVal = 0;
                Elt.IntVal = Elt.IntVal.zext(DstBitSize);
                unsigned ShiftAmt =
                        isLittleEndian ? 0 : SrcBitSize * (Ratio - 1);
                for (unsigned j = 0; j < Ratio; j++)
                {
                    APInt Tmp;
                    Tmp = Tmp.zext(SrcBitSize);
                    Tmp = TempSrc.AggregateVal[SrcElt++].IntVal;
                    Tmp = Tmp.zext(DstBitSize);
                    Tmp = Tmp.shl(ShiftAmt);
                    ShiftAmt += isLittleEndian ? SrcBitSize : -SrcBitSize;
                    Elt.IntVal |= Tmp;
                }
                TempDst.AggregateVal.push_back(Elt);
            }
        }
        else
        {
            // Example: bitcast <2 x i64> <i64 0, i64 1> to <4 x i32>
            unsigned Ratio = DstNum / SrcNum;
            for (unsigned i = 0; i < SrcNum; i++)
            {
                unsigned ShiftAmt =
                        isLittleEndian ? 0 : DstBitSize * (Ratio - 1);
                for (unsigned j = 0; j < Ratio; j++)
                {
                    GenericValue Elt;
                    Elt.IntVal = Elt.IntVal.zext(SrcBitSize);
                    Elt.IntVal = TempSrc.AggregateVal[i].IntVal;
                    Elt.IntVal = Elt.IntVal.lshr(ShiftAmt);
                    // it could be DstBitSize == SrcBitSize, so check it
                    if (DstBitSize < SrcBitSize)
                        Elt.IntVal = Elt.IntVal.trunc(DstBitSize);
                    ShiftAmt += isLittleEndian ? DstBitSize : -DstBitSize;
                    TempDst.AggregateVal.push_back(Elt);
                }
            }
        }

        // convert result from integer to specified type
        if (DstTy->getTypeID() == Type::VectorTyID)
        {
            if (DstElemTy->isDoubleTy())
            {
                Dest.AggregateVal.resize(DstNum);
                for (unsigned i = 0; i < DstNum; i++)
                    Dest.AggregateVal[i].DoubleVal =
                            TempDst.AggregateVal[i].IntVal.bitsToDouble();
            }
            else if (DstElemTy->isFloatTy())
            {
                Dest.AggregateVal.resize(DstNum);
                for (unsigned i = 0; i < DstNum; i++)
                    Dest.AggregateVal[i].FloatVal =
                            TempDst.AggregateVal[i].IntVal.bitsToFloat();
            }
            else
            {
                Dest = TempDst;
            }
        }
        else
        {
            if (DstElemTy->isDoubleTy())
                Dest.DoubleVal = TempDst.AggregateVal[0].IntVal.bitsToDouble();
            else if (DstElemTy->isFloatTy())
            {
                Dest.FloatVal = TempDst.AggregateVal[0].IntVal.bitsToFloat();
            }
            else
            {
                Dest.IntVal = TempDst.AggregateVal[0].IntVal;
            }
        }
    }
    else
    { //  if ((SrcTy->getTypeID() == Type::VectorTyID) ||
        //     (DstTy->getTypeID() == Type::VectorTyID))

        // scalar src bitcast to scalar dst
        if (DstTy->isPointerTy())
        {
            assert(SrcTy->isPointerTy() && "Invalid BitCast");
            Dest.PointerVal = Src.PointerVal;
        }
        else if (DstTy->isIntegerTy())
        {
            if (SrcTy->isFloatTy())
            {
                Dest.IntVal = APInt::floatToBits(Src.FloatVal);
            }
                // FP128 uses double values.
            else if (SrcTy->isDoubleTy() || SrcTy->isFP128Ty())
            {
                Dest.IntVal = APInt::doubleToBits(Src.DoubleVal);
            }
            else if (SrcTy->isIntegerTy())
            {
                Dest.IntVal = Src.IntVal;
            }
            else
            {
                llvm_unreachable("Invalid BitCast");
            }
        }
        else if (DstTy->isFloatTy())
        {
            if (SrcTy->isIntegerTy())
                Dest.FloatVal = Src.IntVal.bitsToFloat();
            else
            {
                Dest.FloatVal = Src.FloatVal;
            }
        }
            // FP128 uses double values.
        else if (DstTy->isDoubleTy() || DstTy->isFP128Ty())
        {
            if (SrcTy->isIntegerTy())
            {
                Dest.DoubleVal = Src.IntVal.bitsToDouble();
            }
            else
            {
                Dest.DoubleVal = Src.DoubleVal;
            }
        }
        else
        {
            llvm_unreachable("Invalid Bitcast");
        }
    }

    return Dest;
}

//
//=============================================================================
// Misc
//=============================================================================
//

llvm::GenericValue getConstantExprValue(
        llvm::ConstantExpr* CE,
        LocalExecutionContext& SF,
        GlobalExecutionContext& GC)
{
    switch (CE->getOpcode())
    {
        case Instruction::Trunc:
            return executeTruncInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::ZExt:
            return executeZExtInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::SExt:
            return executeSExtInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::FPTrunc:
            return executeFPTruncInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::FPExt:
            return executeFPExtInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::UIToFP:
            return executeUIToFPInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::SIToFP:
            return executeSIToFPInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::FPToUI:
            return executeFPToUIInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::FPToSI:
            return executeFPToSIInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::PtrToInt:
            return executePtrToIntInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::IntToPtr:
            return executeIntToPtrInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::BitCast:
            return executeBitCastInst(CE->getOperand(0), CE->getType(), SF, GC);
        case Instruction::GetElementPtr:
            return executeGEPOperation(CE->getOperand(0), gep_type_begin(CE),
                                       gep_type_end(CE), SF, GC);
        case Instruction::FCmp:
        case Instruction::ICmp:
            return executeCmpInst(
                    CE->getPredicate(),
                    GC.getOperandValue(CE->getOperand(0), SF),
                    GC.getOperandValue(CE->getOperand(1), SF),
                    CE->getOperand(0)->getType());
        case Instruction::Select:
            return executeSelectInst(
                    GC.getOperandValue(CE->getOperand(0), SF),
                    GC.getOperandValue(CE->getOperand(1), SF),
                    GC.getOperandValue(CE->getOperand(2), SF),
                    CE->getOperand(0)->getType());
        default :
            break;
    }

    // The cases below here require a GenericValue parameter for the result
    // so we initialize one, compute it and then return it.
    GenericValue Op0 = GC.getOperandValue(CE->getOperand(0), SF);
    GenericValue Op1 = GC.getOperandValue(CE->getOperand(1), SF);
    GenericValue Dest;
    Type * Ty = CE->getOperand(0)->getType();
    switch (CE->getOpcode())
    {
        case Instruction::Add:  Dest.IntVal = Op0.IntVal + Op1.IntVal; break;
        case Instruction::Sub:  Dest.IntVal = Op0.IntVal - Op1.IntVal; break;
        case Instruction::Mul:  Dest.IntVal = Op0.IntVal * Op1.IntVal; break;
        case Instruction::FAdd: executeFAddInst(Dest, Op0, Op1, Ty); break;
        case Instruction::FSub: executeFSubInst(Dest, Op0, Op1, Ty); break;
        case Instruction::FMul: executeFMulInst(Dest, Op0, Op1, Ty); break;
        case Instruction::FDiv: executeFDivInst(Dest, Op0, Op1, Ty); break;
        case Instruction::FRem: executeFRemInst(Dest, Op0, Op1, Ty); break;
        case Instruction::SDiv: Dest.IntVal = Op0.IntVal.sdiv(Op1.IntVal); break;
        case Instruction::UDiv: Dest.IntVal = Op0.IntVal.udiv(Op1.IntVal); break;
        case Instruction::URem: Dest.IntVal = Op0.IntVal.urem(Op1.IntVal); break;
        case Instruction::SRem: Dest.IntVal = Op0.IntVal.srem(Op1.IntVal); break;
        case Instruction::And:  Dest.IntVal = Op0.IntVal & Op1.IntVal; break;
        case Instruction::Or:   Dest.IntVal = Op0.IntVal | Op1.IntVal; break;
        case Instruction::Xor:  Dest.IntVal = Op0.IntVal ^ Op1.IntVal; break;
        case Instruction::Shl:
            Dest.IntVal = Op0.IntVal.shl(Op1.IntVal.getZExtValue());
            break;
        case Instruction::LShr:
            Dest.IntVal = Op0.IntVal.lshr(Op1.IntVal.getZExtValue());
            break;
        case Instruction::AShr:
            Dest.IntVal = Op0.IntVal.ashr(Op1.IntVal.getZExtValue());
            break;
        default:
            dbgs() << "Unhandled ConstantExpr: " << *CE << "\n";
            llvm_unreachable("Unhandled ConstantExpr");
    }
    return Dest;
}

/**
* Converts a Constant* into a GenericValue, including handling of
* ConstantExpr values.
* Taken from ExecutionEngine/ExecutionEngine.cpp
*/
llvm::GenericValue getConstantValue(const llvm::Constant* C, llvm::Module* m)
{
    const DataLayout *DL = m->getDataLayout(); // **** change . to ->

    // If its undefined, return the garbage.
    if (isa<UndefValue>(C))
    {
        GenericValue Result;
        switch (C->getType()->getTypeID())
        {
            default:
                break;
            case Type::IntegerTyID:
            case Type::X86_FP80TyID:
            case Type::FP128TyID:
            case Type::PPC_FP128TyID:
                // Although the value is undefined, we still have to construct an APInt
                // with the correct bit width.
                Result.IntVal = APInt(C->getType()->getPrimitiveSizeInBits(), 0);
                break;
            case Type::StructTyID:
            {
                // if the whole struct is 'undef' just reserve memory for the value.
                if(StructType *STy = dyn_cast<StructType>(C->getType()))
                {
                    unsigned int elemNum = STy->getNumElements();
                    Result.AggregateVal.resize(elemNum);
                    for (unsigned int i = 0; i < elemNum; ++i)
                    {
                        Type *ElemTy = STy->getElementType(i);
                        if (ElemTy->isIntegerTy())
                        {
                            Result.AggregateVal[i].IntVal =
                                    APInt(ElemTy->getPrimitiveSizeInBits(), 0);
                        }
                        else if (ElemTy->isAggregateType())
                        {
                            const Constant *ElemUndef = UndefValue::get(ElemTy);
                            Result.AggregateVal[i] = getConstantValue(ElemUndef, m);
                        }
                    }
                }
                break;
            }
            case Type::VectorTyID:
                // if the whole vector is 'undef' just reserve memory for the value.
                auto* VTy = dyn_cast<VectorType>(C->getType());
                Type *ElemTy = VTy->getElementType();
                unsigned int elemNum = VTy->getNumElements();
                Result.AggregateVal.resize(elemNum);
                if (ElemTy->isIntegerTy())
                    for (unsigned int i = 0; i < elemNum; ++i)
                        Result.AggregateVal[i].IntVal =
                                APInt(ElemTy->getPrimitiveSizeInBits(), 0);
                break;
        }
        return Result;
    }

    // Otherwise, if the value is a ConstantExpr...
    if (const ConstantExpr *CE = dyn_cast<ConstantExpr>(C))
    {
        Constant *Op0 = CE->getOperand(0);
        switch (CE->getOpcode())
        {
            case Instruction::GetElementPtr:
            {
                // Compute the index
                GenericValue Result = getConstantValue(Op0, m);
                APInt Offset(DL->getPointerSizeInBits(), 0); // **** change . to ->
                cast<GEPOperator>(CE)->accumulateConstantOffset(*DL, Offset); // **** change DL to *DL

                char* tmp = static_cast<char*>(Result.PointerVal);
                Result = PTOGV(tmp + Offset.getSExtValue());
                return Result;
            }
            case Instruction::Trunc:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t BitWidth = cast<IntegerType>(CE->getType())->getBitWidth();
                GV.IntVal = GV.IntVal.trunc(BitWidth);
                return GV;
            }
            case Instruction::ZExt:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t BitWidth = cast<IntegerType>(CE->getType())->getBitWidth();
                GV.IntVal = GV.IntVal.zext(BitWidth);
                return GV;
            }
            case Instruction::SExt:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t BitWidth = cast<IntegerType>(CE->getType())->getBitWidth();
                GV.IntVal = GV.IntVal.sext(BitWidth);
                return GV;
            }
            case Instruction::FPTrunc:
            {
                GenericValue GV = getConstantValue(Op0, m);
                GV.FloatVal = float(GV.DoubleVal);
                return GV;
            }
            case Instruction::FPExt:
            {
                GenericValue GV = getConstantValue(Op0, m);
                GV.DoubleVal = double(GV.FloatVal);
                return GV;
            }
            case Instruction::UIToFP:
            {
                GenericValue GV = getConstantValue(Op0, m);
                if (CE->getType()->isFloatTy())
                    GV.FloatVal = float(GV.IntVal.roundToDouble());
                else if (CE->getType()->isDoubleTy() || CE->getType()->isX86_FP80Ty())
                    GV.DoubleVal = GV.IntVal.roundToDouble();
                else if (CE->getType()->isX86_FP80Ty())
                {
                    APFloat apf = APFloat::getZero(APFloat::x87DoubleExtended); // **** delete()
                    (void)apf.convertFromAPInt(GV.IntVal,
                                               false,
                                               APFloat::rmNearestTiesToEven);
                    GV.IntVal = apf.bitcastToAPInt();
                }
                return GV;
            }
            case Instruction::SIToFP:
            {
                GenericValue GV = getConstantValue(Op0, m);
                if (CE->getType()->isFloatTy())
                    GV.FloatVal = float(GV.IntVal.signedRoundToDouble());
                else if (CE->getType()->isDoubleTy() || CE->getType()->isX86_FP80Ty())
                    GV.DoubleVal = GV.IntVal.signedRoundToDouble();
                else if (CE->getType()->isX86_FP80Ty())
                {
                    APFloat apf = APFloat::getZero(APFloat::x87DoubleExtended); // **** delete()
                    (void)apf.convertFromAPInt(GV.IntVal,
                                               true,
                                               APFloat::rmNearestTiesToEven);
                    GV.IntVal = apf.bitcastToAPInt();
                }
                return GV;
            }
            case Instruction::FPToUI: // double->APInt conversion handles sign
            case Instruction::FPToSI:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t BitWidth = cast<IntegerType>(CE->getType())->getBitWidth();
                if (Op0->getType()->isFloatTy())
                    GV.IntVal = APIntOps::RoundFloatToAPInt(GV.FloatVal, BitWidth);
                else if (Op0->getType()->isDoubleTy() || CE->getType()->isX86_FP80Ty())
                    GV.IntVal = APIntOps::RoundDoubleToAPInt(GV.DoubleVal, BitWidth);
//                else if (Op0->getType()->isX86_FP80Ty())
//                {
//                    APFloat apf = APFloat(APFloat::x87DoubleExtended, GV.IntVal); // **** delete the first ()
//                    uint64_t v;
//                    bool ignored;
//                    (void)apf.convertToInteger(
//                            new MutableArrayRef(v),
//                            BitWidth,
//                            CE->getOpcode()==Instruction::FPToSI,
//                            APFloat::rmTowardZero,
//                            &ignored);
//                    GV.IntVal = v; // endian?
//                }
                return GV;
            }
            case Instruction::PtrToInt:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t PtrWidth = DL->getTypeSizeInBits(Op0->getType()); // **** change . to ->
                assert(PtrWidth <= 64 && "Bad pointer width");
                GV.IntVal = APInt(PtrWidth, uintptr_t(GV.PointerVal));
                uint32_t IntWidth = DL->getTypeSizeInBits(CE->getType()); // **** change . to ->
                GV.IntVal = GV.IntVal.zextOrTrunc(IntWidth);
                return GV;
            }
            case Instruction::IntToPtr:
            {
                GenericValue GV = getConstantValue(Op0, m);
                uint32_t PtrWidth = DL->getTypeSizeInBits(CE->getType()); // **** change . to ->
                GV.IntVal = GV.IntVal.zextOrTrunc(PtrWidth);
                assert(GV.IntVal.getBitWidth() <= 64 && "Bad pointer width");
                GV.PointerVal = PointerTy(uintptr_t(GV.IntVal.getZExtValue()));
                return GV;
            }
            case Instruction::BitCast:
            {
                GenericValue GV = getConstantValue(Op0, m);
                Type* DestTy = CE->getType();
                switch (Op0->getType()->getTypeID())
                {
                    default:
                        llvm_unreachable("Invalid bitcast operand");
                    case Type::IntegerTyID:
                        assert(DestTy->isFloatingPointTy() && "invalid bitcast");
                        if (DestTy->isFloatTy())
                            GV.FloatVal = GV.IntVal.bitsToFloat();
                        else if (DestTy->isDoubleTy())
                            GV.DoubleVal = GV.IntVal.bitsToDouble();
                        break;
                    case Type::FloatTyID:
                        assert(DestTy->isIntegerTy(32) && "Invalid bitcast");
                        GV.IntVal = APInt::floatToBits(GV.FloatVal);
                        break;
                    case Type::DoubleTyID:
                        assert(DestTy->isIntegerTy(64) && "Invalid bitcast");
                        GV.IntVal = APInt::doubleToBits(GV.DoubleVal);
                        break;
                    case Type::PointerTyID:
                        assert(DestTy->isPointerTy() && "Invalid bitcast");
                        break; // getConstantValue(Op0)  above already converted it
                }
                return GV;
            }
            case Instruction::Add:
            case Instruction::FAdd:
            case Instruction::Sub:
            case Instruction::FSub:
            case Instruction::Mul:
            case Instruction::FMul:
            case Instruction::UDiv:
            case Instruction::SDiv:
            case Instruction::URem:
            case Instruction::SRem:
            case Instruction::And:
            case Instruction::Or:
            case Instruction::Xor:
            {
                GenericValue LHS = getConstantValue(Op0, m);
                GenericValue RHS = getConstantValue(CE->getOperand(1), m);
                GenericValue GV;
                switch (CE->getOperand(0)->getType()->getTypeID())
                {
                    default:
                        llvm_unreachable("Bad add type!");
                    case Type::IntegerTyID:
                        switch (CE->getOpcode())
                        {
                            default: llvm_unreachable("Invalid integer opcode");
                            case Instruction::Add: GV.IntVal = LHS.IntVal + RHS.IntVal; break;
                            case Instruction::Sub: GV.IntVal = LHS.IntVal - RHS.IntVal; break;
                            case Instruction::Mul: GV.IntVal = LHS.IntVal * RHS.IntVal; break;
                            case Instruction::UDiv:GV.IntVal = LHS.IntVal.udiv(RHS.IntVal); break;
                            case Instruction::SDiv:GV.IntVal = LHS.IntVal.sdiv(RHS.IntVal); break;
                            case Instruction::URem:GV.IntVal = LHS.IntVal.urem(RHS.IntVal); break;
                            case Instruction::SRem:GV.IntVal = LHS.IntVal.srem(RHS.IntVal); break;
                            case Instruction::And: GV.IntVal = LHS.IntVal & RHS.IntVal; break;
                            case Instruction::Or:  GV.IntVal = LHS.IntVal | RHS.IntVal; break;
                            case Instruction::Xor: GV.IntVal = LHS.IntVal ^ RHS.IntVal; break;
                        }
                        break;
                    case Type::FloatTyID:
                        switch (CE->getOpcode())
                        {
                            default: llvm_unreachable("Invalid float opcode");
                            case Instruction::FAdd:
                                GV.FloatVal = LHS.FloatVal + RHS.FloatVal; break;
                            case Instruction::FSub:
                                GV.FloatVal = LHS.FloatVal - RHS.FloatVal; break;
                            case Instruction::FMul:
                                GV.FloatVal = LHS.FloatVal * RHS.FloatVal; break;
                            case Instruction::FDiv:
                                GV.FloatVal = LHS.FloatVal / RHS.FloatVal; break;
                            case Instruction::FRem:
                                GV.FloatVal = std::fmod(LHS.FloatVal,RHS.FloatVal); break;
                        }
                        break;
                    case Type::DoubleTyID:
                    case Type::X86_FP80TyID:
                        switch (CE->getOpcode())
                        {
                            default: llvm_unreachable("Invalid double opcode");
                            case Instruction::FAdd:
                                GV.DoubleVal = LHS.DoubleVal + RHS.DoubleVal; break;
                            case Instruction::FSub:
                                GV.DoubleVal = LHS.DoubleVal - RHS.DoubleVal; break;
                            case Instruction::FMul:
                                GV.DoubleVal = LHS.DoubleVal * RHS.DoubleVal; break;
                            case Instruction::FDiv:
                                GV.DoubleVal = LHS.DoubleVal / RHS.DoubleVal; break;
                            case Instruction::FRem:
                                GV.DoubleVal = std::fmod(LHS.DoubleVal,RHS.DoubleVal); break;
                        }
                        break;
//					case Type::X86_FP80TyID:
                    case Type::PPC_FP128TyID:
                    case Type::FP128TyID:
                    {
                        const fltSemantics &Sem = CE->getOperand(0)->getType()->getFltSemantics();
                        APFloat apfLHS = APFloat(Sem, LHS.IntVal);
                        switch (CE->getOpcode())
                        {
                            default: llvm_unreachable("Invalid long double opcode");
                            case Instruction::FAdd:
                                apfLHS.add(APFloat(Sem, RHS.IntVal), APFloat::rmNearestTiesToEven);
                                GV.IntVal = apfLHS.bitcastToAPInt();
                                break;
                            case Instruction::FSub:
                                apfLHS.subtract(APFloat(Sem, RHS.IntVal),
                                                APFloat::rmNearestTiesToEven);
                                GV.IntVal = apfLHS.bitcastToAPInt();
                                break;
                            case Instruction::FMul:
                                apfLHS.multiply(APFloat(Sem, RHS.IntVal),
                                                APFloat::rmNearestTiesToEven);
                                GV.IntVal = apfLHS.bitcastToAPInt();
                                break;
                            case Instruction::FDiv:
                                apfLHS.divide(APFloat(Sem, RHS.IntVal),
                                              APFloat::rmNearestTiesToEven);
                                GV.IntVal = apfLHS.bitcastToAPInt();
                                break;
                            case Instruction::FRem:
                                apfLHS.mod(APFloat(Sem, RHS.IntVal), APFloat(Sem, RHS.IntVal).rmNearestTiesToEven);
                                // **** Choose rmNearestTiesToEven
                                GV.IntVal = apfLHS.bitcastToAPInt();
                                break;
                        }
                    }
                        break;
                }
                return GV;
            }
            default:
                break;
        }

        SmallString<256> Msg;
        raw_svector_ostream OS(Msg);
        OS << "ConstantExpr not handled: " << *CE;
        report_fatal_error(OS.str());
    }

    // Otherwise, we have a simple constant.
    GenericValue Result;
    switch (C->getType()->getTypeID())
    {
        case Type::FloatTyID:
            Result.FloatVal = cast<ConstantFP>(C)->getValueAPF().convertToFloat();
            break;
        case Type::X86_FP80TyID:
        {
            auto apf = cast<ConstantFP>(C)->getValueAPF();
            bool lostPrecision;
            apf.convert(APFloat::IEEEdouble, APFloat::rmNearestTiesToEven, &lostPrecision); //****delete de bracket of IEEEdouble()
            Result.DoubleVal = apf.convertToDouble();
            break;
        }
        case Type::DoubleTyID:
            Result.DoubleVal = cast<ConstantFP>(C)->getValueAPF().convertToDouble();
            break;
//		case Type::X86_FP80TyID:
        case Type::FP128TyID:
        case Type::PPC_FP128TyID:
            Result.IntVal = cast <ConstantFP>(C)->getValueAPF().bitcastToAPInt();
            break;
        case Type::IntegerTyID:
            Result.IntVal = cast<ConstantInt>(C)->getValue();
            break;
        case Type::PointerTyID:
            if (isa<ConstantPointerNull>(C))
            {
                Result.PointerVal = nullptr;
            }
            else if (const Function *F = dyn_cast<Function>(C))
            {
                //Result = PTOGV(getPointerToFunctionOrStub(const_cast<Function*>(F)));

                // We probably need just any unique value for each function,
                // so pointer to its LLVM representation should be ok.
                // But we probably should not need this in our semantics tests,
                // so we want to know if it ever gets here (assert).
                assert(false && "taking a pointer to function is not implemented");
                Result = PTOGV(const_cast<Function*>(F));
            }
            else if (const GlobalVariable *GV = dyn_cast<GlobalVariable>(C))
            {
                //Result = PTOGV(getOrEmitGlobalVariable(const_cast<GlobalVariable*>(GV)));

                // We probably need just any unique value for each global,
                // so pointer to its LLVM representation should be ok.
                // But we probably should not need this in our semantics tests,
                // so we want to know if it ever gets here (assert).
                assert(false && "taking a pointer to global variable is not implemented");
                Result = PTOGV(const_cast<GlobalVariable*>(GV));
            }
            else
            {
                llvm_unreachable("Unknown constant pointer type!");
            }
            break;
        case Type::VectorTyID:
        {
            unsigned elemNum;
            Type* ElemTy;
            const ConstantDataVector *CDV = dyn_cast<ConstantDataVector>(C);
            const ConstantVector *CV = dyn_cast<ConstantVector>(C);
            const ConstantAggregateZero *CAZ = dyn_cast<ConstantAggregateZero>(C);

            if (CDV)
            {
                elemNum = CDV->getNumElements();
                ElemTy = CDV->getElementType();
            }
            else if (CV || CAZ)
            {
                VectorType* VTy = dyn_cast<VectorType>(C->getType());
                elemNum = VTy->getNumElements();
                ElemTy = VTy->getElementType();
            }
            else
            {
                llvm_unreachable("Unknown constant vector type!");
            }

            Result.AggregateVal.resize(elemNum);
            // Check if vector holds floats.
            if(ElemTy->isFloatTy())
            {
                if (CAZ)
                {
                    GenericValue floatZero;
                    floatZero.FloatVal = 0.f;
                    std::fill(Result.AggregateVal.begin(), Result.AggregateVal.end(),
                              floatZero);
                    break;
                }
                if(CV)
                {
                    for (unsigned i = 0; i < elemNum; ++i)
                        if (!isa<UndefValue>(CV->getOperand(i)))
                            Result.AggregateVal[i].FloatVal = cast<ConstantFP>(
                                    CV->getOperand(i))->getValueAPF().convertToFloat();
                    break;
                }
                if(CDV)
                    for (unsigned i = 0; i < elemNum; ++i)
                        Result.AggregateVal[i].FloatVal = CDV->getElementAsFloat(i);

                break;
            }
            // Check if vector holds doubles.
            if (ElemTy->isDoubleTy())
            {
                if (CAZ)
                {
                    GenericValue doubleZero;
                    doubleZero.DoubleVal = 0.0;
                    std::fill(Result.AggregateVal.begin(), Result.AggregateVal.end(),
                              doubleZero);
                    break;
                }
                if(CV)
                {
                    for (unsigned i = 0; i < elemNum; ++i)
                        if (!isa<UndefValue>(CV->getOperand(i)))
                            Result.AggregateVal[i].DoubleVal = cast<ConstantFP>(
                                    CV->getOperand(i))->getValueAPF().convertToDouble();
                    break;
                }
                if(CDV)
                    for (unsigned i = 0; i < elemNum; ++i)
                        Result.AggregateVal[i].DoubleVal = CDV->getElementAsDouble(i);

                break;
            }
            // Check if vector holds integers.
            if (ElemTy->isIntegerTy())
            {
                if (CAZ)
                {
                    GenericValue intZero;
                    intZero.IntVal = APInt(ElemTy->getScalarSizeInBits(), 0ull);
                    std::fill(Result.AggregateVal.begin(), Result.AggregateVal.end(),
                              intZero);
                    break;
                }
                if(CV)
                {
                    for (unsigned i = 0; i < elemNum; ++i)
                        if (!isa<UndefValue>(CV->getOperand(i)))
                            Result.AggregateVal[i].IntVal = cast<ConstantInt>(
                                    CV->getOperand(i))->getValue();
                        else
                        {
                            Result.AggregateVal[i].IntVal =
                                    APInt(CV->getOperand(i)->getType()->getPrimitiveSizeInBits(), 0);
                        }
                    break;
                }
                if(CDV)
                    for (unsigned i = 0; i < elemNum; ++i)
                        Result.AggregateVal[i].IntVal = APInt(
                                CDV->getElementType()->getPrimitiveSizeInBits(),
                                CDV->getElementAsInteger(i));

                break;
            }
            llvm_unreachable("Unknown constant pointer type!");
            break;
        }

        default:
            SmallString<256> Msg;
            raw_svector_ostream OS(Msg);
            OS << "ERROR: Constant unimplemented for type: " << *C->getType();
            report_fatal_error(OS.str());
    }

    return Result;
}


}


//
//=============================================================================
// GlobalExecutionContext
//=============================================================================
//

GlobalExecutionContext::GlobalExecutionContext(llvm::Module* m) :
        _module(m)
{

}

llvm::Module* GlobalExecutionContext::getModule() const
{
    return _module;
}

llvm::GenericValue GlobalExecutionContext::getMemory(uint64_t addr, bool log)
{
    if (log)
    {
        memoryLoads.push_back(addr);
    }

    auto fIt = memory.find(addr);
    return fIt != memory.end() ? fIt->second : GenericValue();
}

void GlobalExecutionContext::setMemory(
        uint64_t addr,
        llvm::GenericValue val,
        bool log)
{
    if (log)
    {
        memoryStores.push_back(addr);
    }

    memory[addr] = val;
}

llvm::GenericValue GlobalExecutionContext::getGlobal(
        llvm::GlobalVariable* g,
        bool log)
{
    if (log)
    {
        globalsLoads.push_back(g);
    }

    auto fIt = globals.find(g);
    assert(fIt != globals.end());
    return fIt != globals.end() ? fIt->second : GenericValue();
}

void GlobalExecutionContext::setGlobal(
        llvm::GlobalVariable* g,
        llvm::GenericValue val,
        bool log)
{
    if (log)
    {
        globalsStores.push_back(g);
    }

    globals[g] = val;
}

void GlobalExecutionContext::setValue(llvm::Value* v, llvm::GenericValue val)
{
    values[v] = val;
}

llvm::GenericValue GlobalExecutionContext::getOperandValue(
        llvm::Value* val,
        LocalExecutionContext& ec)
{
    if (ConstantExpr* ce = dyn_cast<ConstantExpr>(val))
    {
        return getConstantExprValue(ce, ec, *this);
    }
    else if (Constant* cpv = dyn_cast<Constant>(val))
    {
        return  getConstantValue(cpv, getModule());
    }
    else if (isa<GlobalValue>(val))
    {
        assert(false && "get pointer to global variable, how?");
        throw LlvmIrEmulatorError("not implemented");
    }
    else
    {
        return values[val];
    }
}
//
//=============================================================================
// ExecutionContext
//=============================================================================
//

LocalExecutionContext::LocalExecutionContext() :
        curInst(nullptr) {

}

LocalExecutionContext::LocalExecutionContext(LocalExecutionContext &&o) :
        curFunction(o.curFunction),
        curBB(o.curBB),
        curInst(o.curInst),
        caller(o.caller),
        allocas(std::move(o.allocas)) {

}

LocalExecutionContext &LocalExecutionContext::operator=(LocalExecutionContext &&o) {
    curFunction = o.curFunction;
    curBB = o.curBB;
    curInst = o.curInst;
    caller = o.caller;
    allocas = std::move(o.allocas);
    return *this;
}

llvm::Module *LocalExecutionContext::getModule() const {
    return curFunction->getParent();
}

    }
}

int main()
{

//====================================
//    Print part
//====================================
//    LLVMContext Context;
//
//    // Create some module to put our function into it.
//    std::unique_ptr<Module> Owner = make_unique<Module>("test", Context);
//    Module *mod = Owner.get();
//
//    /*
//      //param numBits the bit width of the constructed APInt
//      //param str the string to be interpreted
//      //param radix the radix to use for the conversion
//      APInt(unsigned numBits, StringRef str, uint8_t radix);
//
//      //ConstantInt int type constant
//    */
//    ConstantInt* const_int32_one = ConstantInt::get(mod->getContext(), APInt(32, StringRef("a"), 16));
//
//    std::string result = llvmObjToString(const_int32_one);
//    std::cout << result << std::endl;
//    return 0;

//================================================
//    IR generation
//================================================
//
//    LLVMContext Context;
//    std::unique_ptr<Module> Owner = make_unique<Module>("main", Context);
//
//    IRBuilder<> builder(Context);
//    Module *mod = Owner.get();
//
//    FunctionType *functionType = FunctionType::get(builder.getVoidTy(), false);
//    Function *customFuc = Function::Create(functionType, Function::ExternalLinkage, "main", mod);
//
//    BasicBlock *entryBlock = BasicBlock::Create(mod->getContext(), "entry", customFuc, 0);
//    builder.SetInsertPoint(entryBlock);
//
//    Value *helloWorld = builder.CreateGlobalStringPtr("hello world!\n");
//
//    std::vector<Type*> putsargs;
//    putsargs.push_back(builder.getInt8Ty()->getPointerTo());
//    ArrayRef<Type*>  argsRef(putsargs);
//
//    FunctionType *putsType = FunctionType::get(builder.getInt32Ty(),argsRef,false);
//
//    builder.CreateCall(mod->getOrInsertFunction("puts", putsType), helloWorld);
//    ConstantInt *zero = ConstantInt::get(IntegerType::getInt32Ty(Context), 0);
//    builder.CreateRet(zero);
//
//    mod->dump();

//    llvm::Value* val;
//    ConstantExpr* CE =  dyn_cast<ConstantExpr>(val);
//    retdec::llvmir_emul::LocalExecutionContext* SF = new retdec::llvmir_emul::LocalExecutionContext();
//    retdec::llvmir_emul::GlobalExecutionContext* GC = new retdec::llvmir_emul::GlobalExecutionContext(mod);

//============================================
//    Binary Instruction(add/sub/mul/fic/rem and Integer Comparison)
//============================================
//    LLVMContext Context;
//    float a = 132.9;
//    float b = 132;
//    GenericValue Op0 = GenericValue(&a);
//    GenericValue Op1 = GenericValue(&b);
//    Op0.FloatVal = 3.0;
//    Op1.FloatVal = 4.1;
//    cout<<Op0.FloatVal<<endl<<Op1.FloatVal<<endl;
//    Op0.PointerVal = &a;
//    Op1.PointerVal = &b;
//    cout<<Op0.PointerVal<<endl<<Op1.PointerVal<<endl;
//    Op0.IntVal = APInt(32, 132);
//    Op1.IntVal = APInt(32, 132);
//    cout<<Op0.FloatVal<<endl<<Op1.FloatVal<<endl;
//    cout<<Op0.DoubleVal<<endl<<Op1.DoubleVal<<endl;
//    cout<<Op0.IntVal.toString(10,0)<<endl<<Op1.IntVal.toString(10, 0)<<endl;
//    GenericValue Dest;
//    Type *Ty = Type::getFloatTy(Context);
//    retdec::llvmir_emul::executeFAddInst(Dest, Op0, Op1, Ty);
//    cout<<Dest.FloatVal<<endl;
//    retdec::llvmir_emul::executeFSubInst(Dest, Op0, Op1, Ty);
//    cout<<Dest.FloatVal<<endl;
//    retdec::llvmir_emul::executeFMulInst(Dest, Op0, Op1, Ty);
//    cout<<Dest.FloatVal<<endl;
//    retdec::llvmir_emul::executeFDivInst(Dest, Op0, Op1, Ty);
//    cout<<Dest.FloatVal<<endl;
//    retdec::llvmir_emul::executeFRemInst(Dest, Op0, Op1, Ty);
//    cout<<Dest.FloatVal<<endl;

//    GenericValue res;

//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_EQ(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//    Ty = Type::getFloatPtrTy(Context);
//    res = retdec::llvmir_emul::executeICMP_NE(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_ULT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;
//
//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_SLT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;
//
//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_UGT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//============================================
//    Binary Instruction(Float Comparison)
//============================================
//    LLVMContext Context;
//    float a = 132.0;
//    float b = 133.0;
//    GenericValue Op0 = GenericValue(&a);
//    GenericValue Op1 = GenericValue(&b);
//    Op0.FloatVal = 13;
//    Op1.FloatVal = 132;
//    cout<<Op0.FloatVal<<endl<<Op1.FloatVal<<endl;
//
//    GenericValue res;
//    float c, d, e, f;
//    GenericValue v1 = GenericValue(&c);
//    v1.FloatVal = 1.0;
//    v1.IntVal = APInt(1, false);
//    GenericValue v2 = GenericValue(&d);
//    v2.FloatVal = 2.0;
//    v2.IntVal = APInt(1, false);
//    GenericValue v3 = GenericValue(&e);
//    v3.FloatVal = 1.0;
//    v3.IntVal = APInt(1, false);
//    GenericValue v4 = GenericValue(&f);
//    v4.FloatVal = 2.0;
//    v4.IntVal = APInt(1, false);
//    Op0.AggregateVal.emplace_back(v1);
//    Op0.AggregateVal.emplace_back(v2);
//    Op1.AggregateVal.emplace_back(v3);
//    Op1.AggregateVal.emplace_back(v4);
//
//    Type* Ty = Type::getFloatTy(Context);
//
//    Ty = Type::getFloatTy(Context);
//    cout << Ty->getTypeID() << endl;
//    res = retdec::llvmir_emul::executeFCMP_OEQ(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;
//
//    cout << Ty->VectorTyID << endl;
//    VectorType* VTy = VectorType::get(Ty, 2);
//    cout << VTy->getTypeID()  << endl;
//    res = retdec::llvmir_emul::executeFCMP_ONE(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_ULT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_SLT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;
//
//    Ty = Type::getInt32Ty(Context);
//    res = retdec::llvmir_emul::executeICMP_UGT(Op0, Op1, Ty);
//    cout<<res.IntVal.toString(10,0)<<endl;

//===========================================
// Conversion Instruction Implementations
//===========================================
    return 0;
}
