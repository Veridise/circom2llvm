use inkwell::{
    types::{AnyTypeEnum, BasicType, BasicTypeEnum, PointerType},
    values::{BasicValueEnum, PointerValue},
    AddressSpace,
};

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

pub fn stored_type2used_type<'ctx>(ty: &BasicTypeEnum<'ctx>) -> BasicTypeEnum<'ctx> {
    match ty {
        BasicTypeEnum::ArrayType(arr_ty) => {
            return arr_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
        }
        BasicTypeEnum::StructType(strt_ty) => {
            return strt_ty.ptr_type(AddressSpace::Generic).as_basic_type_enum();
        }
        _ => {
            return ty.clone();
        }
    }
}

pub fn used_type2stored_type<'ctx>(ty: &BasicTypeEnum<'ctx>) -> BasicTypeEnum<'ctx> {
    match ty {
        BasicTypeEnum::PointerType(ptr_ty) => {
            let ele_ty = ptr_ty.get_element_type();
            match ele_ty {
                AnyTypeEnum::ArrayType(arr_ty) => arr_ty.as_basic_type_enum(),
                AnyTypeEnum::StructType(strt_ty) => strt_ty.as_basic_type_enum(),
                AnyTypeEnum::IntType(int_ty) => int_ty.as_basic_type_enum(),
                _ => {
                    println!("Error: Unknown type: {}", ele_ty.print_to_string());
                    unreachable!();
                }
            }
        }
        _ => {
            return ty.clone();
        }
    }
}
