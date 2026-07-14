#ifndef CALLGRAPH_H
#define CALLGRAPH_H

#include "base.hpp"
#include <unordered_map>
#include <string>
#include <vector>
#include <tuple>
#include <optional>
#include <memory>

class CallgraphNode : public Node {
    private:
        std::string functionName;
        std::string callSite; // Optional: to store the call site information
		
    public:
        CallgraphNode() : Node(), functionName(""), callSite("") {}
        CallgraphNode(NodeId id, const std::string &functionName, const std::string &callSite = "")
            : Node(id), functionName(functionName), callSite(callSite) {}

        const std::string& getFunctionName() const {
            return functionName;
        }
};

class CallgraphEdge : public Edge {
    private:
        std::string callSite; // Optional: to store the call site information
		std::tuple<std::optional<unsigned>,std::optional<unsigned>> lineCol;
		std::string filename;
    public:
        CallgraphEdge() : Edge(nullptr, nullptr), callSite(""), filename(""), lineCol({-1,-1}) {}
        CallgraphEdge(const Node* source, const Node* target, const std::string &callSite = "", std::string filename = "", std::tuple<int,int> lineCol = {-1, -1})
            : Edge(source, target), callSite(callSite), filename(filename), lineCol(lineCol) {}
            
        const std::string& getCallSite() const {
			return callSite;
		}
		
		const std::string getFilename() const {
			return filename;
		}
		
		const std::tuple<std::optional<unsigned>,std::optional<unsigned>> getLineCol() const {
			return lineCol;
		}
		
		const std::optional<unsigned> getLine() const {
			return std::get<0>(lineCol);
		}
		
		const std::optional<unsigned> getCol() const {
			return std::get<1>(lineCol);
		}
};

using CallgraphNodesById = std::unordered_map<NodeId, std::unique_ptr<CallgraphNode>>;
using CallgraphNodesByName = std::unordered_map<std::string, CallgraphNode*>;
using CallgraphEdges = std::unordered_map<NodeId, std::vector<std::unique_ptr<CallgraphEdge>>>;

class Callgraph {
    private:
        CallgraphNodesById nodesById;
        CallgraphNodesByName nodesByName;  // Non-owning pointers
        CallgraphEdges edges;

    public:
        
        void addNode(std::unique_ptr<CallgraphNode> node) {
            CallgraphNode* nodePtr = node.get();
            nodesById.insert({node->getId(), std::move(node)});
            nodesByName.insert({nodePtr->getFunctionName(), nodePtr});
        }

        void addEdge(std::unique_ptr<CallgraphEdge> edge) {
            edges[edge->getSource()->getId()].push_back(std::move(edge));
        }

        const CallgraphNodesById& getNodesById() const {
            return nodesById;
        }

		const CallgraphNodesByName& getNodesByName() const {
            return nodesByName;
        }

        const CallgraphEdges& getEdges() const {
            return edges;
        }
        
        void print_dot_graph() const {
			printf("digraph {\n");
			for (auto& [nodeId, node] : nodesById){
				printf("\t%u [shape=box, label=\"{%s}\"]\n", nodeId, node->getFunctionName().c_str());
			}
			for (auto& [nodeId, out_edges]: edges){
				for (auto& edge : out_edges){
					printf("\t%u -> %u [label=\"{%s};{%s:%d,%d}\"]\n", 
						edge->getSource()->getId(), 
						edge->getTarget()->getId(), 
						edge->getCallSite().c_str(),
						edge->getFilename().c_str(),
						(int)edge->getLine().value_or(-1),
						(int)edge->getCol().value_or(-1));
				}
			}
			printf("}");
		}
};

#endif // CALLGRAPH_H
