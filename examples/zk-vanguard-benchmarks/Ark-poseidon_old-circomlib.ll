; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_ark = type { %struct_template_params_ark*, void (%struct_template_circuit_ark*)*, [256 x i128]*, [256 x i128]* }
%struct_template_params_ark = type { i128, [256 x i128]*, i128 }

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

define void @fn_template_init_ark(%struct_template_circuit_ark* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %0, i32 0, i32 0
  %struct_template_params_ark = load %struct_template_params_ark*, %struct_template_params_ark** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_ark, %struct_template_params_ark* %struct_template_params_ark, i32 0, i32 0
  %struct_template_params_ark.t = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %0, i32 0, i32 0
  %struct_template_params_ark3 = load %struct_template_params_ark*, %struct_template_params_ark** %struct_ptr2, align 8
  %struct_ptr4 = getelementptr inbounds %struct_template_params_ark, %struct_template_params_ark* %struct_template_params_ark3, i32 0, i32 1
  %struct_template_params_ark.C = load [256 x i128]*, [256 x i128]** %struct_ptr4, align 8
  %C = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %C to i8*
  %2 = bitcast [256 x i128]* %struct_template_params_ark.C to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %0, i32 0, i32 0
  %struct_template_params_ark6 = load %struct_template_params_ark*, %struct_template_params_ark** %struct_ptr5, align 8
  %struct_ptr7 = getelementptr inbounds %struct_template_params_ark, %struct_template_params_ark* %struct_template_params_ark6, i32 0, i32 2
  %struct_template_params_ark.r = load i128, i128* %struct_ptr7, align 4
  %struct_ptr8 = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %0, i32 0, i32 2
  %inner_input_write__ark.in = load [256 x i128]*, [256 x i128]** %struct_ptr8, align 8
  %in = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %in to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__ark.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add16, %loop.latch ]
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 %loop.iter
  %in9 = load i128, i128* %array_ptr, align 4
  %add = add i128 %loop.iter, %struct_template_params_ark.r
  %array_ptr10 = getelementptr inbounds [256 x i128], [256 x i128]* %C, i64 0, i128 %add
  %C11 = load i128, i128* %array_ptr10, align 4
  %add12 = add i128 %in9, %C11
  %out13 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add12, i128* %out13, align 4
  %array_ptr14 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out15 = load i128, i128* %array_ptr14, align 4
  call void @fn_intrinsic_add_constraint(i128 %out15, i128 %add12, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add16 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add16, %struct_template_params_ark.t
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__ark.out = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__ark.out, align 8
  ret void
}

define %struct_template_circuit_ark* @fn_template_build_ark(%struct_template_params_ark* %0) {
entry:
  %1 = alloca %struct_template_circuit_ark, align 8
  %struct_template_params_ark = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %1, i32 0, i32 0
  store %struct_template_params_ark* %0, %struct_template_params_ark** %struct_template_params_ark, align 8
  %fn_template_init_ark = getelementptr inbounds %struct_template_circuit_ark, %struct_template_circuit_ark* %1, i32 0, i32 1
  store void (%struct_template_circuit_ark*)* @fn_template_init_ark, void (%struct_template_circuit_ark*)** %fn_template_init_ark, align 8
  ret %struct_template_circuit_ark* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
