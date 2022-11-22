; ModuleID = './auditing/bls12_381_func.ll'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/bls12_381_func.circom"

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

define i128 @fn_intrinsic_inline_init() {
entry:
  ret i128 0
}

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %var_inline_array = alloca [3 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %add = add i128 %1, %2
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %0, %lshift11
  %lshift13 = shl i128 1, %3
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define [256 x [256 x i128]]* @get_generator_G1(i128 %0, i128 %1) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 16589478066046651, i128 22658679592837110, i128 35004527604248919, i128 16789302793630161, i128 7530538873701625, i128 32234187716135413, i128 1684953952445941, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  %g12 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %2 = bitcast [256 x i128]* %g12 to i8*
  %3 = bitcast [256 x i128]* %const_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array3 = alloca [256 x i128], align 8
  store [256 x i128] [i128 11860609209853921, i128 4091579406338073, i128 12578493816062195, i128 13088963032438982, i128 24961455755233629, i128 8501508834176643, i128 612415636564648, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array3, align 4
  %g15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %4 = bitcast [256 x i128]* %g15 to i8*
  %5 = bitcast [256 x i128]* %const_inline_array3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %temp2 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add35, %loop.latch33 ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %out11 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.1
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %2, %b14
  %add15 = add i128 %out11, %mul
  %lshift = shl i128 1, %0
  %mod = srem i128 %add15, %lshift
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 %mod, i128* %out19, align 4
  %add22 = add i128 %i.1, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %lshift27 = shl i128 1, %0
  %sdiv = sdiv i128 %add15, %lshift27
  %add28 = add i128 %out24, %sdiv
  %add31 = add i128 %i.1, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %add35 = add i128 %i.1, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array4 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add106, %loop.latch ]
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a46 = load i128, i128* %array_getter45, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b50 = load i128, i128* %array_getter49, align 4
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter15, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub, i128* %diff22, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %lshift = shl i128 1, %0
  %add = add i128 %sub34, %lshift
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %diff37, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a61 = load i128, i128* %array_getter60, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %sub69 = sub i128 %i.0, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub72, i128* %diff75, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %lshift80 = shl i128 1, %0
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %sub93 = sub i128 %i.0, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub96, i128* %diff99, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %add106 = add i128 %i.0, 1
  %slt = icmp slt i128 %add106, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x i128]* %uniform_array
}

define i128 @get_BLS12_381_parameter() {
entry:
  ret i128 15132376222941642752
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %var_inline_array = alloca [2 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
}

define [256 x i128]* @get_BLS12_381_prime(i128 %0, i128 %1) {
entry:
  %uniform_array = alloca [256 x i128], align 8
  %eq = icmp eq i128 %0, 96
  %eq2 = icmp eq i128 %1, 4
  %and = and i1 %eq, %eq2
  br i1 %and, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 13402431019052935850, i128 17775978365956444830, i128 7239337961543745430, i128 4143283732999879072, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %p.0 = phi [256 x i128]* [ %const_inline_array, %if.true ], [ %uniform_array, %if.false ]
  %eq6 = icmp eq i128 %0, 77
  %eq8 = icmp eq i128 %1, 5
  %and9 = and i1 %eq6, %eq8
  br i1 %and9, label %if.true3, label %if.false4

if.true3:                                         ; preds = %if.exit
  %const_inline_array10 = alloca [256 x i128], align 8
  store [256 x i128] [i128 13402431016077871786, i128 12763471136632971302, i128 16232292306918877561, i128 7820104214415738342, i128 1233603221149820497, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array10, align 4
  br label %if.exit11

if.false4:                                        ; preds = %if.exit
  br label %if.exit11

if.exit11:                                        ; preds = %if.false4, %if.true3
  %p.1 = phi [256 x i128]* [ %const_inline_array10, %if.true3 ], [ %p.0, %if.false4 ]
  %eq15 = icmp eq i128 %0, 55
  %eq17 = icmp eq i128 %1, 7
  %and18 = and i1 %eq15, %eq17
  br i1 %and18, label %if.true12, label %if.false13

if.true12:                                        ; preds = %if.exit11
  %const_inline_array19 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231467, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array19, align 4
  br label %if.exit20

if.false13:                                       ; preds = %if.exit11
  br label %if.exit20

if.exit20:                                        ; preds = %if.false13, %if.true12
  %p.2 = phi [256 x i128]* [ %const_inline_array19, %if.true12 ], [ %p.1, %if.false13 ]
  ret [256 x i128]* %p.2
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  %carry4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add42, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %carry.1, %loop.latch ]
  %slt = icmp slt i128 %i.0, %2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %add12 = add i128 %add, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add12, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry14 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry14, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a25 = load i128, i128* %array_getter24, align 4
  %add27 = add i128 %a25, %carry.0
  %call30 = call [2 x i128]* @SplitFn(i128 %add27, i128 %0, i128 %0)
  %memcpy_ptr31 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr31 to i8*
  %8 = bitcast [2 x i128]* %call30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry32 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry32, i128 0, i128 0
  %sumAndCarry34 = load i128, i128* %array_getter33, align 4
  %sum37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry34, i128* %sum37, align 4
  %sumAndCarry38 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry38, i128 0, i128 1
  %sumAndCarry40 = load i128, i128* %array_getter39, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry.1 = phi i128 [ %sumAndCarry21, %if.true ], [ %sumAndCarry40, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add42 = add i128 %i.0, 1
  %slt44 = icmp slt i128 %add42, %1
  br i1 %slt44, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum48 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %carry.1, i128* %sum48, align 4
  ret [256 x i128]* %uniform_array
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %slt = icmp slt i128 %0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %idx1 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %1, i128 0, i128 %idx.0
  %a3 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a3, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %sub = sub i128 %1, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ %sub, %entry ], [ %sub19, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a3 = load i128, i128* %array_getter, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter11, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b16 = load i128, i128* %array_getter15, align 4
  %slt = icmp slt i128 %a12, %b16
  br i1 %slt, label %if.true7, label %if.false8

if.true7:                                         ; preds = %if.exit
  ret i128 0

if.false8:                                        ; preds = %if.exit
  br label %if.exit17

if.exit17:                                        ; preds = %if.false8
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit17
  %sub19 = sub i128 %i.0, 1
  %sge = icmp sge i128 %sub19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %carry1 = call i128 @fn_intrinsic_inline_init()
  %i2 = call i128 @fn_intrinsic_inline_init()
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry20, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %add11 = add i128 %add, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add11, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry13 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry13, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %sumAndCarry18 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry18, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add22 = add i128 %i.0, 1
  %slt = icmp slt i128 %add22, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry20, i128* %sum27, align 4
  ret [256 x i128]* %uniform_array
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %qhat2 = call i128 @fn_intrinsic_inline_init()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %1
  %a3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %0
  %mul = mul i128 %a3, %lshift
  %sub = sub i128 %1, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %sub9 = sub i128 %1, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  %lshift14 = shl i128 1, %0
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %sdiv, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %lshift17 = shl i128 1, %0
  %sub18 = sub i128 %lshift17, 1
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %qhat.0 = phi i128 [ %sub18, %if.true ], [ %sdiv, %if.false ]
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %qhat.0, [256 x i128]* %3)
  %add27 = add i128 %1, 1
  %call30 = call i128 @long_gt(i128 %0, i128 %add27, [256 x i128]* %call, [256 x i128]* %2)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %add33 = add i128 %1, 1
  %call36 = call [256 x i128]* @long_sub(i128 %0, i128 %add33, [256 x i128]* %call, [256 x i128]* %3)
  %add41 = add i128 %1, 1
  %call44 = call i128 @long_gt(i128 %0, i128 %add41, [256 x i128]* %call36, [256 x i128]* %2)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  ret i128 %qhat.0

if.true37:                                        ; preds = %if.true23
  %sub47 = sub i128 %qhat.0, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %sub49 = sub i128 %qhat.0, 1
  ret i128 %sub49
}

define i128 @log_ceil(i128 %0) {
entry:
  %n_temp1 = call i128 @fn_intrinsic_inline_init()
  %i2 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp.0 = phi i128 [ %0, %entry ], [ %sdiv, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %eq = icmp eq i128 %n_temp.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 %i.0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %sdiv = sdiv i128 %n_temp.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %a_idx7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add62, %loop.latch60 ]
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val9, align 4
  %slt = icmp slt i128 %i.0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %sub31 = sub i128 %i.0, %1
  %add32 = add i128 %sub31, 1
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add26, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val14 = load i128, i128* %array_getter, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.0
  %a17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %i.0, %a_idx.0
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %add26 = add i128 %a_idx.0, 1
  %sle = icmp sle i128 %add26, %i.0
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %a_idx.1 = phi i128 [ %add32, %if.false ], [ %add55, %loop.latch53 ]
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.1
  %a41 = load i128, i128* %array_getter40, align 4
  %sub45 = sub i128 %i.0, %a_idx.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %add55 = add i128 %a_idx.1, 1
  %slt58 = icmp slt i128 %add55, %1
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %add62 = add i128 %i.0, 1
  %mul65 = mul i128 2, %1
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %add62, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %i.1 = phi i128 [ 0, %loop.exit68 ], [ %add83, %loop.latch81 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %0, i128 %0, i128 %0)
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.1
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %add83 = add i128 %i.1, 1
  %mul86 = mul i128 2, %1
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %add83, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %mul101 = mul i128 2, %1
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %call112 = call [2 x i128]* @SplitFn(i128 %add109, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry113 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry113, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %sumAndCarry118 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry118, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %mul127 = mul i128 2, %1
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit203

loop.body130:                                     ; preds = %loop.latch169, %if.true124
  %i.2 = phi i128 [ 2, %if.true124 ], [ %add171, %loop.latch169 ]
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.2, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %sub137 = sub i128 %i.2, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %sub143 = sub i128 %i.2, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %sub149 = sub i128 %i.2, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %call155 = call [2 x i128]* @SplitFn(i128 %add152, i128 %0, i128 %0)
  %memcpy_ptr156 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr156 to i8*
  %9 = bitcast [2 x i128]* %call155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry157 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry157, i128 0, i128 0
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %out162 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %i.2
  store i128 %sumAndCarry159, i128* %out162, align 4
  %sumAndCarry163 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter164 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry163, i128 0, i128 1
  %sumAndCarry165 = load i128, i128* %array_getter164, align 4
  %carry168 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %i.2
  store i128 %sumAndCarry165, i128* %carry168, align 4
  br label %loop.latch169

loop.latch169:                                    ; preds = %loop.body130
  %add171 = add i128 %i.2, 1
  %mul174 = mul i128 2, %1
  %sub175 = sub i128 %mul174, 1
  %slt176 = icmp slt i128 %add171, %sub175
  br i1 %slt176, label %loop.body130, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch169
  %mul180 = mul i128 2, %1
  %sub181 = sub i128 %mul180, 2
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub181, i128 1
  %split183 = load i128, i128* %array_getter182, align 4
  %mul186 = mul i128 2, %1
  %sub187 = sub i128 %mul186, 3
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub187, i128 2
  %split189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %split183, %split189
  %mul193 = mul i128 2, %1
  %sub194 = sub i128 %mul193, 2
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub194
  %carry196 = load i128, i128* %array_getter195, align 4
  %add197 = add i128 %add190, %carry196
  %mul200 = mul i128 2, %1
  %sub201 = sub i128 %mul200, 1
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %sub201
  store i128 %add197, i128* %out202, align 4
  br label %if.exit203

if.exit203:                                       ; preds = %loop.exit177, %if.false125
  ret [256 x i128]* %uniform_array69
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %j2 = call i128 @fn_intrinsic_inline_init()
  %i25 = call i128 @fn_intrinsic_inline_init()
  %j27 = call i128 @fn_intrinsic_inline_init()
  %j18 = call i128 @fn_intrinsic_inline_init()
  %i112 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch21, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add23, %loop.latch21 ]
  br label %loop.body14

loop.body14:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.0, i128 %i.0
  store i128 0, i128* %prod_val17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body14
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body14, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch21

loop.latch21:                                     ; preds = %loop.exit
  %add23 = add i128 %i.0, 1
  %mul25 = mul i128 2, %1
  %sub26 = sub i128 %mul25, 1
  %slt27 = icmp slt i128 %add23, %sub26
  br i1 %slt27, label %loop.body, label %loop.exit28

loop.exit28:                                      ; preds = %loop.latch21
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch80, %loop.exit28
  %i111.0 = phi i128 [ 0, %loop.exit28 ], [ %add82, %loop.latch80 ]
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch73, %loop.body29
  %i2.0 = phi i128 [ 0, %loop.body29 ], [ %add75, %loop.latch73 ]
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch66, %loop.body30
  %j1.0 = phi i128 [ 0, %loop.body30 ], [ %add68, %loop.latch66 ]
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch59, %loop.body31
  %j26.0 = phi i128 [ 0, %loop.body31 ], [ %add61, %loop.latch59 ]
  %add36 = add i128 %j1.0, %j26.0
  %add39 = add i128 %i111.0, %i2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add36, i128 %add39
  %prod_val40 = load i128, i128* %array_getter, align 4
  %array_getter43 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j1.0, i128 %i111.0
  %a44 = load i128, i128* %array_getter43, align 4
  %array_getter47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %4, i128 0, i128 %j26.0, i128 %i2.0
  %b48 = load i128, i128* %array_getter47, align 4
  %mul49 = mul i128 %a44, %b48
  %add50 = add i128 %prod_val40, %mul49
  %add54 = add i128 %j1.0, %j26.0
  %add57 = add i128 %i111.0, %i2.0
  %prod_val58 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add54, i128 %add57
  store i128 %add50, i128* %prod_val58, align 4
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body32
  %add61 = add i128 %j26.0, 1
  %slt64 = icmp slt i128 %add61, %2
  br i1 %slt64, label %loop.body32, label %loop.exit65

loop.exit65:                                      ; preds = %loop.latch59
  br label %loop.latch66

loop.latch66:                                     ; preds = %loop.exit65
  %add68 = add i128 %j1.0, 1
  %slt71 = icmp slt i128 %add68, %2
  br i1 %slt71, label %loop.body31, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch66
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.exit72
  %add75 = add i128 %i2.0, 1
  %slt78 = icmp slt i128 %add75, %1
  br i1 %slt78, label %loop.body30, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.exit79
  %add82 = add i128 %i111.0, 1
  %slt85 = icmp slt i128 %add82, %1
  br i1 %slt85, label %loop.body29, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch80
  %uniform_array87 = alloca [256 x [256 x i128]], align 8
  %uniform_array88 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch111, %loop.exit86
  %j.1 = phi i128 [ 0, %loop.exit86 ], [ %add113, %loop.latch111 ]
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch102, %loop.body89
  %i.1 = phi i128 [ 0, %loop.body89 ], [ %add104, %loop.latch102 ]
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.1, i128 %i.1
  %prod_val95 = load i128, i128* %array_getter94, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val95, i128 %0, i128 %0, i128 %0)
  %split101 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.1, i128 %i.1
  %5 = bitcast [256 x i128]* %split101 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body90
  %add104 = add i128 %i.1, 1
  %mul107 = mul i128 2, %1
  %sub108 = sub i128 %mul107, 1
  %slt109 = icmp slt i128 %add104, %sub108
  br i1 %slt109, label %loop.body90, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch102
  br label %loop.latch111

loop.latch111:                                    ; preds = %loop.exit110
  %add113 = add i128 %j.1, 1
  %mul116 = mul i128 2, %2
  %sub117 = sub i128 %mul116, 1
  %slt118 = icmp slt i128 %add113, %sub117
  br i1 %slt118, label %loop.body89, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch111
  %uniform_array120 = alloca [256 x [256 x i128]], align 8
  %uniform_array121 = alloca [256 x [256 x i128]], align 8
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch260, %loop.exit119
  %j.2 = phi i128 [ 0, %loop.exit119 ], [ %add262, %loop.latch260 ]
  %carry125 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 0
  store i128 0, i128* %carry125, align 4
  %array_getter128 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 0, i128 0
  %split129 = load i128, i128* %array_getter128, align 4
  %out132 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %j.2, i128 0
  store i128 %split129, i128* %out132, align 4
  %mul134 = mul i128 2, %1
  %sub135 = sub i128 %mul134, 1
  %sgt = icmp sgt i128 %sub135, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body122
  %array_getter138 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 0, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %array_getter143 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 1, i128 0
  %split144 = load i128, i128* %array_getter143, align 4
  %add145 = add i128 %split139, %split144
  %call148 = call [2 x i128]* @SplitFn(i128 %add145, i128 %0, i128 %0)
  %sumAndCarry151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2
  %7 = bitcast [256 x i128]* %sumAndCarry151 to i8*
  %8 = bitcast [2 x i128]* %call148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %array_getter154 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2, i128 0
  %sumAndCarry155 = load i128, i128* %array_getter154, align 4
  %out158 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry155, i128* %out158, align 4
  %array_getter161 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2, i128 1
  %sumAndCarry162 = load i128, i128* %array_getter161, align 4
  %carry165 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry162, i128* %carry165, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body122
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %mul169 = mul i128 2, %1
  %sub170 = sub i128 %mul169, 1
  %sgt171 = icmp sgt i128 %sub170, 2
  br i1 %sgt171, label %if.true166, label %if.false167

if.true166:                                       ; preds = %if.exit
  br label %loop.body172

if.false167:                                      ; preds = %if.exit
  br label %if.exit259

loop.body172:                                     ; preds = %loop.latch221, %if.true166
  %i.2 = phi i128 [ 2, %if.true166 ], [ %add223, %loop.latch221 ]
  %array_getter176 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 %i.2, i128 0
  %split177 = load i128, i128* %array_getter176, align 4
  %sub181 = sub i128 %i.2, 1
  %array_getter182 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 %sub181, i128 1
  %split183 = load i128, i128* %array_getter182, align 4
  %add184 = add i128 %split177, %split183
  %sub188 = sub i128 %i.2, 2
  %array_getter189 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 %sub188, i128 2
  %split190 = load i128, i128* %array_getter189, align 4
  %add191 = add i128 %add184, %split190
  %sub195 = sub i128 %i.2, 1
  %array_getter196 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 %sub195
  %carry197 = load i128, i128* %array_getter196, align 4
  %add198 = add i128 %add191, %carry197
  %call201 = call [2 x i128]* @SplitFn(i128 %add198, i128 %0, i128 %0)
  %sumAndCarry204 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2
  %9 = bitcast [256 x i128]* %sumAndCarry204 to i8*
  %10 = bitcast [2 x i128]* %call201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %array_getter207 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2, i128 0
  %sumAndCarry208 = load i128, i128* %array_getter207, align 4
  %out212 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry208, i128* %out212, align 4
  %array_getter215 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array121, i128 0, i128 %j.2, i128 1
  %sumAndCarry216 = load i128, i128* %array_getter215, align 4
  %carry220 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry216, i128* %carry220, align 4
  br label %loop.latch221

loop.latch221:                                    ; preds = %loop.body172
  %add223 = add i128 %i.2, 1
  %mul226 = mul i128 2, %1
  %sub227 = sub i128 %mul226, 1
  %slt228 = icmp slt i128 %add223, %sub227
  br i1 %slt228, label %loop.body172, label %loop.exit229

loop.exit229:                                     ; preds = %loop.latch221
  %mul233 = mul i128 2, %1
  %sub234 = sub i128 %mul233, 2
  %array_getter235 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 %sub234, i128 1
  %split236 = load i128, i128* %array_getter235, align 4
  %mul240 = mul i128 2, %1
  %sub241 = sub i128 %mul240, 3
  %array_getter242 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array88, i128 0, i128 %j.2, i128 %sub241, i128 2
  %split243 = load i128, i128* %array_getter242, align 4
  %add244 = add i128 %split236, %split243
  %mul248 = mul i128 2, %1
  %sub249 = sub i128 %mul248, 2
  %array_getter250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 %sub249
  %carry251 = load i128, i128* %array_getter250, align 4
  %add252 = add i128 %add244, %carry251
  %mul256 = mul i128 2, %1
  %sub257 = sub i128 %mul256, 1
  %out258 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array87, i128 0, i128 %j.2, i128 %sub257
  store i128 %add252, i128* %out258, align 4
  br label %if.exit259

if.exit259:                                       ; preds = %loop.exit229, %if.false167
  br label %loop.latch260

loop.latch260:                                    ; preds = %if.exit259
  %add262 = add i128 %j.2, 1
  %mul265 = mul i128 2, %2
  %sub266 = sub i128 %mul265, 1
  %slt267 = icmp slt i128 %add262, %sub266
  br i1 %slt267, label %loop.body122, label %loop.exit268

loop.exit268:                                     ; preds = %loop.latch260
  ret [256 x [256 x i128]]* %uniform_array87
}

define [256 x [256 x [256 x [256 x i128]]]]* @get_iso3_coeffs(i128 %0, i128 %1) {
entry:
  %uniform_array = alloca [256 x [256 x [256 x [256 x i128]]]], align 8
  %eq = icmp eq i128 %0, 55
  %eq2 = icmp eq i128 %1, 7
  %and = and i1 %eq, %eq2
  br i1 %and, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 15950248680265686, i128 32024958503631044, i128 4244301805875352, i128 29783714120969249, i128 35703698803053471, i128 29228779030399226, i128 406640325010316, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  %coeffs3 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0
  %2 = bitcast [256 x i128]* %coeffs3 to i8*
  %3 = bitcast [256 x i128]* %const_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array4 = alloca [256 x i128], align 8
  store [256 x i128] [i128 15950248680265686, i128 32024958503631044, i128 4244301805875352, i128 29783714120969249, i128 35703698803053471, i128 29228779030399226, i128 406640325010316, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array4, align 4
  %coeffs6 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1
  %4 = bitcast [256 x i128]* %coeffs6 to i8*
  %5 = bitcast [256 x i128]* %const_inline_array4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array7 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array7, align 4
  %coeffs9 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0
  %6 = bitcast [256 x i128]* %coeffs9 to i8*
  %7 = bitcast [256 x i128]* %const_inline_array7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array10 = alloca [256 x i128], align 8
  store [256 x i128] [i128 11821949021832986, i128 24017281472965197, i128 12732905417626058, i128 17293548324979811, i128 35053502371232479, i128 15628743053269744, i128 1219920975030950, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array10, align 4
  %coeffs12 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1
  %8 = bitcast [256 x i128]* %coeffs12 to i8*
  %9 = bitcast [256 x i128]* %const_inline_array10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array13 = alloca [256 x i128], align 8
  store [256 x i128] [i128 11821949021832990, i128 24017281472965197, i128 12732905417626058, i128 17293548324979811, i128 35053502371232479, i128 15628743053269744, i128 1219920975030950, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array13, align 4
  %coeffs15 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0
  %10 = bitcast [256 x i128]* %coeffs15 to i8*
  %11 = bitcast [256 x i128]* %const_inline_array13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] [i128 23925373020398477, i128 12008640736482598, i128 24380851218295013, i128 26661172671971889, i128 17526751185616239, i128 7814371526634872, i128 609960487515475, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array16, align 4
  %coeffs18 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1
  %12 = bitcast [256 x i128]* %coeffs18 to i8*
  %13 = bitcast [256 x i128]* %const_inline_array16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array19 = alloca [256 x i128], align 8
  store [256 x i128] [i128 27772197702098641, i128 20013442957632273, i128 16977207223501411, i128 11048465426985092, i128 34728404155321983, i128 8828725064705003, i128 1626561300041267, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array19, align 4
  %coeffs21 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0
  %14 = bitcast [256 x i128]* %coeffs21 to i8*
  %15 = bitcast [256 x i128]* %const_inline_array19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array22, align 4
  %coeffs24 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1
  %16 = bitcast [256 x i128]* %coeffs24 to i8*
  %17 = bitcast [256 x i128]* %const_inline_array22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array25 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array25, align 4
  %coeffs27 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0
  %18 = bitcast [256 x i128]* %coeffs27 to i8*
  %19 = bitcast [256 x i128]* %const_inline_array25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array28 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231395, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array28, align 4
  %coeffs30 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1
  %20 = bitcast [256 x i128]* %coeffs30 to i8*
  %21 = bitcast [256 x i128]* %const_inline_array28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array31 = alloca [256 x i128], align 8
  store [256 x i128] [i128 12, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array31, align 4
  %coeffs33 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0
  %22 = bitcast [256 x i128]* %coeffs33 to i8*
  %23 = bitcast [256 x i128]* %const_inline_array31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array34 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231455, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array34, align 4
  %coeffs36 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1
  %24 = bitcast [256 x i128]* %coeffs36 to i8*
  %25 = bitcast [256 x i128]* %const_inline_array34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array37 = alloca [256 x i128], align 8
  store [256 x i128] [i128 1, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array37, align 4
  %coeffs39 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0
  %26 = bitcast [256 x i128]* %coeffs39 to i8*
  %27 = bitcast [256 x i128]* %const_inline_array37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array40 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array40, align 4
  %coeffs42 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1
  %28 = bitcast [256 x i128]* %coeffs42 to i8*
  %29 = bitcast [256 x i128]* %const_inline_array40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array43, align 4
  %coeffs45 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0
  %30 = bitcast [256 x i128]* %coeffs45 to i8*
  %31 = bitcast [256 x i128]* %const_inline_array43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array46 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array46, align 4
  %coeffs48 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1
  %32 = bitcast [256 x i128]* %coeffs48 to i8*
  %33 = bitcast [256 x i128]* %const_inline_array46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array49 = alloca [256 x i128], align 8
  store [256 x i128] [i128 22455448142010118, i128 21348055796076581, i128 27572038961197616, i128 1120560719995342, i128 22827171220970826, i128 11095397727559917, i128 1491014525037828, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array49, align 4
  %coeffs51 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0
  %34 = bitcast [256 x i128]* %coeffs51 to i8*
  %35 = bitcast [256 x i128]* %const_inline_array49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] [i128 22455448142010118, i128 21348055796076581, i128 27572038961197616, i128 1120560719995342, i128 22827171220970826, i128 11095397727559917, i128 1491014525037828, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array52, align 4
  %coeffs54 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1
  %36 = bitcast [256 x i128]* %coeffs54 to i8*
  %37 = bitcast [256 x i128]* %const_inline_array52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array55 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array55, align 4
  %coeffs57 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0
  %38 = bitcast [256 x i128]* %coeffs57 to i8*
  %39 = bitcast [256 x i128]* %const_inline_array55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array58 = alloca [256 x i128], align 8
  store [256 x i128] [i128 15950248680265662, i128 32024958503631044, i128 4244301805875352, i128 29783714120969249, i128 35703698803053471, i128 29228779030399226, i128 406640325010316, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array58, align 4
  %coeffs60 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1
  %40 = bitcast [256 x i128]* %coeffs60 to i8*
  %41 = bitcast [256 x i128]* %const_inline_array58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array61 = alloca [256 x i128], align 8
  store [256 x i128] [i128 11821949021832988, i128 24017281472965197, i128 12732905417626058, i128 17293548324979811, i128 35053502371232479, i128 15628743053269744, i128 1219920975030950, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array61, align 4
  %coeffs63 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0
  %42 = bitcast [256 x i128]* %coeffs63 to i8*
  %43 = bitcast [256 x i128]* %const_inline_array61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array64 = alloca [256 x i128], align 8
  store [256 x i128] [i128 23925373020398479, i128 12008640736482598, i128 24380851218295013, i128 26661172671971889, i128 17526751185616239, i128 7814371526634872, i128 609960487515475, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array64, align 4
  %coeffs66 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1
  %44 = bitcast [256 x i128]* %coeffs66 to i8*
  %45 = bitcast [256 x i128]* %const_inline_array64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array67 = alloca [256 x i128], align 8
  store [256 x i128] [i128 14480323801877264, i128 5335576544261059, i128 7435489548777956, i128 4243102168992702, i128 4975321819444090, i128 32509805231324272, i128 1287694362532669, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array67, align 4
  %coeffs69 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0
  %46 = bitcast [256 x i128]* %coeffs69 to i8*
  %47 = bitcast [256 x i128]* %const_inline_array67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array70, align 4
  %coeffs72 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1
  %48 = bitcast [256 x i128]* %coeffs72 to i8*
  %49 = bitcast [256 x i128]* %const_inline_array70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array73 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231035, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array73, align 4
  %coeffs75 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0
  %50 = bitcast [256 x i128]* %coeffs75 to i8*
  %51 = bitcast [256 x i128]* %const_inline_array73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array76 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231035, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array76, align 4
  %coeffs78 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1
  %52 = bitcast [256 x i128]* %coeffs78 to i8*
  %53 = bitcast [256 x i128]* %const_inline_array76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array79 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array79, align 4
  %coeffs81 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0
  %54 = bitcast [256 x i128]* %coeffs81 to i8*
  %55 = bitcast [256 x i128]* %const_inline_array79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array82 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231251, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array82, align 4
  %coeffs84 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1
  %56 = bitcast [256 x i128]* %coeffs84 to i8*
  %57 = bitcast [256 x i128]* %const_inline_array82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] [i128 18, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array85, align 4
  %coeffs87 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0
  %58 = bitcast [256 x i128]* %coeffs87 to i8*
  %59 = bitcast [256 x i128]* %const_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array88 = alloca [256 x i128], align 8
  store [256 x i128] [i128 35747322042231449, i128 36025922209447795, i128 1084959616957103, i128 7925923977987733, i128 16551456537884751, i128 23443114579904617, i128 1829881462546425, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array88, align 4
  %coeffs90 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1
  %60 = bitcast [256 x i128]* %coeffs90 to i8*
  %61 = bitcast [256 x i128]* %const_inline_array88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array91 = alloca [256 x i128], align 8
  store [256 x i128] [i128 1, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array91, align 4
  %coeffs93 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0
  %62 = bitcast [256 x i128]* %coeffs93 to i8*
  %63 = bitcast [256 x i128]* %const_inline_array91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array94 = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %const_inline_array94, align 4
  %coeffs96 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1
  %64 = bitcast [256 x i128]* %coeffs96 to i8*
  %65 = bitcast [256 x i128]* %const_inline_array94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret [256 x [256 x [256 x [256 x i128]]]]* %uniform_array
}

define [256 x [256 x [256 x i128]]]* @get_etas(i128 %0, i128 %1) {
entry:
  %call = call [256 x i128]* @get_BLS12_381_prime(i128 %0, i128 %1)
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  %eq = icmp eq i128 %0, 55
  %eq5 = icmp eq i128 %1, 7
  %and = and i1 %eq, %eq5
  br i1 %and, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 15111404105178256, i128 12179658998385743, i128 23072200951145993, i128 9032482684664404, i128 23305776986956055, i128 5290624451499435, i128 464473045539356, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  %etas6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 0
  %2 = bitcast [256 x i128]* %etas6 to i8*
  %3 = bitcast [256 x i128]* %const_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array7 = alloca [256 x i128], align 8
  store [256 x i128] [i128 12283190417025461, i128 20834464198811383, i128 18619727854230373, i128 19507968258096915, i128 5803508121078619, i128 11236708505185735, i128 568856440213905, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array7, align 4
  %etas9 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 1
  %4 = bitcast [256 x i128]* %etas9 to i8*
  %5 = bitcast [256 x i128]* %const_inline_array7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array10 = alloca [256 x i128], align 8
  store [256 x i128] [i128 25832285470060055, i128 4957529455978525, i128 11309477484109628, i128 34786223745332771, i128 32011200050324214, i128 11140434959259260, i128 752550210394889, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array10, align 4
  %etas12 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 0
  %6 = bitcast [256 x i128]* %etas12 to i8*
  %7 = bitcast [256 x i128]* %const_inline_array10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array13 = alloca [256 x i128], align 8
  store [256 x i128] [i128 17831328741298113, i128 28196239014888719, i128 105869995940733, i128 9669258860454335, i128 12680438922771573, i128 19435555960961745, i128 748772277207452, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array13, align 4
  %etas15 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 1
  %8 = bitcast [256 x i128]* %etas15 to i8*
  %9 = bitcast [256 x i128]* %const_inline_array13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 1
  %etas20 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %etas20, [256 x i128]* %spice_inline_array, align 4
  %call21 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %spice_inline_array)
  %etas23 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 0
  %10 = bitcast [256 x i128]* %etas23 to i8*
  %11 = bitcast [256 x i128]* %call21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 0
  %etas26 = load [256 x i128], [256 x i128]* %array_getter25, align 4
  %spice_inline_array27 = alloca [256 x i128], align 8
  store [256 x i128] %etas26, [256 x i128]* %spice_inline_array27, align 4
  %etas29 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 1
  %12 = bitcast [256 x i128]* %etas29 to i8*
  %13 = bitcast [256 x i128]* %spice_inline_array27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter34 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 1
  %etas35 = load [256 x i128], [256 x i128]* %array_getter34, align 4
  %spice_inline_array36 = alloca [256 x i128], align 8
  store [256 x i128] %etas35, [256 x i128]* %spice_inline_array36, align 4
  %call37 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %spice_inline_array36)
  %etas39 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 3, i128 0
  %14 = bitcast [256 x i128]* %etas39 to i8*
  %15 = bitcast [256 x i128]* %call37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 0
  %etas42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %etas42, [256 x i128]* %spice_inline_array43, align 4
  %etas45 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 3, i128 1
  %16 = bitcast [256 x i128]* %etas45 to i8*
  %17 = bitcast [256 x i128]* %spice_inline_array43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x [256 x i128]]]* @get_generator_G2(i128 %0, i128 %1) {
entry:
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 95420233661880, i128 1773856045391785, i128 5044075188989616, i128 23082975677810779, i128 22805092780977487, i128 23121359448368568, i128 161253150172098, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  %g22 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 0
  %2 = bitcast [256 x i128]* %g22 to i8*
  %3 = bitcast [256 x i128]* %const_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array3 = alloca [256 x i128], align 8
  store [256 x i128] [i128 12522360964131710, i128 27624298323292107, i128 31369054948478259, i128 20553930357265165, i128 32921944760061193, i128 30416570139545860, i128 1398625365433447, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array3, align 4
  %g25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 1
  %4 = bitcast [256 x i128]* %g25 to i8*
  %5 = bitcast [256 x i128]* %const_inline_array3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array6 = alloca [256 x i128], align 8
  store [256 x i128] [i128 5440959206139905, i128 5515662923731907, i128 10491004233861355, i128 28691331721860307, i128 27955817036233384, i128 18631882631076677, i128 907600843284315, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array6, align 4
  %g28 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 0
  %6 = bitcast [256 x i128]* %g28 to i8*
  %7 = bitcast [256 x i128]* %const_inline_array6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array9 = alloca [256 x i128], align 8
  store [256 x i128] [i128 11548582681213374, i128 7404909498155861, i128 12768329608264924, i128 12731371725497493, i128 11463081752430568, i128 7184576637437304, i128 424072857758157, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array9, align 4
  %g211 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 1
  %8 = bitcast [256 x i128]* %g211 to i8*
  %9 = bitcast [256 x i128]* %const_inline_array9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %sgt = icmp sgt i128 %0, %1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %carry1 = call i128 @fn_intrinsic_inline_init()
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry28, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %5, i128 0, i128 %i.0
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %add19 = add i128 %add17, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add19, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry21 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry21, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %sumAndCarry26 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry26, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add30 = add i128 %i.0, 1
  %slt = icmp slt i128 %add30, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry28, i128* %sum35, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %MAXL1 = call i128 @fn_intrinsic_inline_init()
  %borrow2 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %carry4 = call i128 @fn_intrinsic_inline_init()
  %X7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %i.1 = phi i128 [ %1, %loop.exit ], [ %add22, %loop.latch20 ]
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.1
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %add22 = add i128 %i.1, 1
  %sle = icmp sle i128 %add22, 50
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %lshift = shl i128 1, %0
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %i.2 = phi i128 [ 0, %loop.exit25 ], [ %add85, %loop.latch83 ]
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp34 = load i128, i128* %array_getter33, align 4
  %mod = srem i128 %temp34, %lshift
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %mod, i128* %out38, align 4
  %add41 = add i128 %i.2, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp47 = load i128, i128* %array_getter46, align 4
  %sdiv = sdiv i128 %temp47, %lshift
  %add49 = add i128 %temp43, %sdiv
  %add52 = add i128 %i.2, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %add59 = add i128 %neg, %lshift
  %sub = sub i128 %add59, 1
  %sdiv61 = sdiv i128 %sub, %lshift
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp65 = load i128, i128* %array_getter64, align 4
  %mul = mul i128 %sdiv61, %lshift
  %add68 = add i128 %temp65, %mul
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %add68, i128* %out71, align 4
  %add74 = add i128 %i.2, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %sub78 = sub i128 %temp76, %sdiv61
  %add81 = add i128 %i.2, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %add85 = add i128 %i.2, 1
  %slt88 = icmp slt i128 %add85, 50
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %out99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 0, i128* %out99, align 4
  ret [256 x i128]* %uniform_array

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit101

if.exit101:                                       ; preds = %if.false91
  br label %loop.body102

loop.body102:                                     ; preds = %loop.latch110, %if.exit101
  %i.3 = phi i128 [ 0, %if.exit101 ], [ %add112, %loop.latch110 ]
  %array_getter105 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.3
  %a106 = load i128, i128* %array_getter105, align 4
  %temp109 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.3
  store i128 %a106, i128* %temp109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body102
  %add112 = add i128 %i.3, 1
  %slt115 = icmp slt i128 %add112, %1
  br i1 %slt115, label %loop.body102, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit116
  %i.4 = phi i128 [ %1, %loop.exit116 ], [ %add124, %loop.latch122 ]
  %temp121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.4
  store i128 0, i128* %temp121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %add124 = add i128 %i.4, 1
  %sle127 = icmp sle i128 %add124, 50
  br i1 %sle127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  br label %loop.body129

loop.body129:                                     ; preds = %loop.latch198, %loop.exit128
  %i.5 = phi i128 [ 0, %loop.exit128 ], [ %add200, %loop.latch198 ]
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp135 = load i128, i128* %array_getter134, align 4
  %slt136 = icmp slt i128 %temp135, 0
  br i1 %slt136, label %if.true130, label %if.false131

if.true130:                                       ; preds = %loop.body129
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp140 = load i128, i128* %array_getter139, align 4
  %neg141 = sub i128 0, %temp140
  %sdiv143 = sdiv i128 %neg141, %lshift
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp147 = load i128, i128* %array_getter146, align 4
  %mul150 = mul i128 %sdiv143, %lshift
  %add151 = add i128 %temp147, %mul150
  %out154 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %add151, i128* %out154, align 4
  %add157 = add i128 %i.5, 1
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add157
  %temp159 = load i128, i128* %array_getter158, align 4
  %sub161 = sub i128 %temp159, %sdiv143
  %add164 = add i128 %i.5, 1
  %temp165 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add164
  store i128 %sub161, i128* %temp165, align 4
  br label %if.exit197

if.false131:                                      ; preds = %loop.body129
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp169 = load i128, i128* %array_getter168, align 4
  %add171 = add i128 %temp169, %lshift
  %sub172 = sub i128 %add171, 1
  %sdiv174 = sdiv i128 %sub172, %lshift
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp178 = load i128, i128* %array_getter177, align 4
  %mul181 = mul i128 %sdiv174, %lshift
  %sub182 = sub i128 %temp178, %mul181
  %out185 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %sub182, i128* %out185, align 4
  %add188 = add i128 %i.5, 1
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add188
  %temp190 = load i128, i128* %array_getter189, align 4
  %add192 = add i128 %temp190, %sdiv174
  %add195 = add i128 %i.5, 1
  %temp196 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add195
  store i128 %add192, i128* %temp196, align 4
  br label %if.exit197

if.exit197:                                       ; preds = %if.false131, %if.true130
  br label %loop.latch198

loop.latch198:                                    ; preds = %if.exit197
  %add200 = add i128 %i.5, 1
  %slt203 = icmp slt i128 %add200, 50
  br i1 %slt203, label %loop.body129, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch198
  %out207 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 1, i128* %out207, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x [256 x [256 x i128]]]* @get_roots_of_unity(i128 %0, i128 %1) {
entry:
  %idx1 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %roots4 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 0, i128 %idx.0
  store i128 0, i128* %roots4, align 4
  %roots7 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 1, i128 %idx.0
  store i128 0, i128* %roots7, align 4
  %roots10 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 0, i128 %idx.0
  store i128 0, i128* %roots10, align 4
  %roots13 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 1, i128 %idx.0
  store i128 0, i128* %roots13, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %roots17 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0
  store i128 1, i128* %roots17, align 4
  %roots19 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0
  store i128 1, i128* %roots19, align 4
  %eq = icmp eq i128 %0, 55
  %eq21 = icmp eq i128 %1, 7
  %and = and i1 %eq, %eq21
  br i1 %and, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %const_inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 4649817190157321, i128 14178090100713872, i128 25898210532243870, i128 6361890036890480, i128 6755281389607612, i128 401348527762810, i128 470331148861392, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array, align 4
  %roots23 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 0
  %2 = bitcast [256 x i128]* %roots23 to i8*
  %3 = bitcast [256 x i128]* %const_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array24 = alloca [256 x i128], align 8
  store [256 x i128] [i128 4649817190157321, i128 14178090100713872, i128 25898210532243870, i128 6361890036890480, i128 6755281389607612, i128 401348527762810, i128 470331148861392, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array24, align 4
  %roots26 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 2, i128 1
  %4 = bitcast [256 x i128]* %roots26 to i8*
  %5 = bitcast [256 x i128]* %const_inline_array24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array27 = alloca [256 x i128], align 8
  store [256 x i128] [i128 4649817190157321, i128 14178090100713872, i128 25898210532243870, i128 6361890036890480, i128 6755281389607612, i128 401348527762810, i128 470331148861392, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array27, align 4
  %roots29 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 3, i128 0
  %6 = bitcast [256 x i128]* %roots29 to i8*
  %7 = bitcast [256 x i128]* %const_inline_array27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %const_inline_array30 = alloca [256 x i128], align 8
  store [256 x i128] [i128 31097504852074146, i128 21847832108733923, i128 11215546103677201, i128 1564033941097252, i128 9796175148277139, i128 23041766052141807, i128 1359550313685033, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %const_inline_array30, align 4
  %roots32 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 3, i128 1
  %8 = bitcast [256 x i128]* %roots32 to i8*
  %9 = bitcast [256 x i128]* %const_inline_array30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.exit
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x [256 x [256 x i128]]]]* @get_Fp12_frobenius(i128 %0, i128 %1) {
entry:
  %uniform_array = alloca [256 x [256 x [256 x [256 x i128]]]], align 8
  %eq = icmp eq i128 %0, 96
  %eq2 = icmp eq i128 %1, 4
  %and = and i1 %eq, %eq2
  br i1 %and, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %coeff3 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3, align 4
  %coeff5 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff5, align 4
  %coeff7 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff7, align 4
  %coeff9 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff9, align 4
  %coeff11 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff11, align 4
  %coeff13 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff13, align 4
  %coeff15 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff15, align 4
  %coeff17 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff17, align 4
  %coeff19 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 0
  store i128 1, i128* %coeff19, align 4
  %coeff21 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 1
  store i128 0, i128* %coeff21, align 4
  %coeff23 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 2
  store i128 0, i128* %coeff23, align 4
  %coeff25 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 3
  store i128 0, i128* %coeff25, align 4
  %coeff27 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff27, align 4
  %coeff29 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff29, align 4
  %coeff31 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff31, align 4
  %coeff33 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff33, align 4
  %coeff35 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff35, align 4
  %coeff37 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff37, align 4
  %coeff39 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff39, align 4
  %coeff41 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff41, align 4
  %coeff43 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff43, align 4
  %coeff45 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff45, align 4
  %coeff47 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff47, align 4
  %coeff49 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff49, align 4
  %coeff51 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff51, align 4
  %coeff53 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff53, align 4
  %coeff55 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff55, align 4
  %coeff57 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff57, align 4
  %coeff59 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff59, align 4
  %coeff61 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff61, align 4
  %coeff63 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff63, align 4
  %coeff65 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff65, align 4
  %coeff67 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff67, align 4
  %coeff69 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff69, align 4
  %coeff71 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff71, align 4
  %coeff73 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff73, align 4
  %coeff75 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff75, align 4
  %coeff77 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff77, align 4
  %coeff79 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff79, align 4
  %coeff81 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff81, align 4
  %coeff83 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 0
  store i128 1, i128* %coeff83, align 4
  %coeff85 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 1
  store i128 0, i128* %coeff85, align 4
  %coeff87 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 2
  store i128 0, i128* %coeff87, align 4
  %coeff89 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 3
  store i128 0, i128* %coeff89, align 4
  %coeff91 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff91, align 4
  %coeff93 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff93, align 4
  %coeff95 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff95, align 4
  %coeff97 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff97, align 4
  %coeff99 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff99, align 4
  %coeff101 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff101, align 4
  %coeff103 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff103, align 4
  %coeff105 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff105, align 4
  %coeff107 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff107, align 4
  %coeff109 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff109, align 4
  %coeff111 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff111, align 4
  %coeff113 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff113, align 4
  %coeff115 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 0
  store i128 10162220749080420597, i128* %coeff115, align 4
  %coeff117 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 1
  store i128 9564161016340867348, i128* %coeff117, align 4
  %coeff119 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 2
  store i128 1141103942305410158, i128* %coeff119, align 4
  %coeff121 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 3
  store i128 196758051849933427, i128* %coeff121, align 4
  %coeff123 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 0
  store i128 3240210269972515253, i128* %coeff123, align 4
  %coeff125 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 1
  store i128 8211817353910544778, i128* %coeff125, align 4
  %coeff127 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 2
  store i128 6098234019238335271, i128* %coeff127, align 4
  %coeff129 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 3
  store i128 3946525681149945645, i128* %coeff129, align 4
  %coeff131 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff131, align 4
  %coeff133 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff133, align 4
  %coeff135 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff135, align 4
  %coeff137 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff137, align 4
  %coeff139 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 0
  store i128 10087218741710072489, i128* %coeff139, align 4
  %coeff141 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 1
  store i128 1132760428998381904, i128* %coeff141, align 4
  %coeff143 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 2
  store i128 12253596937043474777, i128* %coeff143, align 4
  %coeff145 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 3
  store i128 4143283731404378736, i128* %coeff145, align 4
  %coeff147 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 0
  store i128 14416168626703815165, i128* %coeff147, align 4
  %coeff149 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 1
  store i128 41167666976589638, i128* %coeff149, align 4
  %coeff151 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 2
  store i128 5204293838501626716, i128* %coeff151, align 4
  %coeff153 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 3
  store i128 4035014208996307313, i128* %coeff153, align 4
  %coeff155 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 0
  store i128 14416168626703815165, i128* %coeff155, align 4
  %coeff157 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 1
  store i128 41167666976589638, i128* %coeff157, align 4
  %coeff159 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 2
  store i128 5204293838501626716, i128* %coeff159, align 4
  %coeff161 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 3
  store i128 4035014208996307313, i128* %coeff161, align 4
  %coeff163 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 0
  store i128 10087218741710072490, i128* %coeff163, align 4
  %coeff165 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff165, align 4
  %coeff167 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff167, align 4
  %coeff169 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff169, align 4
  %coeff171 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff171, align 4
  %coeff173 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff173, align 4
  %coeff175 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff175, align 4
  %coeff177 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff177, align 4
  %coeff179 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 0
  store i128 11175958356731299912, i128* %coeff179, align 4
  %coeff181 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 1
  store i128 10276094391070563771, i128* %coeff181, align 4
  %coeff183 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 2
  store i128 17552803892972843059, i128* %coeff183, align 4
  %coeff185 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 3
  store i128 88488527846361668, i128* %coeff185, align 4
  %coeff187 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 0
  store i128 2226472662321635938, i128* %coeff187, align 4
  %coeff189 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 1
  store i128 7499883979180848355, i128* %coeff189, align 4
  %coeff191 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 2
  store i128 8133278146575421281, i128* %coeff191, align 4
  %coeff193 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 3
  store i128 4054795205153517403, i128* %coeff193, align 4
  %coeff195 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff195, align 4
  %coeff197 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff197, align 4
  %coeff199 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff199, align 4
  %coeff201 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff201, align 4
  %coeff203 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff203, align 4
  %coeff205 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff205, align 4
  %coeff207 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff207, align 4
  %coeff209 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff209, align 4
  %coeff211 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 0
  store i128 3315212277342863361, i128* %coeff211, align 4
  %coeff213 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff213, align 4
  %coeff215 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff215, align 4
  %coeff217 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 3
  store i128 1595500335, i128* %coeff217, align 4
  %coeff219 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff219, align 4
  %coeff221 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff221, align 4
  %coeff223 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff223, align 4
  %coeff225 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff225, align 4
  %coeff227 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff227, align 4
  %coeff229 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff229, align 4
  %coeff231 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff231, align 4
  %coeff233 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 3
  store i128 1595500335, i128* %coeff233, align 4
  %coeff235 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff235, align 4
  %coeff237 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff237, align 4
  %coeff239 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff239, align 4
  %coeff241 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff241, align 4
  %coeff243 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff243, align 4
  %coeff245 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff245, align 4
  %coeff247 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff247, align 4
  %coeff249 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff249, align 4
  %coeff251 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff251, align 4
  %coeff253 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff253, align 4
  %coeff255 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff255, align 4
  %coeff257 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff257, align 4
  %coeff259 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff259, align 4
  %coeff261 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff261, align 4
  %coeff263 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff263, align 4
  %coeff265 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff265, align 4
  %coeff267 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff267, align 4
  %coeff269 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff269, align 4
  %coeff271 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff271, align 4
  %coeff273 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff273, align 4
  %coeff275 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 0
  store i128 10087218741710072490, i128* %coeff275, align 4
  %coeff277 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff277, align 4
  %coeff279 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff279, align 4
  %coeff281 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff281, align 4
  %coeff283 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff283, align 4
  %coeff285 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff285, align 4
  %coeff287 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff287, align 4
  %coeff289 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff289, align 4
  %coeff291 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff291, align 4
  %coeff293 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff293, align 4
  %coeff295 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff295, align 4
  %coeff297 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff297, align 4
  %coeff299 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff299, align 4
  %coeff301 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff301, align 4
  %coeff303 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff303, align 4
  %coeff305 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff305, align 4
  %coeff307 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 0
  store i128 17433006466058672300, i128* %coeff307, align 4
  %coeff309 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 1
  store i128 17734810703274822488, i128* %coeff309, align 4
  %coeff311 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 2
  store i128 2035044127337086009, i128* %coeff311, align 4
  %coeff313 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 3
  store i128 108269524003571758, i128* %coeff313, align 4
  %coeff315 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 0
  store i128 14416168626703815165, i128* %coeff315, align 4
  %coeff317 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 1
  store i128 41167666976589638, i128* %coeff317, align 4
  %coeff319 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 2
  store i128 5204293838501626716, i128* %coeff319, align 4
  %coeff321 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 3
  store i128 4035014208996307313, i128* %coeff321, align 4
  %coeff323 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff323, align 4
  %coeff325 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff325, align 4
  %coeff327 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff327, align 4
  %coeff329 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff329, align 4
  %coeff331 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff331, align 4
  %coeff333 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff333, align 4
  %coeff335 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff335, align 4
  %coeff337 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff337, align 4
  %coeff339 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 0
  store i128 17433006466058672300, i128* %coeff339, align 4
  %coeff341 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 1
  store i128 17734810703274822488, i128* %coeff341, align 4
  %coeff343 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 2
  store i128 2035044127337086009, i128* %coeff343, align 4
  %coeff345 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 3
  store i128 108269524003571758, i128* %coeff345, align 4
  %coeff347 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 0
  store i128 17433006466058672300, i128* %coeff347, align 4
  %coeff349 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 1
  store i128 17734810703274822488, i128* %coeff349, align 4
  %coeff351 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 2
  store i128 2035044127337086009, i128* %coeff351, align 4
  %coeff353 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 3
  store i128 108269524003571758, i128* %coeff353, align 4
  %coeff355 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff355, align 4
  %coeff357 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff357, align 4
  %coeff359 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff359, align 4
  %coeff361 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff361, align 4
  %coeff363 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff363, align 4
  %coeff365 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff365, align 4
  %coeff367 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff367, align 4
  %coeff369 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff369, align 4
  %coeff371 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 0
  store i128 14416168626703815165, i128* %coeff371, align 4
  %coeff373 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 1
  store i128 41167666976589638, i128* %coeff373, align 4
  %coeff375 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 2
  store i128 5204293838501626716, i128* %coeff375, align 4
  %coeff377 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 3
  store i128 4035014208996307313, i128* %coeff377, align 4
  %coeff379 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 0
  store i128 17433006466058672300, i128* %coeff379, align 4
  %coeff381 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 1
  store i128 17734810703274822488, i128* %coeff381, align 4
  %coeff383 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 2
  store i128 2035044127337086009, i128* %coeff383, align 4
  %coeff385 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 3
  store i128 108269524003571758, i128* %coeff385, align 4
  %coeff387 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff387, align 4
  %coeff389 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff389, align 4
  %coeff391 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff391, align 4
  %coeff393 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff393, align 4
  %coeff395 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff395, align 4
  %coeff397 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff397, align 4
  %coeff399 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff399, align 4
  %coeff401 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff401, align 4
  %coeff403 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff403, align 4
  %coeff405 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff405, align 4
  %coeff407 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff407, align 4
  %coeff409 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 3
  store i128 1595500335, i128* %coeff409, align 4
  %coeff411 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff411, align 4
  %coeff413 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff413, align 4
  %coeff415 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff415, align 4
  %coeff417 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff417, align 4
  %coeff419 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff419, align 4
  %coeff421 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff421, align 4
  %coeff423 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff423, align 4
  %coeff425 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff425, align 4
  %coeff427 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff427, align 4
  %coeff429 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff429, align 4
  %coeff431 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff431, align 4
  %coeff433 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff433, align 4
  %coeff435 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff435, align 4
  %coeff437 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff437, align 4
  %coeff439 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff439, align 4
  %coeff441 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff441, align 4
  %coeff443 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff443, align 4
  %coeff445 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff445, align 4
  %coeff447 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff447, align 4
  %coeff449 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff449, align 4
  %coeff451 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff451, align 4
  %coeff453 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff453, align 4
  %coeff455 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff455, align 4
  %coeff457 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 3
  store i128 1595500335, i128* %coeff457, align 4
  %coeff459 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff459, align 4
  %coeff461 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff461, align 4
  %coeff463 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff463, align 4
  %coeff465 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff465, align 4
  %coeff467 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff467, align 4
  %coeff469 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff469, align 4
  %coeff471 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff471, align 4
  %coeff473 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff473, align 4
  %coeff475 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff475, align 4
  %coeff477 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff477, align 4
  %coeff479 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff479, align 4
  %coeff481 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff481, align 4
  %coeff483 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff483, align 4
  %coeff485 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff485, align 4
  %coeff487 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff487, align 4
  %coeff489 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff489, align 4
  %coeff491 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff491, align 4
  %coeff493 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff493, align 4
  %coeff495 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff495, align 4
  %coeff497 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff497, align 4
  %coeff499 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 0
  store i128 2226472662321635938, i128* %coeff499, align 4
  %coeff501 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 1
  store i128 7499883979180848355, i128* %coeff501, align 4
  %coeff503 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 2
  store i128 8133278146575421281, i128* %coeff503, align 4
  %coeff505 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 3
  store i128 4054795205153517403, i128* %coeff505, align 4
  %coeff507 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 0
  store i128 11175958356731299912, i128* %coeff507, align 4
  %coeff509 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 1
  store i128 10276094391070563771, i128* %coeff509, align 4
  %coeff511 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 2
  store i128 17552803892972843059, i128* %coeff511, align 4
  %coeff513 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 3
  store i128 88488527846361668, i128* %coeff513, align 4
  %coeff515 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff515, align 4
  %coeff517 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff517, align 4
  %coeff519 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff519, align 4
  %coeff521 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff521, align 4
  %coeff523 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 0
  store i128 3315212277342863360, i128* %coeff523, align 4
  %coeff525 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 1
  store i128 16643217941253030222, i128* %coeff525, align 4
  %coeff527 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 2
  store i128 13432485102504789563, i128* %coeff527, align 4
  %coeff529 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 3
  store i128 1595500335, i128* %coeff529, align 4
  %coeff531 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 0
  store i128 14416168626703815165, i128* %coeff531, align 4
  %coeff533 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 1
  store i128 41167666976589638, i128* %coeff533, align 4
  %coeff535 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 2
  store i128 5204293838501626716, i128* %coeff535, align 4
  %coeff537 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 3
  store i128 4035014208996307313, i128* %coeff537, align 4
  %coeff539 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 0
  store i128 14416168626703815165, i128* %coeff539, align 4
  %coeff541 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 1
  store i128 41167666976589638, i128* %coeff541, align 4
  %coeff543 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 2
  store i128 5204293838501626716, i128* %coeff543, align 4
  %coeff545 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 3
  store i128 4035014208996307313, i128* %coeff545, align 4
  %coeff547 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 0
  store i128 3315212277342863361, i128* %coeff547, align 4
  %coeff549 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff549, align 4
  %coeff551 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff551, align 4
  %coeff553 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 3
  store i128 1595500335, i128* %coeff553, align 4
  %coeff555 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff555, align 4
  %coeff557 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff557, align 4
  %coeff559 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff559, align 4
  %coeff561 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff561, align 4
  %coeff563 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 0
  store i128 3240210269972515253, i128* %coeff563, align 4
  %coeff565 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 1
  store i128 8211817353910544778, i128* %coeff565, align 4
  %coeff567 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 2
  store i128 6098234019238335271, i128* %coeff567, align 4
  %coeff569 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 3
  store i128 3946525681149945645, i128* %coeff569, align 4
  %coeff571 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 0
  store i128 10162220749080420597, i128* %coeff571, align 4
  %coeff573 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 1
  store i128 9564161016340867348, i128* %coeff573, align 4
  %coeff575 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 2
  store i128 1141103942305410158, i128* %coeff575, align 4
  %coeff577 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 3
  store i128 196758051849933427, i128* %coeff577, align 4
  %coeff579 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff579, align 4
  %coeff581 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff581, align 4
  %coeff583 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff583, align 4
  %coeff585 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff585, align 4
  %coeff587 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff587, align 4
  %coeff589 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff589, align 4
  %coeff591 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff591, align 4
  %coeff593 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff593, align 4
  %coeff595 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff595, align 4
  %coeff597 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff597, align 4
  %coeff599 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff599, align 4
  %coeff601 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff601, align 4
  %coeff603 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff603, align 4
  %coeff605 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff605, align 4
  %coeff607 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff607, align 4
  %coeff609 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff609, align 4
  %coeff611 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff611, align 4
  %coeff613 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff613, align 4
  %coeff615 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff615, align 4
  %coeff617 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff617, align 4
  %coeff619 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff619, align 4
  %coeff621 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff621, align 4
  %coeff623 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff623, align 4
  %coeff625 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff625, align 4
  %coeff627 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff627, align 4
  %coeff629 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff629, align 4
  %coeff631 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff631, align 4
  %coeff633 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff633, align 4
  %coeff635 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff635, align 4
  %coeff637 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff637, align 4
  %coeff639 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff639, align 4
  %coeff641 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff641, align 4
  %coeff643 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff643, align 4
  %coeff645 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff645, align 4
  %coeff647 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff647, align 4
  %coeff649 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff649, align 4
  %coeff651 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff651, align 4
  %coeff653 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff653, align 4
  %coeff655 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff655, align 4
  %coeff657 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff657, align 4
  %coeff659 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff659, align 4
  %coeff661 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff661, align 4
  %coeff663 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff663, align 4
  %coeff665 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff665, align 4
  %coeff667 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff667, align 4
  %coeff669 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff669, align 4
  %coeff671 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff671, align 4
  %coeff673 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff673, align 4
  %coeff675 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff675, align 4
  %coeff677 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff677, align 4
  %coeff679 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff679, align 4
  %coeff681 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff681, align 4
  %coeff683 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff683, align 4
  %coeff685 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff685, align 4
  %coeff687 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff687, align 4
  %coeff689 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff689, align 4
  %coeff691 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 0
  store i128 3240210269972515253, i128* %coeff691, align 4
  %coeff693 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 1
  store i128 8211817353910544778, i128* %coeff693, align 4
  %coeff695 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 2
  store i128 6098234019238335271, i128* %coeff695, align 4
  %coeff697 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 3
  store i128 3946525681149945645, i128* %coeff697, align 4
  %coeff699 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 0
  store i128 10162220749080420597, i128* %coeff699, align 4
  %coeff701 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 1
  store i128 9564161016340867348, i128* %coeff701, align 4
  %coeff703 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 2
  store i128 1141103942305410158, i128* %coeff703, align 4
  %coeff705 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 3
  store i128 196758051849933427, i128* %coeff705, align 4
  %coeff707 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff707, align 4
  %coeff709 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff709, align 4
  %coeff711 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff711, align 4
  %coeff713 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff713, align 4
  %coeff715 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 0
  store i128 10087218741710072489, i128* %coeff715, align 4
  %coeff717 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 1
  store i128 1132760428998381904, i128* %coeff717, align 4
  %coeff719 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 2
  store i128 12253596937043474777, i128* %coeff719, align 4
  %coeff721 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 3
  store i128 4143283731404378736, i128* %coeff721, align 4
  %coeff723 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 0
  store i128 17433006466058672300, i128* %coeff723, align 4
  %coeff725 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 1
  store i128 17734810703274822488, i128* %coeff725, align 4
  %coeff727 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 2
  store i128 2035044127337086009, i128* %coeff727, align 4
  %coeff729 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 3
  store i128 108269524003571758, i128* %coeff729, align 4
  %coeff731 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 0
  store i128 17433006466058672300, i128* %coeff731, align 4
  %coeff733 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 1
  store i128 17734810703274822488, i128* %coeff733, align 4
  %coeff735 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 2
  store i128 2035044127337086009, i128* %coeff735, align 4
  %coeff737 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 3
  store i128 108269524003571758, i128* %coeff737, align 4
  %coeff739 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 0
  store i128 10087218741710072490, i128* %coeff739, align 4
  %coeff741 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff741, align 4
  %coeff743 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff743, align 4
  %coeff745 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff745, align 4
  %coeff747 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff747, align 4
  %coeff749 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff749, align 4
  %coeff751 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff751, align 4
  %coeff753 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff753, align 4
  %coeff755 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 0
  store i128 2226472662321635938, i128* %coeff755, align 4
  %coeff757 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 1
  store i128 7499883979180848355, i128* %coeff757, align 4
  %coeff759 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 2
  store i128 8133278146575421281, i128* %coeff759, align 4
  %coeff761 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 3
  store i128 4054795205153517403, i128* %coeff761, align 4
  %coeff763 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 0
  store i128 11175958356731299912, i128* %coeff763, align 4
  %coeff765 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 1
  store i128 10276094391070563771, i128* %coeff765, align 4
  %coeff767 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 2
  store i128 17552803892972843059, i128* %coeff767, align 4
  %coeff769 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 3
  store i128 88488527846361668, i128* %coeff769, align 4
  %coeff771 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff771, align 4
  %coeff773 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff773, align 4
  %coeff775 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff775, align 4
  %coeff777 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff777, align 4
  %coeff779 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff779, align 4
  %coeff781 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff781, align 4
  %coeff783 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff783, align 4
  %coeff785 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff785, align 4
  %coeff787 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff787, align 4
  %coeff789 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff789, align 4
  %coeff791 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff791, align 4
  %coeff793 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff793, align 4
  %coeff795 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff795, align 4
  %coeff797 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff797, align 4
  %coeff799 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff799, align 4
  %coeff801 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff801, align 4
  %coeff803 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff803, align 4
  %coeff805 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff805, align 4
  %coeff807 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff807, align 4
  %coeff809 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 3
  store i128 1595500335, i128* %coeff809, align 4
  %coeff811 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff811, align 4
  %coeff813 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff813, align 4
  %coeff815 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff815, align 4
  %coeff817 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff817, align 4
  %coeff819 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff819, align 4
  %coeff821 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff821, align 4
  %coeff823 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff823, align 4
  %coeff825 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff825, align 4
  %coeff827 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff827, align 4
  %coeff829 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff829, align 4
  %coeff831 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff831, align 4
  %coeff833 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff833, align 4
  %coeff835 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff835, align 4
  %coeff837 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff837, align 4
  %coeff839 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff839, align 4
  %coeff841 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff841, align 4
  %coeff843 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff843, align 4
  %coeff845 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff845, align 4
  %coeff847 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff847, align 4
  %coeff849 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff849, align 4
  %coeff851 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff851, align 4
  %coeff853 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff853, align 4
  %coeff855 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff855, align 4
  %coeff857 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 3
  store i128 1595500335, i128* %coeff857, align 4
  %coeff859 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff859, align 4
  %coeff861 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff861, align 4
  %coeff863 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff863, align 4
  %coeff865 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff865, align 4
  %coeff867 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff867, align 4
  %coeff869 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff869, align 4
  %coeff871 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff871, align 4
  %coeff873 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff873, align 4
  %coeff875 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff875, align 4
  %coeff877 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff877, align 4
  %coeff879 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff879, align 4
  %coeff881 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff881, align 4
  %coeff883 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 0
  store i128 14416168626703815165, i128* %coeff883, align 4
  %coeff885 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 1
  store i128 41167666976589638, i128* %coeff885, align 4
  %coeff887 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 2
  store i128 5204293838501626716, i128* %coeff887, align 4
  %coeff889 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 3
  store i128 4035014208996307313, i128* %coeff889, align 4
  %coeff891 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 0
  store i128 17433006466058672300, i128* %coeff891, align 4
  %coeff893 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 1
  store i128 17734810703274822488, i128* %coeff893, align 4
  %coeff895 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 2
  store i128 2035044127337086009, i128* %coeff895, align 4
  %coeff897 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 3
  store i128 108269524003571758, i128* %coeff897, align 4
  %coeff899 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff899, align 4
  %coeff901 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff901, align 4
  %coeff903 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff903, align 4
  %coeff905 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff905, align 4
  %coeff907 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff907, align 4
  %coeff909 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff909, align 4
  %coeff911 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff911, align 4
  %coeff913 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff913, align 4
  %coeff915 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 0
  store i128 14416168626703815165, i128* %coeff915, align 4
  %coeff917 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 1
  store i128 41167666976589638, i128* %coeff917, align 4
  %coeff919 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 2
  store i128 5204293838501626716, i128* %coeff919, align 4
  %coeff921 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 3
  store i128 4035014208996307313, i128* %coeff921, align 4
  %coeff923 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 0
  store i128 14416168626703815165, i128* %coeff923, align 4
  %coeff925 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 1
  store i128 41167666976589638, i128* %coeff925, align 4
  %coeff927 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 2
  store i128 5204293838501626716, i128* %coeff927, align 4
  %coeff929 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 3
  store i128 4035014208996307313, i128* %coeff929, align 4
  %coeff931 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff931, align 4
  %coeff933 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff933, align 4
  %coeff935 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff935, align 4
  %coeff937 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff937, align 4
  %coeff939 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff939, align 4
  %coeff941 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff941, align 4
  %coeff943 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff943, align 4
  %coeff945 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff945, align 4
  %coeff947 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 0
  store i128 17433006466058672300, i128* %coeff947, align 4
  %coeff949 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 1
  store i128 17734810703274822488, i128* %coeff949, align 4
  %coeff951 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 2
  store i128 2035044127337086009, i128* %coeff951, align 4
  %coeff953 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 3
  store i128 108269524003571758, i128* %coeff953, align 4
  %coeff955 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 0
  store i128 14416168626703815165, i128* %coeff955, align 4
  %coeff957 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 1
  store i128 41167666976589638, i128* %coeff957, align 4
  %coeff959 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 2
  store i128 5204293838501626716, i128* %coeff959, align 4
  %coeff961 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 3
  store i128 4035014208996307313, i128* %coeff961, align 4
  %coeff963 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff963, align 4
  %coeff965 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff965, align 4
  %coeff967 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff967, align 4
  %coeff969 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff969, align 4
  %coeff971 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff971, align 4
  %coeff973 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff973, align 4
  %coeff975 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff975, align 4
  %coeff977 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff977, align 4
  %coeff979 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 0
  store i128 10087218741710072490, i128* %coeff979, align 4
  %coeff981 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff981, align 4
  %coeff983 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff983, align 4
  %coeff985 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff985, align 4
  %coeff987 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff987, align 4
  %coeff989 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff989, align 4
  %coeff991 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff991, align 4
  %coeff993 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff993, align 4
  %coeff995 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 0
  store i128 10087218741710072489, i128* %coeff995, align 4
  %coeff997 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 1
  store i128 1132760428998381904, i128* %coeff997, align 4
  %coeff999 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 2
  store i128 12253596937043474777, i128* %coeff999, align 4
  %coeff1001 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 3
  store i128 4143283731404378736, i128* %coeff1001, align 4
  %coeff1003 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff1003, align 4
  %coeff1005 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1005, align 4
  %coeff1007 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1007, align 4
  %coeff1009 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1009, align 4
  %coeff1011 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 0
  store i128 13402431019052935849, i128* %coeff1011, align 4
  %coeff1013 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 1
  store i128 17775978365956444830, i128* %coeff1013, align 4
  %coeff1015 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 2
  store i128 7239337961543745430, i128* %coeff1015, align 4
  %coeff1017 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 3
  store i128 4143283732999879072, i128* %coeff1017, align 4
  %coeff1019 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff1019, align 4
  %coeff1021 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff1021, align 4
  %coeff1023 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff1023, align 4
  %coeff1025 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff1025, align 4
  %coeff1027 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 0
  store i128 3315212277342863360, i128* %coeff1027, align 4
  %coeff1029 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff1029, align 4
  %coeff1031 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff1031, align 4
  %coeff1033 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 3
  store i128 1595500335, i128* %coeff1033, align 4
  %coeff1035 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1035, align 4
  %coeff1037 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1037, align 4
  %coeff1039 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1039, align 4
  %coeff1041 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1041, align 4
  %coeff1043 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 0
  store i128 3315212277342863361, i128* %coeff1043, align 4
  %coeff1045 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff1045, align 4
  %coeff1047 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff1047, align 4
  %coeff1049 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 3
  store i128 1595500335, i128* %coeff1049, align 4
  %coeff1051 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff1051, align 4
  %coeff1053 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff1053, align 4
  %coeff1055 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff1055, align 4
  %coeff1057 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff1057, align 4
  %coeff1059 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1059, align 4
  %coeff1061 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1061, align 4
  %coeff1063 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1063, align 4
  %coeff1065 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1065, align 4
  %coeff1067 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1067, align 4
  %coeff1069 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1069, align 4
  %coeff1071 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1071, align 4
  %coeff1073 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1073, align 4
  %coeff1075 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 0
  store i128 11175958356731299912, i128* %coeff1075, align 4
  %coeff1077 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 1
  store i128 10276094391070563771, i128* %coeff1077, align 4
  %coeff1079 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 2
  store i128 17552803892972843059, i128* %coeff1079, align 4
  %coeff1081 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 3
  store i128 88488527846361668, i128* %coeff1081, align 4
  %coeff1083 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 0
  store i128 2226472662321635938, i128* %coeff1083, align 4
  %coeff1085 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 1
  store i128 7499883979180848355, i128* %coeff1085, align 4
  %coeff1087 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 2
  store i128 8133278146575421281, i128* %coeff1087, align 4
  %coeff1089 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 3
  store i128 4054795205153517403, i128* %coeff1089, align 4
  %coeff1091 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff1091, align 4
  %coeff1093 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1093, align 4
  %coeff1095 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1095, align 4
  %coeff1097 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1097, align 4
  %coeff1099 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 0
  store i128 3315212277342863360, i128* %coeff1099, align 4
  %coeff1101 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 1
  store i128 16643217941253030222, i128* %coeff1101, align 4
  %coeff1103 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 2
  store i128 13432485102504789563, i128* %coeff1103, align 4
  %coeff1105 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 3
  store i128 1595500335, i128* %coeff1105, align 4
  %coeff1107 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 0
  store i128 17433006466058672300, i128* %coeff1107, align 4
  %coeff1109 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 1
  store i128 17734810703274822488, i128* %coeff1109, align 4
  %coeff1111 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 2
  store i128 2035044127337086009, i128* %coeff1111, align 4
  %coeff1113 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 3
  store i128 108269524003571758, i128* %coeff1113, align 4
  %coeff1115 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 0
  store i128 17433006466058672300, i128* %coeff1115, align 4
  %coeff1117 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 1
  store i128 17734810703274822488, i128* %coeff1117, align 4
  %coeff1119 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 2
  store i128 2035044127337086009, i128* %coeff1119, align 4
  %coeff1121 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 3
  store i128 108269524003571758, i128* %coeff1121, align 4
  %coeff1123 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 0
  store i128 3315212277342863361, i128* %coeff1123, align 4
  %coeff1125 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 1
  store i128 16643217941253030222, i128* %coeff1125, align 4
  %coeff1127 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 2
  store i128 13432485102504789563, i128* %coeff1127, align 4
  %coeff1129 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 3
  store i128 1595500335, i128* %coeff1129, align 4
  %coeff1131 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1131, align 4
  %coeff1133 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1133, align 4
  %coeff1135 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1135, align 4
  %coeff1137 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1137, align 4
  %coeff1139 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 0
  store i128 10162220749080420597, i128* %coeff1139, align 4
  %coeff1141 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 1
  store i128 9564161016340867348, i128* %coeff1141, align 4
  %coeff1143 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 2
  store i128 1141103942305410158, i128* %coeff1143, align 4
  %coeff1145 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 3
  store i128 196758051849933427, i128* %coeff1145, align 4
  %coeff1147 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 0
  store i128 3240210269972515253, i128* %coeff1147, align 4
  %coeff1149 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 1
  store i128 8211817353910544778, i128* %coeff1149, align 4
  %coeff1151 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 2
  store i128 6098234019238335271, i128* %coeff1151, align 4
  %coeff1153 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 3
  store i128 3946525681149945645, i128* %coeff1153, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %eq1157 = icmp eq i128 %0, 77
  %eq1159 = icmp eq i128 %1, 5
  %and1160 = and i1 %eq1157, %eq1159
  br i1 %and1160, label %if.true1154, label %if.false1155

if.true1154:                                      ; preds = %if.exit
  %coeff1162 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1162, align 4
  %coeff1164 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1164, align 4
  %coeff1166 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1166, align 4
  %coeff1168 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1168, align 4
  %coeff1170 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1170, align 4
  %coeff1172 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1172, align 4
  %coeff1174 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1174, align 4
  %coeff1176 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1176, align 4
  %coeff1178 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1178, align 4
  %coeff1180 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1180, align 4
  %coeff1182 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 0
  store i128 1, i128* %coeff1182, align 4
  %coeff1184 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 1
  store i128 0, i128* %coeff1184, align 4
  %coeff1186 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 2
  store i128 0, i128* %coeff1186, align 4
  %coeff1188 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 3
  store i128 0, i128* %coeff1188, align 4
  %coeff1190 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 4
  store i128 0, i128* %coeff1190, align 4
  %coeff1192 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff1192, align 4
  %coeff1194 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff1194, align 4
  %coeff1196 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff1196, align 4
  %coeff1198 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff1198, align 4
  %coeff1200 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff1200, align 4
  %coeff1202 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff1202, align 4
  %coeff1204 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1204, align 4
  %coeff1206 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1206, align 4
  %coeff1208 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1208, align 4
  %coeff1210 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff1210, align 4
  %coeff1212 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff1212, align 4
  %coeff1214 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1214, align 4
  %coeff1216 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1216, align 4
  %coeff1218 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1218, align 4
  %coeff1220 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff1220, align 4
  %coeff1222 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff1222, align 4
  %coeff1224 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff1224, align 4
  %coeff1226 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff1226, align 4
  %coeff1228 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff1228, align 4
  %coeff1230 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff1230, align 4
  %coeff1232 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff1232, align 4
  %coeff1234 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff1234, align 4
  %coeff1236 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff1236, align 4
  %coeff1238 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff1238, align 4
  %coeff1240 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff1240, align 4
  %coeff1242 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff1242, align 4
  %coeff1244 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff1244, align 4
  %coeff1246 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff1246, align 4
  %coeff1248 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff1248, align 4
  %coeff1250 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 4
  store i128 0, i128* %coeff1250, align 4
  %coeff1252 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1252, align 4
  %coeff1254 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1254, align 4
  %coeff1256 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1256, align 4
  %coeff1258 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1258, align 4
  %coeff1260 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1260, align 4
  %coeff1262 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 0
  store i128 1, i128* %coeff1262, align 4
  %coeff1264 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 1
  store i128 0, i128* %coeff1264, align 4
  %coeff1266 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 2
  store i128 0, i128* %coeff1266, align 4
  %coeff1268 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 3
  store i128 0, i128* %coeff1268, align 4
  %coeff1270 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 4
  store i128 0, i128* %coeff1270, align 4
  %coeff1272 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff1272, align 4
  %coeff1274 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff1274, align 4
  %coeff1276 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff1276, align 4
  %coeff1278 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff1278, align 4
  %coeff1280 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff1280, align 4
  %coeff1282 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1282, align 4
  %coeff1284 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1284, align 4
  %coeff1286 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1286, align 4
  %coeff1288 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1288, align 4
  %coeff1290 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1290, align 4
  %coeff1292 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1292, align 4
  %coeff1294 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1294, align 4
  %coeff1296 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1296, align 4
  %coeff1298 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1298, align 4
  %coeff1300 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1300, align 4
  %coeff1302 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 0
  store i128 10162220747404304629, i128* %coeff1302, align 4
  %coeff1304 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 1
  store i128 14855039761456506129, i128* %coeff1304, align 4
  %coeff1306 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 2
  store i128 3411428196565980464, i128* %coeff1306, align 4
  %coeff1308 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 3
  store i128 7512101048188645252, i128* %coeff1308, align 4
  %coeff1310 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 4
  store i128 5565305834980146611, i128* %coeff1310, align 4
  %coeff1312 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 0
  store i128 3240210268673567157, i128* %coeff1312, align 4
  %coeff1314 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 1
  store i128 16355175448886016788, i128* %coeff1314, align 4
  %coeff1316 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 2
  store i128 12820864110352905289, i128* %coeff1316, align 4
  %coeff1318 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 3
  store i128 308003166227093089, i128* %coeff1318, align 4
  %coeff1320 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 4
  store i128 14115041459879225501, i128* %coeff1320, align 4
  %coeff1322 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff1322, align 4
  %coeff1324 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1324, align 4
  %coeff1326 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1326, align 4
  %coeff1328 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1328, align 4
  %coeff1330 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff1330, align 4
  %coeff1332 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 0
  store i128 10087218740379830953, i128* %coeff1332, align 4
  %coeff1334 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 1
  store i128 18219880333079910417, i128* %coeff1334, align 4
  %coeff1336 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 2
  store i128 6730265852384016549, i128* %coeff1336, align 4
  %coeff1338 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 3
  store i128 920891278224531339, i128* %coeff1338, align 4
  %coeff1340 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 4
  store i128 1233603221149818976, i128* %coeff1340, align 4
  %coeff1342 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 0
  store i128 14416168624775746045, i128* %coeff1342, align 4
  %coeff1344 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 1
  store i128 1022162345351945202, i128* %coeff1344, align 4
  %coeff1346 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 2
  store i128 13029150795551707312, i128* %coeff1346, align 4
  %coeff1348 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 3
  store i128 15769251840598767233, i128* %coeff1348, align 4
  %coeff1350 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 4
  store i128 17356947180719486701, i128* %coeff1350, align 4
  %coeff1352 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 0
  store i128 14416168624775746045, i128* %coeff1352, align 4
  %coeff1354 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 1
  store i128 1022162345351945202, i128* %coeff1354, align 4
  %coeff1356 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 2
  store i128 13029150795551707312, i128* %coeff1356, align 4
  %coeff1358 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 3
  store i128 15769251840598767233, i128* %coeff1358, align 4
  %coeff1360 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 4
  store i128 17356947180719486701, i128* %coeff1360, align 4
  %coeff1362 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 0
  store i128 10087218740379830954, i128* %coeff1362, align 4
  %coeff1364 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff1364, align 4
  %coeff1366 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff1366, align 4
  %coeff1368 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff1368, align 4
  %coeff1370 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff1370, align 4
  %coeff1372 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1372, align 4
  %coeff1374 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1374, align 4
  %coeff1376 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1376, align 4
  %coeff1378 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1378, align 4
  %coeff1380 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1380, align 4
  %coeff1382 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 0
  store i128 11175958356102187080, i128* %coeff1382, align 4
  %coeff1384 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 1
  store i128 3113730970175488220, i128* %coeff1384, align 4
  %coeff1386 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 2
  store i128 208286685198802022, i128* %coeff1386, align 4
  %coeff1388 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 3
  store i128 15461248674371682336, i128* %coeff1388, align 4
  %coeff1390 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 4
  store i128 3241905720840261199, i128* %coeff1390, align 4
  %coeff1392 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 0
  store i128 2226472659975684706, i128* %coeff1392, align 4
  %coeff1394 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 1
  store i128 9649740166457483082, i128* %coeff1394, align 4
  %coeff1396 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 2
  store i128 16024005621720083731, i128* %coeff1396, align 4
  %coeff1398 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 3
  store i128 10805599613753607620, i128* %coeff1398, align 4
  %coeff1400 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 4
  store i128 16438441574019110913, i128* %coeff1400, align 4
  %coeff1402 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1402, align 4
  %coeff1404 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1404, align 4
  %coeff1406 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1406, align 4
  %coeff1408 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1408, align 4
  %coeff1410 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1410, align 4
  %coeff1412 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1412, align 4
  %coeff1414 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1414, align 4
  %coeff1416 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1416, align 4
  %coeff1418 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1418, align 4
  %coeff1420 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1420, align 4
  %coeff1422 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 0
  store i128 3315212275698040833, i128* %coeff1422, align 4
  %coeff1424 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff1424, align 4
  %coeff1426 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff1426, align 4
  %coeff1428 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff1428, align 4
  %coeff1430 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 4
  store i128 1521, i128* %coeff1430, align 4
  %coeff1432 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff1432, align 4
  %coeff1434 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff1434, align 4
  %coeff1436 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff1436, align 4
  %coeff1438 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff1438, align 4
  %coeff1440 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff1440, align 4
  %coeff1442 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff1442, align 4
  %coeff1444 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff1444, align 4
  %coeff1446 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff1446, align 4
  %coeff1448 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff1448, align 4
  %coeff1450 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 4
  store i128 1521, i128* %coeff1450, align 4
  %coeff1452 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff1452, align 4
  %coeff1454 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1454, align 4
  %coeff1456 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1456, align 4
  %coeff1458 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1458, align 4
  %coeff1460 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff1460, align 4
  %coeff1462 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff1462, align 4
  %coeff1464 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff1464, align 4
  %coeff1466 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff1466, align 4
  %coeff1468 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff1468, align 4
  %coeff1470 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff1470, align 4
  %coeff1472 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff1472, align 4
  %coeff1474 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff1474, align 4
  %coeff1476 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff1476, align 4
  %coeff1478 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff1478, align 4
  %coeff1480 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff1480, align 4
  %coeff1482 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff1482, align 4
  %coeff1484 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff1484, align 4
  %coeff1486 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff1486, align 4
  %coeff1488 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff1488, align 4
  %coeff1490 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff1490, align 4
  %coeff1492 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1492, align 4
  %coeff1494 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1494, align 4
  %coeff1496 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1496, align 4
  %coeff1498 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1498, align 4
  %coeff1500 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1500, align 4
  %coeff1502 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 0
  store i128 10087218740379830954, i128* %coeff1502, align 4
  %coeff1504 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff1504, align 4
  %coeff1506 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff1506, align 4
  %coeff1508 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff1508, align 4
  %coeff1510 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff1510, align 4
  %coeff1512 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff1512, align 4
  %coeff1514 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff1514, align 4
  %coeff1516 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff1516, align 4
  %coeff1518 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff1518, align 4
  %coeff1520 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff1520, align 4
  %coeff1522 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1522, align 4
  %coeff1524 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1524, align 4
  %coeff1526 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1526, align 4
  %coeff1528 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1528, align 4
  %coeff1530 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1530, align 4
  %coeff1532 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1532, align 4
  %coeff1534 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1534, align 4
  %coeff1536 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1536, align 4
  %coeff1538 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1538, align 4
  %coeff1540 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1540, align 4
  %coeff1542 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 0
  store i128 17433006465011677356, i128* %coeff1542, align 4
  %coeff1544 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 1
  store i128 11741308791281026100, i128* %coeff1544, align 4
  %coeff1546 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 2
  store i128 3203141511367178441, i128* %coeff1546, align 4
  %coeff1548 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 3
  store i128 10497596447526522723, i128* %coeff1548, align 4
  %coeff1550 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 4
  store i128 2323400114139885411, i128* %coeff1550, align 4
  %coeff1552 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 0
  store i128 14416168624775746045, i128* %coeff1552, align 4
  %coeff1554 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 1
  store i128 1022162345351945202, i128* %coeff1554, align 4
  %coeff1556 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 2
  store i128 13029150795551707312, i128* %coeff1556, align 4
  %coeff1558 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 3
  store i128 15769251840598767233, i128* %coeff1558, align 4
  %coeff1560 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 4
  store i128 17356947180719486701, i128* %coeff1560, align 4
  %coeff1562 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff1562, align 4
  %coeff1564 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1564, align 4
  %coeff1566 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1566, align 4
  %coeff1568 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1568, align 4
  %coeff1570 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff1570, align 4
  %coeff1572 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff1572, align 4
  %coeff1574 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1574, align 4
  %coeff1576 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1576, align 4
  %coeff1578 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1578, align 4
  %coeff1580 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff1580, align 4
  %coeff1582 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 0
  store i128 17433006465011677356, i128* %coeff1582, align 4
  %coeff1584 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 1
  store i128 11741308791281026100, i128* %coeff1584, align 4
  %coeff1586 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 2
  store i128 3203141511367178441, i128* %coeff1586, align 4
  %coeff1588 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 3
  store i128 10497596447526522723, i128* %coeff1588, align 4
  %coeff1590 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 4
  store i128 2323400114139885411, i128* %coeff1590, align 4
  %coeff1592 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 0
  store i128 17433006465011677356, i128* %coeff1592, align 4
  %coeff1594 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 1
  store i128 11741308791281026100, i128* %coeff1594, align 4
  %coeff1596 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 2
  store i128 3203141511367178441, i128* %coeff1596, align 4
  %coeff1598 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 3
  store i128 10497596447526522723, i128* %coeff1598, align 4
  %coeff1600 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 4
  store i128 2323400114139885411, i128* %coeff1600, align 4
  %coeff1602 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff1602, align 4
  %coeff1604 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff1604, align 4
  %coeff1606 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff1606, align 4
  %coeff1608 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff1608, align 4
  %coeff1610 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff1610, align 4
  %coeff1612 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1612, align 4
  %coeff1614 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1614, align 4
  %coeff1616 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1616, align 4
  %coeff1618 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1618, align 4
  %coeff1620 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1620, align 4
  %coeff1622 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 0
  store i128 14416168624775746045, i128* %coeff1622, align 4
  %coeff1624 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 1
  store i128 1022162345351945202, i128* %coeff1624, align 4
  %coeff1626 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 2
  store i128 13029150795551707312, i128* %coeff1626, align 4
  %coeff1628 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 3
  store i128 15769251840598767233, i128* %coeff1628, align 4
  %coeff1630 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 4
  store i128 17356947180719486701, i128* %coeff1630, align 4
  %coeff1632 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 0
  store i128 17433006465011677356, i128* %coeff1632, align 4
  %coeff1634 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 1
  store i128 11741308791281026100, i128* %coeff1634, align 4
  %coeff1636 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 2
  store i128 3203141511367178441, i128* %coeff1636, align 4
  %coeff1638 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 3
  store i128 10497596447526522723, i128* %coeff1638, align 4
  %coeff1640 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 4
  store i128 2323400114139885411, i128* %coeff1640, align 4
  %coeff1642 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1642, align 4
  %coeff1644 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1644, align 4
  %coeff1646 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1646, align 4
  %coeff1648 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1648, align 4
  %coeff1650 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1650, align 4
  %coeff1652 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1652, align 4
  %coeff1654 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1654, align 4
  %coeff1656 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1656, align 4
  %coeff1658 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1658, align 4
  %coeff1660 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1660, align 4
  %coeff1662 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff1662, align 4
  %coeff1664 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff1664, align 4
  %coeff1666 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff1666, align 4
  %coeff1668 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff1668, align 4
  %coeff1670 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 4
  store i128 1521, i128* %coeff1670, align 4
  %coeff1672 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff1672, align 4
  %coeff1674 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff1674, align 4
  %coeff1676 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff1676, align 4
  %coeff1678 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff1678, align 4
  %coeff1680 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff1680, align 4
  %coeff1682 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff1682, align 4
  %coeff1684 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff1684, align 4
  %coeff1686 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff1686, align 4
  %coeff1688 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff1688, align 4
  %coeff1690 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff1690, align 4
  %coeff1692 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff1692, align 4
  %coeff1694 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1694, align 4
  %coeff1696 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1696, align 4
  %coeff1698 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1698, align 4
  %coeff1700 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff1700, align 4
  %coeff1702 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff1702, align 4
  %coeff1704 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff1704, align 4
  %coeff1706 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff1706, align 4
  %coeff1708 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff1708, align 4
  %coeff1710 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff1710, align 4
  %coeff1712 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff1712, align 4
  %coeff1714 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff1714, align 4
  %coeff1716 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff1716, align 4
  %coeff1718 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff1718, align 4
  %coeff1720 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff1720, align 4
  %coeff1722 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff1722, align 4
  %coeff1724 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff1724, align 4
  %coeff1726 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff1726, align 4
  %coeff1728 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff1728, align 4
  %coeff1730 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 4
  store i128 1521, i128* %coeff1730, align 4
  %coeff1732 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1732, align 4
  %coeff1734 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1734, align 4
  %coeff1736 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1736, align 4
  %coeff1738 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1738, align 4
  %coeff1740 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1740, align 4
  %coeff1742 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff1742, align 4
  %coeff1744 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff1744, align 4
  %coeff1746 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff1746, align 4
  %coeff1748 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff1748, align 4
  %coeff1750 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff1750, align 4
  %coeff1752 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff1752, align 4
  %coeff1754 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff1754, align 4
  %coeff1756 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff1756, align 4
  %coeff1758 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff1758, align 4
  %coeff1760 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff1760, align 4
  %coeff1762 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1762, align 4
  %coeff1764 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1764, align 4
  %coeff1766 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1766, align 4
  %coeff1768 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1768, align 4
  %coeff1770 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1770, align 4
  %coeff1772 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1772, align 4
  %coeff1774 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1774, align 4
  %coeff1776 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1776, align 4
  %coeff1778 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1778, align 4
  %coeff1780 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1780, align 4
  %coeff1782 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 0
  store i128 2226472659975684706, i128* %coeff1782, align 4
  %coeff1784 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 1
  store i128 9649740166457483082, i128* %coeff1784, align 4
  %coeff1786 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 2
  store i128 16024005621720083731, i128* %coeff1786, align 4
  %coeff1788 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 3
  store i128 10805599613753607620, i128* %coeff1788, align 4
  %coeff1790 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 4
  store i128 16438441574019110913, i128* %coeff1790, align 4
  %coeff1792 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 0
  store i128 11175958356102187080, i128* %coeff1792, align 4
  %coeff1794 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 1
  store i128 3113730970175488220, i128* %coeff1794, align 4
  %coeff1796 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 2
  store i128 208286685198802022, i128* %coeff1796, align 4
  %coeff1798 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 3
  store i128 15461248674371682336, i128* %coeff1798, align 4
  %coeff1800 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 4
  store i128 3241905720840261199, i128* %coeff1800, align 4
  %coeff1802 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff1802, align 4
  %coeff1804 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1804, align 4
  %coeff1806 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1806, align 4
  %coeff1808 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1808, align 4
  %coeff1810 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff1810, align 4
  %coeff1812 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 0
  store i128 3315212275698040832, i128* %coeff1812, align 4
  %coeff1814 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 1
  store i128 12990334877262620692, i128* %coeff1814, align 4
  %coeff1816 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 2
  store i128 9502026454534869203, i128* %coeff1816, align 4
  %coeff1818 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 3
  store i128 6899212936191207002, i128* %coeff1818, align 4
  %coeff1820 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 4
  store i128 1521, i128* %coeff1820, align 4
  %coeff1822 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 0
  store i128 14416168624775746045, i128* %coeff1822, align 4
  %coeff1824 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 1
  store i128 1022162345351945202, i128* %coeff1824, align 4
  %coeff1826 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 2
  store i128 13029150795551707312, i128* %coeff1826, align 4
  %coeff1828 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 3
  store i128 15769251840598767233, i128* %coeff1828, align 4
  %coeff1830 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 4
  store i128 17356947180719486701, i128* %coeff1830, align 4
  %coeff1832 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 0
  store i128 14416168624775746045, i128* %coeff1832, align 4
  %coeff1834 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 1
  store i128 1022162345351945202, i128* %coeff1834, align 4
  %coeff1836 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 2
  store i128 13029150795551707312, i128* %coeff1836, align 4
  %coeff1838 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 3
  store i128 15769251840598767233, i128* %coeff1838, align 4
  %coeff1840 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 4
  store i128 17356947180719486701, i128* %coeff1840, align 4
  %coeff1842 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 0
  store i128 3315212275698040833, i128* %coeff1842, align 4
  %coeff1844 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff1844, align 4
  %coeff1846 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff1846, align 4
  %coeff1848 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff1848, align 4
  %coeff1850 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 4
  store i128 1521, i128* %coeff1850, align 4
  %coeff1852 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1852, align 4
  %coeff1854 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1854, align 4
  %coeff1856 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1856, align 4
  %coeff1858 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1858, align 4
  %coeff1860 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1860, align 4
  %coeff1862 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 0
  store i128 3240210268673567157, i128* %coeff1862, align 4
  %coeff1864 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 1
  store i128 16355175448886016788, i128* %coeff1864, align 4
  %coeff1866 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 2
  store i128 12820864110352905289, i128* %coeff1866, align 4
  %coeff1868 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 3
  store i128 308003166227093089, i128* %coeff1868, align 4
  %coeff1870 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 4
  store i128 14115041459879225501, i128* %coeff1870, align 4
  %coeff1872 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 0
  store i128 10162220747404304629, i128* %coeff1872, align 4
  %coeff1874 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 1
  store i128 14855039761456506129, i128* %coeff1874, align 4
  %coeff1876 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 2
  store i128 3411428196565980464, i128* %coeff1876, align 4
  %coeff1878 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 3
  store i128 7512101048188645252, i128* %coeff1878, align 4
  %coeff1880 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 4
  store i128 5565305834980146611, i128* %coeff1880, align 4
  %coeff1882 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff1882, align 4
  %coeff1884 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff1884, align 4
  %coeff1886 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff1886, align 4
  %coeff1888 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff1888, align 4
  %coeff1890 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff1890, align 4
  %coeff1892 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff1892, align 4
  %coeff1894 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff1894, align 4
  %coeff1896 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff1896, align 4
  %coeff1898 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff1898, align 4
  %coeff1900 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff1900, align 4
  %coeff1902 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff1902, align 4
  %coeff1904 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff1904, align 4
  %coeff1906 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff1906, align 4
  %coeff1908 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff1908, align 4
  %coeff1910 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff1910, align 4
  %coeff1912 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff1912, align 4
  %coeff1914 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff1914, align 4
  %coeff1916 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff1916, align 4
  %coeff1918 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff1918, align 4
  %coeff1920 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff1920, align 4
  %coeff1922 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff1922, align 4
  %coeff1924 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff1924, align 4
  %coeff1926 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff1926, align 4
  %coeff1928 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff1928, align 4
  %coeff1930 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff1930, align 4
  %coeff1932 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff1932, align 4
  %coeff1934 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff1934, align 4
  %coeff1936 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff1936, align 4
  %coeff1938 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff1938, align 4
  %coeff1940 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff1940, align 4
  %coeff1942 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff1942, align 4
  %coeff1944 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff1944, align 4
  %coeff1946 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff1946, align 4
  %coeff1948 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff1948, align 4
  %coeff1950 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff1950, align 4
  %coeff1952 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff1952, align 4
  %coeff1954 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff1954, align 4
  %coeff1956 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff1956, align 4
  %coeff1958 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff1958, align 4
  %coeff1960 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff1960, align 4
  %coeff1962 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff1962, align 4
  %coeff1964 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff1964, align 4
  %coeff1966 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff1966, align 4
  %coeff1968 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff1968, align 4
  %coeff1970 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 4
  store i128 0, i128* %coeff1970, align 4
  %coeff1972 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff1972, align 4
  %coeff1974 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff1974, align 4
  %coeff1976 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff1976, align 4
  %coeff1978 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff1978, align 4
  %coeff1980 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff1980, align 4
  %coeff1982 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff1982, align 4
  %coeff1984 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff1984, align 4
  %coeff1986 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff1986, align 4
  %coeff1988 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff1988, align 4
  %coeff1990 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff1990, align 4
  %coeff1992 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff1992, align 4
  %coeff1994 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff1994, align 4
  %coeff1996 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff1996, align 4
  %coeff1998 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff1998, align 4
  %coeff2000 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff2000, align 4
  %coeff2002 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2002, align 4
  %coeff2004 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2004, align 4
  %coeff2006 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2006, align 4
  %coeff2008 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2008, align 4
  %coeff2010 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2010, align 4
  %coeff2012 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2012, align 4
  %coeff2014 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2014, align 4
  %coeff2016 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2016, align 4
  %coeff2018 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2018, align 4
  %coeff2020 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2020, align 4
  %coeff2022 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 0
  store i128 3240210268673567157, i128* %coeff2022, align 4
  %coeff2024 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 1
  store i128 16355175448886016788, i128* %coeff2024, align 4
  %coeff2026 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 2
  store i128 12820864110352905289, i128* %coeff2026, align 4
  %coeff2028 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 3
  store i128 308003166227093089, i128* %coeff2028, align 4
  %coeff2030 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 4
  store i128 14115041459879225501, i128* %coeff2030, align 4
  %coeff2032 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 0
  store i128 10162220747404304629, i128* %coeff2032, align 4
  %coeff2034 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 1
  store i128 14855039761456506129, i128* %coeff2034, align 4
  %coeff2036 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 2
  store i128 3411428196565980464, i128* %coeff2036, align 4
  %coeff2038 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 3
  store i128 7512101048188645252, i128* %coeff2038, align 4
  %coeff2040 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 4
  store i128 5565305834980146611, i128* %coeff2040, align 4
  %coeff2042 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff2042, align 4
  %coeff2044 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff2044, align 4
  %coeff2046 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff2046, align 4
  %coeff2048 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff2048, align 4
  %coeff2050 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff2050, align 4
  %coeff2052 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 0
  store i128 10087218740379830953, i128* %coeff2052, align 4
  %coeff2054 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 1
  store i128 18219880333079910417, i128* %coeff2054, align 4
  %coeff2056 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 2
  store i128 6730265852384016549, i128* %coeff2056, align 4
  %coeff2058 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 3
  store i128 920891278224531339, i128* %coeff2058, align 4
  %coeff2060 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 4
  store i128 1233603221149818976, i128* %coeff2060, align 4
  %coeff2062 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 0
  store i128 17433006465011677356, i128* %coeff2062, align 4
  %coeff2064 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 1
  store i128 11741308791281026100, i128* %coeff2064, align 4
  %coeff2066 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 2
  store i128 3203141511367178441, i128* %coeff2066, align 4
  %coeff2068 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 3
  store i128 10497596447526522723, i128* %coeff2068, align 4
  %coeff2070 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 4
  store i128 2323400114139885411, i128* %coeff2070, align 4
  %coeff2072 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 0
  store i128 17433006465011677356, i128* %coeff2072, align 4
  %coeff2074 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 1
  store i128 11741308791281026100, i128* %coeff2074, align 4
  %coeff2076 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 2
  store i128 3203141511367178441, i128* %coeff2076, align 4
  %coeff2078 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 3
  store i128 10497596447526522723, i128* %coeff2078, align 4
  %coeff2080 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 4
  store i128 2323400114139885411, i128* %coeff2080, align 4
  %coeff2082 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 0
  store i128 10087218740379830954, i128* %coeff2082, align 4
  %coeff2084 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff2084, align 4
  %coeff2086 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff2086, align 4
  %coeff2088 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff2088, align 4
  %coeff2090 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff2090, align 4
  %coeff2092 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2092, align 4
  %coeff2094 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2094, align 4
  %coeff2096 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2096, align 4
  %coeff2098 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2098, align 4
  %coeff2100 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2100, align 4
  %coeff2102 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 0
  store i128 2226472659975684706, i128* %coeff2102, align 4
  %coeff2104 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 1
  store i128 9649740166457483082, i128* %coeff2104, align 4
  %coeff2106 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 2
  store i128 16024005621720083731, i128* %coeff2106, align 4
  %coeff2108 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 3
  store i128 10805599613753607620, i128* %coeff2108, align 4
  %coeff2110 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 4
  store i128 16438441574019110913, i128* %coeff2110, align 4
  %coeff2112 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 0
  store i128 11175958356102187080, i128* %coeff2112, align 4
  %coeff2114 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 1
  store i128 3113730970175488220, i128* %coeff2114, align 4
  %coeff2116 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 2
  store i128 208286685198802022, i128* %coeff2116, align 4
  %coeff2118 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 3
  store i128 15461248674371682336, i128* %coeff2118, align 4
  %coeff2120 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 4
  store i128 3241905720840261199, i128* %coeff2120, align 4
  %coeff2122 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2122, align 4
  %coeff2124 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2124, align 4
  %coeff2126 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2126, align 4
  %coeff2128 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2128, align 4
  %coeff2130 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2130, align 4
  %coeff2132 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2132, align 4
  %coeff2134 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2134, align 4
  %coeff2136 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2136, align 4
  %coeff2138 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2138, align 4
  %coeff2140 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2140, align 4
  %coeff2142 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff2142, align 4
  %coeff2144 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff2144, align 4
  %coeff2146 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff2146, align 4
  %coeff2148 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff2148, align 4
  %coeff2150 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff2150, align 4
  %coeff2152 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff2152, align 4
  %coeff2154 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff2154, align 4
  %coeff2156 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff2156, align 4
  %coeff2158 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff2158, align 4
  %coeff2160 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff2160, align 4
  %coeff2162 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff2162, align 4
  %coeff2164 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff2164, align 4
  %coeff2166 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff2166, align 4
  %coeff2168 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff2168, align 4
  %coeff2170 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 4
  store i128 1521, i128* %coeff2170, align 4
  %coeff2172 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff2172, align 4
  %coeff2174 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff2174, align 4
  %coeff2176 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff2176, align 4
  %coeff2178 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff2178, align 4
  %coeff2180 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff2180, align 4
  %coeff2182 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff2182, align 4
  %coeff2184 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff2184, align 4
  %coeff2186 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff2186, align 4
  %coeff2188 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff2188, align 4
  %coeff2190 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff2190, align 4
  %coeff2192 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff2192, align 4
  %coeff2194 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff2194, align 4
  %coeff2196 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff2196, align 4
  %coeff2198 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff2198, align 4
  %coeff2200 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff2200, align 4
  %coeff2202 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff2202, align 4
  %coeff2204 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff2204, align 4
  %coeff2206 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff2206, align 4
  %coeff2208 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff2208, align 4
  %coeff2210 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff2210, align 4
  %coeff2212 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2212, align 4
  %coeff2214 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2214, align 4
  %coeff2216 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2216, align 4
  %coeff2218 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2218, align 4
  %coeff2220 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2220, align 4
  %coeff2222 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff2222, align 4
  %coeff2224 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff2224, align 4
  %coeff2226 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff2226, align 4
  %coeff2228 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff2228, align 4
  %coeff2230 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 4
  store i128 1521, i128* %coeff2230, align 4
  %coeff2232 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff2232, align 4
  %coeff2234 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff2234, align 4
  %coeff2236 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff2236, align 4
  %coeff2238 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff2238, align 4
  %coeff2240 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff2240, align 4
  %coeff2242 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2242, align 4
  %coeff2244 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2244, align 4
  %coeff2246 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2246, align 4
  %coeff2248 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2248, align 4
  %coeff2250 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2250, align 4
  %coeff2252 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2252, align 4
  %coeff2254 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2254, align 4
  %coeff2256 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2256, align 4
  %coeff2258 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2258, align 4
  %coeff2260 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2260, align 4
  %coeff2262 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 0
  store i128 14416168624775746045, i128* %coeff2262, align 4
  %coeff2264 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 1
  store i128 1022162345351945202, i128* %coeff2264, align 4
  %coeff2266 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 2
  store i128 13029150795551707312, i128* %coeff2266, align 4
  %coeff2268 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 3
  store i128 15769251840598767233, i128* %coeff2268, align 4
  %coeff2270 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 4
  store i128 17356947180719486701, i128* %coeff2270, align 4
  %coeff2272 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 0
  store i128 17433006465011677356, i128* %coeff2272, align 4
  %coeff2274 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 1
  store i128 11741308791281026100, i128* %coeff2274, align 4
  %coeff2276 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 2
  store i128 3203141511367178441, i128* %coeff2276, align 4
  %coeff2278 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 3
  store i128 10497596447526522723, i128* %coeff2278, align 4
  %coeff2280 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 4
  store i128 2323400114139885411, i128* %coeff2280, align 4
  %coeff2282 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff2282, align 4
  %coeff2284 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff2284, align 4
  %coeff2286 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff2286, align 4
  %coeff2288 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff2288, align 4
  %coeff2290 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff2290, align 4
  %coeff2292 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff2292, align 4
  %coeff2294 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff2294, align 4
  %coeff2296 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff2296, align 4
  %coeff2298 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff2298, align 4
  %coeff2300 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff2300, align 4
  %coeff2302 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 0
  store i128 14416168624775746045, i128* %coeff2302, align 4
  %coeff2304 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 1
  store i128 1022162345351945202, i128* %coeff2304, align 4
  %coeff2306 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 2
  store i128 13029150795551707312, i128* %coeff2306, align 4
  %coeff2308 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 3
  store i128 15769251840598767233, i128* %coeff2308, align 4
  %coeff2310 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 4
  store i128 17356947180719486701, i128* %coeff2310, align 4
  %coeff2312 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 0
  store i128 14416168624775746045, i128* %coeff2312, align 4
  %coeff2314 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 1
  store i128 1022162345351945202, i128* %coeff2314, align 4
  %coeff2316 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 2
  store i128 13029150795551707312, i128* %coeff2316, align 4
  %coeff2318 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 3
  store i128 15769251840598767233, i128* %coeff2318, align 4
  %coeff2320 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 4
  store i128 17356947180719486701, i128* %coeff2320, align 4
  %coeff2322 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff2322, align 4
  %coeff2324 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff2324, align 4
  %coeff2326 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff2326, align 4
  %coeff2328 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff2328, align 4
  %coeff2330 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff2330, align 4
  %coeff2332 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2332, align 4
  %coeff2334 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2334, align 4
  %coeff2336 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2336, align 4
  %coeff2338 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2338, align 4
  %coeff2340 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2340, align 4
  %coeff2342 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 0
  store i128 17433006465011677356, i128* %coeff2342, align 4
  %coeff2344 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 1
  store i128 11741308791281026100, i128* %coeff2344, align 4
  %coeff2346 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 2
  store i128 3203141511367178441, i128* %coeff2346, align 4
  %coeff2348 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 3
  store i128 10497596447526522723, i128* %coeff2348, align 4
  %coeff2350 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 4
  store i128 2323400114139885411, i128* %coeff2350, align 4
  %coeff2352 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 0
  store i128 14416168624775746045, i128* %coeff2352, align 4
  %coeff2354 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 1
  store i128 1022162345351945202, i128* %coeff2354, align 4
  %coeff2356 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 2
  store i128 13029150795551707312, i128* %coeff2356, align 4
  %coeff2358 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 3
  store i128 15769251840598767233, i128* %coeff2358, align 4
  %coeff2360 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 4
  store i128 17356947180719486701, i128* %coeff2360, align 4
  %coeff2362 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2362, align 4
  %coeff2364 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2364, align 4
  %coeff2366 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2366, align 4
  %coeff2368 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2368, align 4
  %coeff2370 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2370, align 4
  %coeff2372 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2372, align 4
  %coeff2374 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2374, align 4
  %coeff2376 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2376, align 4
  %coeff2378 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2378, align 4
  %coeff2380 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2380, align 4
  %coeff2382 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 0
  store i128 10087218740379830954, i128* %coeff2382, align 4
  %coeff2384 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff2384, align 4
  %coeff2386 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff2386, align 4
  %coeff2388 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff2388, align 4
  %coeff2390 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff2390, align 4
  %coeff2392 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff2392, align 4
  %coeff2394 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff2394, align 4
  %coeff2396 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff2396, align 4
  %coeff2398 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff2398, align 4
  %coeff2400 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff2400, align 4
  %coeff2402 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 0
  store i128 10087218740379830953, i128* %coeff2402, align 4
  %coeff2404 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 1
  store i128 18219880333079910417, i128* %coeff2404, align 4
  %coeff2406 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 2
  store i128 6730265852384016549, i128* %coeff2406, align 4
  %coeff2408 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 3
  store i128 920891278224531339, i128* %coeff2408, align 4
  %coeff2410 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 4
  store i128 1233603221149818976, i128* %coeff2410, align 4
  %coeff2412 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff2412, align 4
  %coeff2414 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff2414, align 4
  %coeff2416 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff2416, align 4
  %coeff2418 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff2418, align 4
  %coeff2420 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff2420, align 4
  %coeff2422 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 0
  store i128 13402431016077871785, i128* %coeff2422, align 4
  %coeff2424 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 1
  store i128 12763471136632971302, i128* %coeff2424, align 4
  %coeff2426 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 2
  store i128 16232292306918877561, i128* %coeff2426, align 4
  %coeff2428 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 3
  store i128 7820104214415738342, i128* %coeff2428, align 4
  %coeff2430 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 4
  store i128 1233603221149820497, i128* %coeff2430, align 4
  %coeff2432 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff2432, align 4
  %coeff2434 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff2434, align 4
  %coeff2436 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff2436, align 4
  %coeff2438 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff2438, align 4
  %coeff2440 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff2440, align 4
  %coeff2442 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 0
  store i128 3315212275698040832, i128* %coeff2442, align 4
  %coeff2444 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff2444, align 4
  %coeff2446 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff2446, align 4
  %coeff2448 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff2448, align 4
  %coeff2450 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 4
  store i128 1521, i128* %coeff2450, align 4
  %coeff2452 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2452, align 4
  %coeff2454 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2454, align 4
  %coeff2456 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2456, align 4
  %coeff2458 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2458, align 4
  %coeff2460 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2460, align 4
  %coeff2462 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 0
  store i128 3315212275698040833, i128* %coeff2462, align 4
  %coeff2464 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff2464, align 4
  %coeff2466 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff2466, align 4
  %coeff2468 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff2468, align 4
  %coeff2470 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 4
  store i128 1521, i128* %coeff2470, align 4
  %coeff2472 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff2472, align 4
  %coeff2474 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff2474, align 4
  %coeff2476 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff2476, align 4
  %coeff2478 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff2478, align 4
  %coeff2480 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff2480, align 4
  %coeff2482 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2482, align 4
  %coeff2484 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2484, align 4
  %coeff2486 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2486, align 4
  %coeff2488 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2488, align 4
  %coeff2490 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2490, align 4
  %coeff2492 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2492, align 4
  %coeff2494 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2494, align 4
  %coeff2496 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2496, align 4
  %coeff2498 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2498, align 4
  %coeff2500 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2500, align 4
  %coeff2502 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 0
  store i128 11175958356102187080, i128* %coeff2502, align 4
  %coeff2504 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 1
  store i128 3113730970175488220, i128* %coeff2504, align 4
  %coeff2506 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 2
  store i128 208286685198802022, i128* %coeff2506, align 4
  %coeff2508 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 3
  store i128 15461248674371682336, i128* %coeff2508, align 4
  %coeff2510 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 4
  store i128 3241905720840261199, i128* %coeff2510, align 4
  %coeff2512 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 0
  store i128 2226472659975684706, i128* %coeff2512, align 4
  %coeff2514 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 1
  store i128 9649740166457483082, i128* %coeff2514, align 4
  %coeff2516 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 2
  store i128 16024005621720083731, i128* %coeff2516, align 4
  %coeff2518 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 3
  store i128 10805599613753607620, i128* %coeff2518, align 4
  %coeff2520 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 4
  store i128 16438441574019110913, i128* %coeff2520, align 4
  %coeff2522 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff2522, align 4
  %coeff2524 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff2524, align 4
  %coeff2526 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff2526, align 4
  %coeff2528 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff2528, align 4
  %coeff2530 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff2530, align 4
  %coeff2532 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 0
  store i128 3315212275698040832, i128* %coeff2532, align 4
  %coeff2534 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 1
  store i128 12990334877262620692, i128* %coeff2534, align 4
  %coeff2536 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 2
  store i128 9502026454534869203, i128* %coeff2536, align 4
  %coeff2538 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 3
  store i128 6899212936191207002, i128* %coeff2538, align 4
  %coeff2540 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 4
  store i128 1521, i128* %coeff2540, align 4
  %coeff2542 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 0
  store i128 17433006465011677356, i128* %coeff2542, align 4
  %coeff2544 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 1
  store i128 11741308791281026100, i128* %coeff2544, align 4
  %coeff2546 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 2
  store i128 3203141511367178441, i128* %coeff2546, align 4
  %coeff2548 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 3
  store i128 10497596447526522723, i128* %coeff2548, align 4
  %coeff2550 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 4
  store i128 2323400114139885411, i128* %coeff2550, align 4
  %coeff2552 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 0
  store i128 17433006465011677356, i128* %coeff2552, align 4
  %coeff2554 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 1
  store i128 11741308791281026100, i128* %coeff2554, align 4
  %coeff2556 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 2
  store i128 3203141511367178441, i128* %coeff2556, align 4
  %coeff2558 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 3
  store i128 10497596447526522723, i128* %coeff2558, align 4
  %coeff2560 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 4
  store i128 2323400114139885411, i128* %coeff2560, align 4
  %coeff2562 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 0
  store i128 3315212275698040833, i128* %coeff2562, align 4
  %coeff2564 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 1
  store i128 12990334877262620692, i128* %coeff2564, align 4
  %coeff2566 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 2
  store i128 9502026454534869203, i128* %coeff2566, align 4
  %coeff2568 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 3
  store i128 6899212936191207002, i128* %coeff2568, align 4
  %coeff2570 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 4
  store i128 1521, i128* %coeff2570, align 4
  %coeff2572 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2572, align 4
  %coeff2574 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2574, align 4
  %coeff2576 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2576, align 4
  %coeff2578 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2578, align 4
  %coeff2580 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2580, align 4
  %coeff2582 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 0
  store i128 10162220747404304629, i128* %coeff2582, align 4
  %coeff2584 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 1
  store i128 14855039761456506129, i128* %coeff2584, align 4
  %coeff2586 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 2
  store i128 3411428196565980464, i128* %coeff2586, align 4
  %coeff2588 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 3
  store i128 7512101048188645252, i128* %coeff2588, align 4
  %coeff2590 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 4
  store i128 5565305834980146611, i128* %coeff2590, align 4
  %coeff2592 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 0
  store i128 3240210268673567157, i128* %coeff2592, align 4
  %coeff2594 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 1
  store i128 16355175448886016788, i128* %coeff2594, align 4
  %coeff2596 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 2
  store i128 12820864110352905289, i128* %coeff2596, align 4
  %coeff2598 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 3
  store i128 308003166227093089, i128* %coeff2598, align 4
  %coeff2600 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 4
  store i128 14115041459879225501, i128* %coeff2600, align 4
  br label %if.exit2601

if.false1155:                                     ; preds = %if.exit
  br label %if.exit2601

if.exit2601:                                      ; preds = %if.false1155, %if.true1154
  %eq2605 = icmp eq i128 %0, 55
  %eq2607 = icmp eq i128 %1, 7
  %and2608 = and i1 %eq2605, %eq2607
  br i1 %and2608, label %if.true2602, label %if.false2603

if.true2602:                                      ; preds = %if.exit2601
  %coeff2610 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2610, align 4
  %coeff2612 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2612, align 4
  %coeff2614 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2614, align 4
  %coeff2616 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2616, align 4
  %coeff2618 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2618, align 4
  %coeff2620 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff2620, align 4
  %coeff2622 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff2622, align 4
  %coeff2624 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2624, align 4
  %coeff2626 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2626, align 4
  %coeff2628 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2628, align 4
  %coeff2630 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2630, align 4
  %coeff2632 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2632, align 4
  %coeff2634 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff2634, align 4
  %coeff2636 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff2636, align 4
  %coeff2638 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 0
  store i128 1, i128* %coeff2638, align 4
  %coeff2640 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 1
  store i128 0, i128* %coeff2640, align 4
  %coeff2642 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 2
  store i128 0, i128* %coeff2642, align 4
  %coeff2644 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 3
  store i128 0, i128* %coeff2644, align 4
  %coeff2646 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 4
  store i128 0, i128* %coeff2646, align 4
  %coeff2648 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 5
  store i128 0, i128* %coeff2648, align 4
  %coeff2650 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 0, i128 6
  store i128 0, i128* %coeff2650, align 4
  %coeff2652 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff2652, align 4
  %coeff2654 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff2654, align 4
  %coeff2656 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff2656, align 4
  %coeff2658 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff2658, align 4
  %coeff2660 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff2660, align 4
  %coeff2662 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff2662, align 4
  %coeff2664 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff2664, align 4
  %coeff2666 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff2666, align 4
  %coeff2668 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff2668, align 4
  %coeff2670 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff2670, align 4
  %coeff2672 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff2672, align 4
  %coeff2674 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff2674, align 4
  %coeff2676 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff2676, align 4
  %coeff2678 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff2678, align 4
  %coeff2680 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff2680, align 4
  %coeff2682 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff2682, align 4
  %coeff2684 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff2684, align 4
  %coeff2686 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff2686, align 4
  %coeff2688 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff2688, align 4
  %coeff2690 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff2690, align 4
  %coeff2692 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff2692, align 4
  %coeff2694 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff2694, align 4
  %coeff2696 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff2696, align 4
  %coeff2698 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff2698, align 4
  %coeff2700 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff2700, align 4
  %coeff2702 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff2702, align 4
  %coeff2704 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 5
  store i128 0, i128* %coeff2704, align 4
  %coeff2706 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 0, i128 6
  store i128 0, i128* %coeff2706, align 4
  %coeff2708 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff2708, align 4
  %coeff2710 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff2710, align 4
  %coeff2712 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff2712, align 4
  %coeff2714 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff2714, align 4
  %coeff2716 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff2716, align 4
  %coeff2718 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff2718, align 4
  %coeff2720 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff2720, align 4
  %coeff2722 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff2722, align 4
  %coeff2724 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff2724, align 4
  %coeff2726 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff2726, align 4
  %coeff2728 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff2728, align 4
  %coeff2730 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 4
  store i128 0, i128* %coeff2730, align 4
  %coeff2732 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 5
  store i128 0, i128* %coeff2732, align 4
  %coeff2734 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff2734, align 4
  %coeff2736 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2736, align 4
  %coeff2738 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2738, align 4
  %coeff2740 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2740, align 4
  %coeff2742 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2742, align 4
  %coeff2744 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2744, align 4
  %coeff2746 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff2746, align 4
  %coeff2748 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff2748, align 4
  %coeff2750 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 0
  store i128 1, i128* %coeff2750, align 4
  %coeff2752 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 1
  store i128 0, i128* %coeff2752, align 4
  %coeff2754 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 2
  store i128 0, i128* %coeff2754, align 4
  %coeff2756 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 3
  store i128 0, i128* %coeff2756, align 4
  %coeff2758 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 4
  store i128 0, i128* %coeff2758, align 4
  %coeff2760 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 5
  store i128 0, i128* %coeff2760, align 4
  %coeff2762 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 0, i128 6
  store i128 0, i128* %coeff2762, align 4
  %coeff2764 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff2764, align 4
  %coeff2766 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff2766, align 4
  %coeff2768 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff2768, align 4
  %coeff2770 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff2770, align 4
  %coeff2772 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff2772, align 4
  %coeff2774 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff2774, align 4
  %coeff2776 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 0, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff2776, align 4
  %coeff2778 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2778, align 4
  %coeff2780 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2780, align 4
  %coeff2782 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2782, align 4
  %coeff2784 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2784, align 4
  %coeff2786 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2786, align 4
  %coeff2788 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff2788, align 4
  %coeff2790 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff2790, align 4
  %coeff2792 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2792, align 4
  %coeff2794 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2794, align 4
  %coeff2796 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2796, align 4
  %coeff2798 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2798, align 4
  %coeff2800 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2800, align 4
  %coeff2802 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff2802, align 4
  %coeff2804 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff2804, align 4
  %coeff2806 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 0
  store i128 2099988056465336, i128* %coeff2806, align 4
  %coeff2808 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 1
  store i128 20964146866715418, i128* %coeff2808, align 4
  %coeff2810 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 2
  store i128 26479447919286778, i128* %coeff2810, align 4
  %coeff2812 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 3
  store i128 28687334188327454, i128* %coeff2812, align 4
  %coeff2814 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 4
  store i128 18245231482781651, i128* %coeff2814, align 4
  %coeff2816 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 5
  store i128 21665078698214405, i128* %coeff2816, align 4
  %coeff2818 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 0, i128 6
  store i128 1760545476751041, i128* %coeff2818, align 4
  %coeff2820 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 0
  store i128 33647333985766131, i128* %coeff2820, align 4
  %coeff2822 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 1
  store i128 15061775342732377, i128* %coeff2822, align 4
  %coeff2824 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 2
  store i128 10634308716634293, i128* %coeff2824, align 4
  %coeff2826 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 3
  store i128 15267386808624246, i128* %coeff2826, align 4
  %coeff2828 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 4
  store i128 34335022074067067, i128* %coeff2828, align 4
  %coeff2830 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 5
  store i128 1778035881690211, i128* %coeff2830, align 4
  %coeff2832 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 1, i128 1, i128 6
  store i128 69335985795384, i128* %coeff2832, align 4
  %coeff2834 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff2834, align 4
  %coeff2836 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff2836, align 4
  %coeff2838 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff2838, align 4
  %coeff2840 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff2840, align 4
  %coeff2842 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff2842, align 4
  %coeff2844 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff2844, align 4
  %coeff2846 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff2846, align 4
  %coeff2848 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 0
  store i128 35184372088875692, i128* %coeff2848, align 4
  %coeff2850 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 1
  store i128 22472499736345367, i128* %coeff2850, align 4
  %coeff2852 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 2
  store i128 5698637743850064, i128* %coeff2852, align 4
  %coeff2854 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 3
  store i128 21300661132716363, i128* %coeff2854, align 4
  %coeff2856 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 4
  store i128 21929049149954008, i128* %coeff2856, align 4
  %coeff2858 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 5
  store i128 23430044241153146, i128* %coeff2858, align 4
  %coeff2860 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 2, i128 1, i128 6
  store i128 1829881462546425, i128* %coeff2860, align 4
  %coeff2862 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 0
  store i128 4649817190157321, i128* %coeff2862, align 4
  %coeff2864 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 1
  store i128 14178090100713872, i128* %coeff2864, align 4
  %coeff2866 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 2
  store i128 25898210532243870, i128* %coeff2866, align 4
  %coeff2868 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 3
  store i128 6361890036890480, i128* %coeff2868, align 4
  %coeff2870 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 4
  store i128 6755281389607612, i128* %coeff2870, align 4
  %coeff2872 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 5
  store i128 401348527762810, i128* %coeff2872, align 4
  %coeff2874 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 0, i128 6
  store i128 470331148861392, i128* %coeff2874, align 4
  %coeff2876 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 0
  store i128 4649817190157321, i128* %coeff2876, align 4
  %coeff2878 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 1
  store i128 14178090100713872, i128* %coeff2878, align 4
  %coeff2880 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 2
  store i128 25898210532243870, i128* %coeff2880, align 4
  %coeff2882 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 3
  store i128 6361890036890480, i128* %coeff2882, align 4
  %coeff2884 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 4
  store i128 6755281389607612, i128* %coeff2884, align 4
  %coeff2886 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 5
  store i128 401348527762810, i128* %coeff2886, align 4
  %coeff2888 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 3, i128 1, i128 6
  store i128 470331148861392, i128* %coeff2888, align 4
  %coeff2890 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 0
  store i128 35184372088875693, i128* %coeff2890, align 4
  %coeff2892 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff2892, align 4
  %coeff2894 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff2894, align 4
  %coeff2896 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff2896, align 4
  %coeff2898 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff2898, align 4
  %coeff2900 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff2900, align 4
  %coeff2902 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff2902, align 4
  %coeff2904 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff2904, align 4
  %coeff2906 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff2906, align 4
  %coeff2908 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff2908, align 4
  %coeff2910 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff2910, align 4
  %coeff2912 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff2912, align 4
  %coeff2914 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff2914, align 4
  %coeff2916 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff2916, align 4
  %coeff2918 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 0
  store i128 7031280223355158, i128* %coeff2918, align 4
  %coeff2920 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 1
  store i128 35145111776945462, i128* %coeff2920, align 4
  %coeff2922 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 2
  store i128 15263901815609576, i128* %coeff2922, align 4
  %coeff2924 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 3
  store i128 27123300247230202, i128* %coeff2924, align 4
  %coeff2926 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 4
  store i128 8449056334504512, i128* %coeff2926, align 4
  %coeff2928 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 5
  store i128 34652109665036566, i128* %coeff2928, align 4
  %coeff2930 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 0, i128 6
  store i128 400995163066007, i128* %coeff2930, align 4
  %coeff2932 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 0
  store i128 28716041818876309, i128* %coeff2932, align 4
  %coeff2934 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 1
  store i128 880810432502333, i128* %coeff2934, align 4
  %coeff2936 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 2
  store i128 21849854820311495, i128* %coeff2936, align 4
  %coeff2938 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 3
  store i128 16831420749721498, i128* %coeff2938, align 4
  %coeff2940 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 4
  store i128 8102400203380238, i128* %coeff2940, align 4
  %coeff2942 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 5
  store i128 24819801933832019, i128* %coeff2942, align 4
  %coeff2944 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 1, i128 5, i128 1, i128 6
  store i128 1428886299480417, i128* %coeff2944, align 4
  %coeff2946 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff2946, align 4
  %coeff2948 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff2948, align 4
  %coeff2950 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff2950, align 4
  %coeff2952 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff2952, align 4
  %coeff2954 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff2954, align 4
  %coeff2956 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff2956, align 4
  %coeff2958 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff2958, align 4
  %coeff2960 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff2960, align 4
  %coeff2962 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff2962, align 4
  %coeff2964 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff2964, align 4
  %coeff2966 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff2966, align 4
  %coeff2968 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff2968, align 4
  %coeff2970 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff2970, align 4
  %coeff2972 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff2972, align 4
  %coeff2974 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 0
  store i128 562949953355775, i128* %coeff2974, align 4
  %coeff2976 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff2976, align 4
  %coeff2978 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff2978, align 4
  %coeff2980 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff2980, align 4
  %coeff2982 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff2982, align 4
  %coeff2984 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 5
  store i128 13070338751470, i128* %coeff2984, align 4
  %coeff2986 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 0, i128 6
  store i128 0, i128* %coeff2986, align 4
  %coeff2988 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff2988, align 4
  %coeff2990 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff2990, align 4
  %coeff2992 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff2992, align 4
  %coeff2994 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff2994, align 4
  %coeff2996 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff2996, align 4
  %coeff2998 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff2998, align 4
  %coeff3000 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff3000, align 4
  %coeff3002 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 0
  store i128 562949953355774, i128* %coeff3002, align 4
  %coeff3004 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff3004, align 4
  %coeff3006 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff3006, align 4
  %coeff3008 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff3008, align 4
  %coeff3010 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff3010, align 4
  %coeff3012 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 5
  store i128 13070338751470, i128* %coeff3012, align 4
  %coeff3014 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff3014, align 4
  %coeff3016 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff3016, align 4
  %coeff3018 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff3018, align 4
  %coeff3020 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff3020, align 4
  %coeff3022 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff3022, align 4
  %coeff3024 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff3024, align 4
  %coeff3026 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff3026, align 4
  %coeff3028 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff3028, align 4
  %coeff3030 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff3030, align 4
  %coeff3032 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff3032, align 4
  %coeff3034 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff3034, align 4
  %coeff3036 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff3036, align 4
  %coeff3038 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff3038, align 4
  %coeff3040 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff3040, align 4
  %coeff3042 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3042, align 4
  %coeff3044 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff3044, align 4
  %coeff3046 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff3046, align 4
  %coeff3048 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff3048, align 4
  %coeff3050 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff3050, align 4
  %coeff3052 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff3052, align 4
  %coeff3054 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff3054, align 4
  %coeff3056 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff3056, align 4
  %coeff3058 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff3058, align 4
  %coeff3060 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3060, align 4
  %coeff3062 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3062, align 4
  %coeff3064 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3064, align 4
  %coeff3066 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3066, align 4
  %coeff3068 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3068, align 4
  %coeff3070 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3070, align 4
  %coeff3072 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3072, align 4
  %coeff3074 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3074, align 4
  %coeff3076 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3076, align 4
  %coeff3078 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3078, align 4
  %coeff3080 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3080, align 4
  %coeff3082 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3082, align 4
  %coeff3084 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3084, align 4
  %coeff3086 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 0
  store i128 35184372088875693, i128* %coeff3086, align 4
  %coeff3088 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3088, align 4
  %coeff3090 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3090, align 4
  %coeff3092 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3092, align 4
  %coeff3094 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3094, align 4
  %coeff3096 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3096, align 4
  %coeff3098 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3098, align 4
  %coeff3100 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff3100, align 4
  %coeff3102 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff3102, align 4
  %coeff3104 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff3104, align 4
  %coeff3106 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff3106, align 4
  %coeff3108 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff3108, align 4
  %coeff3110 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff3110, align 4
  %coeff3112 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 2, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff3112, align 4
  %coeff3114 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3114, align 4
  %coeff3116 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3116, align 4
  %coeff3118 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3118, align 4
  %coeff3120 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3120, align 4
  %coeff3122 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3122, align 4
  %coeff3124 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3124, align 4
  %coeff3126 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3126, align 4
  %coeff3128 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3128, align 4
  %coeff3130 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3130, align 4
  %coeff3132 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3132, align 4
  %coeff3134 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3134, align 4
  %coeff3136 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3136, align 4
  %coeff3138 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3138, align 4
  %coeff3140 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3140, align 4
  %coeff3142 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 0
  store i128 31097504852074146, i128* %coeff3142, align 4
  %coeff3144 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 1
  store i128 21847832108733923, i128* %coeff3144, align 4
  %coeff3146 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 2
  store i128 11215546103677201, i128* %coeff3146, align 4
  %coeff3148 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 3
  store i128 1564033941097252, i128* %coeff3148, align 4
  %coeff3150 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 4
  store i128 9796175148277139, i128* %coeff3150, align 4
  %coeff3152 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 5
  store i128 23041766052141807, i128* %coeff3152, align 4
  %coeff3154 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 0, i128 6
  store i128 1359550313685033, i128* %coeff3154, align 4
  %coeff3156 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 0
  store i128 4649817190157321, i128* %coeff3156, align 4
  %coeff3158 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 1
  store i128 14178090100713872, i128* %coeff3158, align 4
  %coeff3160 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 2
  store i128 25898210532243870, i128* %coeff3160, align 4
  %coeff3162 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 3
  store i128 6361890036890480, i128* %coeff3162, align 4
  %coeff3164 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 4
  store i128 6755281389607612, i128* %coeff3164, align 4
  %coeff3166 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 5
  store i128 401348527762810, i128* %coeff3166, align 4
  %coeff3168 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 1, i128 1, i128 6
  store i128 470331148861392, i128* %coeff3168, align 4
  %coeff3170 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff3170, align 4
  %coeff3172 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff3172, align 4
  %coeff3174 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff3174, align 4
  %coeff3176 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff3176, align 4
  %coeff3178 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff3178, align 4
  %coeff3180 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff3180, align 4
  %coeff3182 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff3182, align 4
  %coeff3184 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff3184, align 4
  %coeff3186 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff3186, align 4
  %coeff3188 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff3188, align 4
  %coeff3190 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff3190, align 4
  %coeff3192 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff3192, align 4
  %coeff3194 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff3194, align 4
  %coeff3196 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff3196, align 4
  %coeff3198 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 0
  store i128 31097504852074146, i128* %coeff3198, align 4
  %coeff3200 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 1
  store i128 21847832108733923, i128* %coeff3200, align 4
  %coeff3202 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 2
  store i128 11215546103677201, i128* %coeff3202, align 4
  %coeff3204 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 3
  store i128 1564033941097252, i128* %coeff3204, align 4
  %coeff3206 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 4
  store i128 9796175148277139, i128* %coeff3206, align 4
  %coeff3208 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 5
  store i128 23041766052141807, i128* %coeff3208, align 4
  %coeff3210 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 0, i128 6
  store i128 1359550313685033, i128* %coeff3210, align 4
  %coeff3212 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 0
  store i128 31097504852074146, i128* %coeff3212, align 4
  %coeff3214 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 1
  store i128 21847832108733923, i128* %coeff3214, align 4
  %coeff3216 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 2
  store i128 11215546103677201, i128* %coeff3216, align 4
  %coeff3218 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 3
  store i128 1564033941097252, i128* %coeff3218, align 4
  %coeff3220 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 4
  store i128 9796175148277139, i128* %coeff3220, align 4
  %coeff3222 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 5
  store i128 23041766052141807, i128* %coeff3222, align 4
  %coeff3224 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 3, i128 1, i128 6
  store i128 1359550313685033, i128* %coeff3224, align 4
  %coeff3226 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff3226, align 4
  %coeff3228 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff3228, align 4
  %coeff3230 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff3230, align 4
  %coeff3232 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff3232, align 4
  %coeff3234 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff3234, align 4
  %coeff3236 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff3236, align 4
  %coeff3238 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3238, align 4
  %coeff3240 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3240, align 4
  %coeff3242 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3242, align 4
  %coeff3244 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3244, align 4
  %coeff3246 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3246, align 4
  %coeff3248 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3248, align 4
  %coeff3250 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3250, align 4
  %coeff3252 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3252, align 4
  %coeff3254 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 0
  store i128 4649817190157321, i128* %coeff3254, align 4
  %coeff3256 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 1
  store i128 14178090100713872, i128* %coeff3256, align 4
  %coeff3258 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 2
  store i128 25898210532243870, i128* %coeff3258, align 4
  %coeff3260 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 3
  store i128 6361890036890480, i128* %coeff3260, align 4
  %coeff3262 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 4
  store i128 6755281389607612, i128* %coeff3262, align 4
  %coeff3264 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 5
  store i128 401348527762810, i128* %coeff3264, align 4
  %coeff3266 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 0, i128 6
  store i128 470331148861392, i128* %coeff3266, align 4
  %coeff3268 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 0
  store i128 31097504852074146, i128* %coeff3268, align 4
  %coeff3270 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 1
  store i128 21847832108733923, i128* %coeff3270, align 4
  %coeff3272 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 2
  store i128 11215546103677201, i128* %coeff3272, align 4
  %coeff3274 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 3
  store i128 1564033941097252, i128* %coeff3274, align 4
  %coeff3276 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 4
  store i128 9796175148277139, i128* %coeff3276, align 4
  %coeff3278 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 5
  store i128 23041766052141807, i128* %coeff3278, align 4
  %coeff3280 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 3, i128 5, i128 1, i128 6
  store i128 1359550313685033, i128* %coeff3280, align 4
  %coeff3282 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3282, align 4
  %coeff3284 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3284, align 4
  %coeff3286 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3286, align 4
  %coeff3288 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3288, align 4
  %coeff3290 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3290, align 4
  %coeff3292 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3292, align 4
  %coeff3294 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3294, align 4
  %coeff3296 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3296, align 4
  %coeff3298 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3298, align 4
  %coeff3300 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3300, align 4
  %coeff3302 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3302, align 4
  %coeff3304 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3304, align 4
  %coeff3306 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3306, align 4
  %coeff3308 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3308, align 4
  %coeff3310 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 0
  store i128 562949953355774, i128* %coeff3310, align 4
  %coeff3312 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff3312, align 4
  %coeff3314 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff3314, align 4
  %coeff3316 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff3316, align 4
  %coeff3318 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff3318, align 4
  %coeff3320 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 5
  store i128 13070338751470, i128* %coeff3320, align 4
  %coeff3322 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 0, i128 6
  store i128 0, i128* %coeff3322, align 4
  %coeff3324 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff3324, align 4
  %coeff3326 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff3326, align 4
  %coeff3328 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff3328, align 4
  %coeff3330 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff3330, align 4
  %coeff3332 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff3332, align 4
  %coeff3334 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff3334, align 4
  %coeff3336 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff3336, align 4
  %coeff3338 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff3338, align 4
  %coeff3340 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3340, align 4
  %coeff3342 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3342, align 4
  %coeff3344 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3344, align 4
  %coeff3346 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3346, align 4
  %coeff3348 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3348, align 4
  %coeff3350 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3350, align 4
  %coeff3352 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff3352, align 4
  %coeff3354 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff3354, align 4
  %coeff3356 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff3356, align 4
  %coeff3358 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff3358, align 4
  %coeff3360 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff3360, align 4
  %coeff3362 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff3362, align 4
  %coeff3364 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff3364, align 4
  %coeff3366 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff3366, align 4
  %coeff3368 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff3368, align 4
  %coeff3370 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff3370, align 4
  %coeff3372 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff3372, align 4
  %coeff3374 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff3374, align 4
  %coeff3376 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 5
  store i128 0, i128* %coeff3376, align 4
  %coeff3378 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 0, i128 6
  store i128 0, i128* %coeff3378, align 4
  %coeff3380 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff3380, align 4
  %coeff3382 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff3382, align 4
  %coeff3384 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff3384, align 4
  %coeff3386 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff3386, align 4
  %coeff3388 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff3388, align 4
  %coeff3390 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff3390, align 4
  %coeff3392 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff3392, align 4
  %coeff3394 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 0
  store i128 562949953355774, i128* %coeff3394, align 4
  %coeff3396 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff3396, align 4
  %coeff3398 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff3398, align 4
  %coeff3400 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff3400, align 4
  %coeff3402 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff3402, align 4
  %coeff3404 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 5
  store i128 13070338751470, i128* %coeff3404, align 4
  %coeff3406 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff3406, align 4
  %coeff3408 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3408, align 4
  %coeff3410 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3410, align 4
  %coeff3412 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3412, align 4
  %coeff3414 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3414, align 4
  %coeff3416 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3416, align 4
  %coeff3418 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3418, align 4
  %coeff3420 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3420, align 4
  %coeff3422 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff3422, align 4
  %coeff3424 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3424, align 4
  %coeff3426 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3426, align 4
  %coeff3428 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3428, align 4
  %coeff3430 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3430, align 4
  %coeff3432 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3432, align 4
  %coeff3434 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3434, align 4
  %coeff3436 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff3436, align 4
  %coeff3438 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff3438, align 4
  %coeff3440 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff3440, align 4
  %coeff3442 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff3442, align 4
  %coeff3444 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff3444, align 4
  %coeff3446 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff3446, align 4
  %coeff3448 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 4, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff3448, align 4
  %coeff3450 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3450, align 4
  %coeff3452 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3452, align 4
  %coeff3454 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3454, align 4
  %coeff3456 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3456, align 4
  %coeff3458 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3458, align 4
  %coeff3460 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3460, align 4
  %coeff3462 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3462, align 4
  %coeff3464 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3464, align 4
  %coeff3466 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3466, align 4
  %coeff3468 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3468, align 4
  %coeff3470 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3470, align 4
  %coeff3472 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3472, align 4
  %coeff3474 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3474, align 4
  %coeff3476 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3476, align 4
  %coeff3478 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 0
  store i128 28716041818876309, i128* %coeff3478, align 4
  %coeff3480 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 1
  store i128 880810432502333, i128* %coeff3480, align 4
  %coeff3482 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 2
  store i128 21849854820311495, i128* %coeff3482, align 4
  %coeff3484 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 3
  store i128 16831420749721498, i128* %coeff3484, align 4
  %coeff3486 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 4
  store i128 8102400203380238, i128* %coeff3486, align 4
  %coeff3488 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 5
  store i128 24819801933832019, i128* %coeff3488, align 4
  %coeff3490 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 0, i128 6
  store i128 1428886299480417, i128* %coeff3490, align 4
  %coeff3492 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 0
  store i128 7031280223355158, i128* %coeff3492, align 4
  %coeff3494 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 1
  store i128 35145111776945462, i128* %coeff3494, align 4
  %coeff3496 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 2
  store i128 15263901815609576, i128* %coeff3496, align 4
  %coeff3498 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 3
  store i128 27123300247230202, i128* %coeff3498, align 4
  %coeff3500 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 4
  store i128 8449056334504512, i128* %coeff3500, align 4
  %coeff3502 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 5
  store i128 34652109665036566, i128* %coeff3502, align 4
  %coeff3504 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 1, i128 1, i128 6
  store i128 400995163066007, i128* %coeff3504, align 4
  %coeff3506 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff3506, align 4
  %coeff3508 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff3508, align 4
  %coeff3510 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff3510, align 4
  %coeff3512 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff3512, align 4
  %coeff3514 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff3514, align 4
  %coeff3516 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff3516, align 4
  %coeff3518 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff3518, align 4
  %coeff3520 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 0
  store i128 562949953355774, i128* %coeff3520, align 4
  %coeff3522 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 1
  store i128 13553422473102428, i128* %coeff3522, align 4
  %coeff3524 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 2
  store i128 31415118892071007, i128* %coeff3524, align 4
  %coeff3526 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 3
  store i128 22654059864235337, i128* %coeff3526, align 4
  %coeff3528 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 4
  store i128 30651204406894710, i128* %coeff3528, align 4
  %coeff3530 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 5
  store i128 13070338751470, i128* %coeff3530, align 4
  %coeff3532 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff3532, align 4
  %coeff3534 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 0
  store i128 4649817190157321, i128* %coeff3534, align 4
  %coeff3536 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 1
  store i128 14178090100713872, i128* %coeff3536, align 4
  %coeff3538 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 2
  store i128 25898210532243870, i128* %coeff3538, align 4
  %coeff3540 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 3
  store i128 6361890036890480, i128* %coeff3540, align 4
  %coeff3542 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 4
  store i128 6755281389607612, i128* %coeff3542, align 4
  %coeff3544 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 5
  store i128 401348527762810, i128* %coeff3544, align 4
  %coeff3546 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 0, i128 6
  store i128 470331148861392, i128* %coeff3546, align 4
  %coeff3548 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 0
  store i128 4649817190157321, i128* %coeff3548, align 4
  %coeff3550 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 1
  store i128 14178090100713872, i128* %coeff3550, align 4
  %coeff3552 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 2
  store i128 25898210532243870, i128* %coeff3552, align 4
  %coeff3554 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 3
  store i128 6361890036890480, i128* %coeff3554, align 4
  %coeff3556 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 4
  store i128 6755281389607612, i128* %coeff3556, align 4
  %coeff3558 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 5
  store i128 401348527762810, i128* %coeff3558, align 4
  %coeff3560 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 3, i128 1, i128 6
  store i128 470331148861392, i128* %coeff3560, align 4
  %coeff3562 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 0
  store i128 562949953355775, i128* %coeff3562, align 4
  %coeff3564 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff3564, align 4
  %coeff3566 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff3566, align 4
  %coeff3568 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff3568, align 4
  %coeff3570 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff3570, align 4
  %coeff3572 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 5
  store i128 13070338751470, i128* %coeff3572, align 4
  %coeff3574 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff3574, align 4
  %coeff3576 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3576, align 4
  %coeff3578 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3578, align 4
  %coeff3580 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3580, align 4
  %coeff3582 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3582, align 4
  %coeff3584 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3584, align 4
  %coeff3586 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3586, align 4
  %coeff3588 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3588, align 4
  %coeff3590 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 0
  store i128 33647333985766131, i128* %coeff3590, align 4
  %coeff3592 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 1
  store i128 15061775342732377, i128* %coeff3592, align 4
  %coeff3594 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 2
  store i128 10634308716634293, i128* %coeff3594, align 4
  %coeff3596 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 3
  store i128 15267386808624246, i128* %coeff3596, align 4
  %coeff3598 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 4
  store i128 34335022074067067, i128* %coeff3598, align 4
  %coeff3600 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 5
  store i128 1778035881690211, i128* %coeff3600, align 4
  %coeff3602 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 0, i128 6
  store i128 69335985795384, i128* %coeff3602, align 4
  %coeff3604 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 0
  store i128 2099988056465336, i128* %coeff3604, align 4
  %coeff3606 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 1
  store i128 20964146866715418, i128* %coeff3606, align 4
  %coeff3608 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 2
  store i128 26479447919286778, i128* %coeff3608, align 4
  %coeff3610 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 3
  store i128 28687334188327454, i128* %coeff3610, align 4
  %coeff3612 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 4
  store i128 18245231482781651, i128* %coeff3612, align 4
  %coeff3614 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 5
  store i128 21665078698214405, i128* %coeff3614, align 4
  %coeff3616 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 5, i128 5, i128 1, i128 6
  store i128 1760545476751041, i128* %coeff3616, align 4
  %coeff3618 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3618, align 4
  %coeff3620 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3620, align 4
  %coeff3622 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3622, align 4
  %coeff3624 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3624, align 4
  %coeff3626 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3626, align 4
  %coeff3628 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3628, align 4
  %coeff3630 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3630, align 4
  %coeff3632 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3632, align 4
  %coeff3634 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3634, align 4
  %coeff3636 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3636, align 4
  %coeff3638 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3638, align 4
  %coeff3640 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3640, align 4
  %coeff3642 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3642, align 4
  %coeff3644 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3644, align 4
  %coeff3646 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff3646, align 4
  %coeff3648 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff3648, align 4
  %coeff3650 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff3650, align 4
  %coeff3652 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff3652, align 4
  %coeff3654 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff3654, align 4
  %coeff3656 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff3656, align 4
  %coeff3658 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3658, align 4
  %coeff3660 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff3660, align 4
  %coeff3662 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff3662, align 4
  %coeff3664 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff3664, align 4
  %coeff3666 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff3666, align 4
  %coeff3668 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff3668, align 4
  %coeff3670 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff3670, align 4
  %coeff3672 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff3672, align 4
  %coeff3674 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 0
  store i128 1, i128* %coeff3674, align 4
  %coeff3676 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff3676, align 4
  %coeff3678 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff3678, align 4
  %coeff3680 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff3680, align 4
  %coeff3682 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff3682, align 4
  %coeff3684 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff3684, align 4
  %coeff3686 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff3686, align 4
  %coeff3688 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff3688, align 4
  %coeff3690 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff3690, align 4
  %coeff3692 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff3692, align 4
  %coeff3694 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff3694, align 4
  %coeff3696 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff3696, align 4
  %coeff3698 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff3698, align 4
  %coeff3700 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff3700, align 4
  %coeff3702 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff3702, align 4
  %coeff3704 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff3704, align 4
  %coeff3706 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff3706, align 4
  %coeff3708 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff3708, align 4
  %coeff3710 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff3710, align 4
  %coeff3712 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff3712, align 4
  %coeff3714 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3714, align 4
  %coeff3716 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff3716, align 4
  %coeff3718 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff3718, align 4
  %coeff3720 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff3720, align 4
  %coeff3722 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff3722, align 4
  %coeff3724 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff3724, align 4
  %coeff3726 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff3726, align 4
  %coeff3728 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff3728, align 4
  %coeff3730 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 0
  store i128 1, i128* %coeff3730, align 4
  %coeff3732 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 1
  store i128 0, i128* %coeff3732, align 4
  %coeff3734 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 2
  store i128 0, i128* %coeff3734, align 4
  %coeff3736 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 3
  store i128 0, i128* %coeff3736, align 4
  %coeff3738 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 4
  store i128 0, i128* %coeff3738, align 4
  %coeff3740 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 5
  store i128 0, i128* %coeff3740, align 4
  %coeff3742 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff3742, align 4
  %coeff3744 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3744, align 4
  %coeff3746 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3746, align 4
  %coeff3748 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3748, align 4
  %coeff3750 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3750, align 4
  %coeff3752 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3752, align 4
  %coeff3754 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3754, align 4
  %coeff3756 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3756, align 4
  %coeff3758 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff3758, align 4
  %coeff3760 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff3760, align 4
  %coeff3762 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff3762, align 4
  %coeff3764 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff3764, align 4
  %coeff3766 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff3766, align 4
  %coeff3768 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff3768, align 4
  %coeff3770 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3770, align 4
  %coeff3772 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff3772, align 4
  %coeff3774 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff3774, align 4
  %coeff3776 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff3776, align 4
  %coeff3778 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff3778, align 4
  %coeff3780 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff3780, align 4
  %coeff3782 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff3782, align 4
  %coeff3784 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 6, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff3784, align 4
  %coeff3786 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3786, align 4
  %coeff3788 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3788, align 4
  %coeff3790 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3790, align 4
  %coeff3792 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3792, align 4
  %coeff3794 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3794, align 4
  %coeff3796 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3796, align 4
  %coeff3798 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3798, align 4
  %coeff3800 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3800, align 4
  %coeff3802 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3802, align 4
  %coeff3804 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3804, align 4
  %coeff3806 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3806, align 4
  %coeff3808 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3808, align 4
  %coeff3810 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3810, align 4
  %coeff3812 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3812, align 4
  %coeff3814 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 0
  store i128 33647333985766131, i128* %coeff3814, align 4
  %coeff3816 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 1
  store i128 15061775342732377, i128* %coeff3816, align 4
  %coeff3818 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 2
  store i128 10634308716634293, i128* %coeff3818, align 4
  %coeff3820 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 3
  store i128 15267386808624246, i128* %coeff3820, align 4
  %coeff3822 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 4
  store i128 34335022074067067, i128* %coeff3822, align 4
  %coeff3824 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 5
  store i128 1778035881690211, i128* %coeff3824, align 4
  %coeff3826 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 0, i128 6
  store i128 69335985795384, i128* %coeff3826, align 4
  %coeff3828 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 0
  store i128 2099988056465336, i128* %coeff3828, align 4
  %coeff3830 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 1
  store i128 20964146866715418, i128* %coeff3830, align 4
  %coeff3832 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 2
  store i128 26479447919286778, i128* %coeff3832, align 4
  %coeff3834 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 3
  store i128 28687334188327454, i128* %coeff3834, align 4
  %coeff3836 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 4
  store i128 18245231482781651, i128* %coeff3836, align 4
  %coeff3838 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 5
  store i128 21665078698214405, i128* %coeff3838, align 4
  %coeff3840 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 1, i128 1, i128 6
  store i128 1760545476751041, i128* %coeff3840, align 4
  %coeff3842 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff3842, align 4
  %coeff3844 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff3844, align 4
  %coeff3846 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff3846, align 4
  %coeff3848 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff3848, align 4
  %coeff3850 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff3850, align 4
  %coeff3852 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff3852, align 4
  %coeff3854 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff3854, align 4
  %coeff3856 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 0
  store i128 35184372088875692, i128* %coeff3856, align 4
  %coeff3858 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 1
  store i128 22472499736345367, i128* %coeff3858, align 4
  %coeff3860 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 2
  store i128 5698637743850064, i128* %coeff3860, align 4
  %coeff3862 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 3
  store i128 21300661132716363, i128* %coeff3862, align 4
  %coeff3864 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 4
  store i128 21929049149954008, i128* %coeff3864, align 4
  %coeff3866 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 5
  store i128 23430044241153146, i128* %coeff3866, align 4
  %coeff3868 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 2, i128 1, i128 6
  store i128 1829881462546425, i128* %coeff3868, align 4
  %coeff3870 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 0
  store i128 31097504852074146, i128* %coeff3870, align 4
  %coeff3872 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 1
  store i128 21847832108733923, i128* %coeff3872, align 4
  %coeff3874 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 2
  store i128 11215546103677201, i128* %coeff3874, align 4
  %coeff3876 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 3
  store i128 1564033941097252, i128* %coeff3876, align 4
  %coeff3878 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 4
  store i128 9796175148277139, i128* %coeff3878, align 4
  %coeff3880 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 5
  store i128 23041766052141807, i128* %coeff3880, align 4
  %coeff3882 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 0, i128 6
  store i128 1359550313685033, i128* %coeff3882, align 4
  %coeff3884 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 0
  store i128 31097504852074146, i128* %coeff3884, align 4
  %coeff3886 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 1
  store i128 21847832108733923, i128* %coeff3886, align 4
  %coeff3888 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 2
  store i128 11215546103677201, i128* %coeff3888, align 4
  %coeff3890 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 3
  store i128 1564033941097252, i128* %coeff3890, align 4
  %coeff3892 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 4
  store i128 9796175148277139, i128* %coeff3892, align 4
  %coeff3894 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 5
  store i128 23041766052141807, i128* %coeff3894, align 4
  %coeff3896 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 3, i128 1, i128 6
  store i128 1359550313685033, i128* %coeff3896, align 4
  %coeff3898 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 0
  store i128 35184372088875693, i128* %coeff3898, align 4
  %coeff3900 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3900, align 4
  %coeff3902 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3902, align 4
  %coeff3904 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3904, align 4
  %coeff3906 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3906, align 4
  %coeff3908 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3908, align 4
  %coeff3910 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3910, align 4
  %coeff3912 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff3912, align 4
  %coeff3914 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff3914, align 4
  %coeff3916 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff3916, align 4
  %coeff3918 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff3918, align 4
  %coeff3920 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff3920, align 4
  %coeff3922 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff3922, align 4
  %coeff3924 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff3924, align 4
  %coeff3926 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 0
  store i128 28716041818876309, i128* %coeff3926, align 4
  %coeff3928 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 1
  store i128 880810432502333, i128* %coeff3928, align 4
  %coeff3930 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 2
  store i128 21849854820311495, i128* %coeff3930, align 4
  %coeff3932 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 3
  store i128 16831420749721498, i128* %coeff3932, align 4
  %coeff3934 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 4
  store i128 8102400203380238, i128* %coeff3934, align 4
  %coeff3936 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 5
  store i128 24819801933832019, i128* %coeff3936, align 4
  %coeff3938 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 0, i128 6
  store i128 1428886299480417, i128* %coeff3938, align 4
  %coeff3940 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 0
  store i128 7031280223355158, i128* %coeff3940, align 4
  %coeff3942 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 1
  store i128 35145111776945462, i128* %coeff3942, align 4
  %coeff3944 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 2
  store i128 15263901815609576, i128* %coeff3944, align 4
  %coeff3946 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 3
  store i128 27123300247230202, i128* %coeff3946, align 4
  %coeff3948 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 4
  store i128 8449056334504512, i128* %coeff3948, align 4
  %coeff3950 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 5
  store i128 34652109665036566, i128* %coeff3950, align 4
  %coeff3952 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 7, i128 5, i128 1, i128 6
  store i128 400995163066007, i128* %coeff3952, align 4
  %coeff3954 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff3954, align 4
  %coeff3956 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff3956, align 4
  %coeff3958 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff3958, align 4
  %coeff3960 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff3960, align 4
  %coeff3962 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff3962, align 4
  %coeff3964 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff3964, align 4
  %coeff3966 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff3966, align 4
  %coeff3968 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff3968, align 4
  %coeff3970 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff3970, align 4
  %coeff3972 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff3972, align 4
  %coeff3974 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff3974, align 4
  %coeff3976 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff3976, align 4
  %coeff3978 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff3978, align 4
  %coeff3980 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff3980, align 4
  %coeff3982 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff3982, align 4
  %coeff3984 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff3984, align 4
  %coeff3986 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff3986, align 4
  %coeff3988 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff3988, align 4
  %coeff3990 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff3990, align 4
  %coeff3992 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff3992, align 4
  %coeff3994 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff3994, align 4
  %coeff3996 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff3996, align 4
  %coeff3998 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff3998, align 4
  %coeff4000 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff4000, align 4
  %coeff4002 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff4002, align 4
  %coeff4004 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff4004, align 4
  %coeff4006 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff4006, align 4
  %coeff4008 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff4008, align 4
  %coeff4010 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 0
  store i128 562949953355774, i128* %coeff4010, align 4
  %coeff4012 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff4012, align 4
  %coeff4014 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff4014, align 4
  %coeff4016 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff4016, align 4
  %coeff4018 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff4018, align 4
  %coeff4020 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 5
  store i128 13070338751470, i128* %coeff4020, align 4
  %coeff4022 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff4022, align 4
  %coeff4024 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff4024, align 4
  %coeff4026 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff4026, align 4
  %coeff4028 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff4028, align 4
  %coeff4030 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff4030, align 4
  %coeff4032 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff4032, align 4
  %coeff4034 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff4034, align 4
  %coeff4036 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff4036, align 4
  %coeff4038 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 0
  store i128 1, i128* %coeff4038, align 4
  %coeff4040 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 1
  store i128 0, i128* %coeff4040, align 4
  %coeff4042 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 2
  store i128 0, i128* %coeff4042, align 4
  %coeff4044 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 3
  store i128 0, i128* %coeff4044, align 4
  %coeff4046 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 4
  store i128 0, i128* %coeff4046, align 4
  %coeff4048 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 5
  store i128 0, i128* %coeff4048, align 4
  %coeff4050 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 0, i128 6
  store i128 0, i128* %coeff4050, align 4
  %coeff4052 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff4052, align 4
  %coeff4054 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff4054, align 4
  %coeff4056 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff4056, align 4
  %coeff4058 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff4058, align 4
  %coeff4060 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff4060, align 4
  %coeff4062 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff4062, align 4
  %coeff4064 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff4064, align 4
  %coeff4066 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff4066, align 4
  %coeff4068 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff4068, align 4
  %coeff4070 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff4070, align 4
  %coeff4072 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff4072, align 4
  %coeff4074 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff4074, align 4
  %coeff4076 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff4076, align 4
  %coeff4078 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff4078, align 4
  %coeff4080 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff4080, align 4
  %coeff4082 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff4082, align 4
  %coeff4084 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff4084, align 4
  %coeff4086 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff4086, align 4
  %coeff4088 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff4088, align 4
  %coeff4090 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff4090, align 4
  %coeff4092 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff4092, align 4
  %coeff4094 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 0
  store i128 562949953355774, i128* %coeff4094, align 4
  %coeff4096 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff4096, align 4
  %coeff4098 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff4098, align 4
  %coeff4100 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff4100, align 4
  %coeff4102 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff4102, align 4
  %coeff4104 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 5
  store i128 13070338751470, i128* %coeff4104, align 4
  %coeff4106 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 0, i128 6
  store i128 0, i128* %coeff4106, align 4
  %coeff4108 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff4108, align 4
  %coeff4110 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff4110, align 4
  %coeff4112 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff4112, align 4
  %coeff4114 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff4114, align 4
  %coeff4116 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff4116, align 4
  %coeff4118 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff4118, align 4
  %coeff4120 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 8, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff4120, align 4
  %coeff4122 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff4122, align 4
  %coeff4124 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff4124, align 4
  %coeff4126 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff4126, align 4
  %coeff4128 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff4128, align 4
  %coeff4130 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff4130, align 4
  %coeff4132 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff4132, align 4
  %coeff4134 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff4134, align 4
  %coeff4136 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff4136, align 4
  %coeff4138 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff4138, align 4
  %coeff4140 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff4140, align 4
  %coeff4142 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff4142, align 4
  %coeff4144 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff4144, align 4
  %coeff4146 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff4146, align 4
  %coeff4148 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff4148, align 4
  %coeff4150 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 0
  store i128 4649817190157321, i128* %coeff4150, align 4
  %coeff4152 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 1
  store i128 14178090100713872, i128* %coeff4152, align 4
  %coeff4154 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 2
  store i128 25898210532243870, i128* %coeff4154, align 4
  %coeff4156 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 3
  store i128 6361890036890480, i128* %coeff4156, align 4
  %coeff4158 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 4
  store i128 6755281389607612, i128* %coeff4158, align 4
  %coeff4160 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 5
  store i128 401348527762810, i128* %coeff4160, align 4
  %coeff4162 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 0, i128 6
  store i128 470331148861392, i128* %coeff4162, align 4
  %coeff4164 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 0
  store i128 31097504852074146, i128* %coeff4164, align 4
  %coeff4166 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 1
  store i128 21847832108733923, i128* %coeff4166, align 4
  %coeff4168 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 2
  store i128 11215546103677201, i128* %coeff4168, align 4
  %coeff4170 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 3
  store i128 1564033941097252, i128* %coeff4170, align 4
  %coeff4172 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 4
  store i128 9796175148277139, i128* %coeff4172, align 4
  %coeff4174 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 5
  store i128 23041766052141807, i128* %coeff4174, align 4
  %coeff4176 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 1, i128 1, i128 6
  store i128 1359550313685033, i128* %coeff4176, align 4
  %coeff4178 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff4178, align 4
  %coeff4180 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff4180, align 4
  %coeff4182 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff4182, align 4
  %coeff4184 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff4184, align 4
  %coeff4186 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff4186, align 4
  %coeff4188 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff4188, align 4
  %coeff4190 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff4190, align 4
  %coeff4192 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 0
  store i128 1, i128* %coeff4192, align 4
  %coeff4194 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff4194, align 4
  %coeff4196 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff4196, align 4
  %coeff4198 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff4198, align 4
  %coeff4200 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff4200, align 4
  %coeff4202 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff4202, align 4
  %coeff4204 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff4204, align 4
  %coeff4206 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 0
  store i128 4649817190157321, i128* %coeff4206, align 4
  %coeff4208 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 1
  store i128 14178090100713872, i128* %coeff4208, align 4
  %coeff4210 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 2
  store i128 25898210532243870, i128* %coeff4210, align 4
  %coeff4212 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 3
  store i128 6361890036890480, i128* %coeff4212, align 4
  %coeff4214 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 4
  store i128 6755281389607612, i128* %coeff4214, align 4
  %coeff4216 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 5
  store i128 401348527762810, i128* %coeff4216, align 4
  %coeff4218 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 0, i128 6
  store i128 470331148861392, i128* %coeff4218, align 4
  %coeff4220 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 0
  store i128 4649817190157321, i128* %coeff4220, align 4
  %coeff4222 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 1
  store i128 14178090100713872, i128* %coeff4222, align 4
  %coeff4224 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 2
  store i128 25898210532243870, i128* %coeff4224, align 4
  %coeff4226 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 3
  store i128 6361890036890480, i128* %coeff4226, align 4
  %coeff4228 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 4
  store i128 6755281389607612, i128* %coeff4228, align 4
  %coeff4230 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 5
  store i128 401348527762810, i128* %coeff4230, align 4
  %coeff4232 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 3, i128 1, i128 6
  store i128 470331148861392, i128* %coeff4232, align 4
  %coeff4234 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff4234, align 4
  %coeff4236 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff4236, align 4
  %coeff4238 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff4238, align 4
  %coeff4240 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff4240, align 4
  %coeff4242 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff4242, align 4
  %coeff4244 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff4244, align 4
  %coeff4246 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff4246, align 4
  %coeff4248 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff4248, align 4
  %coeff4250 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff4250, align 4
  %coeff4252 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff4252, align 4
  %coeff4254 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff4254, align 4
  %coeff4256 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff4256, align 4
  %coeff4258 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff4258, align 4
  %coeff4260 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff4260, align 4
  %coeff4262 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 0
  store i128 31097504852074146, i128* %coeff4262, align 4
  %coeff4264 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 1
  store i128 21847832108733923, i128* %coeff4264, align 4
  %coeff4266 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 2
  store i128 11215546103677201, i128* %coeff4266, align 4
  %coeff4268 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 3
  store i128 1564033941097252, i128* %coeff4268, align 4
  %coeff4270 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 4
  store i128 9796175148277139, i128* %coeff4270, align 4
  %coeff4272 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 5
  store i128 23041766052141807, i128* %coeff4272, align 4
  %coeff4274 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 0, i128 6
  store i128 1359550313685033, i128* %coeff4274, align 4
  %coeff4276 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 0
  store i128 4649817190157321, i128* %coeff4276, align 4
  %coeff4278 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 1
  store i128 14178090100713872, i128* %coeff4278, align 4
  %coeff4280 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 2
  store i128 25898210532243870, i128* %coeff4280, align 4
  %coeff4282 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 3
  store i128 6361890036890480, i128* %coeff4282, align 4
  %coeff4284 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 4
  store i128 6755281389607612, i128* %coeff4284, align 4
  %coeff4286 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 5
  store i128 401348527762810, i128* %coeff4286, align 4
  %coeff4288 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 9, i128 5, i128 1, i128 6
  store i128 470331148861392, i128* %coeff4288, align 4
  %coeff4290 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff4290, align 4
  %coeff4292 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff4292, align 4
  %coeff4294 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff4294, align 4
  %coeff4296 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff4296, align 4
  %coeff4298 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff4298, align 4
  %coeff4300 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff4300, align 4
  %coeff4302 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff4302, align 4
  %coeff4304 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff4304, align 4
  %coeff4306 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff4306, align 4
  %coeff4308 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff4308, align 4
  %coeff4310 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff4310, align 4
  %coeff4312 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff4312, align 4
  %coeff4314 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff4314, align 4
  %coeff4316 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff4316, align 4
  %coeff4318 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 0
  store i128 35184372088875693, i128* %coeff4318, align 4
  %coeff4320 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff4320, align 4
  %coeff4322 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff4322, align 4
  %coeff4324 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff4324, align 4
  %coeff4326 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff4326, align 4
  %coeff4328 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff4328, align 4
  %coeff4330 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff4330, align 4
  %coeff4332 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 0
  store i128 0, i128* %coeff4332, align 4
  %coeff4334 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 1
  store i128 0, i128* %coeff4334, align 4
  %coeff4336 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 2
  store i128 0, i128* %coeff4336, align 4
  %coeff4338 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 3
  store i128 0, i128* %coeff4338, align 4
  %coeff4340 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 4
  store i128 0, i128* %coeff4340, align 4
  %coeff4342 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 5
  store i128 0, i128* %coeff4342, align 4
  %coeff4344 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 1, i128 1, i128 6
  store i128 0, i128* %coeff4344, align 4
  %coeff4346 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 0
  store i128 35184372088875692, i128* %coeff4346, align 4
  %coeff4348 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 1
  store i128 22472499736345367, i128* %coeff4348, align 4
  %coeff4350 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 2
  store i128 5698637743850064, i128* %coeff4350, align 4
  %coeff4352 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 3
  store i128 21300661132716363, i128* %coeff4352, align 4
  %coeff4354 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 4
  store i128 21929049149954008, i128* %coeff4354, align 4
  %coeff4356 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 5
  store i128 23430044241153146, i128* %coeff4356, align 4
  %coeff4358 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff4358, align 4
  %coeff4360 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 0
  store i128 0, i128* %coeff4360, align 4
  %coeff4362 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 1
  store i128 0, i128* %coeff4362, align 4
  %coeff4364 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 2
  store i128 0, i128* %coeff4364, align 4
  %coeff4366 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 3
  store i128 0, i128* %coeff4366, align 4
  %coeff4368 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 4
  store i128 0, i128* %coeff4368, align 4
  %coeff4370 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 5
  store i128 0, i128* %coeff4370, align 4
  %coeff4372 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff4372, align 4
  %coeff4374 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 0
  store i128 35747322042231466, i128* %coeff4374, align 4
  %coeff4376 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 1
  store i128 36025922209447795, i128* %coeff4376, align 4
  %coeff4378 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 2
  store i128 1084959616957103, i128* %coeff4378, align 4
  %coeff4380 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 3
  store i128 7925923977987733, i128* %coeff4380, align 4
  %coeff4382 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 4
  store i128 16551456537884751, i128* %coeff4382, align 4
  %coeff4384 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 5
  store i128 23443114579904617, i128* %coeff4384, align 4
  %coeff4386 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 0, i128 6
  store i128 1829881462546425, i128* %coeff4386, align 4
  %coeff4388 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 0
  store i128 0, i128* %coeff4388, align 4
  %coeff4390 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 1
  store i128 0, i128* %coeff4390, align 4
  %coeff4392 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 2
  store i128 0, i128* %coeff4392, align 4
  %coeff4394 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 3
  store i128 0, i128* %coeff4394, align 4
  %coeff4396 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 4
  store i128 0, i128* %coeff4396, align 4
  %coeff4398 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 5
  store i128 0, i128* %coeff4398, align 4
  %coeff4400 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 3, i128 1, i128 6
  store i128 0, i128* %coeff4400, align 4
  %coeff4402 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 0
  store i128 562949953355774, i128* %coeff4402, align 4
  %coeff4404 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff4404, align 4
  %coeff4406 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff4406, align 4
  %coeff4408 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff4408, align 4
  %coeff4410 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff4410, align 4
  %coeff4412 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 5
  store i128 13070338751470, i128* %coeff4412, align 4
  %coeff4414 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff4414, align 4
  %coeff4416 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff4416, align 4
  %coeff4418 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff4418, align 4
  %coeff4420 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff4420, align 4
  %coeff4422 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff4422, align 4
  %coeff4424 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff4424, align 4
  %coeff4426 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff4426, align 4
  %coeff4428 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff4428, align 4
  %coeff4430 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 0
  store i128 562949953355775, i128* %coeff4430, align 4
  %coeff4432 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff4432, align 4
  %coeff4434 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff4434, align 4
  %coeff4436 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff4436, align 4
  %coeff4438 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff4438, align 4
  %coeff4440 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 5
  store i128 13070338751470, i128* %coeff4440, align 4
  %coeff4442 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 0, i128 6
  store i128 0, i128* %coeff4442, align 4
  %coeff4444 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 0
  store i128 0, i128* %coeff4444, align 4
  %coeff4446 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 1
  store i128 0, i128* %coeff4446, align 4
  %coeff4448 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 2
  store i128 0, i128* %coeff4448, align 4
  %coeff4450 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 3
  store i128 0, i128* %coeff4450, align 4
  %coeff4452 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 4
  store i128 0, i128* %coeff4452, align 4
  %coeff4454 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 5
  store i128 0, i128* %coeff4454, align 4
  %coeff4456 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 10, i128 5, i128 1, i128 6
  store i128 0, i128* %coeff4456, align 4
  %coeff4458 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 0
  store i128 1, i128* %coeff4458, align 4
  %coeff4460 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 1
  store i128 0, i128* %coeff4460, align 4
  %coeff4462 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 2
  store i128 0, i128* %coeff4462, align 4
  %coeff4464 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 3
  store i128 0, i128* %coeff4464, align 4
  %coeff4466 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 4
  store i128 0, i128* %coeff4466, align 4
  %coeff4468 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 5
  store i128 0, i128* %coeff4468, align 4
  %coeff4470 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 0, i128 6
  store i128 0, i128* %coeff4470, align 4
  %coeff4472 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 0
  store i128 0, i128* %coeff4472, align 4
  %coeff4474 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 1
  store i128 0, i128* %coeff4474, align 4
  %coeff4476 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 2
  store i128 0, i128* %coeff4476, align 4
  %coeff4478 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 3
  store i128 0, i128* %coeff4478, align 4
  %coeff4480 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 4
  store i128 0, i128* %coeff4480, align 4
  %coeff4482 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 5
  store i128 0, i128* %coeff4482, align 4
  %coeff4484 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 0, i128 1, i128 6
  store i128 0, i128* %coeff4484, align 4
  %coeff4486 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 0
  store i128 7031280223355158, i128* %coeff4486, align 4
  %coeff4488 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 1
  store i128 35145111776945462, i128* %coeff4488, align 4
  %coeff4490 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 2
  store i128 15263901815609576, i128* %coeff4490, align 4
  %coeff4492 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 3
  store i128 27123300247230202, i128* %coeff4492, align 4
  %coeff4494 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 4
  store i128 8449056334504512, i128* %coeff4494, align 4
  %coeff4496 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 5
  store i128 34652109665036566, i128* %coeff4496, align 4
  %coeff4498 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 0, i128 6
  store i128 400995163066007, i128* %coeff4498, align 4
  %coeff4500 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 0
  store i128 28716041818876309, i128* %coeff4500, align 4
  %coeff4502 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 1
  store i128 880810432502333, i128* %coeff4502, align 4
  %coeff4504 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 2
  store i128 21849854820311495, i128* %coeff4504, align 4
  %coeff4506 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 3
  store i128 16831420749721498, i128* %coeff4506, align 4
  %coeff4508 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 4
  store i128 8102400203380238, i128* %coeff4508, align 4
  %coeff4510 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 5
  store i128 24819801933832019, i128* %coeff4510, align 4
  %coeff4512 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 1, i128 1, i128 6
  store i128 1428886299480417, i128* %coeff4512, align 4
  %coeff4514 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 0
  store i128 0, i128* %coeff4514, align 4
  %coeff4516 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 1
  store i128 0, i128* %coeff4516, align 4
  %coeff4518 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 2
  store i128 0, i128* %coeff4518, align 4
  %coeff4520 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 3
  store i128 0, i128* %coeff4520, align 4
  %coeff4522 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 4
  store i128 0, i128* %coeff4522, align 4
  %coeff4524 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 5
  store i128 0, i128* %coeff4524, align 4
  %coeff4526 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 0, i128 6
  store i128 0, i128* %coeff4526, align 4
  %coeff4528 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 0
  store i128 562949953355774, i128* %coeff4528, align 4
  %coeff4530 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 1
  store i128 13553422473102428, i128* %coeff4530, align 4
  %coeff4532 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 2
  store i128 31415118892071007, i128* %coeff4532, align 4
  %coeff4534 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 3
  store i128 22654059864235337, i128* %coeff4534, align 4
  %coeff4536 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 4
  store i128 30651204406894710, i128* %coeff4536, align 4
  %coeff4538 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 5
  store i128 13070338751470, i128* %coeff4538, align 4
  %coeff4540 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 2, i128 1, i128 6
  store i128 0, i128* %coeff4540, align 4
  %coeff4542 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 0
  store i128 31097504852074146, i128* %coeff4542, align 4
  %coeff4544 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 1
  store i128 21847832108733923, i128* %coeff4544, align 4
  %coeff4546 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 2
  store i128 11215546103677201, i128* %coeff4546, align 4
  %coeff4548 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 3
  store i128 1564033941097252, i128* %coeff4548, align 4
  %coeff4550 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 4
  store i128 9796175148277139, i128* %coeff4550, align 4
  %coeff4552 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 5
  store i128 23041766052141807, i128* %coeff4552, align 4
  %coeff4554 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 0, i128 6
  store i128 1359550313685033, i128* %coeff4554, align 4
  %coeff4556 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 0
  store i128 31097504852074146, i128* %coeff4556, align 4
  %coeff4558 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 1
  store i128 21847832108733923, i128* %coeff4558, align 4
  %coeff4560 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 2
  store i128 11215546103677201, i128* %coeff4560, align 4
  %coeff4562 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 3
  store i128 1564033941097252, i128* %coeff4562, align 4
  %coeff4564 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 4
  store i128 9796175148277139, i128* %coeff4564, align 4
  %coeff4566 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 5
  store i128 23041766052141807, i128* %coeff4566, align 4
  %coeff4568 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 3, i128 1, i128 6
  store i128 1359550313685033, i128* %coeff4568, align 4
  %coeff4570 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 0
  store i128 562949953355775, i128* %coeff4570, align 4
  %coeff4572 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 1
  store i128 13553422473102428, i128* %coeff4572, align 4
  %coeff4574 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 2
  store i128 31415118892071007, i128* %coeff4574, align 4
  %coeff4576 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 3
  store i128 22654059864235337, i128* %coeff4576, align 4
  %coeff4578 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 4
  store i128 30651204406894710, i128* %coeff4578, align 4
  %coeff4580 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 5
  store i128 13070338751470, i128* %coeff4580, align 4
  %coeff4582 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 0, i128 6
  store i128 0, i128* %coeff4582, align 4
  %coeff4584 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 0
  store i128 0, i128* %coeff4584, align 4
  %coeff4586 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 1
  store i128 0, i128* %coeff4586, align 4
  %coeff4588 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 2
  store i128 0, i128* %coeff4588, align 4
  %coeff4590 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 3
  store i128 0, i128* %coeff4590, align 4
  %coeff4592 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 4
  store i128 0, i128* %coeff4592, align 4
  %coeff4594 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 5
  store i128 0, i128* %coeff4594, align 4
  %coeff4596 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 4, i128 1, i128 6
  store i128 0, i128* %coeff4596, align 4
  %coeff4598 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 0
  store i128 2099988056465336, i128* %coeff4598, align 4
  %coeff4600 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 1
  store i128 20964146866715418, i128* %coeff4600, align 4
  %coeff4602 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 2
  store i128 26479447919286778, i128* %coeff4602, align 4
  %coeff4604 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 3
  store i128 28687334188327454, i128* %coeff4604, align 4
  %coeff4606 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 4
  store i128 18245231482781651, i128* %coeff4606, align 4
  %coeff4608 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 5
  store i128 21665078698214405, i128* %coeff4608, align 4
  %coeff4610 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 0, i128 6
  store i128 1760545476751041, i128* %coeff4610, align 4
  %coeff4612 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 0
  store i128 33647333985766131, i128* %coeff4612, align 4
  %coeff4614 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 1
  store i128 15061775342732377, i128* %coeff4614, align 4
  %coeff4616 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 2
  store i128 10634308716634293, i128* %coeff4616, align 4
  %coeff4618 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 3
  store i128 15267386808624246, i128* %coeff4618, align 4
  %coeff4620 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 4
  store i128 34335022074067067, i128* %coeff4620, align 4
  %coeff4622 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 5
  store i128 1778035881690211, i128* %coeff4622, align 4
  %coeff4624 = getelementptr inbounds [256 x [256 x [256 x [256 x i128]]]], [256 x [256 x [256 x [256 x i128]]]]* %uniform_array, i128 0, i128 11, i128 5, i128 1, i128 6
  store i128 69335985795384, i128* %coeff4624, align 4
  br label %if.exit4625

if.false2603:                                     ; preds = %if.exit2601
  br label %if.exit4625

if.exit4625:                                      ; preds = %if.false2603, %if.true2602
  ret [256 x [256 x [256 x [256 x i128]]]]* %uniform_array
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %2)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call7 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %3)
  %call8 = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %call13 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x i128]* %call13
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %scale1 = call i128 @fn_intrinsic_inline_init()
  %ret2 = call i128 @fn_intrinsic_inline_init()
  %lshift = shl i128 1, %0
  %sub = sub i128 %1, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  %add8 = add i128 %1, 1
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %add8, i128 %sdiv, [256 x i128]* %2)
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %sdiv, [256 x i128]* %3)
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call14, i128 0, i128 %1
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add21 = add i128 %1, 1
  %call24 = call i128 @short_div_norm(i128 %0, i128 %add21, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.false:                                         ; preds = %entry
  %call29 = call i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret.0 = phi i128 [ %call24, %if.true ], [ %call29, %if.false ]
  ret i128 %ret.0
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %j4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add15 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %i.1 = phi i128 [ %2, %loop.exit ], [ %sub119, %loop.latch117 ]
  %remainder.0 = phi [256 x i128]* [ %uniform_array8, %loop.exit ], [ %call116, %loop.latch117 ]
  %eq = icmp eq i128 %i.1, %2
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %1
  store i128 0, i128* %dividend23, align 4
  %sub = sub i128 %1, 1
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %j.0 = phi i128 [ %sub, %if.true ], [ %sub37, %loop.latch35 ]
  %add29 = add i128 %j.0, %2
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.0
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %sub37 = sub i128 %j.0, 1
  %sge = icmp sge i128 %sub37, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %j.1 = phi i128 [ %1, %if.false ], [ %sub53, %loop.latch51 ]
  %add45 = add i128 %j.1, %i.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.1
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %sub53 = sub i128 %j.1, 1
  %sge55 = icmp sge i128 %sub53, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %call = call i128 @short_div(i128 %0, i128 %1, [256 x i128]* %uniform_array16, [256 x i128]* %4)
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  store i128 %call, i128* %out61, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  %out67 = load i128, i128* %array_getter66, align 4
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %out67, [256 x i128]* %4)
  %uniform_array70 = alloca [256 x i128], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %j.2 = phi i128 [ 0, %if.exit ], [ %add77, %loop.latch75 ]
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %j.2
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %add77 = add i128 %j.2, 1
  %add81 = add i128 %2, %1
  %slt82 = icmp slt i128 %add77, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %j.3 = phi i128 [ 0, %loop.exit83 ], [ %add106, %loop.latch104 ]
  %add89 = add i128 %i.1, %j.3
  %add92 = add i128 %2, %1
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %call69, i128 0, i128 %j.3
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %add101 = add i128 %i.1, %j.3
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %add106 = add i128 %j.3, 1
  %sle = icmp sle i128 %add106, %1
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %add113 = add i128 %2, %1
  %call116 = call [256 x i128]* @long_sub(i128 %0, i128 %add113, [256 x i128]* %remainder.0, [256 x i128]* %uniform_array70)
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %sub119 = sub i128 %i.1, 1
  %sge121 = icmp sge i128 %sub119, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %i.2 = phi i128 [ 0, %loop.exit122 ], [ %add133, %loop.latch131 ]
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %call116, i128 0, i128 %i.2
  %remainder127 = load i128, i128* %array_getter126, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.2
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %add133 = add i128 %i.2, 1
  %slt136 = icmp slt i128 %add133, %1
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out140, align 4
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x [256 x i128]]* %call
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %bitlength1 = call i128 @fn_intrinsic_inline_init()
  %i6 = call i128 @fn_intrinsic_inline_init()
  %j7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  %bitlength.0 = phi i128 [ 0, %entry ], [ %bitlength.2, %loop.latch33 ]
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch33 ]
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %bitlength.1 = phi i128 [ %bitlength.0, %loop.body ], [ %bitlength.2, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e10 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e10, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %mul19 = mul i128 %0, %i.0
  %add20 = add i128 %j.0, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %mul26 = mul i128 %0, %i.0
  %add27 = add i128 %j.0, %mul26
  %add28 = add i128 %add27, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitlength.2 = phi i128 [ %add28, %if.true ], [ %bitlength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add30 = add i128 %j.0, 1
  %slt = icmp slt i128 %add30, %0
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %add35 = add i128 %i.0, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %i.1 = phi i128 [ 0, %loop.exit38 ], [ %add46, %loop.latch44 ]
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 %i.1
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %add46 = add i128 %i.1, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %sub = sub i128 %bitlength.2, 1
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %out.0 = phi [256 x i128]* [ %uniform_array39, %loop.exit49 ], [ %out.2, %loop.latch94 ]
  %i.2 = phi i128 [ %sub, %loop.exit49 ], [ %sub96, %loop.latch94 ]
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.0, [256 x i128]* %2)
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %3)
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call69, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %out.1 = phi [256 x i128]* [ %spice_inline_array, %if.true54 ], [ %out.0, %if.false55 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  %call82 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.1, [256 x i128]* %out.1)
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call82, [256 x i128]* %3)
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call88, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  %out.2 = phi [256 x i128]* [ %spice_inline_array92, %if.true74 ], [ %out.1, %if.false75 ]
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %sub96 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub96, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  ret [256 x i128]* %out.2
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i3 = call i128 @fn_intrinsic_inline_init()
  %isZero4 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %isZero.0 = phi i128 [ 1, %entry ], [ %isZero.1, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %isZero.1 = phi i128 [ 0, %if.true ], [ %isZero.0, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %eq = icmp eq i128 %isZero.1, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %i.1 = phi i128 [ 0, %if.true12 ], [ %add20, %loop.latch18 ]
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %add20 = add i128 %i.1, 1
  %slt23 = icmp slt i128 %add20, %1
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  ret [256 x i128]* %uniform_array

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i.2 = phi i128 [ 0, %if.exit26 ], [ %add46, %loop.latch44 ]
  %slt33 = icmp slt i128 %i.2, %1
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.2
  %p36 = load i128, i128* %array_getter35, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %add46 = add i128 %i.2, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %i.3 = phi i128 [ 0, %loop.exit49 ], [ %add57, %loop.latch55 ]
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 %i.3
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %add57 = add i128 %i.3, 1
  %slt59 = icmp slt i128 %add57, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %uniform_array27, [256 x i128]* %uniform_array50)
  %uniform_array67 = alloca [256 x i128], align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %uniform_array27, [256 x i128]* %call)
  ret [256 x i128]* %call73
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
