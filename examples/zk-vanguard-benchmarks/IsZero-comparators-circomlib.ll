; ModuleID = 'main'
source_filename = "main"

%t_struct_iszero = type { %t_struct_param_iszero*, void (%t_struct_iszero*)*, i128, i128 }
%t_struct_param_iszero = type {}

@constraint = external global i1
@constraint.1 = external global i1

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

define void @t_fn_init_iszero(%t_struct_iszero* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %0, i32 0, i32 2
  %read_signal_input.in = load i128, i128* %struct_ptr, align 4
  %ne = icmp ne i128 %read_signal_input.in, 0
  %sdiv = sdiv i128 1, %read_signal_input.in
  %inlineswitch = call i128 @intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  %mul = mul i128 sub (i128 0, i128 %read_signal_input.in), %inlineswitch
  %add = add i128 %mul, 1
  call void @intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint)
  %mul1 = mul i128 %read_signal_input.in, %add
  call void @intrinsic_add_constraint(i128 %mul1, i128 0, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output.out = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %0, i32 0, i32 3
  store i128 %add, i128* %write_signal_output.out, align 4
  ret void
}

define %t_struct_iszero* @t_fn_build_iszero(%t_struct_param_iszero* %0) {
entry:
  %1 = alloca %t_struct_iszero, align 8
  %param = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %1, i32 0, i32 0
  store %t_struct_param_iszero* %0, %t_struct_param_iszero** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %1, i32 0, i32 1
  store void (%t_struct_iszero*)* @t_fn_init_iszero, void (%t_struct_iszero*)** %init_fn, align 8
  ret %t_struct_iszero* %1
}
