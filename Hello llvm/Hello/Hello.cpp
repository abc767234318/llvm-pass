#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace{
    class HelloWorld:public FunctionPass{
        public:
            static char ID;
            HelloWorld() : FunctionPass(ID) {};

            bool runOnFunction(Function &F);
    };
}

bool HelloWorld::runOnFunction(Function &F){
    //todo
    outs() << "Hello" <<F.getName() << "\n";
}

char HelloWorld::ID = 0;
// hlw 是opt使用时的参数
static RegisterPass<HelloWorld> X("hlw", "Pass描述：My first line of llvm pass");
