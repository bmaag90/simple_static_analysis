#include "control_flow_graph_builder.hpp"
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>
#include "spdlog/spdlog.h"

ControlFlowGraphBuilder::ControlFlowGraphBuilder(const llvm::Module &module, ControlFlowGraph& cfg)
    : module(module), cfg(cfg) {}

ControlFlowGraphBuilder::ControlFlowGraphBuilder(const LLVMIRHandler &handler, ControlFlowGraph& cfg)
    : module(*handler.getModule()), cfg(cfg) {}

void ControlFlowGraphBuilder::build() {
	
	NodeId curNodeId = 0;
	std::unique_ptr<ControlFlowGraphNode> node;
	const ControlFlowGraphNode* parent_node;
	std::unique_ptr<ControlFlowGraphEdge> edge;
	// add nodes and edges within blocks
	for (const llvm::Function &function : module) {
		for (const llvm::BasicBlock &block : function) {
			spdlog::debug("= Basic Block =");
			spdlog::debug("Name: {0}", block.getName());
			int i = 0;
            for (const llvm::Instruction &instruction : block) {
				spdlog::debug("Instruction: {0}", LLVMIRHandler::printInstruction(instruction));	
				node = std::make_unique<ControlFlowGraphNode>(curNodeId, &instruction);	
				cfg.addNode(std::move(node));
				
				if (i != 0) {
					edge = std::make_unique<ControlFlowGraphEdge>(parent_node, cfg.getNode(curNodeId));
					cfg.addEdge(std::move(edge));
				}
				parent_node = cfg.getNode(curNodeId);
				curNodeId++;
				i++;
			}			
		}
	}
	// connect blocks
	for (const llvm::Function &function : module) {
		for (const llvm::BasicBlock &block : function) {
			const llvm::Instruction* terminator = block.getTerminator();
			const ControlFlowGraphNode* terminatorNode = cfg.getNode(terminator);
			
			for (auto* succBlock : llvm::successors(&block)) {
				const llvm::Instruction* firstInstr = &succBlock->front();
				const ControlFlowGraphNode* firstNode = cfg.getNode(firstInstr);
				if (firstNode == nullptr){
					spdlog::debug("First node in block not part of graph yet");
				}
				edge = std::make_unique<ControlFlowGraphEdge>(terminatorNode, firstNode);
				cfg.addEdge(std::move(edge));
			}
		}
	}
}
