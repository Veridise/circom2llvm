; ModuleID = 'main'
source_filename = "main"

%t_struct_sigma = type { %t_struct_param_sigma*, void (%t_struct_sigma*)*, i128, i128 }
%t_struct_param_sigma = type {}

@constraint = external global i1*
@constraint.1 = external global i1*
@constraint.2 = external global i1*

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

define void @t_fn_init_sigma(%t_struct_sigma* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_sigma, %t_struct_sigma* %0, i32 0, i32 2
  %read_signal_input.in = load i128, i128* %struct_ptr, align 4
  %mul = mul i128 %read_signal_input.in, %read_signal_input.in
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul.mod, i128 %mul.mod)
  %mul1 = mul i128 %mul.mod, %mul.mod
  %mul1.mod = srem i128 %mul1, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul1.mod, i128 %mul1.mod)
  %mul2 = mul i128 %mul1.mod, %read_signal_input.in
  %mul2.mod = srem i128 %mul2, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %mul2.mod, i128 %mul2.mod)

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_sigma, %t_struct_sigma* %0, i32 0, i32 3
  store i128 %mul2.mod, i128* %write_signal_output.out, align 4
}

define %t_struct_sigma @t_fn_build_sigma(%t_struct_param_sigma* %0) {
entry:
  %1 = alloca %t_struct_sigma, align 8
  %param = getelementptr inbounds %t_struct_sigma, %t_struct_sigma* %1, i32 0, i32 0
  store %t_struct_param_sigma* %0, %t_struct_param_sigma** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_sigma, %t_struct_sigma* %1, i32 0, i32 1
  store void (%t_struct_sigma*)* @t_fn_init_sigma, void (%t_struct_sigma*)** %init_fn, align 8
  ret %t_struct_sigma* %1
}
