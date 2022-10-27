extern crate num_bigint_dig as num_bigint;
extern crate num_traits;
extern crate serde;
extern crate serde_derive;
#[macro_use]
extern crate lalrpop_util;

lalrpop_mod!(pub lang);

mod errors;
mod include_logic;
mod parser_logic;
mod syntax_sugar_remover;

use program_structure::ast::AST;
use program_structure::error_definition::{Report, ReportCollection};
use program_structure::file_definition::FileLibrary;
use std::path::{Path, PathBuf};

pub type Version = (usize, usize, usize);

pub fn find_file(
    crr_file: PathBuf,
    ext_link_libraries: Vec<PathBuf>,
) -> (bool, String, String, PathBuf, Vec<Report>) {
    let mut found = false;
    let mut path = "".to_string();
    let mut src = "".to_string();
    let mut crr_str_file = crr_file.clone();
    let mut reports = Vec::new();
    let mut i = 0;
    while !found && i < ext_link_libraries.len() {
        let mut p = PathBuf::new();
        let aux = ext_link_libraries.get(i).unwrap();
        p.push(aux);
        p.push(crr_file.clone());
        crr_str_file = p;
        match open_file(crr_str_file.clone()) {
            Ok((new_path, new_src)) => {
                path = new_path;
                src = new_src;
                found = true;
            }
            Err(e) => {
                reports.push(e);
                i = i + 1;
            }
        }
    }
    (found, path, src, crr_str_file, reports)
}

pub fn run_parser(
    file: String,
    link_libraries: Vec<PathBuf>,
) -> Result<AST, (FileLibrary, ReportCollection)> {
    let mut file_library = FileLibrary::new();
    let mut link_libraries2 = link_libraries.clone();
    let mut ext_link_libraries = vec![Path::new("").to_path_buf()];
    ext_link_libraries.append(&mut link_libraries2);
    // while let Some(crr_file) = FileStack::take_next(&mut file_stack) {
    //     // Find file
    //     let (found, path, src, crr_str_file, reports) =
    //         find_file(crr_file, ext_link_libraries.clone());
    //     if !found {
    //         return Result::Err((file_library.clone(), reports));
    //     }
    //     let file_id = file_library.add_file(path.clone(), src.clone());

    //     // Parse single file
    //     let program =
    //         parser_logic::parse_file(&src, file_id);
    //     includes_graph.add_node(
    //         crr_str_file,
    //         program.custom_gates,
    //         program.custom_gates_declared,
    //     );
    //     let includes = program.includes;
    //     definitions.push((file_id, program.definitions));
    //     for include in includes {
    //         let path_include =
    //             FileStack::add_include(&mut file_stack, include.clone(), &link_libraries.clone())
    //                 .map_err(|e| (file_library.clone(), vec![e]))?;
    //         includes_graph
    //             .add_edge(path_include)
    //             .map_err(|e| (file_library.clone(), vec![e]))?;
    //     }
    //     warnings.append(
    //         &mut check_number_version(
    //             path.clone(),
    //             program.compiler_version,
    //             parse_number_version(version),
    //         )
    //         .map_err(|e| (file_library.clone(), vec![e]))?,
    //     );
    //     if program.custom_gates {
    //         check_custom_gates_version(
    //             path,
    //             program.compiler_version,
    //             parse_number_version(version),
    //         )
    //         .map_err(|e| (file_library.clone(), vec![e]))?
    //     }
    // }

    // let errors: ReportCollection = includes_graph.get_problematic_paths().iter().map(|path|
    //         Report::error(
    //             format!(
    //                 "Missing custom templates pragma in file {} because of the following chain of includes {}",
    //                 path.last().unwrap().display(),
    //                 IncludesGraph::display_path(path)
    //             ),
    //             ReportCode::CustomGatesPragmaError
    //         )
    //     ).collect();
    // if errors.len() > 0 {
    //     Err((file_library, errors))
    // } else {
    //     let result_program_archive = ProgramArchive::new(
    //         file_library,
    //         main_id,
    //         main_component,
    //         definitions,
    //         custom_gates,
    //     );
    //     match result_program_archive {
    //         Err((lib, rep)) => Err((lib, rep)),
    //         Ok(mut program_archive) => {
    //             let lib = program_archive.get_file_library().clone();
    //             let program_archive_result = apply_syntactic_sugar(&mut program_archive);
    //             match program_archive_result {
    //                 Result::Err(v) => Result::Err((lib, vec![v])),
    //                 Result::Ok(()) => Ok((program_archive, warnings)),
    //             }
    //         }
    //     }
    // }

    // Find file
    let (found, path, src, _, reports) = find_file(PathBuf::from(file), ext_link_libraries.clone());
    if !found {
        return Result::Err((file_library.clone(), reports));
    }
    let file_id = file_library.add_file(path.clone(), src.clone());

    // Parse single file
    return parser_logic::parse_file(&src, file_id).map_err(|e| (file_library.clone(), vec![e]));
}

fn open_file(path: PathBuf) -> Result<(String, String), Report> /* path, src */ {
    use errors::FileOsError;
    use std::fs::read_to_string;
    let path_str = format!("{:?}", path);
    read_to_string(path)
        .map(|contents| (path_str.clone(), contents))
        .map_err(|_| FileOsError {
            path: path_str.clone(),
        })
        .map_err(|e| FileOsError::produce_report(e))
}
