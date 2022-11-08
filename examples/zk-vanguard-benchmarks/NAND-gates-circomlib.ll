; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_nand = type { %struct_template_params_nand*, void (%struct_template_circuit_nand*)*, i128, i128, i128 }
%struct_template_params_nand = type {}

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

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  %inner_input_write__nand.a = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 3
  %inner_input_write__nand.b = load i128, i128* %struct_ptr1, align 4
  %mul = mul i128 %inner_input_write__nand.a, %inner_input_write__nand.b
  %sub = sub i128 1, %mul
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__nand.out = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 4
  store i128 %sub, i128* %inner_output_write__nand.out, align 4
  ret void
}

define %struct_template_circuit_nand* @fn_template_build_nand(%struct_template_params_nand* %0) {
entry:
  %1 = alloca %struct_template_circuit_nand, align 8
  %struct_template_params_nand = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %1, i32 0, i32 0
  store %struct_template_params_nand* %0, %struct_template_params_nand** %struct_template_params_nand, align 8
  %fn_template_init_nand = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %1, i32 0, i32 1
  store void (%struct_template_circuit_nand*)* @fn_template_init_nand, void (%struct_template_circuit_nand*)** %fn_template_init_nand, align 8
  ret %struct_template_circuit_nand* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
