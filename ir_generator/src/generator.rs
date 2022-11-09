use super::codegen::CodeGen;
use super::function::Function;
use super::scope::{Scope, ScopeCodegenTrait};
use super::template::Template;

use program_structure::ast::{Definition, AST, Statement};
use std::collections::HashMap;

pub struct TestSetting {}

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
                    comps: Vec::new(),
                    vars: Vec::new(),
                    var2dims: HashMap::new(),
                    var2val: HashMap::new(),
                    main_fn_val: None,
                };
                let mut template_scope = Template {
                    scope,
                    inputs: Vec::new(),
                    inters: Vec::new(),
                    outputs: Vec::new(),
                    templ_struct_ptr: None,
                };
                template_scope.initial_name_symbol(codegen, &body);
                template_scope.build_function(codegen, &body);
                codegen.set_input_output_names(
                    &name.to_lowercase().to_string(),
                    (
                        template_scope.inputs.to_vec(),
                        template_scope.outputs.to_vec(),
                    ),
                );
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
                    comps: Vec::new(),
                    vars: Vec::new(),
                    var2dims: HashMap::new(),
                    var2val: HashMap::new(),
                    main_fn_val: None,
                };
                let mut function_scope = Function { scope };
                function_scope.initial_name_symbol(codegen, &body);
                function_scope.build_function(codegen, &body);
                function_scopes.push((function_scope, &body));
            }
        }
    }
    for (mut f, body) in function_scopes {
        f.build_instrustions(codegen, body);
    }
    for (mut t, body) in template_scopes {
        t.build_instrustions(codegen, body);
    }
}
