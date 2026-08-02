#include "control_flow_graph_builder.hpp"
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>
#include "spdlog/spdlog.h"

#include <vector>

ControlFlowGraphBuilder::ControlFlowGraphBuilder(const llvm::Module &module, ControlFlowGraph& cfg)
    : module(module), cfg(cfg) {}

ControlFlowGraphBuilder::ControlFlowGraphBuilder(const LLVMIRHandler &handler, ControlFlowGraph& cfg)
    : module(*handler.getModule()), cfg(cfg) {}

void ControlFlowGraphBuilder::build() {
	
	NodeId curNodeId = 0;
	std::unique_ptr<ControlFlowGraphNode> node;
	const ControlFlowGraphNode* parent_node;
	std::unique_ptr<ControlFlowGraphEdge> edge;
	
	std::vector<const llvm::Instruction*> callsites;
	std::vector<const llvm::Instruction*> return_statements;
	
	// add nodes and edges within blocks
	for (const llvm::Function &function : module) {
		for (const llvm::BasicBlock &block : function) {
			spdlog::debug("= Basic Block =");
			spdlog::debug("Name: {0}", block.getName());
			int i = 0;
            for (const llvm::Instruction &instruction : block) {
				spdlog::debug("Instruction: {0}", LLVMIRHandler::printInstruction(instruction));	
				
				if (auto* callInstr = llvm::dyn_cast<llvm::CallBase>(&instruction)) {
					spdlog::debug("-> is callsite");
					callsites.push_back(&instruction);
				} else if (auto* retInstr = llvm::dyn_cast<llvm::ReturnInst>(&instruction)) {
					spdlog::debug("-> is return statement");
					return_statements.push_back(&instruction);
				}				
				
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
	// connect callsites
	for (const llvm::Instruction *instruction : callsites){
		const auto *callsite = llvm::dyn_cast<llvm::CallBase>(instruction);
		if (const llvm::Function *callee = callsite->getCalledFunction()) {
			if (!callee->isDeclaration()) {
				if (!callee->empty()) {
					const llvm::Instruction* firstInstr = &callee->front().front();
					const ControlFlowGraphNode* sourceNode = cfg.getNode(instruction);
					const ControlFlowGraphNode* targetNode = cfg.getNode(firstInstr);
					
					if ((sourceNode != nullptr) & (targetNode != nullptr)){
						edge = std::make_unique<ControlFlowGraphEdge>(sourceNode, targetNode);
						cfg.addEdge(std::move(edge));
					} else {
						spdlog::debug("No source and target node found for call");
					}
					
				}									
			}
		}
	}
	
}
