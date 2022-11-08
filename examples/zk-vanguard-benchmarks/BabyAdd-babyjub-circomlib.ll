; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_babyadd = type { %struct_template_params_babyadd*, void (%struct_template_circuit_babyadd*)*, i128, i128, i128, i128, i128, i128 }
%struct_template_params_babyadd = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1

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

define void @fn_template_init_babyadd(%struct_template_circuit_babyadd* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 2
  %inner_input_write__babyadd.x1 = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 3
  %inner_input_write__babyadd.y1 = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 4
  %inner_input_write__babyadd.x2 = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 5
  %inner_input_write__babyadd.y2 = load i128, i128* %struct_ptr3, align 4
  %mul = mul i128 %inner_input_write__babyadd.x1, %inner_input_write__babyadd.y2
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %mul4 = mul i128 %inner_input_write__babyadd.y1, %inner_input_write__babyadd.x2
  call void @fn_intrinsic_add_constraint(i128 %mul4, i128 %mul4, i1* @constraint.1)
  %mul5 = mul i128 -168700, %inner_input_write__babyadd.x1
  %add = add i128 %mul5, %inner_input_write__babyadd.y1
  %add6 = add i128 %inner_input_write__babyadd.x2, %inner_input_write__babyadd.y2
  %mul7 = mul i128 %add, %add6
  call void @fn_intrinsic_add_constraint(i128 %mul7, i128 %mul7, i1* @constraint.2)
  %mul8 = mul i128 %mul, %mul4
  call void @fn_intrinsic_add_constraint(i128 %mul8, i128 %mul8, i1* @constraint.3)
  %add9 = add i128 %mul, %mul4
  %mul10 = mul i128 168696, %mul8
  %add11 = add i128 1, %mul10
  %sdiv = sdiv i128 %add9, %add11
  %mul12 = mul i128 168696, %mul8
  %add13 = add i128 1, %mul12
  %mul14 = mul i128 %add13, %sdiv
  %add15 = add i128 %mul, %mul4
  call void @fn_intrinsic_add_constraint(i128 %mul14, i128 %add15, i1* @constraint.4)
  %mul16 = mul i128 168700, %mul
  %add17 = add i128 %mul7, %mul16
  %sub = sub i128 %add17, %mul4
  %mul18 = mul i128 168696, %mul8
  %sub19 = sub i128 1, %mul18
  %sdiv20 = sdiv i128 %sub, %sub19
  %mul21 = mul i128 168696, %mul8
  %sub22 = sub i128 1, %mul21
  %mul23 = mul i128 %sub22, %sdiv20
  %mul24 = mul i128 168700, %mul
  %add25 = add i128 %mul7, %mul24
  %sub26 = sub i128 %add25, %mul4
  call void @fn_intrinsic_add_constraint(i128 %mul23, i128 %sub26, i1* @constraint.5)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__babyadd.xout = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 6
  store i128 %sdiv, i128* %inner_output_write__babyadd.xout, align 4
  %inner_output_write__babyadd.yout = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %0, i32 0, i32 7
  store i128 %sdiv20, i128* %inner_output_write__babyadd.yout, align 4
  ret void
}

define %struct_template_circuit_babyadd* @fn_template_build_babyadd(%struct_template_params_babyadd* %0) {
entry:
  %1 = alloca %struct_template_circuit_babyadd, align 8
  %struct_template_params_babyadd = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %1, i32 0, i32 0
  store %struct_template_params_babyadd* %0, %struct_template_params_babyadd** %struct_template_params_babyadd, align 8
  %fn_template_init_babyadd = getelementptr inbounds %struct_template_circuit_babyadd, %struct_template_circuit_babyadd* %1, i32 0, i32 1
  store void (%struct_template_circuit_babyadd*)* @fn_template_init_babyadd, void (%struct_template_circuit_babyadd*)** %fn_template_init_babyadd, align 8
  ret %struct_template_circuit_babyadd* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
