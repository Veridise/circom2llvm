
use super::codegen::MAX_ARRAYSIZE;

use std::collections::HashMap;

use inkwell::{types::{IntType, ArrayType, PointerType}, AddressSpace};

pub fn assert_fn_ret_ty(val_ty: IntType) -> HashMap<String, PointerType> {
    let mut init: HashMap<&str, ArrayType> = HashMap::new();
    init.insert("long_add_mod", val_ty.array_type(MAX_ARRAYSIZE));
    init.insert("prod_mod", val_ty.array_type(MAX_ARRAYSIZE));
    let mut result: HashMap<String, PointerType> = HashMap::new();
    for (k, v) in init {
        result.insert(k.to_string(), v.ptr_type(AddressSpace::Generic));
    }
    return result;
}
