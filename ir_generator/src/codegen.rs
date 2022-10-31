use inkwell::basic_block::BasicBlock;
use inkwell::builder::Builder;
use inkwell::context::Context;
use inkwell::module::{Linkage, Module};
use inkwell::types::{FunctionType, IntType, PointerType, StringRadix, StructType};
use inkwell::{AddressSpace, IntPredicate};

use inkwell::values::{
    BasicValue, BasicValueEnum, FunctionValue, InstructionValue, IntValue, PointerValue,
};



const GLOBAL_P: &str = "12539295309507511577697735";
pub static mut APPLY_MOD: bool = true;

pub struct CodeGen<'ctx> {
    pub context: &'ctx Context,
    pub module: Module<'ctx>,
    pub builder: Builder<'ctx>,

    pub val_ty: IntType<'ctx>,

    // Internal utils
    _global_p: IntValue<'ctx>,
    _global_constraint_ptr_ty: PointerType<'ctx>,
    _global_constraint_fn_val: FunctionValue<'ctx>,
    _global_constraint_count: usize,
}

impl<'ctx> CodeGen<'ctx> {
    pub fn define_struct(&self, name: &str) -> (StructType<'ctx>, PointerType<'ctx>) {
        let struct_ty = self.context.opaque_struct_type(&name.to_lowercase());
        let struct_ptr_ty = struct_ty.ptr_type(AddressSpace::Generic);
        return (struct_ty, struct_ptr_ty);
    }

    pub fn define_func(
        &self,
        name: &str,
        func_ty: FunctionType<'ctx>,
        linkage: Option<Linkage>,
        switch: bool,
    ) -> (FunctionValue<'ctx>, BasicBlock<'ctx>) {
        let func_val = self.module.add_function(name, func_ty, linkage);
        let entry_bb = self.context.append_basic_block(func_val, "entry");
        if switch {
            self.builder.position_at_end(entry_bb);
        }
        return (func_val, entry_bb);
    }

    pub fn get_from_struct(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, "struct_ptr")
            .unwrap();
        return self.builder.build_load(res, name);
    }

    pub fn set_to_struct<V: BasicValue<'ctx>>(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
        value: V,
    ) -> InstructionValue<'ctx> {
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, name)
            .unwrap();
        return self.builder.build_store(res, value);
    }

    pub fn mod_result(&self, value: IntValue<'ctx>) -> IntValue<'ctx> {
        if unsafe { APPLY_MOD } {
            let name = value.get_name().to_str().unwrap();
            return self.builder.build_int_signed_rem(value, self._global_p, name);
        } else {
            return value;
        }
    }

    pub fn add_constraint(&self, lval: IntValue<'ctx>, rval: IntValue<'ctx>) {
        let constraint_v_name = format!("constraint_{}", self._global_constraint_count);
        self.module
            .add_global(self._global_constraint_ptr_ty, None, &constraint_v_name);
        self.builder.build_call(
            self._global_constraint_fn_val,
            &[lval.into(), rval.into()],
            "",
        );
    }
}

pub fn init_codegen<'ctx>(context: &'ctx Context) -> CodeGen<'ctx> {
    let module = context.create_module("main");
    let builder = context.create_builder();

    // Global Prime
    let global_p = context
        .i128_type()
        .const_int_from_string(GLOBAL_P, StringRadix::Decimal)
        .unwrap();

    // Value Types
    let val_ty = context.i128_type();
    let bool_ty = context.bool_type();
    let constraint_gv_ptr_ty = bool_ty.ptr_type(AddressSpace::Generic);

    // Add constraint function
    let args_ty = [val_ty.into(), val_ty.into(), constraint_gv_ptr_ty.into()];
    let ret_ty = context.void_type();
    let func_ty = ret_ty.fn_type(&args_ty, false);
    let func_name = "intrinsic_add_constraint";
    let func_val = module.add_function(func_name, func_ty, None);
    let entry_bb = context.append_basic_block(func_val, "entry");
    builder.position_at_end(entry_bb);

    let temp_name = "constraint";
    let eq_val = builder.build_int_compare(
        IntPredicate::EQ,
        func_val.get_first_param().unwrap().into_int_value(),
        func_val.get_nth_param(1).unwrap().into_int_value(),
        temp_name,
    );
    let gv_val = func_val.get_last_param().unwrap().into_pointer_value();
    builder.build_store(gv_val, eq_val);

    let codegen = CodeGen {
        context,
        module,
        builder,

        val_ty,
        _global_p: global_p,
        _global_constraint_ptr_ty: constraint_gv_ptr_ty,
        _global_constraint_fn_val: func_val,
        _global_constraint_count: 0,
    };
    return codegen;
}
