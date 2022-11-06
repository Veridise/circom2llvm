use crate::codegen::CodeGen;

use super::scope::TemplateScope;

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
                let mut template_scope = TemplateScope {
                    name: name.clone(),
                    args: args.to_vec(),
                    inputs: Vec::new(),
                    inters: Vec::new(),
                    outputs: Vec::new(),
                    comps: Vec::new(),

                    vars: Vec::new(),
                    var2dim_len: HashMap::new(),
                    var2val: HashMap::new(),

                    init_fn_val: None,
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
                meta,
                name,
                args,
                arg_location,
                body,
            } => unreachable!(),
        }
    }
}
