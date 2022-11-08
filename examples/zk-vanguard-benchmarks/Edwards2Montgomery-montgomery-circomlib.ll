; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_edwards2montgomery = type { %struct_template_params_edwards2montgomery*, void (%struct_template_circuit_edwards2montgomery*)*, [256 x i128]*, [256 x i128]* }
%struct_template_params_edwards2montgomery = type {}

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

define void @fn_template_init_edwards2montgomery(%struct_template_circuit_edwards2montgomery* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_edwards2montgomery, %struct_template_circuit_edwards2montgomery* %0, i32 0, i32 2
  %inner_input_write__edwards2montgomery.in = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %in to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__edwards2montgomery.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 1
  %in1 = load i128, i128* %array_ptr, align 4
  %add = add i128 1, %in1
  %array_ptr2 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 1
  %in3 = load i128, i128* %array_ptr2, align 4
  %sub = sub i128 1, %in3
  %sdiv = sdiv i128 %add, %sub
  %out4 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  store i128 %sdiv, i128* %out4, align 4
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out6 = load i128, i128* %array_ptr5, align 4
  %array_ptr7 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 0
  %in8 = load i128, i128* %array_ptr7, align 4
  %sdiv9 = sdiv i128 %out6, %in8
  %out10 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  store i128 %sdiv9, i128* %out10, align 4
  %array_ptr11 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out12 = load i128, i128* %array_ptr11, align 4
  %array_ptr13 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 1
  %in14 = load i128, i128* %array_ptr13, align 4
  %sub15 = sub i128 1, %in14
  %mul = mul i128 %out12, %sub15
  %array_ptr16 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 1
  %in17 = load i128, i128* %array_ptr16, align 4
  %add18 = add i128 1, %in17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %add18, i1* @constraint)
  %array_ptr19 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 1
  %out20 = load i128, i128* %array_ptr19, align 4
  %array_ptr21 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 0
  %in22 = load i128, i128* %array_ptr21, align 4
  %mul23 = mul i128 %out20, %in22
  %array_ptr24 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out25 = load i128, i128* %array_ptr24, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul23, i128 %out25, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %entry
  %inner_output_write__edwards2montgomery.out = getelementptr inbounds %struct_template_circuit_edwards2montgomery, %struct_template_circuit_edwards2montgomery* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__edwards2montgomery.out, align 8
  ret void
}

define %struct_template_circuit_edwards2montgomery* @fn_template_build_edwards2montgomery(%struct_template_params_edwards2montgomery* %0) {
entry:
  %1 = alloca %struct_template_circuit_edwards2montgomery, align 8
  %struct_template_params_edwards2montgomery = getelementptr inbounds %struct_template_circuit_edwards2montgomery, %struct_template_circuit_edwards2montgomery* %1, i32 0, i32 0
  store %struct_template_params_edwards2montgomery* %0, %struct_template_params_edwards2montgomery** %struct_template_params_edwards2montgomery, align 8
  %fn_template_init_edwards2montgomery = getelementptr inbounds %struct_template_circuit_edwards2montgomery, %struct_template_circuit_edwards2montgomery* %1, i32 0, i32 1
  store void (%struct_template_circuit_edwards2montgomery*)* @fn_template_init_edwards2montgomery, void (%struct_template_circuit_edwards2montgomery*)** %fn_template_init_edwards2montgomery, align 8
  ret %struct_template_circuit_edwards2montgomery* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
