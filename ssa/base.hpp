#ifndef BASE_H
#define BASE_H

typedef unsigned int NodeId;

class Node {
    private:
        NodeId id;
    
    public:
        Node() : id(0) {}
        Node(NodeId id) : id(id) {}

        NodeId getId() const {
            return id;
        }

        bool operator==(const Node &other) const {
            return id == other.id;
        }

        bool operator!=(const Node &other) const {
            return !(*this == other);
        }
};

class Edge {
    private:
        Node source;
        Node target;

    public:
        Edge(const Node &source, const Node &target) : source(source), target(target) {}

        const Node& getSource() const {
            return source;
        }

        const Node& getTarget() const {
            return target;
        }
};

#endif // BASE_H