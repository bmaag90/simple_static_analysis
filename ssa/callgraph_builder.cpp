#include "callgraph_builder.hpp"

#include <llvm/IR/Instructions.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>

#include "spdlog/spdlog.h"


CallGraphBuilder::CallGraphBuilder(const llvm::Module &module, Callgraph& cg)
    : module(module), cg(cg) {}

CallGraphBuilder::CallGraphBuilder(const LLVMIRHandler &handler, Callgraph& cg)
    : module(*handler.getModule()), cg(cg) {}
    
void CallGraphBuilder::build() {
	std::unordered_map<std::string, NodeId> nameToId;
	std::unique_ptr<CallgraphNode> node;
	std::unique_ptr<CallgraphEdge> edge;
	spdlog::debug("=== Adding nodes to graph ===");
    std::size_t nodeId = 0;
    for (const llvm::Function &function : module) {
        if (function.isDeclaration()) {
            continue;
        }
		node = std::make_unique<CallgraphNode>(nodeId, function.getName().str());
        cg.addNode(std::move(node));
        spdlog::debug("NodeID {0} - {1}", nodeId, function.getName().str());
        nodeId++;
    }
	spdlog::debug("=== Adding edges to call graph ===");
    for (const llvm::Function &function : module) {
        if (function.isDeclaration()) {
            continue;
        }

        const Node* sourceNode = cg.getNodesByName().at(function.getName().str());
		
        for (const llvm::BasicBlock &block : function) {
            for (const llvm::Instruction &instruction : block) {
			
				
                if (const auto *call = llvm::dyn_cast<llvm::CallBase>(&instruction)) {
                    if (const llvm::Function *callee = call->getCalledFunction()) {
                        if (!callee->isDeclaration()) {
                            const Node* targetNode = cg.getNodesByName().at(callee->getName().str());
							
							spdlog::debug("Call in node {0} to node {1}", sourceNode->getId(), targetNode->getId());	
							std::string strCallsite = LLVMIRHandler::printInstruction(instruction);
							spdlog::debug("\tCallsite: {0}", strCallsite);
							std::string filename = LLVMIRHandler::getFilename(instruction);
							spdlog::debug("\tFilename: {0}", filename);
							auto [numLine, numCol] = LLVMIRHandler::getLineCol(instruction);
							spdlog::debug("\tLine-Col: {0}, {1}", numLine, numCol);
							edge = std::make_unique<CallgraphEdge>(
                                sourceNode,
                                targetNode,
                                strCallsite,
                                filename,
                                std::make_tuple(numLine, numCol));
                            cg.addEdge(std::move(edge));
                        }
                    }
                }
            }
        }
    }  

}
