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
//void switchToNewBasicBlock(
//        BasicBlock* Dest,
//        LocalExecutionContext& SF,
//        GlobalExecutionContext& GC)
//{
//    BasicBlock *PrevBB = SF.curBB;      // Remember where we came from...
//    SF.curBB   = Dest;                  // Update CurBB to branch destination
//    SF.curInst = SF.curBB->begin();     // Update new instruction ptr...
//
//    if (!isa<PHINode>(SF.curInst))
//    {
//        return;  // Nothing fancy to do
//    }
//
//    // Loop over all of the PHI nodes in the current block, reading their inputs.
//    std::vector<GenericValue> ResultValues;
//
//    for (; PHINode *PN = dyn_cast<PHINode>(SF.curInst); ++SF.curInst)
//    {
//        // Search for the value corresponding to this previous bb...
//        int i = PN->getBasicBlockIndex(PrevBB);
//        assert(i != -1 && "PHINode doesn't contain entry for predecessor??");
//        Value *IncomingValue = PN->getIncomingValue(i);
//
//        // Save the incoming value for this PHI node...
//        ResultValues.push_back(GC.getOperandValue(IncomingValue, SF));
//    }
//
//    // Now loop over all of the PHI nodes setting their values...
//    SF.curInst = SF.curBB->begin();
//    for (unsigned i = 0; isa<PHINode>(SF.curInst); ++SF.curInst, ++i)
//    {
//        PHINode *PN = cast<PHINode>(SF.curInst);
//        GC.setValue(PN, ResultValues[i]);
//    }
//}

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

//        llvm::GenericValue GlobalExecutionContext::getOperandValue(
//                llvm::Value* val,
//                LocalExecutionContext& ec)
//        {
//            if (ConstantExpr* ce = dyn_cast<ConstantExpr>(val))
//            {
//                return getConstantExprValue(ce, ec, *this);
//            }
//            else if (Constant* cpv = dyn_cast<Constant>(val))
//            {
//                return getConstantValue(cpv, getModule());
//            }
//            else if (isa<GlobalValue>(val))
//            {
//                assert(false && "get pointer to global variable, how?");
//                throw LlvmIrEmulatorError("not implemented");
//            }
//            else
//            {
//                return values[val];
//            }
//        }
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
    LLVMContext Context;
    float a = 132.0;
    float b = 133.0;
    GenericValue Op0 = GenericValue(&a);
    GenericValue Op1 = GenericValue(&b);
    Op0.FloatVal = 13;
    Op1.FloatVal = 132;
    cout<<Op0.FloatVal<<endl<<Op1.FloatVal<<endl;

    GenericValue res;
    float c, d, e, f;
    GenericValue v1 = GenericValue(&c);
    v1.FloatVal = 1.0;
    v1.IntVal = APInt(1, false);
    GenericValue v2 = GenericValue(&d);
    v2.FloatVal = 2.0;
    v2.IntVal = APInt(1, false);
    GenericValue v3 = GenericValue(&e);
    v3.FloatVal = 1.0;
    v3.IntVal = APInt(1, false);
    GenericValue v4 = GenericValue(&f);
    v4.FloatVal = 2.0;
    v4.IntVal = APInt(1, false);
    Op0.AggregateVal.emplace_back(v1);
    Op0.AggregateVal.emplace_back(v2);
    Op1.AggregateVal.emplace_back(v3);
    Op1.AggregateVal.emplace_back(v4);

    Type* Ty = Type::getFloatTy(Context);

    Ty = Type::getFloatTy(Context);
    cout << Ty->getTypeID() << endl;
    res = retdec::llvmir_emul::executeFCMP_OEQ(Op0, Op1, Ty);
    cout<<res.IntVal.toString(10,0)<<endl;

    cout << Ty->VectorTyID << endl;
    VectorType* VTy = VectorType::get(Ty, 2);
    cout << VTy->getTypeID()  << endl;
    res = retdec::llvmir_emul::executeFCMP_ONE(Op0, Op1, Ty);
    cout<<res.IntVal.toString(10,0)<<endl;

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

    return 0;
}
