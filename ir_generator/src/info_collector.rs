use crate::{
    environment::{GlobalInformation, InstantiationManager},
    expression_codegen::flat_expressions_from_statement,
    expression_static::resolve_component_instantiation,
    scope_information::ScopeInformation,
    statement::flat_statements,
    template::TemplateInformation,
};
use program_structure::ast::{Expression, SignalType, Statement, VariableType};

pub fn collect_depended_components<'ctx>(
    stmt: &Statement,
    scope_info: &mut ScopeInformation<'ctx>,
) {
    match stmt {
        Statement::Declaration { xtype, name, .. } => match xtype {
            VariableType::Component => {
                scope_info.set_component_var(name, &"".to_string());
            }
            _ => (),
        },
        Statement::Substitution { var, rhe, .. } => match rhe {
            Expression::Call { id, .. } => {
                if scope_info.is_component_var(var) {
                    scope_info.set_component_var(var, id);
                }
                scope_info.set_dependence(id);
            }
            _ => (),
        },
        _ => (),
    }
}

pub fn collect_dependences<'ctx>(expr: &Expression, scope_info: &mut ScopeInformation<'ctx>) {
    match expr {
        Expression::Call { id, .. } => {
            scope_info.set_dependence(id);
        }
        _ => (),
    }
}

pub fn init_template_info(stmts: &Vec<&Statement>) -> TemplateInformation {
    let mut template = TemplateInformation {
        inputs: Vec::new(),
        inters: Vec::new(),
        outputs: Vec::new(),
    };
    for stmt in stmts {
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
    template
}

pub fn collect_instantiations<'ctx>(
    env: &GlobalInformation<'ctx>,
    i_manager: &mut InstantiationManager,
    scope_info: &ScopeInformation<'ctx>,
    body: &Statement,
) {
    let templ_name = scope_info.get_name();
    let p_instantiations = i_manager.get_instantiations(&templ_name);
    let mut new_instantiations = Vec::new();
    for i in p_instantiations {
        let arg_table = scope_info.gen_arg_table(i);
        let stmts = flat_statements(body);
        let mut exprs = Vec::new();
        for stmt in stmts {
            exprs.append(&mut flat_expressions_from_statement(stmt));
        }
        for expr in exprs {
            if expr.is_call() {
                let res = resolve_component_instantiation(env, scope_info, &arg_table, expr);
                match res {
                    Some(p) => {
                        new_instantiations.push(p);
                    }
                    None => {}
                }
            }
        }
    }
    for (templ_name, arg_vals) in new_instantiations {
        i_manager.set_instantiations(&templ_name, &arg_vals);
    }
}
