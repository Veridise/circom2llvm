#include <iostream>
#include <regex>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "InfoCollector.hpp"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

// Definition

using namespace llvm;

enum class NodeType {
    Argument,
    InputSignal,
    IntermediateSignal,
    OutputSignal,
    Variable,
    ComponentInput,
    ComponentOutput,
    Constant,
};

enum EdgeType {
    Assignment,
    Constraint,
    ComponentInternal,
};

std::string nodeTypeEnumToAbbr(NodeType ne);
std::string edgeTypeEnumToAbbr(EdgeType ee);

class ConstraintNode;
class ConstraintEdge;
class ConstraintGraph;

using GraphMap = std::unordered_map<std::string, ConstraintGraph *>;

class ConstraintNode {
   private:
   public:
    NodeType type;
    std::string name;
    // this == edge->_from;
    std::vector<ConstraintEdge *> limits;
    // this == edge->_to;
    std::vector<ConstraintEdge *> depends;
    ConstraintNode(NodeType type, std::string name);
    void addEdge(ConstraintEdge *edge);
    std::vector<ConstraintNode *> getConstraintNeighborhoods();
    bool operator==(const ConstraintNode& b);
    bool operator!=(const ConstraintNode& b);
    void print();
};

using NodeSet = std::unordered_set<ConstraintNode*>;

class ConstraintEdge {
   private:
   public:
    EdgeType type;
    ConstraintNode *from;
    ConstraintNode *to;
    ConstraintEdge(EdgeType type, ConstraintNode *from, ConstraintNode *to);
    void print();
    bool operator==(const ConstraintEdge& b);
    bool operator!=(const ConstraintEdge& b);
};

class ConstraintGraph {
   private:
    NameSet visited_nodes;
    NameSet visited_phis;

    bool is_sat;
    bool is_hack_sat;
    bool is_calculated;

    std::vector<ConstraintNode *> determineValueDepends(llvm::Value *v);

   public:
    GraphMap global_graphs;
    Collector *collector;
    NameSetMap connected_inputs;
    std::vector<ConstraintNode *> nodes;
    std::vector<ConstraintEdge *> edges;

    std::string getName();
    bool getSat();
    ConstraintGraph(GraphMap global_graphs, Collector *collector,
                    bool is_hack_sat);
    ConstraintNode *createNode(NodeType type, std::string name);
    ConstraintEdge *createEdge(EdgeType type, ConstraintNode *from,
                               ConstraintNode *to);
    ConstraintNode *getNode(NodeType type, std::string name);
    NodeSet connectedNodes(ConstraintNode *n);
    void calculate();
    void print();
};
