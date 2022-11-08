; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_mixs = type { %struct_template_params_mixs*, void (%struct_template_circuit_mixs*)*, [256 x i128]*, [256 x i128]* }
%struct_template_params_mixs = type { i128, [256 x i128]*, i128 }

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

define void @fn_template_init_mixs(%struct_template_circuit_mixs* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %0, i32 0, i32 0
  %struct_template_params_mixs = load %struct_template_params_mixs*, %struct_template_params_mixs** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_mixs, %struct_template_params_mixs* %struct_template_params_mixs, i32 0, i32 0
  %struct_template_params_mixs.t = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %0, i32 0, i32 0
  %struct_template_params_mixs3 = load %struct_template_params_mixs*, %struct_template_params_mixs** %struct_ptr2, align 8
  %struct_ptr4 = getelementptr inbounds %struct_template_params_mixs, %struct_template_params_mixs* %struct_template_params_mixs3, i32 0, i32 1
  %struct_template_params_mixs.S = load [256 x i128]*, [256 x i128]** %struct_ptr4, align 8
  %S = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %S to i8*
  %2 = bitcast [256 x i128]* %struct_template_params_mixs.S to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %0, i32 0, i32 0
  %struct_template_params_mixs6 = load %struct_template_params_mixs*, %struct_template_params_mixs** %struct_ptr5, align 8
  %struct_ptr7 = getelementptr inbounds %struct_template_params_mixs, %struct_template_params_mixs* %struct_template_params_mixs6, i32 0, i32 2
  %struct_template_params_mixs.r = load i128, i128* %struct_ptr7, align 4
  %struct_ptr8 = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %0, i32 0, i32 2
  %inner_input_write__mixs.in = load [256 x i128]*, [256 x i128]** %struct_ptr8, align 8
  %in = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %in to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__mixs.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add15, %loop.latch ]
  %mul = mul i128 %struct_template_params_mixs.t, 2
  %sub = sub i128 %mul, 1
  %mul9 = mul i128 %sub, %struct_template_params_mixs.r
  %add = add i128 %mul9, %loop.iter
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %S, i64 0, i128 %add
  %S10 = load i128, i128* %array_ptr, align 4
  %array_ptr11 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 %loop.iter
  %in12 = load i128, i128* %array_ptr11, align 4
  %mul13 = mul i128 %S10, %in12
  %add14 = add i128 0, %mul13
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add15 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add15, %struct_template_params_mixs.t
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out16 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  store i128 %add14, i128* %out16, align 4
  %array_ptr17 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 0
  %out18 = load i128, i128* %array_ptr17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %add14, i1* @constraint)
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch38, %loop.exit
  %loop.iter20 = phi i128 [ 1, %loop.exit ], [ %add39, %loop.latch38 ]
  %array_ptr21 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 %loop.iter20
  %in22 = load i128, i128* %array_ptr21, align 4
  %array_ptr23 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 0
  %in24 = load i128, i128* %array_ptr23, align 4
  %mul25 = mul i128 %struct_template_params_mixs.t, 2
  %sub26 = sub i128 %mul25, 1
  %mul27 = mul i128 %sub26, %struct_template_params_mixs.r
  %add28 = add i128 %mul27, %struct_template_params_mixs.t
  %add29 = add i128 %add28, %loop.iter20
  %sub30 = sub i128 %add29, 1
  %array_ptr31 = getelementptr inbounds [256 x i128], [256 x i128]* %S, i64 0, i128 %sub30
  %S32 = load i128, i128* %array_ptr31, align 4
  %mul33 = mul i128 %in24, %S32
  %add34 = add i128 %in22, %mul33
  %out35 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter20
  store i128 %add34, i128* %out35, align 4
  %array_ptr36 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter20
  %out37 = load i128, i128* %array_ptr36, align 4
  call void @fn_intrinsic_add_constraint(i128 %out37, i128 %add34, i1* @constraint.1)
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body19
  %add39 = add i128 %loop.iter20, 1
  %slt40 = icmp slt i128 %add39, %struct_template_params_mixs.t
  br i1 %slt40, label %loop.body19, label %loop.exit41

loop.exit41:                                      ; preds = %loop.latch38
  br label %exit

exit:                                             ; preds = %loop.exit41
  %inner_output_write__mixs.out = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__mixs.out, align 8
  ret void
}

define %struct_template_circuit_mixs* @fn_template_build_mixs(%struct_template_params_mixs* %0) {
entry:
  %1 = alloca %struct_template_circuit_mixs, align 8
  %struct_template_params_mixs = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %1, i32 0, i32 0
  store %struct_template_params_mixs* %0, %struct_template_params_mixs** %struct_template_params_mixs, align 8
  %fn_template_init_mixs = getelementptr inbounds %struct_template_circuit_mixs, %struct_template_circuit_mixs* %1, i32 0, i32 1
  store void (%struct_template_circuit_mixs*)* @fn_template_init_mixs, void (%struct_template_circuit_mixs*)** %fn_template_init_mixs, align 8
  ret %struct_template_circuit_mixs* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
