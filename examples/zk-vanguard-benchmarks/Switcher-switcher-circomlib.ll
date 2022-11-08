; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_switcher = type { %struct_template_params_switcher*, void (%struct_template_circuit_switcher*)*, i128, i128, i128, i128, i128 }
%struct_template_params_switcher = type {}

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

define void @fn_template_init_switcher(%struct_template_circuit_switcher* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %0, i32 0, i32 2
  %inner_input_write__switcher.sel = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %0, i32 0, i32 3
  %inner_input_write__switcher.l = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %0, i32 0, i32 4
  %inner_input_write__switcher.r = load i128, i128* %struct_ptr2, align 4
  %sub = sub i128 %inner_input_write__switcher.r, %inner_input_write__switcher.l
  %mul = mul i128 %sub, %inner_input_write__switcher.sel
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %add = add i128 %mul, %inner_input_write__switcher.l
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.1)
  %add3 = add i128 sub (i128 0, i128 %mul), %inner_input_write__switcher.r
  call void @fn_intrinsic_add_constraint(i128 %add3, i128 %add3, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__switcher.outl = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %0, i32 0, i32 5
  store i128 %add, i128* %inner_output_write__switcher.outl, align 4
  %inner_output_write__switcher.outr = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %0, i32 0, i32 6
  store i128 %add3, i128* %inner_output_write__switcher.outr, align 4
  ret void
}

define %struct_template_circuit_switcher* @fn_template_build_switcher(%struct_template_params_switcher* %0) {
entry:
  %1 = alloca %struct_template_circuit_switcher, align 8
  %struct_template_params_switcher = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %1, i32 0, i32 0
  store %struct_template_params_switcher* %0, %struct_template_params_switcher** %struct_template_params_switcher, align 8
  %fn_template_init_switcher = getelementptr inbounds %struct_template_circuit_switcher, %struct_template_circuit_switcher* %1, i32 0, i32 1
  store void (%struct_template_circuit_switcher*)* @fn_template_init_switcher, void (%struct_template_circuit_switcher*)** %fn_template_init_switcher, align 8
  ret %struct_template_circuit_switcher* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
