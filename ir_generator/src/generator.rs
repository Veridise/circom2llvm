use super::codegen::CodeGen;
use super::function::Function;
use super::scope::Scope;
use super::template::Template;

use program_structure::ast::{Definition, AST};
use std::collections::HashMap;

pub struct TestSetting {}

pub fn generate(ast: AST, codegen: &mut CodeGen, test_setting: Option<TestSetting>) {
    let definitions = ast.get_definitions();
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
                    var2dim_len: HashMap::new(),
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
                template_scope.gen_ir(&codegen, body);
                codegen.set_input_output_names(
                    &name.to_lowercase().to_string(),
                    (
                        template_scope.inputs.to_vec(),
                        template_scope.outputs.to_vec(),
                    ),
                );
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
                    var2dim_len: HashMap::new(),
                    var2val: HashMap::new(),
                    main_fn_val: None,
                };
                let mut function_scope = Function { scope };
                function_scope.gen_ir(&codegen, body);
            }
        }
    }
}
