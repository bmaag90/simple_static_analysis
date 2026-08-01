#ifndef CALLGRAPH_BUILDER_PUBLIC_H
#define CALLGRAPH_BUILDER_PUBLIC_H

#include "callgraph.hpp"
#include "llvm_ir.hpp"

#include <llvm/IR/Module.h>

class CallGraphBuilder {
private:
    const llvm::Module &module;
	Callgraph& cg;
	
public:
    explicit CallGraphBuilder(const llvm::Module &module, Callgraph& cg);
    explicit CallGraphBuilder(const LLVMIRHandler &handler, Callgraph& cg);

    void build();
};

#endif // CALLGRAPH_BUILDER_PUBLIC_H
