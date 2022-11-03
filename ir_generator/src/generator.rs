use crate::codegen::CodeGen;

use super::scope::TemplateScope;

use program_structure::{ast::{Definition, AST}};
use std::{collections::HashMap};

pub struct TestSetting {

}

pub fn generate(ast: AST, codegen: &CodeGen, test_setting: Option<TestSetting>) {
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
                let mut template_codegen = TemplateScope {
                    name,
                    args,
                    body,
                    inputs: Vec::new(),
                    inters: Vec::new(),
                    outputs: Vec::new(),

                    vars: Vec::new(),
                    var2dims: HashMap::new(),
                    var2val: HashMap::new(),

                    init_fn_val: None,
                    templ_struct_ptr: None,
                };
                template_codegen.gen_ir(&codegen)
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
