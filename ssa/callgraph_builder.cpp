#include "callgraph_builder.hpp"

#include <llvm/IR/Instructions.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>

#include "spdlog/spdlog.h"


CallGraphBuilder::CallGraphBuilder(const llvm::Module &module)
    : module(module) {}

CallGraphBuilder::CallGraphBuilder(const LLVMIRHandler &handler)
    : module(*handler.getModule()) {}

Callgraph CallGraphBuilder::build() const {
    Callgraph graph;
	std::unordered_map<std::string, NodeId> nameToId;
	spdlog::debug("=== Adding nodes to graph ===");
    std::size_t nodeId = 0;
    for (const llvm::Function &function : module) {
        if (function.isDeclaration()) {
            continue;
        }
		
        graph.addNode(CallgraphNode(nodeId, function.getName().str()));
        spdlog::debug("NodeID {0} - {1}", nodeId, function.getName().str());
        nameToId[function.getName().str()] = nodeId;
        nodeId++;
    }
	spdlog::debug("=== Adding edges to graph ===");
    for (const llvm::Function &function : module) {
        if (function.isDeclaration()) {
            continue;
        }

        const NodeId sourceId = nameToId[function.getName().str()];
		
        for (const llvm::BasicBlock &block : function) {
            for (const llvm::Instruction &instruction : block) {
			
				
                if (const auto *call = llvm::dyn_cast<llvm::CallBase>(&instruction)) {
                    if (const llvm::Function *callee = call->getCalledFunction()) {
                        if (!callee->isDeclaration()) {
                            const NodeId targetId = nameToId[callee->getName().str()];
							
							spdlog::debug("Found call in {0}: {1}", sourceId, targetId);	
							std::string strCallsite = LLVMIRHandler::getCallsite(instruction);
							spdlog::debug("\tCallsite: {0}", strCallsite);
							std::string filename = LLVMIRHandler::getFilename(instruction);
							spdlog::debug("\tFilename: {0}", filename);
							auto [numLine, numCol] = LLVMIRHandler::getLineCol(instruction);
							spdlog::debug("\tLine-Col: {0}, {1}", numLine, numCol);
                            graph.addEdge(CallgraphEdge(
                                Node(sourceId),
                                Node(targetId),
                                strCallsite,
                                filename,
                                {numLine, numCol}));
                            spdlog::debug("{0} -> {1}: {2}", sourceId, targetId, strCallsite);
                        }
                    }
                }
            }
        }
    }  

    return graph;
}
