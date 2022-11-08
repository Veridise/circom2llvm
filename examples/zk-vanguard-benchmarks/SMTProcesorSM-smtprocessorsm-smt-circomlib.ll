; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_smtprocessorsm = type { %struct_template_params_smtprocessorsm*, void (%struct_template_circuit_smtprocessorsm*)*, i128, i128, i128, [256 x i128]*, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128 }
%struct_template_params_smtprocessorsm = type {}

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1
@constraint.7 = external global i1

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

define void @fn_template_init_smtprocessorsm(%struct_template_circuit_smtprocessorsm* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 2
  %inner_input_write__smtprocessorsm.xor = load i128, i128* %struct_ptr, align 4
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 3
  %inner_input_write__smtprocessorsm.is0 = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 4
  %inner_input_write__smtprocessorsm.levins = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 5
  %inner_input_write__smtprocessorsm.fnc = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %fnc = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %fnc to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__smtprocessorsm.fnc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr4 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 6
  %inner_input_write__smtprocessorsm.prev_top = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 7
  %inner_input_write__smtprocessorsm.prev_old0 = load i128, i128* %struct_ptr5, align 4
  %struct_ptr6 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 8
  %inner_input_write__smtprocessorsm.prev_bot = load i128, i128* %struct_ptr6, align 4
  %struct_ptr7 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 9
  %inner_input_write__smtprocessorsm.prev_new1 = load i128, i128* %struct_ptr7, align 4
  %struct_ptr8 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 10
  %inner_input_write__smtprocessorsm.prev_na = load i128, i128* %struct_ptr8, align 4
  %struct_ptr9 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 11
  %inner_input_write__smtprocessorsm.prev_upd = load i128, i128* %struct_ptr9, align 4
  %mul = mul i128 %inner_input_write__smtprocessorsm.prev_top, %inner_input_write__smtprocessorsm.levins
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %fnc, i64 0, i128 0
  %fnc10 = load i128, i128* %array_ptr, align 4
  %mul11 = mul i128 %mul, %fnc10
  call void @fn_intrinsic_add_constraint(i128 %mul11, i128 %mul11, i1* @constraint.1)
  %sub = sub i128 %inner_input_write__smtprocessorsm.prev_top, %mul
  call void @fn_intrinsic_add_constraint(i128 %sub, i128 %sub, i1* @constraint.2)
  %mul12 = mul i128 %mul11, %inner_input_write__smtprocessorsm.is0
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 %mul12, i1* @constraint.3)
  %sub13 = sub i128 %mul11, %mul12
  %add = add i128 %sub13, %inner_input_write__smtprocessorsm.prev_bot
  %mul14 = mul i128 %add, %inner_input_write__smtprocessorsm.xor
  call void @fn_intrinsic_add_constraint(i128 %mul14, i128 %mul14, i1* @constraint.4)
  %sub15 = sub i128 1, %inner_input_write__smtprocessorsm.xor
  %sub16 = sub i128 %mul11, %mul12
  %add17 = add i128 %sub16, %inner_input_write__smtprocessorsm.prev_bot
  %mul18 = mul i128 %sub15, %add17
  call void @fn_intrinsic_add_constraint(i128 %mul18, i128 %mul18, i1* @constraint.5)
  %sub19 = sub i128 %mul, %mul11
  call void @fn_intrinsic_add_constraint(i128 %sub19, i128 %sub19, i1* @constraint.6)
  %add20 = add i128 %inner_input_write__smtprocessorsm.prev_new1, %inner_input_write__smtprocessorsm.prev_old0
  %add21 = add i128 %add20, %inner_input_write__smtprocessorsm.prev_na
  %add22 = add i128 %add21, %inner_input_write__smtprocessorsm.prev_upd
  call void @fn_intrinsic_add_constraint(i128 %add22, i128 %add22, i1* @constraint.7)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__smtprocessorsm.st_top = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 12
  store i128 %sub, i128* %inner_output_write__smtprocessorsm.st_top, align 4
  %inner_output_write__smtprocessorsm.st_old0 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 13
  store i128 %mul12, i128* %inner_output_write__smtprocessorsm.st_old0, align 4
  %inner_output_write__smtprocessorsm.st_bot = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 14
  store i128 %mul18, i128* %inner_output_write__smtprocessorsm.st_bot, align 4
  %inner_output_write__smtprocessorsm.st_new1 = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 15
  store i128 %mul14, i128* %inner_output_write__smtprocessorsm.st_new1, align 4
  %inner_output_write__smtprocessorsm.st_na = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 16
  store i128 %add22, i128* %inner_output_write__smtprocessorsm.st_na, align 4
  %inner_output_write__smtprocessorsm.st_upd = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %0, i32 0, i32 17
  store i128 %sub19, i128* %inner_output_write__smtprocessorsm.st_upd, align 4
  ret void
}

define %struct_template_circuit_smtprocessorsm* @fn_template_build_smtprocessorsm(%struct_template_params_smtprocessorsm* %0) {
entry:
  %1 = alloca %struct_template_circuit_smtprocessorsm, align 8
  %struct_template_params_smtprocessorsm = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %1, i32 0, i32 0
  store %struct_template_params_smtprocessorsm* %0, %struct_template_params_smtprocessorsm** %struct_template_params_smtprocessorsm, align 8
  %fn_template_init_smtprocessorsm = getelementptr inbounds %struct_template_circuit_smtprocessorsm, %struct_template_circuit_smtprocessorsm* %1, i32 0, i32 1
  store void (%struct_template_circuit_smtprocessorsm*)* @fn_template_init_smtprocessorsm, void (%struct_template_circuit_smtprocessorsm*)** %fn_template_init_smtprocessorsm, align 8
  ret %struct_template_circuit_smtprocessorsm* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
