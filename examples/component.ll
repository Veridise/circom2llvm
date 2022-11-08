; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_and = type { %struct_template_params_and*, void (%struct_template_circuit_and*)*, i128, i128 }
%struct_template_params_and = type { i128 }
%struct_template_circuit_or = type { %struct_template_params_or*, void (%struct_template_circuit_or*)*, i128, i128 }
%struct_template_params_or = type { i128 }
%struct_template_circuit_test = type { %struct_template_params_test*, void (%struct_template_circuit_test*)*, i128, i128, i128 }
%struct_template_params_test = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1

define void @fn_intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @fn_intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %struct_template_params_and = load %struct_template_params_and*, %struct_template_params_and** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_and, %struct_template_params_and* %struct_template_params_and, i32 0, i32 0
  %struct_template_params_and.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  %inner_input_write__and.a = load i128, i128* %struct_ptr2, align 4
  %mul = mul i128 %inner_input_write__and.a, %struct_template_params_and.n
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__and.out = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 3
  store i128 %mul, i128* %inner_output_write__and.out, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and(%struct_template_params_and* %0) {
entry:
  %1 = alloca %struct_template_circuit_and, align 8
  %struct_template_params_and = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %1, i32 0, i32 0
  store %struct_template_params_and* %0, %struct_template_params_and** %struct_template_params_and, align 8
  %fn_template_init_and = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %1, i32 0, i32 1
  store void (%struct_template_circuit_and*)* @fn_template_init_and, void (%struct_template_circuit_and*)** %fn_template_init_and, align 8
  ret %struct_template_circuit_and* %1
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 0
  %struct_template_params_or = load %struct_template_params_or*, %struct_template_params_or** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_or, %struct_template_params_or* %struct_template_params_or, i32 0, i32 0
  %struct_template_params_or.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  %inner_input_write__or.a = load i128, i128* %struct_ptr2, align 4
  %add = add i128 %inner_input_write__or.a, %struct_template_params_or.n
  %mul = mul i128 %inner_input_write__or.a, %struct_template_params_or.n
  %sub = sub i128 %add, %mul
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__or.out = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 3
  store i128 %sub, i128* %inner_output_write__or.out, align 4
  ret void
}

define %struct_template_circuit_or* @fn_template_build_or(%struct_template_params_or* %0) {
entry:
  %1 = alloca %struct_template_circuit_or, align 8
  %struct_template_params_or = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %1, i32 0, i32 0
  store %struct_template_params_or* %0, %struct_template_params_or** %struct_template_params_or, align 8
  %fn_template_init_or = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %1, i32 0, i32 1
  store void (%struct_template_circuit_or*)* @fn_template_init_or, void (%struct_template_circuit_or*)** %fn_template_init_or, align 8
  ret %struct_template_circuit_or* %1
}

define void @fn_template_init_test(%struct_template_circuit_test* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %0, i32 0, i32 0
  %struct_template_params_test = load %struct_template_params_test*, %struct_template_params_test** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_test, %struct_template_params_test* %struct_template_params_test, i32 0, i32 0
  %struct_template_params_test.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %0, i32 0, i32 2
  %inner_input_write__test.a = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %0, i32 0, i32 3
  %inner_input_write__test.b = load i128, i128* %struct_ptr3, align 4
  %fn_template_build_and = call %struct_template_circuit_and* @fn_template_build_and(i128 %struct_template_params_test.n)
  %fn_template_build_or = call %struct_template_circuit_or* @fn_template_build_or(i128 %struct_template_params_test.n)
  %outter_input_write__and.a = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %fn_template_build_and, i32 0, i32 2
  store i128 %inner_input_write__test.a, i128* %outter_input_write__and.a, align 4
  %outter_input_write__or.a = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %fn_template_build_or, i32 0, i32 2
  store i128 %inner_input_write__test.b, i128* %outter_input_write__or.a, align 4
  %struct_ptr4 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %fn_template_build_and, i32 0, i32 3
  %inner_output_write__and.out = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %fn_template_build_or, i32 0, i32 3
  %inner_output_write__or.out = load i128, i128* %struct_ptr5, align 4
  %add = add i128 %inner_output_write__and.out, %inner_output_write__or.out
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__test.out = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %0, i32 0, i32 4
  store i128 %add, i128* %inner_output_write__test.out, align 4
  ret void
}

define %struct_template_circuit_test* @fn_template_build_test(%struct_template_params_test* %0) {
entry:
  %1 = alloca %struct_template_circuit_test, align 8
  %struct_template_params_test = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %1, i32 0, i32 0
  store %struct_template_params_test* %0, %struct_template_params_test** %struct_template_params_test, align 8
  %fn_template_init_test = getelementptr inbounds %struct_template_circuit_test, %struct_template_circuit_test* %1, i32 0, i32 1
  store void (%struct_template_circuit_test*)* @fn_template_init_test, void (%struct_template_circuit_test*)** %fn_template_init_test, align 8
  ret %struct_template_circuit_test* %1
}
