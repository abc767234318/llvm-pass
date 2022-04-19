#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Module.h"

llvm::LLVMContext *CONTEXT;

#define INIT_CONTEXT(F) CONTEXT = &F.getContext()
#define TYPE_I32 Type::getInt32Ty(*CONTEXT)
#define CONST_I32(V) ConstantInt::get(TYPE_I32, V, false)
#define CONST(T, V) ConstantInt::get(T, V)

using namespace llvm;

namespace
{
    class HelloWorld : public FunctionPass
    {
    public:
        static char ID;
        HelloWorld() : FunctionPass(ID){};

        bool runOnFunction(Function &F);
    };
}

bool HelloWorld::runOnFunction(Function &F)
{
    // todo
    INIT_CONTEXT(F);

    outs() << "Hello" << F.getName() << "\n";
    Module *M = F.getEntryBlock().getModule();
    GlobalVariable *xptr = new GlobalVariable(*M, TYPE_I32, false, GlobalValue::CommonLinkage, CONST_I32(0), "x");
    dbgs() << F.getEntryBlock();
    for (Instruction &I : F.getEntryBlock())
    {
        // do something with I
        LoadInst *x = new LoadInst(TYPE_I32, xptr, "", &I);
        break;
    }
    
}

char HelloWorld::ID = 0;
// hlw 是opt使用时的参数
static RegisterPass<HelloWorld> X("hlw", "Pass描述：My first line of llvm pass");
