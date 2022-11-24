use crate::{scope::ScopeTrait, template::Template};
use program_structure::ast::{Expression, SignalType, Statement, VariableType};

pub fn collect_depended_components<'ctx>(stmt: &Statement, scope: &mut dyn ScopeTrait<'ctx>) {
    match stmt {
        Statement::Declaration { xtype, name, .. } => match xtype {
            VariableType::Component => {
                scope.add_comp_var(name);
            }
            _ => (),
        },
        Statement::Substitution { var, rhe, .. } => match rhe {
            Expression::Call { id, .. } => {
                if scope.is_comp_var(var) {
                    scope.set_known_comp(var, id);
                }
                scope.add_dependence(id);
            }
            _ => (),
        },
        _ => (),
    }
}

pub fn collect_dependences<'ctx>(expr: &Expression, scope: &mut dyn ScopeTrait<'ctx>) {
    match expr {
        Expression::Call { id, .. } => {
            scope.add_dependence(id);
        }
        _ => (),
    }
}

pub fn collect_signal<'ctx>(stmt: &Statement, template: &mut Template<'ctx>) {
    match stmt {
        Statement::InitializationBlock {
            meta: _,
            xtype,
            initializations,
        } => match xtype {
            VariableType::Signal(signal_type, _) => {
                for init in initializations {
                    match init {
                        Statement::Declaration { name, .. } => {
                            match signal_type {
                                SignalType::Input => {
                                    template.add_input(name);
                                }
                                SignalType::Intermediate => {
                                    template.add_intermediate(name);
                                }
                                SignalType::Output => {
                                    template.add_output(name);
                                }
                            };
                        }
                        _ => unreachable!(),
                    }
                }
            }
            _ => (),
        },
        _ => (),
    }
}
