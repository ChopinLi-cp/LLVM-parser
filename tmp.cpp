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
//
//    LLVMContext Context;
//
//    std::unique_ptr<Module> Owner = make_unique<Module>("main", Context);
//
//    IRBuilder<> builder(Context);
//    Module *mod = Owner.get();

//    APInt *v = new APInt(64, 16687987979342709456);
//    llvm::Constant * CT = llvm::Constant::getIntegerValue(Type::getInt32Ty(Context), *v);
//    cout << CT->getType() <<endl;
//    llvm::ConstantExpr* CE = (llvm::ConstantExpr *)(llvm::ConstantExpr::getTrunc(CT, Type::getInt32Ty(Context)));
//    Type *DstTy = Type::getInt32Ty(Context);
//    retdec::llvmir_emul::LocalExecutionContext *SF = new retdec::llvmir_emul::LocalExecutionContext();
//    retdec::llvmir_emul::GlobalExecutionContext *GC = new retdec::llvmir_emul::GlobalExecutionContext(mod);
//
//    GenericValue dest = retdec::llvmir_emul::executeTruncInst(CT, DstTy, *SF, *GC);
//    cout << dest.IntVal.toString(10, 0) << endl;
//
//    APInt *v1 = new APInt(32, 6);
//    APInt *v2 = new APInt(32, 16);
//    APInt *v = new APInt[2];
//    v[0] = *v1;
//    v[1] = *v2;
//    Type * Ty = Type::getInt32Ty(Context);
//    VectorType* VTy = VectorType::get(Ty, 2);
//    llvm::Constant * CT = llvm::Constant::getIntegerValue(VTy, *v);
//    Type *DstTy = Type::getInt64Ty(Context);
//    retdec::llvmir_emul::LocalExecutionContext *SF = new retdec::llvmir_emul::LocalExecutionContext();
//    retdec::llvmir_emul::GlobalExecutionContext *GC = new retdec::llvmir_emul::GlobalExecutionContext(mod);
//
//    GenericValue dest = retdec::llvmir_emul::executeSExtInst(CT, DstTy, *SF, *GC);
//    cout << dest.AggregateVal[1].IntVal.toString(2, 0) << endl;
//
//==========================================================
//
//==========================================================
//    parseInput(R"(
//		define i32 @f1() {
//			%a = add i32 1, 2
//			%b = add i32 %a, 3
//			%c = mul i32 %a, %b
//			ret i32 %c
//		}
//		define i32 @f2() {
//			%d = add i32 1, 2
//			ret i32 %d
//		}
//	)");
//    auto* f1 = getFunctionByName("f1");
//    auto* f2 = getFunctionByName("f2");
//    auto* bb1 = &f1->front();
//    auto* bb2 = &f2->front();
//    auto* a = getInstructionByName("a");
//    auto* b = getInstructionByName("b");
//    auto* c = getInstructionByName("c");
//    auto* r = getNthInstruction<ReturnInst>();
//    auto* d = getInstructionByName("d");
//
//    retdec::llvmir_emul::LlvmIrEmulator emu(module.get());
//    emu.runFunction(f1);
//
//    auto vis = emu.getVisitedInstructions();
//    auto vbs = emu.getVisitedBasicBlocks();
//
//    std::list<Instruction*> exVis = {a, b, c, r};
//    EXPECT_EQ(exVis, vis);
//    std::list<BasicBlock*> exVbs = {bb1};
//    EXPECT_EQ(exVbs, vbs);
//    EXPECT_TRUE(emu.wasInstructionVisited(a));
//    EXPECT_TRUE(emu.wasInstructionVisited(b));
//    EXPECT_TRUE(emu.wasInstructionVisited(c));
//    EXPECT_TRUE(emu.wasInstructionVisited(r));
//    EXPECT_TRUE(emu.wasBasicBlockVisited(bb1));
//    EXPECT_FALSE(emu.wasInstructionVisited(d));
//    EXPECT_FALSE(emu.wasBasicBlockVisited(bb2));
