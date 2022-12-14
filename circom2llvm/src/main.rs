use clap::Parser;
use inkwell::context::Context;
use ir_generator::after_process::remove_opaque_struct_name;
use ir_generator::generator::generate;
use ir_generator::{codegen::init_codegen, summarygen::init_summarygen};
use program_structure::ast::{Definition, AST};
use program_structure::error_definition::Report;
use std::collections::HashSet;
use std::{
    env,
    fs::{self, canonicalize},
    path::PathBuf,
};

#[derive(Parser, Debug)]
#[command(
    author = "Hongbo Wen, whbjzzwjxq@gmail.com",
    version = env!("CARGO_PKG_VERSION"),
    about = "Compile circom code to LLVM IR.",
    long_about = None
)]
struct Args {
    /// Path of the input file or folder.
    #[arg(short, long)]
    input: String,

    /// Path of the output folder, default is the cwd.
    #[arg(short, long)]
    output: Option<String>,

    /// If provided, systematically rewrite all of the paths about circomlib.
    #[arg(short, long)]
    rewrite_circomlib: Option<String>,
}

fn main() {
    let args = Args::parse();
    let input = PathBuf::from(args.input);
    let input_paths: Vec<PathBuf>;
    if input.is_dir() {
        let files_res = fs::read_dir(input);
        match files_res {
            Ok(files) => {
                input_paths = files
                    .map(|i| i.unwrap().path())
                    .filter(|p| {
                        let ext_op = p.extension();
                        match ext_op {
                            Some(ext) => ext == "circom",
                            None => false,
                        }
                    })
                    .collect();
            }
            Err(err) => {
                println!("Error: {}", err);
                return;
            }
        }
    } else {
        input_paths = vec![input];
    }

    let output = match args.output {
        None => env::current_dir().unwrap(),
        Some(o) => PathBuf::from(o),
    };
    if !output.is_dir() {
        println!(
            "Error: output is NOT a directory, current is : {}",
            output.to_string_lossy()
        );
        return;
    }

    let circomlib_path = match args.rewrite_circomlib {
        None => None,
        Some(rc) => Some(PathBuf::from(rc)),
    };

    for input_path in input_paths {
        let input_filename = input_path.file_name().unwrap();
        let output_path = output.join(input_filename).with_extension("ll");
        let output_summary_path = output.join(input_filename).with_extension("json");
        println!("Compiling: {}", input_path.to_string_lossy());
        println!("Output: {}", output_path.to_string_lossy());

        let context = Context::create();
        let mut codegen = init_codegen(&context, &input_path);
        let mut summarygen = init_summarygen();

        // Parsing
        let mut todo_paths: Vec<PathBuf> = vec![input_path.clone()];
        let mut done_paths: HashSet<PathBuf> = HashSet::new();
        let mut asts: Vec<AST> = vec![];
        while todo_paths.len() > 0 {
            let input_path = todo_paths.pop().unwrap();
            let mut working_dir = input_path.clone();
            working_dir.pop();
            match parser::run_parser(input_path, Vec::new()) {
                Ok(ast) => {
                    for i in &ast.includes {
                        let include_path = match &circomlib_path {
                            None => working_dir.join(i),
                            Some(s) => {
                                let include_path = working_dir.join(i);
                                let mut actual_path = PathBuf::new();
                                let mut has_circomlib = false;
                                for p in &include_path {
                                    if has_circomlib {
                                        actual_path.push(p);
                                    }
                                    if p == "circomlib" {
                                        has_circomlib = true;
                                    }
                                }
                                if has_circomlib {
                                    s.join(actual_path)
                                } else {
                                    include_path
                                }
                            }
                        };
                        let abs_path = match canonicalize(&include_path) {
                            Ok(p) => p,
                            Err(_) => {
                                println!("Path is not found: {}", include_path.to_string_lossy());
                                unreachable!();
                            }
                        };
                        if done_paths.contains(&abs_path) {
                            continue;
                        }
                        todo_paths.push(include_path);
                        done_paths.insert(abs_path);
                    }
                    asts.push(ast);
                }
                Err((file_library, report_collection)) => {
                    Report::print_reports(&report_collection, &file_library);
                }
            }
        }

        // Compiling
        let mut definition_names = HashSet::new();
        let mut definitions = Vec::new();
        for ast in &asts {
            for def in ast.get_definitions() {
                match def {
                    Definition::Template { name, .. } => {
                        if definition_names.contains(name) {
                            continue;
                        }
                        definition_names.insert(name.clone());
                        definitions.push(def);
                    }
                    Definition::Function { name, .. } => {
                        if definition_names.contains(name) {
                            continue;
                        }
                        definition_names.insert(name.clone());
                        definitions.push(def);
                    }
                }
            }
        }
        generate(definitions, &mut codegen, &mut summarygen);
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
}
