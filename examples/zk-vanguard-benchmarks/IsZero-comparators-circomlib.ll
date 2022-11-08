; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_iszero = type { %struct_template_params_iszero*, void (%struct_template_circuit_iszero*)*, i128, i128 }
%struct_template_params_iszero = type {}

@constraint = external global i1
@constraint.1 = external global i1

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

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %inner_input_write__iszero.in = load i128, i128* %struct_ptr, align 4
  %ne = icmp ne i128 %inner_input_write__iszero.in, 0
  %sdiv = sdiv i128 1, %inner_input_write__iszero.in
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  %mul = mul i128 sub (i128 0, i128 %inner_input_write__iszero.in), %inline_switch
  %add = add i128 %mul, 1
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint)
  %mul1 = mul i128 %inner_input_write__iszero.in, %add
  call void @fn_intrinsic_add_constraint(i128 %mul1, i128 0, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__iszero.out = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 3
  store i128 %add, i128* %inner_output_write__iszero.out, align 4
  ret void
}

define %struct_template_circuit_iszero* @fn_template_build_iszero(%struct_template_params_iszero* %0) {
entry:
  %1 = alloca %struct_template_circuit_iszero, align 8
  %struct_template_params_iszero = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %1, i32 0, i32 0
  store %struct_template_params_iszero* %0, %struct_template_params_iszero** %struct_template_params_iszero, align 8
  %fn_template_init_iszero = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %1, i32 0, i32 1
  store void (%struct_template_circuit_iszero*)* @fn_template_init_iszero, void (%struct_template_circuit_iszero*)** %fn_template_init_iszero, align 8
  ret %struct_template_circuit_iszero* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
