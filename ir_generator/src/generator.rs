use crate::scope::ScopeTrait;

use super::codegen::CodeGen;
use super::function::Function;
use super::scope::{Scope, ScopeCodegenTrait};
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
            for (k, deps) in dependence_graph {
                if output.contains(&k) {
                    println!("Resolved: {}", k);
                } else {
                    let dep_strs: Vec<&str> = deps.iter().map(|s| s.as_str()).collect();
                    println!(
                        "UnResolved: {}, Deps: {}",
                        k,
                        dep_strs.join("-")
                    );
                }
            }
            println!("Err: Cannot resolve dependences!");
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
                    dependences: Vec::new(),
                    vars: Vec::new(),
                    var2val: HashMap::new(),
                    var2ty: HashMap::new(),
                    var2comp: HashMap::new(),
                    val_ty: codegen.val_ty,
                    main_fn_val: None,
                };
                let mut template_scope = Template {
                    scope,
                    inputs: Vec::new(),
                    inters: Vec::new(),
                    outputs: Vec::new(),
                    templ_struct_ptr: None,
                };
                template_scope.initial_info(codegen, &body);
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
                    dependences: Vec::new(),
                    vars: Vec::new(),
                    var2val: HashMap::new(),
                    var2ty: HashMap::new(),
                    var2comp: HashMap::new(),
                    val_ty: codegen.val_ty,
                    main_fn_val: None,
                };
                let mut function_scope = Function { scope };
                function_scope.initial_info(codegen, &body);
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
    for c in compile_order {
        for (f, body) in &mut function_scopes[0..] {
            if f.scope.name == c {
                f.build_function(codegen, body);
                f.build_instrustions(codegen, body);
            }
        }
        for (t, body) in &mut template_scopes[0..] {
            if t.scope.name == c {
                t.build_function(codegen, body);
                t.build_instrustions(codegen, body);
            }
        }
    }
}
