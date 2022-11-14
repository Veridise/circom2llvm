use std::collections::HashMap;

use inkwell::basic_block::BasicBlock;
use inkwell::builder::Builder;
use inkwell::context::Context;
use inkwell::intrinsics::Intrinsic;
use inkwell::module::Module;
use inkwell::types::{IntType, PointerType, StringRadix};
use inkwell::{AddressSpace, IntPredicate};

use inkwell::values::{
    BasicMetadataValueEnum, BasicValue, BasicValueEnum, FunctionValue, InstructionOpcode,
    InstructionValue, IntValue, PointerValue,
};

use crate::hacking::assert_fn_ret_ty;
use crate::namer::{
    name_constraint, name_entry_block, name_if_block, name_intrinsinc_fn, name_template_struct,
};

const GLOBAL_P: &str = "12539295309507511577697735";
pub static mut APPLY_MOD: bool = true;
pub const MAX_ARRAYSIZE: u32 = 256;

pub struct CodeGen<'ctx> {
    pub context: &'ctx Context,
    pub module: Module<'ctx>,
    pub builder: Builder<'ctx>,

    pub val_ty: IntType<'ctx>,

    pub const_p: IntValue<'ctx>,
    pub const_zero: IntValue<'ctx>,

    pub hacking_ret_ty: HashMap<String, PointerType<'ctx>>,

    // Internal utils
    _global_constraint_fn_val: FunctionValue<'ctx>,
    _global_inlineswitch_fn_val: FunctionValue<'ctx>,
    _global_pow_fn_val: FunctionValue<'ctx>,
    _global_input_output_record: HashMap<String, (Vec<String>, Vec<String>, Vec<String>)>,
}

impl<'ctx> CodeGen<'ctx> {
    pub fn build_array_getter(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let assign_name = "array_getter";
        let res = unsafe {
            self.builder
                .build_in_bounds_gep(array_ptr, indexes, assign_name)
        };
        return self.builder.build_load(res, name);
    }

    pub fn build_array_setter<V: BasicValue<'ctx>>(
        &self,
        array_ptr: PointerValue<'ctx>,
        indexes: &[IntValue<'ctx>],
        name: &str,
        value: V,
    ) {
        let res = unsafe { self.builder.build_in_bounds_gep(array_ptr, indexes, name) };
        let val_ty = value.as_basic_value_enum().get_type();
        if val_ty.is_pointer_type()
            && val_ty
                .into_pointer_type()
                .get_element_type()
                .is_array_type()
        {
            let val_ptr = value.as_basic_value_enum().into_pointer_value();
            let val_arr_ty = val_ty
                .into_pointer_type()
                .get_element_type()
                .into_array_type();
            _ = self
                .builder
                .build_memcpy(res, 4, val_ptr, 4, val_arr_ty.size_of().unwrap());
        } else {
            self.builder.build_store(res, value);
        }
    }

    pub fn build_constraint(&self, lval: IntValue<'ctx>, rval: IntValue<'ctx>) {
        let gv = self
            .module
            .add_global(self.context.bool_type(), None, &name_constraint());
        self.builder.build_call(
            self._global_constraint_fn_val,
            &[lval.into(), rval.into(), gv.as_basic_value_enum().into()],
            &name_constraint(),
        );
    }

    pub fn build_inline_switch(
        &self,
        cond: IntValue<'ctx>,
        lval: IntValue<'ctx>,
        rval: IntValue<'ctx>,
    ) -> IntValue<'ctx> {
        let assign_name = "inline_switch";
        let res = self.builder.build_call(
            self._global_inlineswitch_fn_val,
            &[cond.into(), lval.into(), rval.into()],
            assign_name,
        );
        return res.try_as_basic_value().left().unwrap().into_int_value();
    }

    pub fn build_result_modulo(&self, value: IntValue<'ctx>) -> IntValue<'ctx> {
        // if unsafe { APPLY_MOD } {
        //     let name = &format!("{}.mod", value.get_name().to_str().unwrap())[0..];
        //     return self
        //         .builder
        //         .build_int_signed_rem(value, self._global_p, name);
        // } else {
        //     return value;
        // }
        return value;
    }

    pub fn build_struct_getter(
        &self,
        struct_ptr: PointerValue<'ctx>,
        index: u32,
        name: &str,
    ) -> BasicValueEnum<'ctx> {
        let assign_name = "struct_getter";
        let res = self
            .builder
            .build_struct_gep(struct_ptr, index, assign_name)
            .unwrap();
        return self.builder.build_load(res, name);
    }

    pub fn build_struct_setter<V: BasicValue<'ctx>>(
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

    pub fn build_pow(&self, args: &[BasicMetadataValueEnum<'ctx>], name: &str) -> IntValue<'ctx> {
        return self
            .builder
            .build_call(self._global_pow_fn_val, args, name)
            .try_as_basic_value()
            .unwrap_left()
            .into_int_value();
    }

    pub fn get_input_output_names(
        &self,
        templ_name: &String,
    ) -> Option<&(Vec<String>, Vec<String>, Vec<String>)> {
        return self._global_input_output_record.get(templ_name);
    }

    pub fn set_input_output_names(
        &mut self,
        templ_name: &String,
        v: (Vec<String>, Vec<String>, Vec<String>),
    ) {
        self._global_input_output_record
            .insert(templ_name.clone(), v);
    }

    pub fn ends_with_return(&self, bb: BasicBlock<'ctx>) -> bool {
        let last_inst_op = bb.get_last_instruction();
        let has_return = match last_inst_op {
            Some(last_inst) => last_inst.get_opcode() == InstructionOpcode::Return,
            None => false,
        };
        return has_return;
    }

    pub fn build_block_transferring(
        &self,
        source_bb: BasicBlock<'ctx>,
        destination_bb: BasicBlock<'ctx>,
    ) {
        if !self.ends_with_return(source_bb) {
            self.builder.position_at_end(source_bb);
            self.builder.build_unconditional_branch(destination_bb);
        }
        self.builder.position_at_end(destination_bb);
    }

    pub fn get_real_strt_ptr(
        &self,
        struct_ptr: PointerValue<'ctx>,
        templ_name: &str,
    ) -> PointerValue<'ctx> {
        let strt_ty = struct_ptr.get_type().get_element_type().into_struct_type();
        let real_struct_ptr;
        if strt_ty.count_fields() == 0 {
            let real_strt_ty = self
                .module
                .get_struct_type(&name_template_struct(templ_name))
                .unwrap();
            real_struct_ptr = self.builder.build_pointer_cast(
                struct_ptr,
                real_strt_ty.ptr_type(AddressSpace::Generic),
                "ptr_cast",
            );
        } else {
            real_struct_ptr = struct_ptr;
        }
        return real_struct_ptr;
    }
}

pub fn init_codegen<'ctx>(context: &'ctx Context) -> CodeGen<'ctx> {
    let module = context.create_module("main");
    let builder = context.create_builder();

    // Value Types
    let val_ty = context.i128_type();
    let bool_ty = context.bool_type();
    let constraint_gv_ptr_ty = bool_ty.ptr_type(AddressSpace::Generic);

    // Global Prime
    let const_p = val_ty
        .const_int_from_string(GLOBAL_P, StringRadix::Decimal)
        .unwrap();

    let const_zero = val_ty.const_zero();

    // Add constraint function
    let constraint_fn_args_ty = [val_ty.into(), val_ty.into(), constraint_gv_ptr_ty.into()];
    let constraint_fn_ret_ty = context.void_type();
    let constraint_fn_ty = constraint_fn_ret_ty.fn_type(&constraint_fn_args_ty, false);
    let constraint_fn_name = name_intrinsinc_fn("add_constraint");
    let constraint_fn_val = module.add_function(&constraint_fn_name, constraint_fn_ty, None);
    let constraint_fn_entry_bb = context.append_basic_block(constraint_fn_val, &name_entry_block());
    builder.position_at_end(constraint_fn_entry_bb);

    let assign_name = name_constraint();
    let eq_val = builder.build_int_compare(
        IntPredicate::EQ,
        constraint_fn_val
            .get_first_param()
            .unwrap()
            .into_int_value(),
        constraint_fn_val.get_nth_param(1).unwrap().into_int_value(),
        &assign_name,
    );
    let gv_val = constraint_fn_val
        .get_last_param()
        .unwrap()
        .into_pointer_value();
    builder.build_store(gv_val, eq_val);
    builder.build_return(None);

    // Add inline switch function
    let inlineswitch_fn_args_ty = [bool_ty.into(), val_ty.into(), val_ty.into()];
    let inlineswitch_fn_ret_ty = val_ty;
    let inlineswitch_fn_ty = inlineswitch_fn_ret_ty.fn_type(&inlineswitch_fn_args_ty, false);
    let inlineswitch_fn_name = name_intrinsinc_fn("inline_switch");
    let inlineswitch_fn_val = module.add_function(&inlineswitch_fn_name, inlineswitch_fn_ty, None);
    let inlineswitch_fn_entry_bb =
        context.append_basic_block(inlineswitch_fn_val, &name_entry_block());
    let inlineswitch_fn_t_bb =
        context.append_basic_block(inlineswitch_fn_val, &name_if_block(true, false));
    let inlineswitch_fn_f_bb =
        context.append_basic_block(inlineswitch_fn_val, &name_if_block(false, false));
    builder.position_at_end(inlineswitch_fn_entry_bb);

    builder.build_conditional_branch(
        inlineswitch_fn_val
            .get_first_param()
            .unwrap()
            .into_int_value(),
        inlineswitch_fn_t_bb,
        inlineswitch_fn_f_bb,
    );
    builder.position_at_end(inlineswitch_fn_t_bb);
    builder.build_return(Some(&inlineswitch_fn_val.get_nth_param(1).unwrap()));
    builder.position_at_end(inlineswitch_fn_f_bb);
    builder.build_return(Some(&inlineswitch_fn_val.get_nth_param(2).unwrap()));

    // Add powi function
    let powi_base_ty = context.f128_type();
    let powi_power_ty = context.i32_type();
    let powi_intrinsic = Intrinsic::find("llvm.powi").unwrap();
    let powi_fn_val = powi_intrinsic
        .get_declaration(
            &module,
            &[powi_base_ty.into(), powi_power_ty.into()],
        )
        .unwrap();

    let inlinepowi_fn_args_ty = [val_ty.into(), val_ty.into()];
    let inlinepowi_fn_ret_ty = val_ty;
    let inlinepowi_fn_ty = inlinepowi_fn_ret_ty.fn_type(&inlinepowi_fn_args_ty, false);
    let inlinepowi_fn_name = name_intrinsinc_fn("inline_powi");
    let inlinepowi_fn_val = module.add_function(&inlinepowi_fn_name, inlinepowi_fn_ty, None);
    let inlinepowi_fn_entry_bb = context.append_basic_block(inlinepowi_fn_val, &name_entry_block());
    builder.position_at_end(inlinepowi_fn_entry_bb);

    let origin_base = inlinepowi_fn_val
        .get_first_param()
        .unwrap()
        .into_int_value();
    let origin_power = inlinepowi_fn_val.get_last_param().unwrap().into_int_value();
    let base = builder.build_unsigned_int_to_float(origin_base, powi_base_ty, "inline_powi.base");
    let power = builder.build_int_cast(origin_power, powi_power_ty, "inline_powi.power");
    let powi = builder
        .build_call(powi_fn_val, &[base.into(), power.into()], "inline_powi.cal")
        .try_as_basic_value()
        .unwrap_left();
    let ret = builder.build_float_to_unsigned_int(powi.into_float_value(), val_ty, "inline_powi.ret");
    builder.build_return(Some(&ret));

    let codegen = CodeGen {
        context,
        module,
        builder,

        val_ty,
        const_p,
        const_zero,

        hacking_ret_ty: assert_fn_ret_ty(val_ty),

        _global_constraint_fn_val: constraint_fn_val,
        _global_inlineswitch_fn_val: inlineswitch_fn_val,
        _global_pow_fn_val: inlinepowi_fn_val,
        _global_input_output_record: HashMap::new(),
    };
    return codegen;
}
