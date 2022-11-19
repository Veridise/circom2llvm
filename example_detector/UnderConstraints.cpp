#include "UnderConstraints.hpp"

ConstraintNode::ConstraintNode(NodeType type, std::string name) {
    this->type = type;
    this->name = name;
    this->limits = std::vector<ConstraintEdge *>();
    this->depends = std::vector<ConstraintEdge *>();
}

void ConstraintNode::addEdge(ConstraintEdge *edge) {
    if (this == edge->from) {
        this->limits.push_back(edge);
    } else {
        this->depends.push_back(edge);
    }
}

bool ConstraintNode::operator==(ConstraintNode *b) {
    return this->name == b->name && this->type == b->type;
}

ConstraintEdge::ConstraintEdge(ConstraintNode *from, ConstraintNode *to) {
    this->from = from;
    this->to = to;
}

ConstraintGraph::ConstraintGraph(
    std::unordered_set<std::string> *satisfied_components, Function *F) {
    this->satisfied_components = satisfied_components;
    this->_collector = new Collector(F);
    this->nodes = std::vector<ConstraintNode *>();
    this->edges = std::vector<ConstraintEdge *>();
    this->inputs = std::unordered_set<std::string>();
    this->outputs = std::unordered_set<std::string>();
    this->components = std::unordered_set<std::string>();
    this->tail_nodes = std::vector<ConstraintNode *>();
    this->statusConfirmed = false;
    this->name = this->_collector->template_name;

    for (auto &i : this->_collector->input_signals) {
        std::string i_name = this->_collector->getNameOfInputSignal(i);
        this->inputs.insert(i_name);
        this->createNode(NodeType::InputSignalNode, i_name);
    }

    for (auto &o : this->_collector->output_signals) {
        std::string o_name = this->_collector->getNameOfOutputSignal(o);
        this->outputs.insert(o_name);
        this->createNode(NodeType::OutputSignalNode, o_name);
    }

    for (auto &c : this->_collector->components) {
        std::string c_name = canonicalizeTemplateName(c->getCalledFunction());
        this->components.insert(c_name);
        this->createNode(NodeType::ComponentNode, c_name);
    }

    // Build graph
    for (auto &constraint : this->_collector->constraints) {
        auto constraint_to = constraint->getArgOperand(0);
        auto constraint_from = constraint->getArgOperand(1);
        auto to_name = constraint_to->getName().str();
        to_name = canonicalizeValueName(to_name);
        if (!this->inputs.count(to_name) && !this->outputs.count(to_name)) {
            continue;
        }
        ConstraintNode *node;
        if (this->inputs.count(to_name)) {
            node = this->getNode(NodeType::InputSignalNode, to_name);
        } else {
            node = this->getNode(NodeType::OutputSignalNode, to_name);
        };
        this->tail_nodes.push_back(node);
        auto depends = this->trackValueSource(constraint_from);
        for (auto d : depends) {
            this->createEdge(d, node);
        }
    };
}

ConstraintNode *ConstraintGraph::createNode(NodeType type, std::string name) {
    auto node = new ConstraintNode(type, name);
    this->nodes.push_back(node);
    return node;
}

ConstraintEdge *ConstraintGraph::createEdge(ConstraintNode *from,
                                            ConstraintNode *to) {
    auto edge = new ConstraintEdge(from, to);
    from->addEdge(edge);
    to->addEdge(edge);
    this->edges.push_back(edge);
    return edge;
}

ConstraintNode *ConstraintGraph::getNode(NodeType type, std::string name) {
    for (auto &n : this->nodes) {
        if (n->type == type && n->name == name) {
            return n;
        }
    }
    std::cerr << "Couldn't find the node";
    std::cerr << "Type: ";
    std::cerr << type;
    std::cerr << "Name: ";
    std::cerr << name;
    std::cerr << "\n";
}

std::vector<ConstraintNode *> ConstraintGraph::trackValueSource(
    llvm::Value *v) {
    auto res = std::vector<ConstraintNode *>();
    if (isa<llvm::Instruction>(v)) {
        llvm::Instruction *inst = dyn_cast<llvm::Instruction>(v);
        auto name = canonicalizeValueName(inst->getName().str());
        if (this->inputs.count(name)) {
            auto node = this->getNode(NodeType::InputSignalNode, name);
            res.push_back(node);
        } else if (this->outputs.count(name)) {
            auto node = this->getNode(NodeType::OutputSignalNode, name);
            res.push_back(node);
        } else if (isComponent(inst)) {
            auto calledInst = dyn_cast<ComponentInstance>(inst);
            auto templ_name =
                canonicalizeTemplateName(calledInst->getCalledFunction());
            auto node = this->getNode(NodeType::ComponentNode, name);
            res.push_back(node);
        } else if (isa<llvm::BinaryOperator>(inst)) {
            for (auto &opd : inst->operands()) {
                auto temp = ConstraintGraph::trackValueSource(opd);
                res.insert(std::end(res), std::begin(temp), std::end(temp));
            }
        } else {
            // Other value sources, such as constants and arguments.
        }
    } else {
        // Arguments.
    }
    return res;
}

bool ConstraintGraph::calculate() {
    for (auto n : this->tail_nodes) {
        if (n->type == NodeType::InputSignalNode) {
            for (auto d : n->depends) {
                auto from = d->from;
                if (from->type == NodeType::OutputSignalNode) {
                    this->satisfied_outputs.insert(from->name);
                }
            }
        }
        if (n->type == NodeType::OutputSignalNode) {
            for (auto d : n->depends) {
                auto from = d->from;
                if (from->type == NodeType::InputSignalNode) {
                    this->satisfied_outputs.insert(n->name);
                }
            }
        }
    }
    return this->satisfied_outputs == this->outputs;
}

bool compareFunction(llvm::Function *F1, llvm::Function *F2) {
    int i = F1->getName().str().compare(F2->getName().str());
    return i < 0;
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;

    // Status
    std::unordered_set<std::string> satisfied_components;
    std::vector<llvm::Function *> ordered_functions;
    std::vector<ConstraintGraph *> graphs;
    bool isFixed;

    UnderConstraints() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName();
        std::cerr << "\n";

        this->ordered_functions = std::vector<llvm::Function *>();
        for (auto &F : M.functions()) {
            llvm::Function *ptr = &F;
            ordered_functions.push_back(ptr);
        }
        llvm::sort(this->ordered_functions, compareFunction);

        this->graphs = std::vector<ConstraintGraph *>();
        this->satisfied_components = std::unordered_set<std::string>();
        this->isFixed = false;
        auto *ptr = &this->satisfied_components;

        for (auto F : this->ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto g = new ConstraintGraph(ptr, F);
            this->satisfied_components.insert(g->name);
            this->graphs.push_back(g);
        }

        while (!isFixed) {
            auto prev_satisfied_components = std::unordered_set<std::string>();
            for (auto e: this->satisfied_components) {
                prev_satisfied_components.insert(e);
            }
            for (auto &g : this->graphs) {
                if (!g->statusConfirmed) {
                    if (!g->calculate()) {
                        this->satisfied_components.erase(g->name);
                    }
                }
            }
            isFixed = prev_satisfied_components == this->satisfied_components;
        }

        for (auto g : graphs) {
            std::cerr << "Detecting: ";
            std::cerr << g->name;
            std::cerr << "\n";
            for (auto o : g->outputs) {
                if (!g->satisfied_outputs.count(o)) {
                    std::cerr << "Unconstrainted output signal: ";
                    std::cerr << o;
                    std::cerr << "\n";
                }
            }
            std::cerr << "\n";
        }

        return false;
    };
};
}  // namespace

char UnderConstraints::ID = 0;
static RegisterPass<UnderConstraints> X(
    "UnderConstraints",
    "Check whether all of output signals are under constraints.", false, false);