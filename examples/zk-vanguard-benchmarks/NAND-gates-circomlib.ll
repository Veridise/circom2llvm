; ModuleID = 'main'
source_filename = "main"

%t_struct_nand = type { %t_struct_param_nand*, void (%t_struct_nand*)*, i128, i128, i128 }
%t_struct_param_nand = type {}

@constraint = external global i1

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @t_fn_init_nand(%t_struct_nand* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_nand, %t_struct_nand* %0, i32 0, i32 2
  %read_signal_input.a = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %t_struct_nand, %t_struct_nand* %0, i32 0, i32 3
  %read_signal_input.b = load i128, i128* %struct_ptr1, align 4
  %mul = mul i128 %read_signal_input.a, %read_signal_input.b
  %sub = sub i128 1, %mul
  call void @intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.out = getelementptr inbounds %t_struct_nand, %t_struct_nand* %0, i32 0, i32 4
  store i128 %sub, i128* %write_signal_output.out, align 4
  ret void
}

define %t_struct_nand* @t_fn_build_nand(%t_struct_param_nand* %0) {
entry:
  %1 = alloca %t_struct_nand, align 8
  %param = getelementptr inbounds %t_struct_nand, %t_struct_nand* %1, i32 0, i32 0
  store %t_struct_param_nand* %0, %t_struct_param_nand** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_nand, %t_struct_nand* %1, i32 0, i32 1
  store void (%t_struct_nand*)* @t_fn_init_nand, void (%t_struct_nand*)** %init_fn, align 8
  ret %t_struct_nand* %1
}
