use crate::after_process::remove_opaque_struct_name;
use crate::codegen::init_codegen;
use crate::environment::{init_env, init_instantiation_manager};
use crate::expression_static::{print_expr, resolve_number_static, Instantiation};
use crate::function::{infer_fn, Function};
use crate::info_collector::collect_instantiations;
use crate::scope::init_scope;
use crate::scope_information::{init_scope_info, ScopeInformation};
use crate::statement::rewrite_stmt;
use crate::summarygen::init_summarygen;
use crate::template::{infer_templ, Template};
use inkwell::context::Context;
use program_structure::ast::{Definition, Expression, Statement};
use std::collections::HashMap;
use std::path::PathBuf;

pub fn resolve_dependence(dependence_graph: &HashMap<String, Vec<String>>) -> Vec<String> {
    let mut all = dependence_graph.len().clone();
    let mut output: Vec<String> = Vec::new();
    while all > 0 {
        let last_all = all.clone();
        for (k, deps) in dependence_graph {
            if output.contains(&k) {
                continue;
            }
            let mut satisfied = true;
            for dep in deps {
                if !output.contains(&dep) && dep != k {
                    satisfied = false;
                }
            }
            if satisfied {
                output.push(k.clone());
                all -= 1;
            }
        }
        if last_all == all {
            println!("Error: Cannot resolve dependences! Perhaps some includes are missing.");
            for (k, deps) in dependence_graph {
                if output.contains(&k) {
                    continue;
                } else {
                    let dep_strs: Vec<&str> = deps
                        .iter()
                        .filter(|s| !output.contains(s))
                        .map(|s| s.as_str())
                        .collect();
                    println!(
                        "Unresolved: {}, Unresolved dependences: {}.",
                        k,
                        dep_strs.join("  ")
                    );
                }
            }
            unreachable!();
        }
    }
    return output;
}

pub fn generate<'ctx>(
    arraysize: u32,
    main_expression: Option<Expression>,
    definitions: Vec<&Definition>,
    input_path: &PathBuf,
    output_path: &PathBuf,
    output_summary_path: &PathBuf,
) {
    let context = Context::create();
    let mut env = init_env(&context, arraysize, !main_expression.is_none());
    let mut i_manager = init_instantiation_manager();
    match main_expression {
        Some(expr) => match expr {
            Expression::Call { meta: _, id, args } => {
                let instantiation: Instantiation = args
                    .iter()
                    .map(|a| resolve_number_static(a) as u32)
                    .collect();
                i_manager.set_instantiations(&id, &instantiation);
            }
            _ => {
                println!(
                    "Error: Unknown main component instantiation expression: {}",
                    print_expr(&expr)
                );
                unreachable!();
            }
        },
        None => (),
    }
    let codegen = init_codegen(&context, &env, input_path);
    let mut summarygen = init_summarygen();
    let mut scope_info_stmt_pairs: Vec<(ScopeInformation, &Statement)> = Vec::new();
    let val_ty = env.val_ty.clone();
    for defin in definitions {
        let (mut scope_info, body) = match defin {
            Definition::Template {
                meta: _,
                name,
                args,
                arg_location: _,
                body,
                parallel: _,
                is_custom_gate: _,
            } => (
                init_scope_info(true, val_ty, name.clone(), args.clone()),
                body,
            ),
            Definition::Function {
                meta: _,
                name,
                args,
                arg_location: _,
                body,
            } => (
                init_scope_info(false, val_ty, name.clone(), args.clone()),
                body,
            ),
        };
        scope_info.resolve_dependences(body);
        scope_info_stmt_pairs.push((scope_info, body));
    }
    let mut dependence_graph: HashMap<String, Vec<String>> = HashMap::new();
    for (scope_info, _) in &scope_info_stmt_pairs {
        let owned_deps = scope_info
            .get_dependences()
            .iter()
            .map(|s| s.clone())
            .collect();
        dependence_graph.insert(scope_info.get_name().clone(), owned_deps);
    }

    let compile_order = resolve_dependence(&dependence_graph);
    let mut unique_compile_order: Vec<String> = Vec::new();
    for c in compile_order {
        if !unique_compile_order.contains(&c) {
            unique_compile_order.push(c);
        }
    }

    fn index(order: &Vec<String>, s: &String) -> usize {
        order.iter().position(|r| r == s).unwrap()
    }

    scope_info_stmt_pairs.sort_by(|a, b| {
        index(&unique_compile_order, a.0.get_name())
            .cmp(&index(&unique_compile_order, b.0.get_name()))
    });

    let mut templ_pairs: Vec<(ScopeInformation, &Statement)> = Vec::new();
    let mut fn_pairs: Vec<(ScopeInformation, &Statement)> = Vec::new();

    for (scope_info, body) in scope_info_stmt_pairs.into_iter() {
        if scope_info.is_template {
            templ_pairs.push((scope_info, body));
        } else {
            fn_pairs.push((scope_info, body));
        }
    }

    for (mut scope_info, body) in fn_pairs {
        infer_fn(&env, &mut scope_info, body);
        env.set_scope_info(&scope_info);
        let i = HashMap::new();
        let scope = init_scope(scope_info.clone(), i);
        let mut f = Function { scope };
        f.build(&env, &codegen, body);
        summarygen.add_function(&f);
    }

    if env.is_instantiation {
        // todo inline loop and if-else
        for (scope_info, body) in &templ_pairs {
            collect_instantiations(&mut env, &mut i_manager, scope_info, body);
        }
    }

    let mut templates: Vec<(Template, Statement)> = Vec::new();

    for (mut scope_info, body) in templ_pairs {
        let scope_name = scope_info.get_name().clone();
        let templ_info = infer_templ(&context, &mut env, &mut scope_info, body);
        env.set_scope_info(&scope_info);
        env.set_template_info(&scope_name, templ_info.clone());
        let scope_info = env.get_scope_info(&scope_name);

        if env.is_instantiation {
            let p_instantiations = i_manager.get_instantiations(&scope_name);
            for arg_vals in p_instantiations {
                let arg_table = scope_info.gen_arg_table(arg_vals);
                let mut arg2val = arg_table.clone();
                let scope = init_scope(scope_info.clone(), arg_table);
                let t = Template {
                    scope,
                    templ_info: templ_info.clone(),
                };
                let body = rewrite_stmt(&env, scope_info, &mut arg2val, body);
                templates.push((t, body));
            }
        } else {
            let arg_table = HashMap::new();
            let scope = init_scope(scope_info.clone(), arg_table);
            let t = Template {
                scope,
                templ_info: templ_info.clone(),
            };
            templates.push((t, body.clone()));
        }
    }

    for (t, body) in &mut templates {
        t.build_function(&env, &codegen, body);
    }

    for (t, body) in &mut templates {
        t.build_instrustions(&env, &codegen, body);
        summarygen.add_component(t);
    }

    let json_result = summarygen.print_to_file(output_summary_path);
    match json_result {
        Ok(..) => (),
        Err(err) => {
            println!("Error: {}", err);
        }
    }
    let result = codegen.module.print_to_file(&output_path);
    match result {
        Ok(_) => {
            remove_opaque_struct_name(&output_path);
        }
        Err(err) => {
            println!("Error: {}", err.to_string());
        }
    }
}
