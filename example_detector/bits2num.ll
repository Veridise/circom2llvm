; ModuleID = 'bits2num.circom'
source_filename = "/Users/hongbo/code/circom2llvm/example_detector/bits2num.circom"

%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }

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
declare fp128 @llvm.powi.f128.i32(fp128, i32) #0

define i128 @fn_intrinsic_inline_powi(i128 %0, i128 %1) {
entry:
  %inline_powi.base = uitofp i128 %0 to fp128
  %inline_powi.power = trunc i128 %1 to i32
  %inline_powi.cal = call fp128 @llvm.powi.f128.i32(fp128 %inline_powi.base, i32 %inline_powi.power)
  %inline_powi.ret = fptoui fp128 %inline_powi.cal to i128
  ret i128 %inline_powi.ret
}

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %read_arg_inner.bits2num.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bits2num.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %read_input_inner.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bits2num.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %e2 = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall2 to i128*
  %out = alloca i128, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lc1 = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc14 = load i128, i128* %lc1, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i5
  %in6 = load i128, i128* %array_getter, align 4
  %e27 = load i128, i128* %e2, align 4
  %mul = mul i128 %in6, %e27
  %add = add i128 %lc14, %mul
  store i128 %add, i128* %lc1, align 4
  %e28 = load i128, i128* %e2, align 4
  %e29 = load i128, i128* %e2, align 4
  %add10 = add i128 %e28, %e29
  store i128 %add10, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add12 = add i128 %i11, 1
  store i128 %add12, i128* %i, align 4
  %i13 = load i128, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i13, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc114 = load i128, i128* %lc1, align 4
  store i128 %lc114, i128* %out, align 4
  %out15 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out15, i128 %lc114, i1* @constraint)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out16 = load i128, i128* %out, align 4
  %write_output_inner.bits2num.out = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %out16, i128* %write_output_inner.bits2num.out, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %write_arg_inner.bits2num.n = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bits2num.n, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
