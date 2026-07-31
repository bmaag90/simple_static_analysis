#ifndef CONTROL_FLOW_GRAPH_BUILDER_PUBLIC_H
#define CONTROL_FLOW_GRAPH_BUILDER_PUBLIC_H

#include "control_flow_graph.hpp"
#include "llvm_ir.hpp"

#include <llvm/IR/Module.h>

class ControlFlowGraphBuilder {
private:
    const llvm::Module &module;
    ControlFlowGraph& cfg;
    
public:
    explicit ControlFlowGraphBuilder(const llvm::Module &module, ControlFlowGraph& cfg);
    explicit ControlFlowGraphBuilder(const LLVMIRHandler &handler, ControlFlowGraph& cfg);

    void build();
	
};

#endif // CALLGRAPH_BUILDER_PUBLIC_H
