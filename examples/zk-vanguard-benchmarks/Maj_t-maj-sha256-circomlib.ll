; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_maj_t = type { %struct_template_params_maj_t*, void (%struct_template_circuit_maj_t*)*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_params_maj_t = type { i128 }

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

define void @fn_template_init_maj_t(%struct_template_circuit_maj_t* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 0
  %struct_template_params_maj_t = load %struct_template_params_maj_t*, %struct_template_params_maj_t** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_maj_t, %struct_template_params_maj_t* %struct_template_params_maj_t, i32 0, i32 0
  %struct_template_params_maj_t.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 2
  %inner_input_write__maj_t.a = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %a = alloca [256 x i128], align 8
  %1 = bitcast [256 x i128]* %a to i8*
  %2 = bitcast [256 x i128]* %inner_input_write__maj_t.a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr3 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 3
  %inner_input_write__maj_t.b = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %b = alloca [256 x i128], align 8
  %3 = bitcast [256 x i128]* %b to i8*
  %4 = bitcast [256 x i128]* %inner_input_write__maj_t.b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %struct_ptr4 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 4
  %inner_input_write__maj_t.c = load [256 x i128]*, [256 x i128]** %struct_ptr4, align 8
  %c = alloca [256 x i128], align 8
  %5 = bitcast [256 x i128]* %c to i8*
  %6 = bitcast [256 x i128]* %inner_input_write__maj_t.c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %mid = alloca [256 x i128], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add27, %loop.latch ]
  %array_ptr = getelementptr inbounds [256 x i128], [256 x i128]* %b, i64 0, i128 %loop.iter
  %b5 = load i128, i128* %array_ptr, align 4
  %array_ptr6 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i64 0, i128 %loop.iter
  %c7 = load i128, i128* %array_ptr6, align 4
  %mul = mul i128 %b5, %c7
  %mid8 = getelementptr inbounds [256 x i128], [256 x i128]* %mid, i64 0, i128 %loop.iter
  store i128 %mul, i128* %mid8, align 4
  %array_ptr9 = getelementptr inbounds [256 x i128], [256 x i128]* %mid, i64 0, i128 %loop.iter
  %mid10 = load i128, i128* %array_ptr9, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid10, i128 %mul, i1* @constraint)
  %array_ptr11 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i64 0, i128 %loop.iter
  %a12 = load i128, i128* %array_ptr11, align 4
  %array_ptr13 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i64 0, i128 %loop.iter
  %b14 = load i128, i128* %array_ptr13, align 4
  %array_ptr15 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i64 0, i128 %loop.iter
  %c16 = load i128, i128* %array_ptr15, align 4
  %add = add i128 %b14, %c16
  %array_ptr17 = getelementptr inbounds [256 x i128], [256 x i128]* %mid, i64 0, i128 %loop.iter
  %mid18 = load i128, i128* %array_ptr17, align 4
  %mul19 = mul i128 2, %mid18
  %sub = sub i128 %add, %mul19
  %mul20 = mul i128 %a12, %sub
  %array_ptr21 = getelementptr inbounds [256 x i128], [256 x i128]* %mid, i64 0, i128 %loop.iter
  %mid22 = load i128, i128* %array_ptr21, align 4
  %add23 = add i128 %mul20, %mid22
  %out24 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %add23, i128* %out24, align 4
  %array_ptr25 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out26 = load i128, i128* %array_ptr25, align 4
  call void @fn_intrinsic_add_constraint(i128 %out26, i128 %add23, i1* @constraint.1)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add27 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add27, %struct_template_params_maj_t.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__maj_t.out = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__maj_t.out, align 8
  ret void
}

define %struct_template_circuit_maj_t* @fn_template_build_maj_t(%struct_template_params_maj_t* %0) {
entry:
  %1 = alloca %struct_template_circuit_maj_t, align 8
  %struct_template_params_maj_t = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %1, i32 0, i32 0
  store %struct_template_params_maj_t* %0, %struct_template_params_maj_t** %struct_template_params_maj_t, align 8
  %fn_template_init_maj_t = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %1, i32 0, i32 1
  store void (%struct_template_circuit_maj_t*)* @fn_template_init_maj_t, void (%struct_template_circuit_maj_t*)** %fn_template_init_maj_t, align 8
  ret %struct_template_circuit_maj_t* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
