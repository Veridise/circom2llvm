; ModuleID = 'main'
source_filename = "main"

%t_struct_and = type { %t_struct_param_and*, void (%t_struct_and*)*, i128, i128 }
%t_struct_param_and = type { i128 }
%t_struct_or = type { %t_struct_param_or*, void (%t_struct_or*)*, i128, i128 }
%t_struct_param_or = type { i128 }
%t_struct_test = type { %t_struct_param_test*, void (%t_struct_test*)*, i128, i128, i128 }
%t_struct_param_test = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1

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

define void @t_fn_init_and(%t_struct_and* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_and, %t_struct_and* %0, i32 0, i32 0
  %param = load %t_struct_param_and*, %t_struct_param_and** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_and, %t_struct_param_and* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_and, %t_struct_and* %0, i32 0, i32 2
  %read_signal_input_a = load i128, i128* %struct_ptr2, align 4
  %mul = mul i128 %read_signal_input_a, %params.n
  call void @intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output_out = getelementptr inbounds %t_struct_and, %t_struct_and* %0, i32 0, i32 3
  store i128 %mul, i128* %write_signal_output_out, align 4
  ret void
}

define %t_struct_and* @t_fn_build_and(%t_struct_param_and* %0) {
entry:
  %1 = alloca %t_struct_and, align 8
  %param = getelementptr inbounds %t_struct_and, %t_struct_and* %1, i32 0, i32 0
  store %t_struct_param_and* %0, %t_struct_param_and** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_and, %t_struct_and* %1, i32 0, i32 1
  store void (%t_struct_and*)* @t_fn_init_and, void (%t_struct_and*)** %init_fn, align 8
  ret %t_struct_and* %1
}

define void @t_fn_init_or(%t_struct_or* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_or, %t_struct_or* %0, i32 0, i32 0
  %param = load %t_struct_param_or*, %t_struct_param_or** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_or, %t_struct_param_or* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_or, %t_struct_or* %0, i32 0, i32 2
  %read_signal_input_a = load i128, i128* %struct_ptr2, align 4
  %add = add i128 %read_signal_input_a, %params.n
  %mul = mul i128 %read_signal_input_a, %params.n
  %sub = sub i128 %add, %mul
  call void @intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output_out = getelementptr inbounds %t_struct_or, %t_struct_or* %0, i32 0, i32 3
  store i128 %sub, i128* %write_signal_output_out, align 4
  ret void
}

define %t_struct_or* @t_fn_build_or(%t_struct_param_or* %0) {
entry:
  %1 = alloca %t_struct_or, align 8
  %param = getelementptr inbounds %t_struct_or, %t_struct_or* %1, i32 0, i32 0
  store %t_struct_param_or* %0, %t_struct_param_or** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_or, %t_struct_or* %1, i32 0, i32 1
  store void (%t_struct_or*)* @t_fn_init_or, void (%t_struct_or*)** %init_fn, align 8
  ret %t_struct_or* %1
}

define void @t_fn_init_test(%t_struct_test* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_test, %t_struct_test* %0, i32 0, i32 0
  %param = load %t_struct_param_test*, %t_struct_param_test** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_test, %t_struct_param_test* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_test, %t_struct_test* %0, i32 0, i32 2
  %read_signal_input_a = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %t_struct_test, %t_struct_test* %0, i32 0, i32 3
  %read_signal_input_b = load i128, i128* %struct_ptr3, align 4
  %build_component_and = call %t_struct_and* @t_fn_build_and(i128 %params.n)
  %build_component_or = call %t_struct_or* @t_fn_build_or(i128 %params.n)
  %write_signal_input_outter_a = getelementptr inbounds %t_struct_and, %t_struct_and* %build_component_and, i32 0, i32 2
  store i128 %read_signal_input_a, i128* %write_signal_input_outter_a, align 4
  %write_signal_input_outter_a4 = getelementptr inbounds %t_struct_or, %t_struct_or* %build_component_or, i32 0, i32 2
  store i128 %read_signal_input_b, i128* %write_signal_input_outter_a4, align 4
  %struct_ptr5 = getelementptr inbounds %t_struct_and, %t_struct_and* %build_component_and, i32 0, i32 3
  %read_signal_output_out = load i128, i128* %struct_ptr5, align 4
  %struct_ptr6 = getelementptr inbounds %t_struct_or, %t_struct_or* %build_component_or, i32 0, i32 3
  %read_signal_output_out7 = load i128, i128* %struct_ptr6, align 4
  %add = add i128 %read_signal_output_out, %read_signal_output_out7
  call void @intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %write_signal_output_out = getelementptr inbounds %t_struct_test, %t_struct_test* %0, i32 0, i32 4
  store i128 %add, i128* %write_signal_output_out, align 4
  ret void
}

define %t_struct_test* @t_fn_build_test(%t_struct_param_test* %0) {
entry:
  %1 = alloca %t_struct_test, align 8
  %param = getelementptr inbounds %t_struct_test, %t_struct_test* %1, i32 0, i32 0
  store %t_struct_param_test* %0, %t_struct_param_test** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_test, %t_struct_test* %1, i32 0, i32 1
  store void (%t_struct_test*)* @t_fn_init_test, void (%t_struct_test*)** %init_fn, align 8
  ret %t_struct_test* %1
}
