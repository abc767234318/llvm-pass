#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
/*
��llvm�����ռ������һ������createSplitBasicBlockPass,
��������llvm pass�Ϳ���ͨ�������ͷ�ļ����ô˺���������pass��
��ɻ�����ָ�
*/ 
namespace llvm
{
    FunctionPass* createSplitBasicBlockPass();
} // namespace llvm