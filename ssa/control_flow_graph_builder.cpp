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
		spdlog::debug("=== Function : {} ===", function.getName().str());
		for (const llvm::BasicBlock &block : function) {
			spdlog::debug("\t= Basic Block =");
			spdlog::debug("\tName: {0}", block.getName());
			int i = 0;
            for (const llvm::Instruction &instruction : block) {
				spdlog::debug("\t\tInstruction: {0}", LLVMIRHandler::printInstruction(instruction));	
				
				if (auto* callInstr = llvm::dyn_cast<llvm::CallBase>(&instruction)) {
					spdlog::debug("\t\t-> is callsite");
					callsites.push_back(&instruction);
				} else if (auto* retInstr = llvm::dyn_cast<llvm::ReturnInst>(&instruction)) {
					spdlog::debug("\t\t-> is return statement");
					return_statements.push_back(&instruction);
				}				
				
				node = std::make_unique<ControlFlowGraphNode>(curNodeId, &instruction);	
				spdlog::debug("\t\tContext: {0}", instruction.getParent()->getParent()->getName().str());
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
			if (callee && !callee->isDeclaration() && !callee->empty()) {
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
	
	// connect returns to call sites (interprocedural return edges)
	for (const llvm::Instruction *callInstr : callsites) {
		const auto *callsite = llvm::dyn_cast<llvm::CallBase>(callInstr);
		const llvm::Function *callee = callsite->getCalledFunction();
		
		if (callee && !callee->isDeclaration() && !callee->empty()) {
			// Get instruction after the call
			auto it = llvm::cast<llvm::Instruction>(callInstr)->getIterator();
			++it;
			
			if (it != callInstr->getParent()->end()) {
				const llvm::Instruction* nextInstr = &*it;
				const ControlFlowGraphNode* nextNode = cfg.getNode(nextInstr);
				
				// Connect all returns in this callee to the next instruction
				for (const llvm::Instruction *returnInstr : return_statements) {
					const llvm::Function* returnFunc = llvm::cast<llvm::Instruction>(returnInstr)->getParent()->getParent();
					
					if (returnFunc == callee) {
						const ControlFlowGraphNode* retNode = cfg.getNode(returnInstr);
						
						if ((retNode != nullptr) && (nextNode != nullptr)) {
							edge = std::make_unique<ControlFlowGraphEdge>(retNode, nextNode);
							cfg.addEdge(std::move(edge));
						}
					}
				}
			}
		}
	}
}
