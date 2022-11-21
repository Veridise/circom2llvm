#include "UnderConstraints.hpp"

bool compareFunction(llvm::Function *F1, llvm::Function *F2) {
    int i = F1->getName().str().compare(F2->getName().str());
    return i < 0;
}

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
    NameSet *satisfied_components, Function *F) {
    this->satisfied_components = satisfied_components;
    this->collector = new Collector(F);
    this->nodes = std::vector<ConstraintNode *>();
    this->edges = std::vector<ConstraintEdge *>();
    this->tail_nodes = std::vector<ConstraintNode *>();
    this->statusConfirmed = false;
    this->graph_name = this->collector->template_name;

    for (auto &i : this->collector->input_signal_names) {
        this->createNode(NodeType::InputSignalNode, i);
    }

    for (auto &o : this->collector->output_signal_names) {
        this->createNode(NodeType::OutputSignalNode, o);
    }

    for (auto &c : this->collector->component_names) {
        this->createNode(NodeType::ComponentNode, c);
    }

    // Build graph
    for (auto &constraint : this->collector->constraints) {
        if (!isa<llvm::Instruction>(constraint->getArgOperand(0))) {
            // Very rare status, a signal which is initialized by constraint.
            continue;
        }
        auto constraint_to =
            dyn_cast<llvm::Instruction>(constraint->getArgOperand(0));
        auto tail_node = this->determineValueSource(constraint_to);
        if (tail_node == nullptr) {
            continue;
        }
        this->tail_nodes.push_back(tail_node);

        auto trackedPHI = NameSet();
        auto constraint_from = constraint->getArgOperand(1);
        auto depends = this->determineValueDepends(constraint_from, trackedPHI);
        for (auto d : depends) {
            this->createEdge(d, tail_node);
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
    std::cerr << "Couldn't find the node, type: " << type << ", name: " << name
              << "\n";
}

ConstraintNode *ConstraintGraph::determineValueSource(llvm::Instruction *inst) {
    if (this->collector->isInputSignal(inst)) {
        auto name = this->collector->canonicalizeInput(inst);
        return this->getNode(NodeType::InputSignalNode, name);
    }
    if (this->collector->isOutputSignal(inst)) {
        auto name = this->collector->canonicalizeOutput(inst);
        return this->getNode(NodeType::OutputSignalNode, name);
    }
    if (this->collector->isSignalOfComponent(inst)) {
        auto p = this->collector->canonicalizeSignalOfComponent(inst);
        auto templ_name = p.first;
        auto signal_name = p.second;
        return this->getNode(NodeType::ComponentNode, templ_name);
    }
    if (isa<llvm::LoadInst>(inst) || isa<llvm::GetElementPtrInst>(inst)) {
        if (isa<llvm::Instruction>(inst->getOperand(0))) {
            auto next = dyn_cast<llvm::Instruction>(inst->getOperand(0));
            return this->determineValueSource(next);
        } else {
            return nullptr;
        }
    }
    return nullptr;
}

std::vector<ConstraintNode *> ConstraintGraph::determineValueDepends(
    llvm::Value *v, NameSet trackedPHI) {
    auto res = std::vector<ConstraintNode *>();
    if (!isa<llvm::Instruction>(v)) {
        return res;
    }
    auto inst = dyn_cast<llvm::Instruction>(v);
    if (this->collector->isInputSignal(inst)) {
        auto name = this->collector->canonicalizeInput(inst);
        auto node = this->getNode(NodeType::InputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isOutputSignal(inst)) {
        auto name = this->collector->canonicalizeOutput(inst);
        auto node = this->getNode(NodeType::OutputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isSignalOfComponent(inst)) {
        auto p = this->collector->canonicalizeSignalOfComponent(inst);
        auto templ_name = p.first;
        auto signal_name = p.second;
        auto node = this->getNode(NodeType::ComponentNode, templ_name);
        res.push_back(node);
    } else if (isa<LoadInst>(inst) || isa<GetElementPtrInst>(inst)) {
        auto temp = this->determineValueDepends(inst->getOperand(0), trackedPHI);
        res.insert(res.end(), temp.begin(), temp.end());
    } else if (isa<BinaryOperator>(inst)) {
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd, trackedPHI);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    } else if (isa<PHINode>(inst) && !trackedPHI.count(inst->getName().str())) {
        trackedPHI.insert(inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd, trackedPHI);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    }
    return res;
}

bool ConstraintGraph::calculate(std::vector<ConstraintGraph *> graphs) {
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
                if (from->type == NodeType::ComponentNode) {
                    if (this->satisfied_components->count(from->name)) {
                        this->satisfied_outputs.insert(n->name);
                    }
                }
            }
        }
    }
    this->statusConfirmed = true;
    for (auto c : this->collector->component_names) {
        for (auto g : graphs) {
            if (c == g->graph_name) {
                if (!g->statusConfirmed) {
                    this->statusConfirmed = false;
                }
            }
        }
    }
    return this->satisfied_outputs == this->collector->output_signal_names;
}

void ConstraintGraph::print() {
    for (auto e : this->edges) {
        std::cerr << e->from->name << " --> " << e->to->name << "\n";
        std::cerr << "\n";
    };
}

namespace {
struct UnderConstraints : public ModulePass {
    static char ID;

    // Status
    NameSet satisfied_components;
    std::vector<llvm::Function *> ordered_functions;
    std::vector<ConstraintGraph *> graphs;
    bool isFixed;

    UnderConstraints() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        std::cerr << M.getSourceFileName() << "\n";

        this->ordered_functions = std::vector<llvm::Function *>();
        for (auto &F : M.functions()) {
            llvm::Function *ptr = &F;
            ordered_functions.push_back(ptr);
        }
        llvm::sort(this->ordered_functions, compareFunction);

        this->graphs = std::vector<ConstraintGraph *>();
        this->satisfied_components = NameSet();
        this->isFixed = false;
        auto *ptr = &this->satisfied_components;

        auto hacking_satisfied_components = NameSet();

        for (auto F : this->ordered_functions) {
            if (!isTemplateInitFunc(F)) {
                continue;
            }
            auto g = new ConstraintGraph(ptr, F);
            this->satisfied_components.insert(g->graph_name);
            this->graphs.push_back(g);
        }

        while (!isFixed) {
            auto prev_satisfied_components = NameSet();
            for (auto e : this->satisfied_components) {
                prev_satisfied_components.insert(e);
            }
            for (auto &g : this->graphs) {
                if (!g->statusConfirmed) {
                    if (!g->calculate(this->graphs) &&
                        !hacking_satisfied_components.count(g->graph_name)) {
                        this->satisfied_components.erase(g->graph_name);
                    }
                }
            }
            isFixed = prev_satisfied_components == this->satisfied_components;
        }

        for (auto g : graphs) {
            if (hacking_satisfied_components.count(g->graph_name)) {
                continue;
            }
            std::cerr << "Detecting: " << g->graph_name << "\n";
            for (auto o : g->collector->output_signal_names) {
                if (!g->satisfied_outputs.count(o)) {
                    std::cerr << "Unconstrainted output signal: " << o << "\n";
                }
            }
            g->print();
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