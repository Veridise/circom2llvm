; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_babycheck = type { %struct_template_params_babycheck*, void (%struct_template_circuit_babycheck*)*, i128, i128 }
%struct_template_params_babycheck = type {}

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

define void @fn_template_init_babycheck(%struct_template_circuit_babycheck* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_babycheck, %struct_template_circuit_babycheck* %0, i32 0, i32 2
  %inner_input_write__babycheck.x = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_babycheck, %struct_template_circuit_babycheck* %0, i32 0, i32 3
  %inner_input_write__babycheck.y = load i128, i128* %struct_ptr1, align 4
  %mul = mul i128 %inner_input_write__babycheck.x, %inner_input_write__babycheck.x
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %mul2 = mul i128 %inner_input_write__babycheck.y, %inner_input_write__babycheck.y
  call void @fn_intrinsic_add_constraint(i128 %mul2, i128 %mul2, i1* @constraint.1)
  %mul3 = mul i128 168700, %mul
  %add = add i128 %mul3, %mul2
  %mul4 = mul i128 168696, %mul
  %mul5 = mul i128 %mul4, %mul2
  %add6 = add i128 1, %mul5
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add6, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_babycheck* @fn_template_build_babycheck(%struct_template_params_babycheck* %0) {
entry:
  %1 = alloca %struct_template_circuit_babycheck, align 8
  %struct_template_params_babycheck = getelementptr inbounds %struct_template_circuit_babycheck, %struct_template_circuit_babycheck* %1, i32 0, i32 0
  store %struct_template_params_babycheck* %0, %struct_template_params_babycheck** %struct_template_params_babycheck, align 8
  %fn_template_init_babycheck = getelementptr inbounds %struct_template_circuit_babycheck, %struct_template_circuit_babycheck* %1, i32 0, i32 1
  store void (%struct_template_circuit_babycheck*)* @fn_template_init_babycheck, void (%struct_template_circuit_babycheck*)** %fn_template_init_babycheck, align 8
  ret %struct_template_circuit_babycheck* %1
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
