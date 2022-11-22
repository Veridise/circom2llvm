#include <format>
#include <iostream>
#include <regex>
#include <string>
#include <unordered_set>
#include <vector>

#include "InfoCollector.hpp"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"

// Definition

using namespace llvm;

enum NodeType {
    ComponentNode,
    InputSignalNode,
    InterSignalNode,
    OutputSignalNode,
};

class ConstraintNode;
class ConstraintEdge;
class ConstraintGraph;

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

   protected:
    bool operator==(ConstraintNode *b);
};

class ConstraintEdge {
   private:
   public:
    ConstraintNode *from;
    ConstraintNode *to;
    ConstraintEdge(ConstraintNode *from, ConstraintNode *to);

   protected:
    bool operator==(ConstraintEdge &b);
};

class ConstraintGraph {
   private:
   public:
    Collector *collector;
    NameSet *satisfied_components;
    NameSet satisfied_outputs;
    NameSet satisfied_nodes;
    NameSet visited_nodes;
    NameSet tracked_phis;
    std::vector<ConstraintNode *> nodes;
    std::vector<ConstraintEdge *> edges;
    bool status_confirmed;
    std::string graph_name;
    ConstraintGraph(NameSet *satisfied_components,
                    Function *F);
    ConstraintNode *createNode(NodeType type, std::string name);
    ConstraintEdge *createEdge(ConstraintNode *from, ConstraintNode *to);
    ConstraintNode *getNode(NodeType type, std::string name);
    std::vector<ConstraintNode *> determineValueDepends(llvm::Value *v);
    bool calculate(std::vector<ConstraintGraph *> graphs);
    bool connectedToInput(ConstraintNode * n);
    void print();
};
