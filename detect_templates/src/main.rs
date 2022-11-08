use serde_with::serde_as;
use serde::{Deserialize, Serialize};
use program_structure::ast::{Definition};
use std::collections::HashMap;

use clap::Parser;
use program_structure::error_definition::Report;
use std::{fs, path::PathBuf};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    #[arg(short, long, default_value_t = String::new())]
    filepath: String,

    #[arg(short, long, action)]
    genall: bool,

    #[arg(short, long, default_value_t = String::new())]
    dir: String,

    #[arg(short, long, default_value_t = String::new())]
    res: String,
}

#[serde_as]
#[derive(Serialize, Deserialize, Debug)]
pub struct TemplateDef {
    pub args: Vec<String>,
    pub signals: Vec<Signal>,
}

#[serde_as]
#[derive(Serialize, Deserialize, Debug)]
pub struct Signal {
    pub name: String,
    pub signal_type: String,
    pub array_constraints: Vec<String>
}

fn main() {
    let args = Args::parse();
    let mut paths: Vec<PathBuf> = Vec::new();
    if args.genall {
        for p in fs::read_dir(args.dir).unwrap() {
            let path = p.unwrap().path();
            if path.extension().unwrap() == "circom" {
                paths.push(path);
            }
        }
        println!("Count: {}", paths.len());
    } else {
        paths.push(PathBuf::from(args.filepath));
    }
    let mut result: HashMap<String, HashMap<String, TemplateDef>> = HashMap::new();
    for file_path in paths {
        println!("Current file: {}", file_path.clone().to_str().unwrap());
        let input_path = file_path.clone().into_os_string().into_string().unwrap();
        let mut templates: HashMap<String, TemplateDef> = HashMap::new();
        match parser::run_parser(input_path.clone(), Vec::new()) {
            Ok(ast) => {
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
                            let mut signals: Vec<Signal> = Vec::new();
                            if let program_structure::ast::Statement::Block { meta, stmts } = body {
                                for stmt in stmts {
                                    if let program_structure::ast::Statement::InitializationBlock { meta, xtype, initializations } = stmt {
                                        for init_stmt in initializations {
                                            if let program_structure::ast::Statement::Declaration { meta, xtype, name, dimensions, is_constant } = init_stmt {
                                                if let program_structure::ast::VariableType::Signal(signal_type, _) = xtype {
                                                    let mut array_constraints = Vec::new();
                                                    let signal_type = match signal_type {
                                                        program_structure::ast::SignalType::Input => "Input",
                                                        program_structure::ast::SignalType::Output => "Output",
                                                        program_structure::ast::SignalType::Intermediate => "Intermediate"
                                                    };
                                                    if dimensions.len() > 0 {
                                                        for dim in dimensions {
                                                            if let program_structure::ast::Expression::Variable { meta, name, access } = dim {
                                                                array_constraints.push(name.to_owned());
                                                            } else if let program_structure::ast::Expression::InfixOp { meta, lhe, infix_op, rhe } = dim {
                                                                array_constraints.push("EXPR".to_owned());
                                                            }
                                                        }
                                                    }
                                                    signals.push(Signal {name: name.to_owned(), signal_type: signal_type.to_owned(), array_constraints: array_constraints.to_owned()});
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            let template = TemplateDef {
                                args: args.to_owned(),
                                signals: signals,
                            };
                            templates.insert(name.to_owned(), template);
                        },
                        _ => {}
                    }
                }
            }
            Err((file_library, report_collection)) => {
                Report::print_reports(&report_collection, &file_library);
            }
        };
        result.insert(input_path.clone(), templates);
    }
    let mut result_json = "results.json".to_string();
    if args.res != "" {
        result_json = args.res;
    }
    println!("Save results: {}", result_json.clone());
    fs::write(result_json, serde_json::to_string(&result).unwrap()).expect("Unable to write file");
}
