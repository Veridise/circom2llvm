use crate::scope::ScopeTrait;

use super::codegen::CodeGen;
use super::function::Function;
use super::scope::{Scope, ScopeCodegenTrait};
use super::template::Template;

use program_structure::ast::{Definition, Statement, AST};
use std::collections::HashMap;

pub struct TestSetting {}

pub fn resolve_dependence(
    dependence_graph: &HashMap<String, Vec<String>>,
) -> Result<Vec<String>, &str> {
    let mut all = dependence_graph.len().clone();
    let mut output: Vec<String> = Vec::new();
    while all > 0 {
        let last_all = all;
        for (k, deps) in dependence_graph {
            if output.contains(&k) {
                continue;
            }
            let mut satisfied = true;
            for dep in deps {
                if !output.contains(&dep) {
                    satisfied = false;
                }
            }
            if satisfied {
                output.push(k.clone());
                all -= 1;
            }
        }
        if last_all == all {
            return Err("Cannot resolve dependences!");
        }
    }
    return Ok(output);
}

pub fn gen_compile_order<'ctx> (
    template_scopes: &Vec<(Template<'ctx>, &Statement)>,
    function_scopes: &Vec<(Function<'ctx>, &Statement)>,
) -> Vec<String> {
    let mut dependence_graph: HashMap<String, Vec<String>> = HashMap::new();
    for (t, _) in template_scopes {
        let owned_deps = t.scope.deps().iter().map(|&s| {s.clone()}).collect();
        dependence_graph.insert(t.scope.name.clone(), owned_deps);
    }
    for (f, _) in function_scopes {
        let owned_deps = f.scope.deps().iter().map(|&s| {s.clone()}).collect();
        dependence_graph.insert(f.scope.name.clone(), owned_deps);
    }
    let compile_order_res = resolve_dependence(&dependence_graph);
    match compile_order_res {
        Ok(compile_order) => {
            return compile_order;
        },
        Err(err) => {
            println!("Err: {}", err);
            unreachable!();
        }
    }
}

pub fn generate(ast: AST, codegen: &mut CodeGen, test_setting: Option<TestSetting>) {
    let definitions = ast.get_definitions();
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
                    dep_comps: Vec::new(),
                    dep_fns: Vec::new(),
                    vars: Vec::new(),
                    var2dims: HashMap::new(),
                    var2val: HashMap::new(),
                    var2ty: HashMap::new(),
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
                    dep_comps: Vec::new(),
                    dep_fns: Vec::new(),
                    vars: Vec::new(),
                    var2dims: HashMap::new(),
                    var2val: HashMap::new(),
                    var2ty: HashMap::new(),
                    main_fn_val: None,
                };
                let mut function_scope = Function { scope };
                function_scope.initial_info(codegen, &body);
                function_scopes.push((function_scope, &body));
            }
        }
    }
    let compile_order = gen_compile_order(&template_scopes, &function_scopes);
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
