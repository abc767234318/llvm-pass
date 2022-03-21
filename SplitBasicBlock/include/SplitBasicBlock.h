#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
/*
在llvm命名空间中添加一个函数createSplitBasicBlockPass,
这样其他llvm pass就可以通过引入此头文件调用此函数创建此pass，
完成基本块分割
*/ 
namespace llvm
{
    FunctionPass* createSplitBasicBlockPass();
} // namespace llvm