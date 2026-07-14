#ifndef CALLGRAPH_H
#define CALLGRAPH_H

#include "base.hpp"
#include <unordered_map>
#include <string>
#include <vector>
#include <tuple>
#include <optional>

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

using NodesById = std::unordered_map<NodeId, const CallgraphNode*> ;
using NodesByName = std::unordered_map<std::string, const CallgraphNode*>;
using Edges = std::unordered_map<NodeId, std::vector<const CallgraphEdge*>>;

class Callgraph {
    private:
        // Each node in the call graph is uniquely identified by its NodeId
        NodesById nodesById;
        NodesByName nodesByName;
        // Each source node maps to a vector of edges representing calls to target nodes
        // at different call sites. This allows for multiple edges from the same source to the same target.
        // i.e. multiple calls from the same function to another function at different call sites.
        Edges edges;

    public:
        
        void addNode(const CallgraphNode *node) {
            nodesById.insert({node->getId(), node});
            nodesByName.insert({node->getFunctionName(), node});
        }

        void addEdge(const CallgraphEdge* edge) {
            edges[edge->getSource()->getId()].push_back(edge);
        }

        const NodesById& getNodesById() const {
            return nodesById;
        }

		const NodesByName& getNodesByName() const {
            return nodesByName;
        }

        const Edges& getEdges() const {
            return edges;
        }
        
        void print_dot_graph() const {
			printf("digraph {\n");
			for (auto [nodeId, node] : nodesById){
				printf("\t%u [shape=box, label=\"{%s}\"]\n", nodeId, node->getFunctionName().c_str());
			}
			for (auto [nodeId, out_edges]: edges){
				for (auto edge : out_edges){
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
