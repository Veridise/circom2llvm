; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_smtverifiersm = type { %struct_template_params_smtverifiersm*, void (%struct_template_circuit_smtverifiersm*)*, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }
%struct_template_params_smtverifiersm = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1

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

define void @fn_template_init_smtverifiersm(%struct_template_circuit_smtverifiersm* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 2
  %inner_input_write__smtverifiersm.is0 = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 3
  %inner_input_write__smtverifiersm.levins = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 4
  %inner_input_write__smtverifiersm.fnc = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 5
  %inner_input_write__smtverifiersm.prev_top = load i128, i128* %struct_ptr3, align 4
  %struct_ptr4 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 6
  %inner_input_write__smtverifiersm.prev_i0 = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 7
  %inner_input_write__smtverifiersm.prev_iold = load i128, i128* %struct_ptr5, align 4
  %struct_ptr6 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 8
  %inner_input_write__smtverifiersm.prev_inew = load i128, i128* %struct_ptr6, align 4
  %struct_ptr7 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 9
  %inner_input_write__smtverifiersm.prev_na = load i128, i128* %struct_ptr7, align 4
  %mul = mul i128 %inner_input_write__smtverifiersm.prev_top, %inner_input_write__smtverifiersm.levins
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %mul8 = mul i128 %mul, %inner_input_write__smtverifiersm.fnc
  call void @fn_intrinsic_add_constraint(i128 %mul8, i128 %mul8, i1* @constraint.1)
  %sub = sub i128 %inner_input_write__smtverifiersm.prev_top, %mul
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint.2)
  %sub9 = sub i128 %mul, %mul8
  call void @fn_intrinsic_add_constraint(i128 %sub9, i128 %sub9, i1* @constraint.3)
  %sub10 = sub i128 1, %inner_input_write__smtverifiersm.is0
  %mul11 = mul i128 %mul8, %sub10
  call void @fn_intrinsic_add_constraint(i128 %mul11, i128 %mul11, i1* @constraint.4)
  %mul12 = mul i128 %mul, %inner_input_write__smtverifiersm.is0
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 %mul12, i1* @constraint.5)
  %add = add i128 %inner_input_write__smtverifiersm.prev_na, %inner_input_write__smtverifiersm.prev_inew
  %add13 = add i128 %add, %inner_input_write__smtverifiersm.prev_iold
  %add14 = add i128 %add13, %inner_input_write__smtverifiersm.prev_i0
  call void @fn_intrinsic_add_constraint(i128 %add14, i128 %add14, i1* @constraint.6)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__smtverifiersm.st_top = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 10
  store i128 %sub, i128* %inner_output_write__smtverifiersm.st_top, align 4
  %inner_output_write__smtverifiersm.st_i0 = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 11
  store i128 %mul12, i128* %inner_output_write__smtverifiersm.st_i0, align 4
  %inner_output_write__smtverifiersm.st_iold = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 12
  store i128 %mul11, i128* %inner_output_write__smtverifiersm.st_iold, align 4
  %inner_output_write__smtverifiersm.st_inew = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 13
  store i128 %sub9, i128* %inner_output_write__smtverifiersm.st_inew, align 4
  %inner_output_write__smtverifiersm.st_na = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %0, i32 0, i32 14
  store i128 %add14, i128* %inner_output_write__smtverifiersm.st_na, align 4
  ret void
}

define %struct_template_circuit_smtverifiersm* @fn_template_build_smtverifiersm(%struct_template_params_smtverifiersm* %0) {
entry:
  %1 = alloca %struct_template_circuit_smtverifiersm, align 8
  %struct_template_params_smtverifiersm = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %1, i32 0, i32 0
  store %struct_template_params_smtverifiersm* %0, %struct_template_params_smtverifiersm** %struct_template_params_smtverifiersm, align 8
  %fn_template_init_smtverifiersm = getelementptr inbounds %struct_template_circuit_smtverifiersm, %struct_template_circuit_smtverifiersm* %1, i32 0, i32 1
  store void (%struct_template_circuit_smtverifiersm*)* @fn_template_init_smtverifiersm, void (%struct_template_circuit_smtverifiersm*)** %fn_template_init_smtverifiersm, align 8
  ret %struct_template_circuit_smtverifiersm* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
