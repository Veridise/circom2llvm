; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_xor = type { %struct_template_params_xor*, void (%struct_template_circuit_xor*)*, i128, i128, i128 }
%struct_template_params_xor = type {}

@constraint = external global i1

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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i128 @llvm.powi.i128.i32(i128, i32) #0

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  %inner_input_write__xor.a = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 3
  %inner_input_write__xor.b = load i128, i128* %struct_ptr1, align 4
  %add = add i128 %inner_input_write__xor.a, %inner_input_write__xor.b
  %mul = mul i128 2, %inner_input_write__xor.a
  %mul2 = mul i128 %mul, %inner_input_write__xor.b
  %sub = sub i128 %add, %mul2
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__xor.out = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 4
  store i128 %sub, i128* %inner_output_write__xor.out, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor(%struct_template_params_xor* %0) {
entry:
  %1 = alloca %struct_template_circuit_xor, align 8
  %struct_template_params_xor = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %1, i32 0, i32 0
  store %struct_template_params_xor* %0, %struct_template_params_xor** %struct_template_params_xor, align 8
  %fn_template_init_xor = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %1, i32 0, i32 1
  store void (%struct_template_circuit_xor*)* @fn_template_init_xor, void (%struct_template_circuit_xor*)** %fn_template_init_xor, align 8
  ret %struct_template_circuit_xor* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
