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
    std::unordered_set<std::string> *satisfied_components;
    std::unordered_set<std::string> satisfied_outputs;
    std::vector<ConstraintNode *> nodes;
    std::vector<ConstraintEdge *> edges;
    std::vector<ConstraintNode *> tail_nodes;
    bool statusConfirmed;
    std::string graph_name;
    ConstraintGraph(std::unordered_set<std::string> *satisfied_components,
                    Function *F);
    ConstraintNode *createNode(NodeType type, std::string name);
    ConstraintEdge *createEdge(ConstraintNode *from, ConstraintNode *to);
    ConstraintNode *getNode(NodeType type, std::string name);
    ConstraintNode *determineValueSource(llvm::Instruction *inst);
    std::vector<ConstraintNode *> determineValueDepends(llvm::Value *v);
    bool calculate(std::vector<ConstraintGraph *> graphs);
};
