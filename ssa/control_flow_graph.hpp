#ifndef CONTROL_FLOW_GRAPH_H
#define CONTROL_FLOW_GRAPH_H

#include "base.hpp"
#include "llvm_ir.hpp"
#include <llvm/IR/Instructions.h>
#include <memory>

class ControlFlowGraphNode : public Node {
	private:
		const llvm::Instruction* instruction;

	public:
		ControlFlowGraphNode() = delete;
		ControlFlowGraphNode(NodeId id, const llvm::Instruction* instruction)
			: Node(id), instruction(instruction) {}

		const llvm::Instruction* getInstruction() const {
			return instruction;
		}
};

class ControlFlowGraphEdge : public Edge {
	
	public:
		ControlFlowGraphEdge() : Edge(nullptr, nullptr) {}
		ControlFlowGraphEdge(const Node* source, const Node* target) 
			: Edge(source, target) {}

};

using ControlFlowGraphNodes = std::unordered_map<NodeId, std::unique_ptr<ControlFlowGraphNode>>; 
using ControlFlowGraphEdges = std::unordered_map<NodeId, std::vector<std::unique_ptr<ControlFlowGraphEdge>>>;

class ControlFlowGraph {
	private:
		ControlFlowGraphNodes nodes;
		ControlFlowGraphEdges edges;
		std::unordered_map<const llvm::Instruction*, NodeId> instrToNodeId; 
		
	public:
        
        void addNode(std::unique_ptr<ControlFlowGraphNode> node) {
			instrToNodeId[node->getInstruction()] = node->getId();
            nodes.insert({node->getId(), std::move(node)});
            
        }

        void addEdge(std::unique_ptr<ControlFlowGraphEdge> edge) {
            edges[edge->getSource()->getId()].push_back(std::move(edge));
        }

        const ControlFlowGraphNodes& getNodes() const {
            return nodes;
        }

        const ControlFlowGraphEdges& getEdges() const {
            return edges;
        }
        
        const ControlFlowGraphNode* getNode(NodeId id) const {
            auto it = nodes.find(id);
            return it != nodes.end() ? it->second.get() : nullptr;
        }
		
		const ControlFlowGraphNode* getNode(const llvm::Instruction* instr) const {
            auto it = instrToNodeId.find(instr);
            if (it == instrToNodeId.end()) {
                return nullptr;
            }
            return getNode(it->second);
        }
        
        void print_dot_graph() const {
			printf("digraph {\n");
			for (auto& [nodeId, node] : nodes){
				printf("\t%u [shape=box, label=\"{%s}\"]\n", nodeId, LLVMIRHandler::printInstruction(*(node->getInstruction())).c_str());
			}
			for (auto& [nodeId, out_edges]: edges){
				for (auto& edge : out_edges){
					printf("\t%u -> %u\n", 
						edge->getSource()->getId(), 
						edge->getTarget()->getId()
					);
				}
			}
			printf("}");
		}
};
#endif // CONTROL_FLOW_GRAPH_H
