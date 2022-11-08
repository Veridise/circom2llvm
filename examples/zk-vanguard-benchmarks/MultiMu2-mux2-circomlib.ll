; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_multimux2 = type { %struct_template_params_multimux2*, void (%struct_template_circuit_multimux2*)*, [256 x [256 x i128]]*, [256 x i128]*, [256 x i128]* }
%struct_template_params_multimux2 = type { i128 }

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

define void @fn_template_init_multimux2(%struct_template_circuit_multimux2* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %0, i32 0, i32 0
  %struct_template_params_multimux2 = load %struct_template_params_multimux2*, %struct_template_params_multimux2** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_multimux2, %struct_template_params_multimux2* %struct_template_params_multimux2, i32 0, i32 0
  %struct_template_params_multimux2.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %0, i32 0, i32 2
  %inner_input_write__multimux2.c = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr2, align 8
  %c = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %c to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__multimux2.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %0, i32 0, i32 3
  %inner_input_write__multimux2.s = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %s = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %s to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__multimux2.s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %a0 = alloca [256 x i128], align 8
  %a1 = alloca [256 x i128], align 8
  %a = alloca [256 x i128], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %a10 = alloca [256 x i128], align 8
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s4 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s6 = load i128, i128* %array_ptr5, align 4
  %mul = mul i128 %s4, %s6
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %mul, i1* @constraint)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add61, %loop.latch ]
  %array_ptr7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 3
  %c8 = load i128, i128* %array_ptr7, align 4
  %array_ptr9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c10 = load i128, i128* %array_ptr9, align 4
  %sub = sub i128 %c8, %c10
  %array_ptr11 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c12 = load i128, i128* %array_ptr11, align 4
  %sub13 = sub i128 %sub, %c12
  %array_ptr14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c15 = load i128, i128* %array_ptr14, align 4
  %add = add i128 %sub13, %c15
  %mul16 = mul i128 %add, %mul
  %a1017 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  store i128 %mul16, i128* %a1017, align 4
  %array_ptr18 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a1019 = load i128, i128* %array_ptr18, align 4
  call void @fn_intrinsic_add_constraint(i128 %a1019, i128 %mul16, i1* @constraint.1)
  %array_ptr20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 2
  %c21 = load i128, i128* %array_ptr20, align 4
  %array_ptr22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c23 = load i128, i128* %array_ptr22, align 4
  %sub24 = sub i128 %c21, %c23
  %array_ptr25 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 1
  %s26 = load i128, i128* %array_ptr25, align 4
  %mul27 = mul i128 %sub24, %s26
  %a128 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  store i128 %mul27, i128* %a128, align 4
  %array_ptr29 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a130 = load i128, i128* %array_ptr29, align 4
  call void @fn_intrinsic_add_constraint(i128 %a130, i128 %mul27, i1* @constraint.2)
  %array_ptr31 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c32 = load i128, i128* %array_ptr31, align 4
  %array_ptr33 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c34 = load i128, i128* %array_ptr33, align 4
  %sub35 = sub i128 %c32, %c34
  %array_ptr36 = getelementptr inbounds [256 x i128], [256 x i128]* %s, i64 0, i128 0
  %s37 = load i128, i128* %array_ptr36, align 4
  %mul38 = mul i128 %sub35, %s37
  %a039 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  store i128 %mul38, i128* %a039, align 4
  %array_ptr40 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a041 = load i128, i128* %array_ptr40, align 4
  call void @fn_intrinsic_add_constraint(i128 %a041, i128 %mul38, i1* @constraint.3)
  %array_ptr42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c43 = load i128, i128* %array_ptr42, align 4
  %a44 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  store i128 %c43, i128* %a44, align 4
  %array_ptr45 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a46 = load i128, i128* %array_ptr45, align 4
  call void @fn_intrinsic_add_constraint(i128 %a46, i128 %c43, i1* @constraint.4)
  %array_ptr47 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i64 0, i128 %loop.iter
  %a1048 = load i128, i128* %array_ptr47, align 4
  %array_ptr49 = getelementptr inbounds [256 x i128], [256 x i128]* %a1, i64 0, i128 %loop.iter
  %a150 = load i128, i128* %array_ptr49, align 4
  %add51 = add i128 %a1048, %a150
  %array_ptr52 = getelementptr inbounds [256 x i128], [256 x i128]* %a0, i64 0, i128 %loop.iter
  %a053 = load i128, i128* %array_ptr52, align 4
  %add54 = add i128 %add51, %a053
  %array_ptr55 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a56 = load i128, i128* %array_ptr55, align 4
  %add57 = add i128 %add54, %a56
  %out58 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add57, i128* %out58, align 4
  %array_ptr59 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out60 = load i128, i128* %array_ptr59, align 4
  call void @fn_intrinsic_add_constraint(i128 %out60, i128 %add57, i1* @constraint.5)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add61 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add61, %struct_template_params_multimux2.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__multimux2.out = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__multimux2.out, align 8
  ret void
}

define %struct_template_circuit_multimux2* @fn_template_build_multimux2(%struct_template_params_multimux2* %0) {
entry:
  %1 = alloca %struct_template_circuit_multimux2, align 8
  %struct_template_params_multimux2 = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %1, i32 0, i32 0
  store %struct_template_params_multimux2* %0, %struct_template_params_multimux2** %struct_template_params_multimux2, align 8
  %fn_template_init_multimux2 = getelementptr inbounds %struct_template_circuit_multimux2, %struct_template_circuit_multimux2* %1, i32 0, i32 1
  store void (%struct_template_circuit_multimux2*)* @fn_template_init_multimux2, void (%struct_template_circuit_multimux2*)** %fn_template_init_multimux2, align 8
  ret %struct_template_circuit_multimux2* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
