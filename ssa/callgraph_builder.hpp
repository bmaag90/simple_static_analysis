#ifndef CALLGRAPH_BUILDER_PUBLIC_H
#define CALLGRAPH_BUILDER_PUBLIC_H

#include "callgraph.hpp"
#include "llvm_ir.hpp"

#include <llvm/IR/Module.h>

class CallGraphBuilder {
public:
    explicit CallGraphBuilder(const llvm::Module &module);
    explicit CallGraphBuilder(const LLVMIRHandler &handler);

    Callgraph build() const;

private:
    const llvm::Module &module;
};

#endif // CALLGRAPH_BUILDER_PUBLIC_H
