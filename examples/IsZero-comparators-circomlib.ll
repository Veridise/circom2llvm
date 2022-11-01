; ModuleID = 'main'
source_filename = "main"

%t_struct_iszero = type { %t_struct_param_iszero*, void (%t_struct_iszero*)*, i128, i128 }
%t_struct_param_iszero = type {}

@constraint = external global i1*
@constraint.1 = external global i1*

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
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
  %sdiv.mod = srem i128 %sdiv, 12539295309507511577697735
  %inlineswitch = call i128 @intrinsic_inline_switch(i1 %ne, i128 %sdiv.mod, i128 0)
  %mul = mul i128 srem (i128 sub (i128 0, i128 %read_signal_input.in), i128 12539295309507511577697735), %inlineswitch
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %add = add i128 %mul.mod, 1
  %add.mod = srem i128 %add, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add.mod, i128 %add.mod)
  %mul1 = mul i128 %read_signal_input.in, %add.mod
  %mul1.mod = srem i128 %mul1, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul1.mod, i128 0)

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %0, i32 0, i32 3
  store i128 %add.mod, i128* %write_signal_output.out, align 4
}

define %t_struct_iszero @t_fn_build_iszero(%t_struct_param_iszero* %0) {
entry:
  %1 = alloca %t_struct_iszero, align 8
  %param = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %1, i32 0, i32 0
  store %t_struct_param_iszero* %0, %t_struct_param_iszero** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_iszero, %t_struct_iszero* %1, i32 0, i32 1
  store void (%t_struct_iszero*)* @t_fn_init_iszero, void (%t_struct_iszero*)** %init_fn, align 8
  ret %t_struct_iszero* %1
}
