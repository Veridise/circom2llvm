use crate::scope::ScopeTrait;

use super::codegen::CodeGen;
use super::function::Function;
use super::scope::{CodegenStagesTrait, Scope};
use super::template::Template;

use program_structure::ast::{Definition, Statement};
use std::collections::HashMap;

pub struct TestSetting {}

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

pub fn generate(
    definitions: Vec<&Definition>,
    codegen: &mut CodeGen,
    test_setting: Option<TestSetting>,
) {
    let mut template_scopes: Vec<(Template, &Statement)> = Vec::new();
    let mut function_scopes: Vec<(Function, &Statement)> = Vec::new();
    for defin in definitions {
        match defin {
            Definition::Template {
                meta: _,
                name,
                args,
                arg_location: _,
                body,
                parallel: _,
                is_custom_gate: _,
            } => {
                let scope = Scope {
                    name: name.clone(),
                    args: args.to_vec(),
                    val_ty: codegen.val_ty,

                    dependences: Vec::new(),

                    var2ty: HashMap::new(),
                    var2comp: HashMap::new(),

                    main_fn_val: None,

                    var2ptr: HashMap::new(),
                    current_exit_block: None,
                };
                let mut template_scope = Template {
                    scope,
                    inputs: Vec::new(),
                    inters: Vec::new(),
                    outputs: Vec::new(),
                };
                template_scope.resolve_dependences(codegen, &body);
                template_scopes.push((template_scope, &body));
            }
            Definition::Function {
                meta: _,
                name,
                args,
                arg_location: _,
                body,
            } => {
                let scope = Scope {
                    name: name.clone(),
                    args: args.to_vec(),
                    val_ty: codegen.val_ty,

                    dependences: Vec::new(),

                    var2ptr: HashMap::new(),
                    var2ty: HashMap::new(),

                    main_fn_val: None,

                    var2comp: HashMap::new(),
                    current_exit_block: None,
                };
                let mut function_scope = Function { scope };
                function_scope.resolve_dependences(codegen, &body);
                function_scopes.push((function_scope, &body));
            }
        }
    }
    let mut dependence_graph: HashMap<String, Vec<String>> = HashMap::new();
    for (t, _) in &template_scopes {
        let owned_deps = t.scope.deps().iter().map(|s| s.clone()).collect();
        dependence_graph.insert(t.scope.name.clone(), owned_deps);
    }
    for (f, _) in &function_scopes {
        let owned_deps = f.scope.deps().iter().map(|s| s.clone()).collect();
        dependence_graph.insert(f.scope.name.clone(), owned_deps);
    }
    let compile_order = resolve_dependence(&dependence_graph);
    let mut unique_compile_order: Vec<String> = Vec::new();
    for c in compile_order {
        if !unique_compile_order.contains(&c) {
            unique_compile_order.push(c);
        }
    }
    for c in &unique_compile_order {
        for (f, body) in &mut function_scopes[0..] {
            if &f.scope.name == c {
                f.infer_types(codegen, body);
                f.build_function(codegen, body);
            }
        }
        for (t, body) in &mut template_scopes[0..] {
            if &t.scope.name == c {
                t.infer_types(codegen, body);
                t.build_function(codegen, body);
            }
        }
    }
    for c in &unique_compile_order {
        for (f, body) in &mut function_scopes[0..] {
            if &f.scope.name == c {
                f.build_instrustions(codegen, body);
            }
        }
        for (t, body) in &mut template_scopes[0..] {
            if &t.scope.name == c {
                t.build_instrustions(codegen, body);
            }
        }
    }
}
