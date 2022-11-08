; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_montgomeryadd = type { %struct_template_params_montgomeryadd*, void (%struct_template_circuit_montgomeryadd*)*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_params_montgomeryadd = type {}

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

define void @fn_template_init_montgomeryadd(%struct_template_circuit_montgomeryadd* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_montgomeryadd, %struct_template_circuit_montgomeryadd* %0, i32 0, i32 2
  %inner_input_write__montgomeryadd.in1 = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in1 = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %in1 to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__montgomeryadd.in1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr1 = getelementptr inbounds %struct_template_circuit_montgomeryadd, %struct_template_circuit_montgomeryadd* %0, i32 0, i32 3
  %inner_input_write__montgomeryadd.in2 = load [256 x i128]*, [256 x i128]** %struct_ptr1, align 8
  %in2 = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %in2 to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__montgomeryadd.in2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i64 0, i128 1
  %in22 = load i128, i128* %array_ptr, align 4
  %array_ptr3 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 1
  %in14 = load i128, i128* %array_ptr3, align 4
  %sub = sub i128 %in22, %in14
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i64 0, i128 0
  %in26 = load i128, i128* %array_ptr5, align 4
  %array_ptr7 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 0
  %in18 = load i128, i128* %array_ptr7, align 4
  %sub9 = sub i128 %in26, %in18
  %sdiv = sdiv i128 %sub, %sub9
  %array_ptr10 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i64 0, i128 0
  %in211 = load i128, i128* %array_ptr10, align 4
  %array_ptr12 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 0
  %in113 = load i128, i128* %array_ptr12, align 4
  %sub14 = sub i128 %in211, %in113
  %mul = mul i128 %sdiv, %sub14
  %array_ptr15 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i64 0, i128 1
  %in216 = load i128, i128* %array_ptr15, align 4
  %array_ptr17 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 1
  %in118 = load i128, i128* %array_ptr17, align 4
  %sub19 = sub i128 %in216, %in118
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %sub19, i1* @constraint)
  %mul20 = mul i128 1, %sdiv
  %mul21 = mul i128 %mul20, %sdiv
  %sub22 = sub i128 %mul21, 168698
  %array_ptr23 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 0
  %in124 = load i128, i128* %array_ptr23, align 4
  %sub25 = sub i128 %sub22, %in124
  %array_ptr26 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i64 0, i128 0
  %in227 = load i128, i128* %array_ptr26, align 4
  %sub28 = sub i128 %sub25, %in227
  %out29 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  store i128 %sub28, i128* %out29, align 4
  %array_ptr30 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out31 = load i128, i128* %array_ptr30, align 4
  call void @fn_intrinsic_add_constraint(i128 %out31, i128 %sub28, i1* @constraint.1)
  %array_ptr32 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 0
  %in133 = load i128, i128* %array_ptr32, align 4
  %array_ptr34 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out35 = load i128, i128* %array_ptr34, align 4
  %sub36 = sub i128 %in133, %out35
  %mul37 = mul i128 %sdiv, %sub36
  %array_ptr38 = getelementptr inbounds [256 x i128], [256 x i128]* %in1, i64 0, i128 1
  %in139 = load i128, i128* %array_ptr38, align 4
  %sub40 = sub i128 %mul37, %in139
  %out41 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  store i128 %sub40, i128* %out41, align 4
  %array_ptr42 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  %out43 = load i128, i128* %array_ptr42, align 4
  call void @fn_intrinsic_add_constraint(i128 %out43, i128 %sub40, i1* @constraint.2)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__montgomeryadd.out = getelementptr inbounds %struct_template_circuit_montgomeryadd, %struct_template_circuit_montgomeryadd* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__montgomeryadd.out, align 8
  ret void
}

define %struct_template_circuit_montgomeryadd* @fn_template_build_montgomeryadd(%struct_template_params_montgomeryadd* %0) {
entry:
  %1 = alloca %struct_template_circuit_montgomeryadd, align 8
  %struct_template_params_montgomeryadd = getelementptr inbounds %struct_template_circuit_montgomeryadd, %struct_template_circuit_montgomeryadd* %1, i32 0, i32 0
  store %struct_template_params_montgomeryadd* %0, %struct_template_params_montgomeryadd** %struct_template_params_montgomeryadd, align 8
  %fn_template_init_montgomeryadd = getelementptr inbounds %struct_template_circuit_montgomeryadd, %struct_template_circuit_montgomeryadd* %1, i32 0, i32 1
  store void (%struct_template_circuit_montgomeryadd*)* @fn_template_init_montgomeryadd, void (%struct_template_circuit_montgomeryadd*)** %fn_template_init_montgomeryadd, align 8
  ret %struct_template_circuit_montgomeryadd* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
