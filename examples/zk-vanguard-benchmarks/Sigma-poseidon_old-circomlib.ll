; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_sigma = type { %struct_template_params_sigma*, void (%struct_template_circuit_sigma*)*, i128, i128 }
%struct_template_params_sigma = type {}

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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i128 @llvm.powi.i128.i32(i128, i32) #0

define void @fn_template_init_sigma(%struct_template_circuit_sigma* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_sigma, %struct_template_circuit_sigma* %0, i32 0, i32 2
  %inner_input_write__sigma.in = load i128, i128* %struct_ptr, align 4
  %mul = mul i128 %inner_input_write__sigma.in, %inner_input_write__sigma.in
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %mul1 = mul i128 %mul, %mul
  call void @fn_intrinsic_add_constraint(i128 %mul1, i128 %mul1, i1* @constraint.1)
  %mul2 = mul i128 %mul1, %inner_input_write__sigma.in
  call void @fn_intrinsic_add_constraint(i128 %mul2, i128 %mul2, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__sigma.out = getelementptr inbounds %struct_template_circuit_sigma, %struct_template_circuit_sigma* %0, i32 0, i32 3
  store i128 %mul2, i128* %inner_output_write__sigma.out, align 4
  ret void
}

define %struct_template_circuit_sigma* @fn_template_build_sigma(%struct_template_params_sigma* %0) {
entry:
  %1 = alloca %struct_template_circuit_sigma, align 8
  %struct_template_params_sigma = getelementptr inbounds %struct_template_circuit_sigma, %struct_template_circuit_sigma* %1, i32 0, i32 0
  store %struct_template_params_sigma* %0, %struct_template_params_sigma** %struct_template_params_sigma, align 8
  %fn_template_init_sigma = getelementptr inbounds %struct_template_circuit_sigma, %struct_template_circuit_sigma* %1, i32 0, i32 1
  store void (%struct_template_circuit_sigma*)* @fn_template_init_sigma, void (%struct_template_circuit_sigma*)** %fn_template_init_sigma, align 8
  ret %struct_template_circuit_sigma* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
