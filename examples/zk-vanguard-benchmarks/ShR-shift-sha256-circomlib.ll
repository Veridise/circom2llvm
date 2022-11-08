; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_shr = type { %struct_template_params_shr*, void (%struct_template_circuit_shr*)*, [256 x i128]*, [256 x i128]* }
%struct_template_params_shr = type { i128, i128 }

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

define void @fn_template_init_shr(%struct_template_circuit_shr* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %struct_template_params_shr = load %struct_template_params_shr*, %struct_template_params_shr** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_shr, %struct_template_params_shr* %struct_template_params_shr, i32 0, i32 0
  %struct_template_params_shr.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %struct_template_params_shr3 = load %struct_template_params_shr*, %struct_template_params_shr** %struct_ptr2, align 8
  %struct_ptr4 = getelementptr inbounds %struct_template_params_shr, %struct_template_params_shr* %struct_template_params_shr3, i32 0, i32 1
  %struct_template_params_shr.r = load i128, i128* %struct_ptr4, align 4
  %struct_ptr5 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 2
  %inner_input_write__shr.in = load [256 x i128]*, [256 x i128]** %struct_ptr5, align 8
  %in = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %in to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__shr.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add14, %loop.latch ]
  %add = add i128 %loop.iter, %struct_template_params_shr.r
  %sge = icmp sge i128 %add, %struct_template_params_shr.n
  br i1 %sge, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body
  %out6 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 0, i128* %out6, align 4
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out7 = load i128, i128* %array_ptr, align 4
  call void @fn_intrinsic_add_constraint(i128 %out7, i128 0, i1* @constraint)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %add8 = add i128 %loop.iter, %struct_template_params_shr.r
  %array_ptr9 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i64 0, i128 %add8
  %in10 = load i128, i128* %array_ptr9, align 4
  %out11 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %in10, i128* %out11, align 4
  %array_ptr12 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out13 = load i128, i128* %array_ptr12, align 4
  call void @fn_intrinsic_add_constraint(i128 %out13, i128 %in10, i1* @constraint.1)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true

loop.latch:                                       ; preds = %loop.body
  %add14 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add14, %struct_template_params_shr.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__shr.out = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__shr.out, align 8
  ret void
}

define %struct_template_circuit_shr* @fn_template_build_shr(%struct_template_params_shr* %0) {
entry:
  %1 = alloca %struct_template_circuit_shr, align 8
  %struct_template_params_shr = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %1, i32 0, i32 0
  store %struct_template_params_shr* %0, %struct_template_params_shr** %struct_template_params_shr, align 8
  %fn_template_init_shr = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %1, i32 0, i32 1
  store void (%struct_template_circuit_shr*)* @fn_template_init_shr, void (%struct_template_circuit_shr*)** %fn_template_init_shr, align 8
  ret %struct_template_circuit_shr* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
