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

    outs() << "Hello" << F.getName() << "\n";
    for (Instruction &I : F.getEntryBlock())
    {

    }
    
}

char HelloWorld::ID = 0;
// hlw ��optʹ��ʱ�Ĳ���
static RegisterPass<HelloWorld> X("hlw", "Pass������My first line of llvm pass");
