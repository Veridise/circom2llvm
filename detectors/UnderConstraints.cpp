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

ConstraintGraph::ConstraintGraph(NameSet *satisfied_components, Function *F) {
    this->satisfied_components = satisfied_components;
    this->satisfied_outputs = NameSet();
    this->satisfied_nodes = NameSet();
    this->collector = new Collector(F);
    this->nodes = std::vector<ConstraintNode *>();
    this->edges = std::vector<ConstraintEdge *>();
    this->status_confirmed = false;
    this->graph_name = this->collector->template_name;

    for (auto &i : this->collector->input_signal_names) {
        this->createNode(NodeType::InputSignalNode, i);
    }

    for (auto &i : this->collector->inter_signal_names) {
        this->createNode(NodeType::InterSignalNode, i);
    }

    for (auto &o : this->collector->output_signal_names) {
        this->createNode(NodeType::OutputSignalNode, o);
    }

    for (auto &c : this->collector->component_names) {
        this->createNode(NodeType::ComponentNode, c);
    }

    // Build graph
    for (auto &constraint : this->collector->constraints) {
        this->tracked_phis = NameSet();
        auto constraint_to = constraint->getArgOperand(0);
        auto sources = this->determineValueDepends(constraint_to);

        this->tracked_phis = NameSet();
        auto constraint_from = constraint->getArgOperand(1);
        auto depends = this->determineValueDepends(constraint_from);
        for (auto s : sources) {
            for (auto d : depends) {
                this->createEdge(d, s);
            }
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
    for (auto e : edges) {
        if (e->from == from && e->to == to) {
            return e;
        }
    }
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

std::vector<ConstraintNode *> ConstraintGraph::determineValueDepends(
    llvm::Value *v) {
    auto res = std::vector<ConstraintNode *>();
    if (!isa<llvm::Instruction>(v)) {
        return res;
    }
    auto inst = dyn_cast<llvm::Instruction>(v);
    if (this->collector->isInputSignal(inst)) {
        auto name = this->collector->canonicalizeInputSignal(inst);
        auto node = this->getNode(NodeType::InputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isInterSignal(inst)) {
        auto name = this->collector->canonicalizeInterSignal(inst);
        auto node = this->getNode(NodeType::InterSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isOutputSignal(inst)) {
        auto name = this->collector->canonicalizeOutputSignal(inst);
        auto node = this->getNode(NodeType::OutputSignalNode, name);
        res.push_back(node);
    } else if (this->collector->isSignalOfComponent(inst)) {
        auto p = this->collector->canonicalizeSignalOfComponent(inst);
        auto templ_name = p.first;
        auto signal_name = p.second;
        auto node = this->getNode(NodeType::ComponentNode, templ_name);
        res.push_back(node);
    } else if (isa<LoadInst>(inst) || isa<GetElementPtrInst>(inst)) {
        auto temp = this->determineValueDepends(inst->getOperand(0));
        res.insert(res.end(), temp.begin(), temp.end());
    } else if (isa<BinaryOperator>(inst)) {
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    } else if (isa<PHINode>(inst) &&
               !this->tracked_phis.count(inst->getName().str())) {
        this->tracked_phis.insert(inst->getName().str());
        for (auto &opd : inst->operands()) {
            auto temp = this->determineValueDepends(opd);
            res.insert(res.end(), temp.begin(), temp.end());
        }
    }
    return res;
}

bool ConstraintGraph::connectedToInput(ConstraintNode *n) {
    if (this->visited_nodes.count(n->name)) {
        return this->satisfied_nodes.count(n->name);
    }
    this->visited_nodes.insert(n->name);
    bool res = false;
    if (n->type == NodeType::InputSignalNode) {
        res = true;
    } else if (n->type == NodeType::ComponentNode) {
        if (this->satisfied_components->count(n->name)) {
            for (auto e : n->limits) {
                res = res || this->connectedToInput(e->to);
            }
            for (auto e : n->depends) {
                res = res || this->connectedToInput(e->from);
            }
        } else {
            res = false;
        }
    } else {
        for (auto e : n->limits) {
            res = res || this->connectedToInput(e->to);
        }
        for (auto e : n->depends) {
            res = res || this->connectedToInput(e->from);
        }
    }
    if (res) {
        this->satisfied_nodes.insert(n->name);
    }
    return res;
}

bool ConstraintGraph::calculate(std::vector<ConstraintGraph *> graphs) {
    this->satisfied_outputs = NameSet();
    for (auto n : this->nodes) {
        this->satisfied_nodes = NameSet();
        this->visited_nodes = NameSet();
        bool res = this->connectedToInput(n);
        if (res && n->type == NodeType::OutputSignalNode) {
            this->satisfied_outputs.insert(n->name);
        }
    }
    // status_confirmed
    this->status_confirmed = true;
    for (auto c : this->collector->component_names) {
        for (auto g : graphs) {
            if (c == g->graph_name) {
                if (!g->status_confirmed) {
                    this->status_confirmed = false;
                }
            }
        }
    }
    return this->satisfied_outputs == this->collector->output_signal_names;
}

void ConstraintGraph::print() {
    this->collector->print();
    for (auto e : this->edges) {
        std::cerr << e->from->name << " --> " << e->to->name << "\n";
    };
    std::cerr << "\n";
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
            isFixed = true;
            for (auto &g : this->graphs) {
                if (!g->status_confirmed) {
                    if (!g->calculate(this->graphs) &&
                        !hacking_satisfied_components.count(g->graph_name)) {
                        this->satisfied_components.erase(g->graph_name);
                    }
                    isFixed = false;
                }
            }
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