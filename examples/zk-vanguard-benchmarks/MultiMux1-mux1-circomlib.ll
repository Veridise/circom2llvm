; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_multimux1 = type { %struct_template_params_multimux1*, void (%struct_template_circuit_multimux1*)*, [256 x [256 x i128]]*, i128, [256 x i128]* }
%struct_template_params_multimux1 = type { i128 }

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

define void @fn_template_init_multimux1(%struct_template_circuit_multimux1* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %0, i32 0, i32 0
  %struct_template_params_multimux1 = load %struct_template_params_multimux1*, %struct_template_params_multimux1** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_multimux1, %struct_template_params_multimux1* %struct_template_params_multimux1, i32 0, i32 0
  %struct_template_params_multimux1.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %0, i32 0, i32 2
  %inner_input_write__multimux1.c = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_ptr2, align 8
  %c = alloca [256 x [256 x i128]], align 8
  %1 = bitcast [256 x [256 x i128]]* %c to i8*
  %2 = bitcast [256 x [256 x i128]]* %inner_input_write__multimux1.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %0, i32 0, i32 3
  %inner_input_write__multimux1.s = load i128, i128* %struct_ptr3, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add12, %loop.latch ]
  %array_ptr = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 1
  %c4 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c6 = load i128, i128* %array_ptr5, align 4
  %sub = sub i128 %c4, %c6
  %mul = mul i128 %sub, %inner_input_write__multimux1.s
  %array_ptr7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %c, i64 0, i128 %loop.iter, i128 0
  %c8 = load i128, i128* %array_ptr7, align 4
  %add = add i128 %mul, %c8
  %out9 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add, i128* %out9, align 4
  %array_ptr10 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out11 = load i128, i128* %array_ptr10, align 4
  call void @fn_intrinsic_add_constraint(i128 %out11, i128 %add, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add12 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add12, %struct_template_params_multimux1.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__multimux1.out = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__multimux1.out, align 8
  ret void
}

define %struct_template_circuit_multimux1* @fn_template_build_multimux1(%struct_template_params_multimux1* %0) {
entry:
  %1 = alloca %struct_template_circuit_multimux1, align 8
  %struct_template_params_multimux1 = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %1, i32 0, i32 0
  store %struct_template_params_multimux1* %0, %struct_template_params_multimux1** %struct_template_params_multimux1, align 8
  %fn_template_init_multimux1 = getelementptr inbounds %struct_template_circuit_multimux1, %struct_template_circuit_multimux1* %1, i32 0, i32 1
  store void (%struct_template_circuit_multimux1*)* @fn_template_init_multimux1, void (%struct_template_circuit_multimux1*)** %fn_template_init_multimux1, align 8
  ret %struct_template_circuit_multimux1* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
