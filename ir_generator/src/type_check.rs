use inkwell::{values::{BasicValueEnum, PointerValue}, types::{AnyTypeEnum, BasicTypeEnum, PointerType}};


pub fn check_used_value(val: &BasicValueEnum) {
    check_used_type(&val.get_type());
}

pub fn check_stored_value(val: &PointerValue) {
    check_stored_type(&val.get_type());
}

pub fn check_stored_type(ty: &PointerType) {
    let ptr_ele_ty = ty.get_element_type();
    match ptr_ele_ty {
        AnyTypeEnum::IntType(..) => (),
        AnyTypeEnum::PointerType(ptr_ty) => {
            let ptr_ele_ty = ptr_ty.get_element_type();
            if !(ptr_ele_ty.is_array_type() || ptr_ele_ty.is_struct_type()) {
                println!(
                    "Error: Unsupported stored datatype, current is: {}",
                    ptr_ele_ty.print_to_string()
                );
                unreachable!();
            }
        }
        _ => {
            println!(
                "Error: Unsupported stored datatype, current is: {}",
                ty.print_to_string()
            );
            unreachable!();
        }
    }
}

pub fn check_used_type(ty: &BasicTypeEnum) {
    match ty {
        BasicTypeEnum::IntType(..) => (),
        BasicTypeEnum::PointerType(ptr_ty) => {
            let ptr_ele_ty = ptr_ty.get_element_type();
            if !(ptr_ele_ty.is_array_type() || ptr_ele_ty.is_struct_type()) {
                println!(
                    "Error: Unsupported used datatype, current is: {}",
                    ptr_ele_ty.print_to_string()
                );
                unreachable!();
            }
        }
        _ => {
            println!(
                "Error: Unsupported used datatype, current is: {}",
                ty.print_to_string()
            );
            unreachable!();
        }
    }
}
