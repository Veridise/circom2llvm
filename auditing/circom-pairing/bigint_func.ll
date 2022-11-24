; ModuleID = 'bigint_func.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/bigint_func.circom"

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

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_gt.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_gt.n.declare_arg, align 4
  %long_gt.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_gt.k.declare_arg, align 4
  %long_gt.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_gt.a.declare_arg, align 8
  %long_gt.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %k = load i128, i128* %long_gt.k.declare_arg, align 4
  %sub = sub i128 %k, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_gt.a.declare_arg, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i4
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %a9 = load [256 x i128]*, [256 x i128]** %long_gt.a.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %a9, i128 0, i128 %i10
  %a12 = load i128, i128* %array_getter11, align 4
  %b13 = load [256 x i128]*, [256 x i128]** %long_gt.b.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %b13, i128 0, i128 %i14
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
  %i18 = load i128, i128* %i, align 4
  %sub19 = sub i128 %i18, 1
  store i128 %sub19, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i20, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_sub.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_sub.n.declare_arg, align 4
  %long_sub.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_sub.k.declare_arg, align 4
  %long_sub.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_sub.a.declare_arg, align 8
  %long_sub.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_sub.b.declare_arg, align 8
  %diff = alloca [256 x i128]*, align 8
  %diff1 = alloca [256 x i128], align 8
  store [256 x i128]* %diff1, [256 x i128]** %diff, align 8
  %borrow = alloca [256 x i128]*, align 8
  %borrow2 = alloca [256 x i128], align 8
  store [256 x i128]* %borrow2, [256 x i128]** %borrow, align 8
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array4 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array4, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i5 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i5, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i10
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %a43 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %a43, i128 0, i128 %i44
  %a46 = load i128, i128* %array_getter45, align 4
  %b47 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %b47, i128 0, i128 %i48
  %b50 = load i128, i128* %array_getter49, align 4
  %borrow51 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i52 = load i128, i128* %i, align 4
  %sub53 = sub i128 %i52, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow51, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %a13 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %a13, i128 0, i128 %i14
  %a16 = load i128, i128* %array_getter15, align 4
  %b17 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b17, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i21 = load i128, i128* %i, align 4
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i21
  store i128 %sub, i128* %diff22, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i24 = load i128, i128* %i, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 %i24
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %a26 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a26, i128 0, i128 %i27
  %a29 = load i128, i128* %array_getter28, align 4
  %b30 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %b30, i128 0, i128 %i31
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %n = load i128, i128* %long_sub.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub34, %lshift
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i36 = load i128, i128* %i, align 4
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %add, i128* %diff37, align 4
  %ptr_getter38 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i39 = load i128, i128* %i, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter38, i128 0, i128 %i39
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %a58 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %a58, i128 0, i128 %i59
  %a61 = load i128, i128* %array_getter60, align 4
  %b62 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %b62, i128 0, i128 %i63
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %borrow67 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i68 = load i128, i128* %i, align 4
  %sub69 = sub i128 %i68, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow67, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i74 = load i128, i128* %i, align 4
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 %sub72, i128* %diff75, align 4
  %ptr_getter76 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i77 = load i128, i128* %i, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter76, i128 0, i128 %i77
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %n79 = load i128, i128* %long_sub.n.declare_arg, align 4
  %lshift80 = shl i128 1, %n79
  %a81 = load [256 x i128]*, [256 x i128]** %long_sub.a.declare_arg, align 8
  %i82 = load i128, i128* %i, align 4
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %a81, i128 0, i128 %i82
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %b86 = load [256 x i128]*, [256 x i128]** %long_sub.b.declare_arg, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %b86, i128 0, i128 %i87
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %borrow91 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i92 = load i128, i128* %i, align 4
  %sub93 = sub i128 %i92, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow91, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i98 = load i128, i128* %i, align 4
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %i98
  store i128 %sub96, i128* %diff99, align 4
  %ptr_getter100 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i101 = load i128, i128* %i, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter100, i128 0, i128 %i101
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %i105 = load i128, i128* %i, align 4
  %add106 = add i128 %i105, 1
  store i128 %add106, i128* %i, align 4
  %i107 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_sub.k.declare_arg, align 4
  %slt = icmp slt i128 %i107, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff108 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff108
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %signed_long_to_short.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %signed_long_to_short.n.declare_arg, align 4
  %signed_long_to_short.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %signed_long_to_short.k.declare_arg, align 4
  %signed_long_to_short.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %MAXL = alloca i128, align 8
  %MAXL1 = call i128 @fn_intrinsic_inline_init()
  store i128 %MAXL1, i128* %MAXL, align 4
  %X = alloca i128, align 8
  %X2 = call i128 @fn_intrinsic_inline_init()
  store i128 %X2, i128* %X, align 4
  %out = alloca [256 x i128]*, align 8
  %out3 = alloca [256 x i128], align 8
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
  %borrow = alloca i128, align 8
  %borrow5 = call i128 @fn_intrinsic_inline_init()
  store i128 %borrow5, i128* %borrow, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp6 = alloca [256 x i128], align 8
  store [256 x i128]* %temp6, [256 x i128]** %temp, align 8
  %carry = alloca i128, align 8
  %carry7 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry7, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array8 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array8, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i11 = load i128, i128* %i, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i11
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %k = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  %slt = icmp slt i128 %i14, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k15 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  store i128 %k15, i128* %i, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i18 = load i128, i128* %i, align 4
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  store i128 %add22, i128* %i, align 4
  %i23 = load i128, i128* %i, align 4
  %MAXL24 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i23, %MAXL24
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %n = load i128, i128* %signed_long_to_short.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %temp27 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %temp27, i128 0, i128 %i28
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %temp31 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %temp31, i128 0, i128 %i32
  %temp34 = load i128, i128* %array_getter33, align 4
  %X35 = load i128, i128* %X, align 4
  %mod = srem i128 %temp34, %X35
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i37 = load i128, i128* %i, align 4
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 %i37
  store i128 %mod, i128* %out38, align 4
  %temp39 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i40 = load i128, i128* %i, align 4
  %add41 = add i128 %i40, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %temp39, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %temp44 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %temp44, i128 0, i128 %i45
  %temp47 = load i128, i128* %array_getter46, align 4
  %X48 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp47, %X48
  %add49 = add i128 %temp43, %sdiv
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i51 = load i128, i128* %i, align 4
  %add52 = add i128 %i51, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %temp54 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %temp54, i128 0, i128 %i55
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %X58 = load i128, i128* %X, align 4
  %add59 = add i128 %neg, %X58
  %sub = sub i128 %add59, 1
  %X60 = load i128, i128* %X, align 4
  %sdiv61 = sdiv i128 %sub, %X60
  store i128 %sdiv61, i128* %borrow, align 4
  %temp62 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %temp62, i128 0, i128 %i63
  %temp65 = load i128, i128* %array_getter64, align 4
  %borrow66 = load i128, i128* %borrow, align 4
  %X67 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow66, %X67
  %add68 = add i128 %temp65, %mul
  %ptr_getter69 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i70 = load i128, i128* %i, align 4
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter69, i128 0, i128 %i70
  store i128 %add68, i128* %out71, align 4
  %temp72 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %temp72, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %borrow77 = load i128, i128* %borrow, align 4
  %sub78 = sub i128 %temp76, %borrow77
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %i84 = load i128, i128* %i, align 4
  %add85 = add i128 %i84, 1
  store i128 %add85, i128* %i, align 4
  %i86 = load i128, i128* %i, align 4
  %MAXL87 = load i128, i128* %MAXL, align 4
  %slt88 = icmp slt i128 %i86, %MAXL87
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %temp92 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL93 = load i128, i128* %MAXL, align 4
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %temp92, i128 0, i128 %MAXL93
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL98 = load i128, i128* %MAXL, align 4
  %out99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %MAXL98
  store i128 0, i128* %out99, align 4
  %out100 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out100

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit101

if.exit101:                                       ; preds = %if.false91
  store i128 0, i128* %i, align 4
  br label %loop.body102

loop.body102:                                     ; preds = %loop.latch110, %if.exit101
  %a103 = load [256 x i128]*, [256 x i128]** %signed_long_to_short.a.declare_arg, align 8
  %i104 = load i128, i128* %i, align 4
  %array_getter105 = getelementptr inbounds [256 x i128], [256 x i128]* %a103, i128 0, i128 %i104
  %a106 = load i128, i128* %array_getter105, align 4
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i108 = load i128, i128* %i, align 4
  %temp109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %i108
  store i128 %a106, i128* %temp109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body102
  %i111 = load i128, i128* %i, align 4
  %add112 = add i128 %i111, 1
  store i128 %add112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %k114 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  %slt115 = icmp slt i128 %i113, %k114
  br i1 %slt115, label %loop.body102, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  %k117 = load i128, i128* %signed_long_to_short.k.declare_arg, align 4
  store i128 %k117, i128* %i, align 4
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit116
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i120 = load i128, i128* %i, align 4
  %temp121 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 %i120
  store i128 0, i128* %temp121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %i123 = load i128, i128* %i, align 4
  %add124 = add i128 %i123, 1
  store i128 %add124, i128* %i, align 4
  %i125 = load i128, i128* %i, align 4
  %MAXL126 = load i128, i128* %MAXL, align 4
  %sle127 = icmp sle i128 %i125, %MAXL126
  br i1 %sle127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  store i128 0, i128* %i, align 4
  br label %loop.body129

loop.body129:                                     ; preds = %loop.latch198, %loop.exit128
  %temp132 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %temp132, i128 0, i128 %i133
  %temp135 = load i128, i128* %array_getter134, align 4
  %slt136 = icmp slt i128 %temp135, 0
  br i1 %slt136, label %if.true130, label %if.false131

if.true130:                                       ; preds = %loop.body129
  %temp137 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %temp137, i128 0, i128 %i138
  %temp140 = load i128, i128* %array_getter139, align 4
  %neg141 = sub i128 0, %temp140
  %X142 = load i128, i128* %X, align 4
  %sdiv143 = sdiv i128 %neg141, %X142
  store i128 %sdiv143, i128* %carry, align 4
  %temp144 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i145 = load i128, i128* %i, align 4
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %temp144, i128 0, i128 %i145
  %temp147 = load i128, i128* %array_getter146, align 4
  %carry148 = load i128, i128* %carry, align 4
  %X149 = load i128, i128* %X, align 4
  %mul150 = mul i128 %carry148, %X149
  %add151 = add i128 %temp147, %mul150
  %ptr_getter152 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i153 = load i128, i128* %i, align 4
  %out154 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter152, i128 0, i128 %i153
  store i128 %add151, i128* %out154, align 4
  %temp155 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %temp155, i128 0, i128 %add157
  %temp159 = load i128, i128* %array_getter158, align 4
  %carry160 = load i128, i128* %carry, align 4
  %sub161 = sub i128 %temp159, %carry160
  %ptr_getter162 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i163 = load i128, i128* %i, align 4
  %add164 = add i128 %i163, 1
  %temp165 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter162, i128 0, i128 %add164
  store i128 %sub161, i128* %temp165, align 4
  br label %if.exit197

if.false131:                                      ; preds = %loop.body129
  %temp166 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i167 = load i128, i128* %i, align 4
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %temp166, i128 0, i128 %i167
  %temp169 = load i128, i128* %array_getter168, align 4
  %X170 = load i128, i128* %X, align 4
  %add171 = add i128 %temp169, %X170
  %sub172 = sub i128 %add171, 1
  %X173 = load i128, i128* %X, align 4
  %sdiv174 = sdiv i128 %sub172, %X173
  store i128 %sdiv174, i128* %borrow, align 4
  %temp175 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i176 = load i128, i128* %i, align 4
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %temp175, i128 0, i128 %i176
  %temp178 = load i128, i128* %array_getter177, align 4
  %borrow179 = load i128, i128* %borrow, align 4
  %X180 = load i128, i128* %X, align 4
  %mul181 = mul i128 %borrow179, %X180
  %sub182 = sub i128 %temp178, %mul181
  %ptr_getter183 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i184 = load i128, i128* %i, align 4
  %out185 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter183, i128 0, i128 %i184
  store i128 %sub182, i128* %out185, align 4
  %temp186 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i187 = load i128, i128* %i, align 4
  %add188 = add i128 %i187, 1
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %temp186, i128 0, i128 %add188
  %temp190 = load i128, i128* %array_getter189, align 4
  %borrow191 = load i128, i128* %borrow, align 4
  %add192 = add i128 %temp190, %borrow191
  %ptr_getter193 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i194 = load i128, i128* %i, align 4
  %add195 = add i128 %i194, 1
  %temp196 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter193, i128 0, i128 %add195
  store i128 %add192, i128* %temp196, align 4
  br label %if.exit197

if.exit197:                                       ; preds = %if.false131, %if.true130
  br label %loop.latch198

loop.latch198:                                    ; preds = %if.exit197
  %i199 = load i128, i128* %i, align 4
  %add200 = add i128 %i199, 1
  store i128 %add200, i128* %i, align 4
  %i201 = load i128, i128* %i, align 4
  %MAXL202 = load i128, i128* %MAXL, align 4
  %slt203 = icmp slt i128 %i201, %MAXL202
  br i1 %slt203, label %loop.body129, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch198
  %ptr_getter205 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL206 = load i128, i128* %MAXL, align 4
  %out207 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter205, i128 0, i128 %MAXL206
  store i128 1, i128* %out207, align 4
  %out208 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out208
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %max.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %max.a.declare_arg, align 4
  %max.b.declare_arg = alloca i128, align 8
  store i128 %1, i128* %max.b.declare_arg, align 4
  %a = load i128, i128* %max.a.declare_arg, align 4
  %b = load i128, i128* %max.b.declare_arg, align 4
  %sgt = icmp sgt i128 %a, %b
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %max.a.declare_arg, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %max.b.declare_arg, align 4
  ret i128 %b2
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %long_is_zero.k.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_is_zero.k.declare_arg, align 4
  %long_is_zero.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %long_is_zero.a.declare_arg, align 8
  %idx = alloca i128, align 8
  %idx1 = call i128 @fn_intrinsic_inline_init()
  store i128 %idx1, i128* %idx, align 4
  store i128 0, i128* %idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_is_zero.a.declare_arg, align 8
  %idx2 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %idx2
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
  %idx4 = load i128, i128* %idx, align 4
  %add = add i128 %idx4, 1
  store i128 %add, i128* %idx, align 4
  %idx5 = load i128, i128* %idx, align 4
  %k = load i128, i128* %long_is_zero.k.declare_arg, align 4
  %slt = icmp slt i128 %idx5, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define i128 @log_ceil(i128 %0) {
entry:
  %log_ceil.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %log_ceil.n.declare_arg, align 4
  %n_temp = alloca i128, align 8
  %n_temp1 = call i128 @fn_intrinsic_inline_init()
  store i128 %n_temp1, i128* %n_temp, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %n = load i128, i128* %log_ceil.n.declare_arg, align 4
  store i128 %n, i128* %n_temp, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp3 = load i128, i128* %n_temp, align 4
  %eq = icmp eq i128 %n_temp3, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %i4 = load i128, i128* %i, align 4
  ret i128 %i4

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %n_temp5 = load i128, i128* %n_temp, align 4
  %sdiv = sdiv i128 %n_temp5, 2
  store i128 %sdiv, i128* %n_temp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %splitthreefn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitthreefn.in.declare_arg, align 4
  %splitthreefn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitthreefn.n.declare_arg, align 4
  %splitthreefn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitthreefn.m.declare_arg, align 4
  %splitthreefn.k.declare_arg = alloca i128, align 8
  store i128 %3, i128* %splitthreefn.k.declare_arg, align 4
  %var_inline_array = alloca [3 x i128], align 8
  %in = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitthreefn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %in8 = load i128, i128* %splitthreefn.in.declare_arg, align 4
  %n9 = load i128, i128* %splitthreefn.n.declare_arg, align 4
  %m10 = load i128, i128* %splitthreefn.m.declare_arg, align 4
  %add = add i128 %n9, %m10
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %in8, %lshift11
  %k = load i128, i128* %splitthreefn.k.declare_arg, align 4
  %lshift13 = shl i128 1, %k
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %long_scalar_mult.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_scalar_mult.n.declare_arg, align 4
  %long_scalar_mult.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_scalar_mult.k.declare_arg, align 4
  %long_scalar_mult.a.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_scalar_mult.a.declare_arg, align 4
  %long_scalar_mult.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_scalar_mult.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %temp = alloca i128, align 8
  %temp2 = call i128 @fn_intrinsic_inline_init()
  store i128 %temp2, i128* %temp, align 4
  %out = alloca [256 x i128]*, align 8
  %out3 = alloca [256 x i128], align 8
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i4 = load i128, i128* %i, align 4
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %out9 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out9, i128 0, i128 %i10
  %out11 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %long_scalar_mult.a.declare_arg, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_scalar_mult.b.declare_arg, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i12
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %a, %b14
  %add15 = add i128 %out11, %mul
  store i128 %add15, i128* %temp, align 4
  %temp16 = load i128, i128* %temp, align 4
  %n = load i128, i128* %long_scalar_mult.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp16, %lshift
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i18 = load i128, i128* %i, align 4
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 %mod, i128* %out19, align 4
  %out20 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %out20, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %temp25 = load i128, i128* %temp, align 4
  %n26 = load i128, i128* %long_scalar_mult.n.declare_arg, align 4
  %lshift27 = shl i128 1, %n26
  %sdiv = sdiv i128 %temp25, %lshift27
  %add28 = add i128 %out24, %sdiv
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i30 = load i128, i128* %i, align 4
  %add31 = add i128 %i30, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %i34 = load i128, i128* %i, align 4
  %add35 = add i128 %i34, 1
  store i128 %add35, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_scalar_mult.k.declare_arg, align 4
  %slt37 = icmp slt i128 %i36, %k
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %out39 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out39
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %min.a.declare_arg = alloca i128, align 8
  store i128 %0, i128* %min.a.declare_arg, align 4
  %min.b.declare_arg = alloca i128, align 8
  store i128 %1, i128* %min.b.declare_arg, align 4
  %a = load i128, i128* %min.a.declare_arg, align 4
  %b = load i128, i128* %min.b.declare_arg, align 4
  %slt = icmp slt i128 %a, %b
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %min.a.declare_arg, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %min.b.declare_arg, align 4
  ret i128 %b2
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %splitfn.in.declare_arg = alloca i128, align 8
  store i128 %0, i128* %splitfn.in.declare_arg, align 4
  %splitfn.n.declare_arg = alloca i128, align 8
  store i128 %1, i128* %splitfn.n.declare_arg, align 4
  %splitfn.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %splitfn.m.declare_arg, align 4
  %var_inline_array = alloca [2 x i128], align 8
  %in = load i128, i128* %splitfn.in.declare_arg, align 4
  %n = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %splitfn.in.declare_arg, align 4
  %n3 = load i128, i128* %splitfn.n.declare_arg, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %splitfn.m.declare_arg, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %short_div_norm.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %short_div_norm.n.declare_arg, align 4
  %short_div_norm.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %short_div_norm.k.declare_arg, align 4
  %short_div_norm.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %short_div_norm.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %qhat = alloca i128, align 8
  %qhat1 = call i128 @fn_intrinsic_inline_init()
  store i128 %qhat1, i128* %qhat, align 4
  %mult = alloca [256 x i128]*, align 8
  %mult2 = alloca [256 x i128], align 8
  store [256 x i128]* %mult2, [256 x i128]** %mult, align 8
  %a = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %k = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a3 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a3, %lshift
  %a4 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %k5 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %sub = sub i128 %k5, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %a4, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %b = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %k8 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %sub9 = sub i128 %k8, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  store i128 %sdiv, i128* %qhat, align 4
  %qhat12 = load i128, i128* %qhat, align 4
  %n13 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift14 = shl i128 1, %n13
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %qhat12, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n16 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %lshift17 = shl i128 1, %n16
  %sub18 = sub i128 %lshift17, 1
  store i128 %sub18, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n19 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k20 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %qhat21 = load i128, i128* %qhat, align 4
  %b22 = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n19, i128 %k20, i128 %qhat21, [256 x i128]* %b22)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n25 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k26 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add27 = add i128 %k26, 1
  %mult28 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a29 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %call30 = call i128 @long_gt(i128 %n25, i128 %add27, [256 x i128]* %mult28, [256 x i128]* %a29)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %n31 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k32 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add33 = add i128 %k32, 1
  %mult34 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b35 = load [256 x i128]*, [256 x i128]** %short_div_norm.b.declare_arg, align 8
  %call36 = call [256 x i128]* @long_sub(i128 %n31, i128 %add33, [256 x i128]* %mult34, [256 x i128]* %b35)
  store [256 x i128]* %call36, [256 x i128]** %mult, align 8
  %n39 = load i128, i128* %short_div_norm.n.declare_arg, align 4
  %k40 = load i128, i128* %short_div_norm.k.declare_arg, align 4
  %add41 = add i128 %k40, 1
  %mult42 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a43 = load [256 x i128]*, [256 x i128]** %short_div_norm.a.declare_arg, align 8
  %call44 = call i128 @long_gt(i128 %n39, i128 %add41, [256 x i128]* %mult42, [256 x i128]* %a43)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  %qhat50 = load i128, i128* %qhat, align 4
  ret i128 %qhat50

if.true37:                                        ; preds = %if.true23
  %qhat46 = load i128, i128* %qhat, align 4
  %sub47 = sub i128 %qhat46, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %qhat48 = load i128, i128* %qhat, align 4
  %sub49 = sub i128 %qhat48, 1
  ret i128 %sub49
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %short_div.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %short_div.n.declare_arg, align 4
  %short_div.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %short_div.k.declare_arg, align 4
  %short_div.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %short_div.a.declare_arg, align 8
  %short_div.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %short_div.b.declare_arg, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b1 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b1, [256 x i128]** %norm_b, align 8
  %scale = alloca i128, align 8
  %scale2 = call i128 @fn_intrinsic_inline_init()
  store i128 %scale2, i128* %scale, align 4
  %ret = alloca i128, align 8
  %ret3 = call i128 @fn_intrinsic_inline_init()
  store i128 %ret3, i128* %ret, align 4
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a4 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a4, [256 x i128]** %norm_a, align 8
  %n = load i128, i128* %short_div.n.declare_arg, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %short_div.b.declare_arg, align 8
  %k = load i128, i128* %short_div.k.declare_arg, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n6 = load i128, i128* %short_div.n.declare_arg, align 4
  %k7 = load i128, i128* %short_div.k.declare_arg, align 4
  %add8 = add i128 %k7, 1
  %scale9 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %short_div.a.declare_arg, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n6, i128 %add8, i128 %scale9, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n10 = load i128, i128* %short_div.n.declare_arg, align 4
  %k11 = load i128, i128* %short_div.k.declare_arg, align 4
  %scale12 = load i128, i128* %scale, align 4
  %b13 = load [256 x i128]*, [256 x i128]** %short_div.b.declare_arg, align 8
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %n10, i128 %k11, i128 %scale12, [256 x i128]* %b13)
  store [256 x i128]* %call14, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b15 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k16 = load i128, i128* %short_div.k.declare_arg, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b15, i128 0, i128 %k16
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n19 = load i128, i128* %short_div.n.declare_arg, align 4
  %k20 = load i128, i128* %short_div.k.declare_arg, align 4
  %add21 = add i128 %k20, 1
  %norm_a22 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b23 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call24 = call i128 @short_div_norm(i128 %n19, i128 %add21, [256 x i128]* %norm_a22, [256 x i128]* %norm_b23)
  store i128 %call24, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n25 = load i128, i128* %short_div.n.declare_arg, align 4
  %k26 = load i128, i128* %short_div.k.declare_arg, align 4
  %norm_a27 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b28 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call29 = call i128 @short_div_norm(i128 %n25, i128 %k26, [256 x i128]* %norm_a27, [256 x i128]* %norm_b28)
  store i128 %call29, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret30 = load i128, i128* %ret, align 4
  ret i128 %ret30
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %prod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod.n.declare_arg, align 4
  %prod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod.k.declare_arg, align 4
  %prod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %prod.a.declare_arg, align 8
  %prod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %prod.b.declare_arg, align 8
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %a_idx = alloca i128, align 8
  %a_idx2 = call i128 @fn_intrinsic_inline_init()
  store i128 %a_idx2, i128* %a_idx, align 4
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val4 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val4, [256 x i128]** %prod_val, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry5 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry5, [256 x i128]** %sumAndCarry, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split6, [256 x [256 x i128]]** %split, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry7 = alloca [256 x i128], align 8
  store [256 x i128]* %carry7, [256 x i128]** %carry, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i8 = load i128, i128* %i, align 4
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i8
  store i128 0, i128* %prod_val9, align 4
  %i10 = load i128, i128* %i, align 4
  %k = load i128, i128* %prod.k.declare_arg, align 4
  %slt = icmp slt i128 %i10, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %i29 = load i128, i128* %i, align 4
  %k30 = load i128, i128* %prod.k.declare_arg, align 4
  %sub31 = sub i128 %i29, %k30
  %add32 = add i128 %sub31, 1
  store i128 %add32, i128* %a_idx, align 4
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %prod_val12 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val12, i128 0, i128 %i13
  %prod_val14 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %prod.a.declare_arg, align 8
  %a_idx15 = load i128, i128* %a_idx, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx15
  %a17 = load i128, i128* %array_getter16, align 4
  %b = load [256 x i128]*, [256 x i128]** %prod.b.declare_arg, align 8
  %i18 = load i128, i128* %i, align 4
  %a_idx19 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i18, %a_idx19
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i23 = load i128, i128* %i, align 4
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %a_idx25 = load i128, i128* %a_idx, align 4
  %add26 = add i128 %a_idx25, 1
  store i128 %add26, i128* %a_idx, align 4
  %a_idx27 = load i128, i128* %a_idx, align 4
  %i28 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx27, %i28
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %prod_val34 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val34, i128 0, i128 %i35
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %a38 = load [256 x i128]*, [256 x i128]** %prod.a.declare_arg, align 8
  %a_idx39 = load i128, i128* %a_idx, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %a38, i128 0, i128 %a_idx39
  %a41 = load i128, i128* %array_getter40, align 4
  %b42 = load [256 x i128]*, [256 x i128]** %prod.b.declare_arg, align 8
  %i43 = load i128, i128* %i, align 4
  %a_idx44 = load i128, i128* %a_idx, align 4
  %sub45 = sub i128 %i43, %a_idx44
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %b42, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i51 = load i128, i128* %i, align 4
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %i51
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %a_idx54 = load i128, i128* %a_idx, align 4
  %add55 = add i128 %a_idx54, 1
  store i128 %add55, i128* %a_idx, align 4
  %a_idx56 = load i128, i128* %a_idx, align 4
  %k57 = load i128, i128* %prod.k.declare_arg, align 4
  %slt58 = icmp slt i128 %a_idx56, %k57
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %i61 = load i128, i128* %i, align 4
  %add62 = add i128 %i61, 1
  store i128 %add62, i128* %i, align 4
  %i63 = load i128, i128* %i, align 4
  %k64 = load i128, i128* %prod.k.declare_arg, align 4
  %mul65 = mul i128 2, %k64
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %i63, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array69, [256 x i128]** %out, align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array70, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %prod_val72 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val72, i128 0, i128 %i73
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %n = load i128, i128* %prod.n.declare_arg, align 4
  %n76 = load i128, i128* %prod.n.declare_arg, align 4
  %n77 = load i128, i128* %prod.n.declare_arg, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %n, i128 %n76, i128 %n77)
  %ptr_getter78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i79 = load i128, i128* %i, align 4
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter78, i128 0, i128 %i79
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %k85 = load i128, i128* %prod.k.declare_arg, align 4
  %mul86 = mul i128 2, %k85
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %i84, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array90, [256 x i128]** %carry, align 8
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %split93 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split93, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %k100 = load i128, i128* %prod.k.declare_arg, align 4
  %mul101 = mul i128 2, %k100
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %split103 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split103, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %split106 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split106, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %n110 = load i128, i128* %prod.n.declare_arg, align 4
  %n111 = load i128, i128* %prod.n.declare_arg, align 4
  %call112 = call [2 x i128]* @SplitFn(i128 %add109, i128 %n110, i128 %n111)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry113 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry113, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %sumAndCarry118 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry118, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter121, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %k126 = load i128, i128* %prod.k.declare_arg, align 4
  %mul127 = mul i128 2, %k126
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  store i128 2, i128* %i, align 4
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit203

loop.body130:                                     ; preds = %loop.latch169, %if.true124
  %split131 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split131, i128 0, i128 %i132, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %split135 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i136 = load i128, i128* %i, align 4
  %sub137 = sub i128 %i136, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split135, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %split141 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i142 = load i128, i128* %i, align 4
  %sub143 = sub i128 %i142, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split141, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %carry147 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i148 = load i128, i128* %i, align 4
  %sub149 = sub i128 %i148, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %carry147, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %n153 = load i128, i128* %prod.n.declare_arg, align 4
  %n154 = load i128, i128* %prod.n.declare_arg, align 4
  %call155 = call [2 x i128]* @SplitFn(i128 %add152, i128 %n153, i128 %n154)
  %memcpy_ptr156 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr156 to i8*
  %9 = bitcast [2 x i128]* %call155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry157 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry157, i128 0, i128 0
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %ptr_getter160 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i161 = load i128, i128* %i, align 4
  %out162 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter160, i128 0, i128 %i161
  store i128 %sumAndCarry159, i128* %out162, align 4
  %sumAndCarry163 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter164 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry163, i128 0, i128 1
  %sumAndCarry165 = load i128, i128* %array_getter164, align 4
  %ptr_getter166 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i167 = load i128, i128* %i, align 4
  %carry168 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter166, i128 0, i128 %i167
  store i128 %sumAndCarry165, i128* %carry168, align 4
  br label %loop.latch169

loop.latch169:                                    ; preds = %loop.body130
  %i170 = load i128, i128* %i, align 4
  %add171 = add i128 %i170, 1
  store i128 %add171, i128* %i, align 4
  %i172 = load i128, i128* %i, align 4
  %k173 = load i128, i128* %prod.k.declare_arg, align 4
  %mul174 = mul i128 2, %k173
  %sub175 = sub i128 %mul174, 1
  %slt176 = icmp slt i128 %i172, %sub175
  br i1 %slt176, label %loop.body130, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch169
  %split178 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k179 = load i128, i128* %prod.k.declare_arg, align 4
  %mul180 = mul i128 2, %k179
  %sub181 = sub i128 %mul180, 2
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split178, i128 0, i128 %sub181, i128 1
  %split183 = load i128, i128* %array_getter182, align 4
  %split184 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k185 = load i128, i128* %prod.k.declare_arg, align 4
  %mul186 = mul i128 2, %k185
  %sub187 = sub i128 %mul186, 3
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split184, i128 0, i128 %sub187, i128 2
  %split189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %split183, %split189
  %carry191 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k192 = load i128, i128* %prod.k.declare_arg, align 4
  %mul193 = mul i128 2, %k192
  %sub194 = sub i128 %mul193, 2
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %carry191, i128 0, i128 %sub194
  %carry196 = load i128, i128* %array_getter195, align 4
  %add197 = add i128 %add190, %carry196
  %ptr_getter198 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k199 = load i128, i128* %prod.k.declare_arg, align 4
  %mul200 = mul i128 2, %k199
  %sub201 = sub i128 %mul200, 1
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter198, i128 0, i128 %sub201
  store i128 %add197, i128* %out202, align 4
  br label %if.exit203

if.exit203:                                       ; preds = %if.false125, %loop.exit177
  %out204 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out204
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %long_add4.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add4.n.declare_arg, align 4
  %long_add4.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add4.k.declare_arg, align 4
  %long_add4.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add4.a.declare_arg, align 8
  %long_add4.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add4.b.declare_arg, align 8
  %long_add4.c.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add4.c.declare_arg, align 8
  %long_add4.d.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %5, [256 x i128]** %long_add4.d.declare_arg, align 8
  %carry = alloca i128, align 8
  %carry1 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry1, i128* %carry, align 4
  %i = alloca i128, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  store i128 %i2, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry3 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry3, [256 x i128]** %sumAndCarry, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum4 = alloca [256 x i128], align 8
  store [256 x i128]* %sum4, [256 x i128]** %sum, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_add4.a.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add4.b.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %c = load [256 x i128]*, [256 x i128]** %long_add4.c.declare_arg, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i10
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %d = load [256 x i128]*, [256 x i128]** %long_add4.d.declare_arg, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i14
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %carry18 = load i128, i128* %carry, align 4
  %add19 = add i128 %add17, %carry18
  %n = load i128, i128* %long_add4.n.declare_arg, align 4
  %n20 = load i128, i128* %long_add4.n.declare_arg, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add19, i128 %n, i128 %n20)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry21 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry21, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i24 = load i128, i128* %i, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i24
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %sumAndCarry26 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry26, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  store i128 %sumAndCarry28, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i29 = load i128, i128* %i, align 4
  %add30 = add i128 %i29, 1
  store i128 %add30, i128* %i, align 4
  %i31 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_add4.k.declare_arg, align 4
  %slt = icmp slt i128 %i31, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry32 = load i128, i128* %carry, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k34 = load i128, i128* %long_add4.k.declare_arg, align 4
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %k34
  store i128 %carry32, i128* %sum35, align 4
  %sum36 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum36
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_add.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add.n.declare_arg, align 4
  %long_add.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add.k.declare_arg, align 4
  %long_add.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add.a.declare_arg, align 8
  %long_add.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add.b.declare_arg, align 8
  %carry = alloca i128, align 8
  %carry1 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry1, i128* %carry, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum3 = alloca [256 x i128], align 8
  store [256 x i128]* %sum3, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_add.a.declare_arg, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add.b.declare_arg, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %carry10 = load i128, i128* %carry, align 4
  %add11 = add i128 %add, %carry10
  %n = load i128, i128* %long_add.n.declare_arg, align 4
  %n12 = load i128, i128* %long_add.n.declare_arg, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add11, i128 %n, i128 %n12)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry13 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry13, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i16 = load i128, i128* %i, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %sumAndCarry18 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry18, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  store i128 %sumAndCarry20, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i21 = load i128, i128* %i, align 4
  %add22 = add i128 %i21, 1
  store i128 %add22, i128* %i, align 4
  %i23 = load i128, i128* %i, align 4
  %k = load i128, i128* %long_add.k.declare_arg, align 4
  %slt = icmp slt i128 %i23, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry24 = load i128, i128* %carry, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k26 = load i128, i128* %long_add.k.declare_arg, align 4
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %k26
  store i128 %carry24, i128* %sum27, align 4
  %sum28 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum28
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %prod2d.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod2d.n.declare_arg, align 4
  %prod2d.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod2d.k.declare_arg, align 4
  %prod2d.l.declare_arg = alloca i128, align 8
  store i128 %2, i128* %prod2d.l.declare_arg, align 4
  %prod2d.a.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %prod2d.a.declare_arg, align 8
  %prod2d.b.declare_arg = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %prod2d.b.declare_arg, align 8
  %j = alloca i128, align 8
  %j1 = call i128 @fn_intrinsic_inline_init()
  store i128 %j1, i128* %j, align 4
  %i1 = alloca i128, align 8
  %i12 = call i128 @fn_intrinsic_inline_init()
  store i128 %i12, i128* %i1, align 4
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry3, [256 x [256 x i128]]** %sumAndCarry, align 8
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val4, [256 x [256 x i128]]** %prod_val, align 8
  %i2 = alloca i128, align 8
  %i25 = call i128 @fn_intrinsic_inline_init()
  store i128 %i25, i128* %i2, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out6, [256 x [256 x i128]]** %out, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split7 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split7, [256 x [256 x [256 x i128]]]** %split, align 8
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry8, [256 x [256 x i128]]** %carry, align 8
  %j19 = alloca i128, align 8
  %j110 = call i128 @fn_intrinsic_inline_init()
  store i128 %j110, i128* %j19, align 4
  %i = alloca i128, align 8
  %i11 = call i128 @fn_intrinsic_inline_init()
  store i128 %i11, i128* %i, align 4
  %j2 = alloca i128, align 8
  %j212 = call i128 @fn_intrinsic_inline_init()
  store i128 %j212, i128* %j2, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch19, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body13

loop.body13:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j14 = load i128, i128* %j, align 4
  %i15 = load i128, i128* %i, align 4
  %prod_val16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j14, i128 %i15
  store i128 0, i128* %prod_val16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body13
  %j17 = load i128, i128* %j, align 4
  %add = add i128 %j17, 1
  store i128 %add, i128* %j, align 4
  %j18 = load i128, i128* %j, align 4
  %l = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j18, %sub
  br i1 %slt, label %loop.body13, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.exit
  %i20 = load i128, i128* %i, align 4
  %add21 = add i128 %i20, 1
  store i128 %add21, i128* %i, align 4
  %i22 = load i128, i128* %i, align 4
  %k = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul23 = mul i128 2, %k
  %sub24 = sub i128 %mul23, 1
  %slt25 = icmp slt i128 %i22, %sub24
  br i1 %slt25, label %loop.body, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch19
  store i128 0, i128* %i1, align 4
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch78, %loop.exit26
  store i128 0, i128* %i2, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch71, %loop.body27
  store i128 0, i128* %j19, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch64, %loop.body28
  store i128 0, i128* %j2, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch57, %loop.body29
  %prod_val31 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j132 = load i128, i128* %j19, align 4
  %j233 = load i128, i128* %j2, align 4
  %add34 = add i128 %j132, %j233
  %i135 = load i128, i128* %i1, align 4
  %i236 = load i128, i128* %i2, align 4
  %add37 = add i128 %i135, %i236
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val31, i128 0, i128 %add34, i128 %add37
  %prod_val38 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod2d.a.declare_arg, align 8
  %j139 = load i128, i128* %j19, align 4
  %i140 = load i128, i128* %i1, align 4
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j139, i128 %i140
  %a42 = load i128, i128* %array_getter41, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod2d.b.declare_arg, align 8
  %j243 = load i128, i128* %j2, align 4
  %i244 = load i128, i128* %i2, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j243, i128 %i244
  %b46 = load i128, i128* %array_getter45, align 4
  %mul47 = mul i128 %a42, %b46
  %add48 = add i128 %prod_val38, %mul47
  %ptr_getter49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j150 = load i128, i128* %j19, align 4
  %j251 = load i128, i128* %j2, align 4
  %add52 = add i128 %j150, %j251
  %i153 = load i128, i128* %i1, align 4
  %i254 = load i128, i128* %i2, align 4
  %add55 = add i128 %i153, %i254
  %prod_val56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter49, i128 0, i128 %add52, i128 %add55
  store i128 %add48, i128* %prod_val56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body30
  %j258 = load i128, i128* %j2, align 4
  %add59 = add i128 %j258, 1
  store i128 %add59, i128* %j2, align 4
  %j260 = load i128, i128* %j2, align 4
  %l61 = load i128, i128* %prod2d.l.declare_arg, align 4
  %slt62 = icmp slt i128 %j260, %l61
  br i1 %slt62, label %loop.body30, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %j165 = load i128, i128* %j19, align 4
  %add66 = add i128 %j165, 1
  store i128 %add66, i128* %j19, align 4
  %j167 = load i128, i128* %j19, align 4
  %l68 = load i128, i128* %prod2d.l.declare_arg, align 4
  %slt69 = icmp slt i128 %j167, %l68
  br i1 %slt69, label %loop.body29, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %i272 = load i128, i128* %i2, align 4
  %add73 = add i128 %i272, 1
  store i128 %add73, i128* %i2, align 4
  %i274 = load i128, i128* %i2, align 4
  %k75 = load i128, i128* %prod2d.k.declare_arg, align 4
  %slt76 = icmp slt i128 %i274, %k75
  br i1 %slt76, label %loop.body28, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit77
  %i179 = load i128, i128* %i1, align 4
  %add80 = add i128 %i179, 1
  store i128 %add80, i128* %i1, align 4
  %i181 = load i128, i128* %i1, align 4
  %k82 = load i128, i128* %prod2d.k.declare_arg, align 4
  %slt83 = icmp slt i128 %i181, %k82
  br i1 %slt83, label %loop.body27, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %uniform_array85 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array85, [256 x [256 x i128]]** %out, align 8
  %uniform_array86 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array86, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch109, %loop.exit84
  store i128 0, i128* %i, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch100, %loop.body87
  %prod_val89 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j90 = load i128, i128* %j, align 4
  %i91 = load i128, i128* %i, align 4
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val89, i128 0, i128 %j90, i128 %i91
  %prod_val93 = load i128, i128* %array_getter92, align 4
  %n = load i128, i128* %prod2d.n.declare_arg, align 4
  %n94 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n95 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val93, i128 %n, i128 %n94, i128 %n95)
  %ptr_getter96 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j97 = load i128, i128* %j, align 4
  %i98 = load i128, i128* %i, align 4
  %split99 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter96, i128 0, i128 %j97, i128 %i98
  %5 = bitcast [256 x i128]* %split99 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body88
  %i101 = load i128, i128* %i, align 4
  %add102 = add i128 %i101, 1
  store i128 %add102, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k104 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul105 = mul i128 2, %k104
  %sub106 = sub i128 %mul105, 1
  %slt107 = icmp slt i128 %i103, %sub106
  br i1 %slt107, label %loop.body88, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch100
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.exit108
  %j111 = load i128, i128* %j, align 4
  %add112 = add i128 %j111, 1
  store i128 %add112, i128* %j, align 4
  %j113 = load i128, i128* %j, align 4
  %l114 = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul115 = mul i128 2, %l114
  %sub116 = sub i128 %mul115, 1
  %slt117 = icmp slt i128 %j113, %sub116
  br i1 %slt117, label %loop.body87, label %loop.exit118

loop.exit118:                                     ; preds = %loop.latch109
  %uniform_array119 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array119, [256 x [256 x i128]]** %carry, align 8
  %uniform_array120 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array120, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch259, %loop.exit118
  %ptr_getter122 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j123 = load i128, i128* %j, align 4
  %carry124 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter122, i128 0, i128 %j123, i128 0
  store i128 0, i128* %carry124, align 4
  %split125 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j126 = load i128, i128* %j, align 4
  %array_getter127 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split125, i128 0, i128 %j126, i128 0, i128 0
  %split128 = load i128, i128* %array_getter127, align 4
  %ptr_getter129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j130 = load i128, i128* %j, align 4
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter129, i128 0, i128 %j130, i128 0
  store i128 %split128, i128* %out131, align 4
  %k132 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul133 = mul i128 2, %k132
  %sub134 = sub i128 %mul133, 1
  %sgt = icmp sgt i128 %sub134, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body121
  %split135 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j136 = load i128, i128* %j, align 4
  %array_getter137 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split135, i128 0, i128 %j136, i128 0, i128 1
  %split138 = load i128, i128* %array_getter137, align 4
  %split139 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j140 = load i128, i128* %j, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split139, i128 0, i128 %j140, i128 1, i128 0
  %split142 = load i128, i128* %array_getter141, align 4
  %add143 = add i128 %split138, %split142
  %n144 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n145 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call146 = call [2 x i128]* @SplitFn(i128 %add143, i128 %n144, i128 %n145)
  %ptr_getter147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j148 = load i128, i128* %j, align 4
  %sumAndCarry149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter147, i128 0, i128 %j148
  %7 = bitcast [256 x i128]* %sumAndCarry149 to i8*
  %8 = bitcast [2 x i128]* %call146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j151 = load i128, i128* %j, align 4
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry150, i128 0, i128 %j151, i128 0
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %ptr_getter154 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j155 = load i128, i128* %j, align 4
  %out156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter154, i128 0, i128 %j155, i128 1
  store i128 %sumAndCarry153, i128* %out156, align 4
  %sumAndCarry157 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j158 = load i128, i128* %j, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry157, i128 0, i128 %j158, i128 1
  %sumAndCarry160 = load i128, i128* %array_getter159, align 4
  %ptr_getter161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j162 = load i128, i128* %j, align 4
  %carry163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter161, i128 0, i128 %j162, i128 1
  store i128 %sumAndCarry160, i128* %carry163, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body121
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k166 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul167 = mul i128 2, %k166
  %sub168 = sub i128 %mul167, 1
  %sgt169 = icmp sgt i128 %sub168, 2
  br i1 %sgt169, label %if.true164, label %if.false165

if.true164:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body170

if.false165:                                      ; preds = %if.exit
  br label %if.exit258

loop.body170:                                     ; preds = %loop.latch220, %if.true164
  %split171 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j172 = load i128, i128* %j, align 4
  %i173 = load i128, i128* %i, align 4
  %array_getter174 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split171, i128 0, i128 %j172, i128 %i173, i128 0
  %split175 = load i128, i128* %array_getter174, align 4
  %split176 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j177 = load i128, i128* %j, align 4
  %i178 = load i128, i128* %i, align 4
  %sub179 = sub i128 %i178, 1
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split176, i128 0, i128 %j177, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %split175, %split181
  %split183 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j184 = load i128, i128* %j, align 4
  %i185 = load i128, i128* %i, align 4
  %sub186 = sub i128 %i185, 2
  %array_getter187 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split183, i128 0, i128 %j184, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %split188
  %carry190 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j191 = load i128, i128* %j, align 4
  %i192 = load i128, i128* %i, align 4
  %sub193 = sub i128 %i192, 1
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry190, i128 0, i128 %j191, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %n197 = load i128, i128* %prod2d.n.declare_arg, align 4
  %n198 = load i128, i128* %prod2d.n.declare_arg, align 4
  %call199 = call [2 x i128]* @SplitFn(i128 %add196, i128 %n197, i128 %n198)
  %ptr_getter200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j201 = load i128, i128* %j, align 4
  %sumAndCarry202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter200, i128 0, i128 %j201
  %9 = bitcast [256 x i128]* %sumAndCarry202 to i8*
  %10 = bitcast [2 x i128]* %call199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry203 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j204 = load i128, i128* %j, align 4
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry203, i128 0, i128 %j204, i128 0
  %sumAndCarry206 = load i128, i128* %array_getter205, align 4
  %ptr_getter207 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j208 = load i128, i128* %j, align 4
  %i209 = load i128, i128* %i, align 4
  %out210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter207, i128 0, i128 %j208, i128 %i209
  store i128 %sumAndCarry206, i128* %out210, align 4
  %sumAndCarry211 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j213 = load i128, i128* %j, align 4
  %array_getter214 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry211, i128 0, i128 %j213, i128 1
  %sumAndCarry215 = load i128, i128* %array_getter214, align 4
  %ptr_getter216 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j217 = load i128, i128* %j, align 4
  %i218 = load i128, i128* %i, align 4
  %carry219 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter216, i128 0, i128 %j217, i128 %i218
  store i128 %sumAndCarry215, i128* %carry219, align 4
  br label %loop.latch220

loop.latch220:                                    ; preds = %loop.body170
  %i221 = load i128, i128* %i, align 4
  %add222 = add i128 %i221, 1
  store i128 %add222, i128* %i, align 4
  %i223 = load i128, i128* %i, align 4
  %k224 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul225 = mul i128 2, %k224
  %sub226 = sub i128 %mul225, 1
  %slt227 = icmp slt i128 %i223, %sub226
  br i1 %slt227, label %loop.body170, label %loop.exit228

loop.exit228:                                     ; preds = %loop.latch220
  %split229 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j230 = load i128, i128* %j, align 4
  %k231 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul232 = mul i128 2, %k231
  %sub233 = sub i128 %mul232, 2
  %array_getter234 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split229, i128 0, i128 %j230, i128 %sub233, i128 1
  %split235 = load i128, i128* %array_getter234, align 4
  %split236 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j237 = load i128, i128* %j, align 4
  %k238 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul239 = mul i128 2, %k238
  %sub240 = sub i128 %mul239, 3
  %array_getter241 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split236, i128 0, i128 %j237, i128 %sub240, i128 2
  %split242 = load i128, i128* %array_getter241, align 4
  %add243 = add i128 %split235, %split242
  %carry244 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j245 = load i128, i128* %j, align 4
  %k246 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul247 = mul i128 2, %k246
  %sub248 = sub i128 %mul247, 2
  %array_getter249 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry244, i128 0, i128 %j245, i128 %sub248
  %carry250 = load i128, i128* %array_getter249, align 4
  %add251 = add i128 %add243, %carry250
  %ptr_getter252 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j253 = load i128, i128* %j, align 4
  %k254 = load i128, i128* %prod2d.k.declare_arg, align 4
  %mul255 = mul i128 2, %k254
  %sub256 = sub i128 %mul255, 1
  %out257 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter252, i128 0, i128 %j253, i128 %sub256
  store i128 %add251, i128* %out257, align 4
  br label %if.exit258

if.exit258:                                       ; preds = %if.false165, %loop.exit228
  br label %loop.latch259

loop.latch259:                                    ; preds = %if.exit258
  %j261 = load i128, i128* %j, align 4
  %add262 = add i128 %j261, 1
  store i128 %add262, i128* %j, align 4
  %j263 = load i128, i128* %j, align 4
  %l264 = load i128, i128* %prod2d.l.declare_arg, align 4
  %mul265 = mul i128 2, %l264
  %sub266 = sub i128 %mul265, 1
  %slt267 = icmp slt i128 %j263, %sub266
  br i1 %slt267, label %loop.body121, label %loop.exit268

loop.exit268:                                     ; preds = %loop.latch259
  %out269 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out269
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_sub_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_sub_mod.n.declare_arg, align 4
  %long_sub_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_sub_mod.k.declare_arg, align 4
  %long_sub_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %long_sub_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %long_sub_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_sub_mod.p.declare_arg, align 8
  %n = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %a = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %call = call i128 @long_gt(i128 %n, i128 %k, [256 x i128]* %b, [256 x i128]* %a)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n1 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k2 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %a3 = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %n4 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k5 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %p = load [256 x i128]*, [256 x i128]** %long_sub_mod.p.declare_arg, align 8
  %b6 = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %call7 = call [256 x i128]* @long_sub(i128 %n4, i128 %k5, [256 x i128]* %p, [256 x i128]* %b6)
  %call8 = call [256 x i128]* @long_add(i128 %n1, i128 %k2, [256 x i128]* %a3, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %n9 = load i128, i128* %long_sub_mod.n.declare_arg, align 4
  %k10 = load i128, i128* %long_sub_mod.k.declare_arg, align 4
  %a11 = load [256 x i128]*, [256 x i128]** %long_sub_mod.a.declare_arg, align 8
  %b12 = load [256 x i128]*, [256 x i128]** %long_sub_mod.b.declare_arg, align 8
  %call13 = call [256 x i128]* @long_sub(i128 %n9, i128 %k10, [256 x i128]* %a11, [256 x i128]* %b12)
  ret [256 x i128]* %call13
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_add_unequal.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add_unequal.n.declare_arg, align 4
  %long_add_unequal.k1.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add_unequal.k1.declare_arg, align 4
  %long_add_unequal.k2.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_add_unequal.k2.declare_arg, align 4
  %long_add_unequal.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %long_add_unequal.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add_unequal.b.declare_arg, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %carry = alloca i128, align 8
  %carry2 = call i128 @fn_intrinsic_inline_init()
  store i128 %carry2, i128* %carry, align 4
  %i = alloca i128, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  store i128 %i3, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry4 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry4, [256 x i128]** %sumAndCarry, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i5 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %long_add_unequal.k2.declare_arg, align 4
  %slt = icmp slt i128 %i5, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i6
  %a7 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %long_add_unequal.b.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i8
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %carry11 = load i128, i128* %carry, align 4
  %add12 = add i128 %add, %carry11
  %n = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %n13 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add12, i128 %n, i128 %n13)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry14 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry14, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i17 = load i128, i128* %i, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i17
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  store i128 %sumAndCarry21, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a22 = load [256 x i128]*, [256 x i128]** %long_add_unequal.a.declare_arg, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %a22, i128 0, i128 %i23
  %a25 = load i128, i128* %array_getter24, align 4
  %carry26 = load i128, i128* %carry, align 4
  %add27 = add i128 %a25, %carry26
  %n28 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %n29 = load i128, i128* %long_add_unequal.n.declare_arg, align 4
  %call30 = call [2 x i128]* @SplitFn(i128 %add27, i128 %n28, i128 %n29)
  %memcpy_ptr31 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr31 to i8*
  %8 = bitcast [2 x i128]* %call30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry32 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry32, i128 0, i128 0
  %sumAndCarry34 = load i128, i128* %array_getter33, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i36 = load i128, i128* %i, align 4
  %sum37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %sumAndCarry34, i128* %sum37, align 4
  %sumAndCarry38 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry38, i128 0, i128 1
  %sumAndCarry40 = load i128, i128* %array_getter39, align 4
  store i128 %sumAndCarry40, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i41 = load i128, i128* %i, align 4
  %add42 = add i128 %i41, 1
  store i128 %add42, i128* %i, align 4
  %i43 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %slt44 = icmp slt i128 %i43, %k1
  br i1 %slt44, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry45 = load i128, i128* %carry, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k147 = load i128, i128* %long_add_unequal.k1.declare_arg, align 4
  %sum48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 %k147
  store i128 %carry45, i128* %sum48, align 4
  %sum49 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum49
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_div2.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_div2.n.declare_arg, align 4
  %long_div2.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_div2.k.declare_arg, align 4
  %long_div2.m.declare_arg = alloca i128, align 8
  store i128 %2, i128* %long_div2.m.declare_arg, align 4
  %long_div2.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_div2.a.declare_arg, align 8
  %long_div2.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_div2.b.declare_arg, align 8
  %i = alloca i128, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  store i128 %i1, i128* %i, align 4
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend2 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend2, [256 x i128]** %subtrahend, align 8
  %j = alloca i128, align 8
  %j3 = call i128 @fn_intrinsic_inline_init()
  store i128 %j3, i128* %j, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out4, [256 x [256 x i128]]** %out, align 8
  %remainder = alloca [256 x i128]*, align 8
  %remainder5 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder5, [256 x i128]** %remainder, align 8
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift6 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift6, [256 x i128]** %mult_shift, align 8
  %dividend = alloca [256 x i128]*, align 8
  %dividend7 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend7, [256 x i128]** %dividend, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array8 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array8, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %long_div2.a.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i11 = load i128, i128* %i, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i11
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %m = load i128, i128* %long_div2.m.declare_arg, align 4
  %k = load i128, i128* %long_div2.k.declare_arg, align 4
  %add15 = add i128 %m, %k
  %slt = icmp slt i128 %i14, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array16, [256 x i128]** %dividend, align 8
  %m17 = load i128, i128* %long_div2.m.declare_arg, align 4
  store i128 %m17, i128* %i, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %i19 = load i128, i128* %i, align 4
  %m20 = load i128, i128* %long_div2.m.declare_arg, align 4
  %eq = icmp eq i128 %i19, %m20
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k22 = load i128, i128* %long_div2.k.declare_arg, align 4
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 %k22
  store i128 0, i128* %dividend23, align 4
  %k24 = load i128, i128* %long_div2.k.declare_arg, align 4
  %sub = sub i128 %k24, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  %k40 = load i128, i128* %long_div2.k.declare_arg, align 4
  store i128 %k40, i128* %j, align 4
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %remainder26 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j27 = load i128, i128* %j, align 4
  %m28 = load i128, i128* %long_div2.m.declare_arg, align 4
  %add29 = add i128 %j27, %m28
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder26, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j33 = load i128, i128* %j, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %j33
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %j36 = load i128, i128* %j, align 4
  %sub37 = sub i128 %j36, 1
  store i128 %sub37, i128* %j, align 4
  %j38 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j38, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %remainder42 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j43 = load i128, i128* %j, align 4
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %j43, %i44
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder42, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j49 = load i128, i128* %j, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 %j49
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %j52 = load i128, i128* %j, align 4
  %sub53 = sub i128 %j52, 1
  store i128 %sub53, i128* %j, align 4
  %j54 = load i128, i128* %j, align 4
  %sge55 = icmp sge i128 %j54, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %n = load i128, i128* %long_div2.n.declare_arg, align 4
  %k57 = load i128, i128* %long_div2.k.declare_arg, align 4
  %dividend58 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_div2.b.declare_arg, align 8
  %call = call i128 @short_div(i128 %n, i128 %k57, [256 x i128]* %dividend58, [256 x i128]* %b)
  %ptr_getter59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i60 = load i128, i128* %i, align 4
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter59, i128 0, i128 0, i128 %i60
  store i128 %call, i128* %out61, align 4
  %n62 = load i128, i128* %long_div2.n.declare_arg, align 4
  %k63 = load i128, i128* %long_div2.k.declare_arg, align 4
  %out64 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out64, i128 0, i128 0, i128 %i65
  %out67 = load i128, i128* %array_getter66, align 4
  %b68 = load [256 x i128]*, [256 x i128]** %long_div2.b.declare_arg, align 8
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %n62, i128 %k63, i128 %out67, [256 x i128]* %b68)
  store [256 x i128]* %call69, [256 x i128]** %mult_shift, align 8
  %uniform_array70 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array70, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j73 = load i128, i128* %j, align 4
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %j73
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %j76 = load i128, i128* %j, align 4
  %add77 = add i128 %j76, 1
  store i128 %add77, i128* %j, align 4
  %j78 = load i128, i128* %j, align 4
  %m79 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k80 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add81 = add i128 %m79, %k80
  %slt82 = icmp slt i128 %j78, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  store i128 0, i128* %j, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %i87 = load i128, i128* %i, align 4
  %j88 = load i128, i128* %j, align 4
  %add89 = add i128 %i87, %j88
  %m90 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k91 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add92 = add i128 %m90, %k91
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %mult_shift94 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j95 = load i128, i128* %j, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift94, i128 0, i128 %j95
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %ptr_getter98 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i99 = load i128, i128* %i, align 4
  %j100 = load i128, i128* %j, align 4
  %add101 = add i128 %i99, %j100
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter98, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %j105 = load i128, i128* %j, align 4
  %add106 = add i128 %j105, 1
  store i128 %add106, i128* %j, align 4
  %j107 = load i128, i128* %j, align 4
  %k108 = load i128, i128* %long_div2.k.declare_arg, align 4
  %sle = icmp sle i128 %j107, %k108
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %n110 = load i128, i128* %long_div2.n.declare_arg, align 4
  %m111 = load i128, i128* %long_div2.m.declare_arg, align 4
  %k112 = load i128, i128* %long_div2.k.declare_arg, align 4
  %add113 = add i128 %m111, %k112
  %remainder114 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend115 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call116 = call [256 x i128]* @long_sub(i128 %n110, i128 %add113, [256 x i128]* %remainder114, [256 x i128]* %subtrahend115)
  store [256 x i128]* %call116, [256 x i128]** %remainder, align 8
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %i118 = load i128, i128* %i, align 4
  %sub119 = sub i128 %i118, 1
  store i128 %sub119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %sge121 = icmp sge i128 %i120, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  store i128 0, i128* %i, align 4
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %remainder124 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder124, i128 0, i128 %i125
  %remainder127 = load i128, i128* %array_getter126, align 4
  %ptr_getter128 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i129 = load i128, i128* %i, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter128, i128 0, i128 1, i128 %i129
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %i132 = load i128, i128* %i, align 4
  %add133 = add i128 %i132, 1
  store i128 %add133, i128* %i, align 4
  %i134 = load i128, i128* %i, align 4
  %k135 = load i128, i128* %long_div2.k.declare_arg, align 4
  %slt136 = icmp slt i128 %i134, %k135
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %ptr_getter138 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k139 = load i128, i128* %long_div2.k.declare_arg, align 4
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter138, i128 0, i128 1, i128 %k139
  store i128 0, i128* %out140, align 4
  %out141 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out141
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %long_div.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_div.n.declare_arg, align 4
  %long_div.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_div.k.declare_arg, align 4
  %long_div.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_div.a.declare_arg, align 8
  %long_div.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_div.b.declare_arg, align 8
  %n = load i128, i128* %long_div.n.declare_arg, align 4
  %k = load i128, i128* %long_div.k.declare_arg, align 4
  %k1 = load i128, i128* %long_div.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %long_div.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_div.b.declare_arg, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %k1, [256 x i128]* %a, [256 x i128]* %b)
  ret [256 x [256 x i128]]* %call
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %prod_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %prod_mod.n.declare_arg, align 4
  %prod_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %prod_mod.k.declare_arg, align 4
  %prod_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %prod_mod.a.declare_arg, align 8
  %prod_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %prod_mod.b.declare_arg, align 8
  %prod_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %prod_mod.p.declare_arg, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %prod = alloca [256 x i128]*, align 8
  %prod2 = alloca [256 x i128], align 8
  store [256 x i128]* %prod2, [256 x i128]** %prod, align 8
  %n = load i128, i128* %prod_mod.n.declare_arg, align 4
  %k = load i128, i128* %prod_mod.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %prod_mod.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %prod_mod.b.declare_arg, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n3 = load i128, i128* %prod_mod.n.declare_arg, align 4
  %k4 = load i128, i128* %prod_mod.k.declare_arg, align 4
  %prod5 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %prod_mod.p.declare_arg, align 8
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %n3, i128 %k4, [256 x i128]* %prod5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %long_add_mod.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %long_add_mod.n.declare_arg, align 4
  %long_add_mod.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %long_add_mod.k.declare_arg, align 4
  %long_add_mod.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %long_add_mod.a.declare_arg, align 8
  %long_add_mod.b.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %long_add_mod.b.declare_arg, align 8
  %long_add_mod.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %long_add_mod.p.declare_arg, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp2, [256 x [256 x i128]]** %temp, align 8
  %n = load i128, i128* %long_add_mod.n.declare_arg, align 4
  %k = load i128, i128* %long_add_mod.k.declare_arg, align 4
  %a = load [256 x i128]*, [256 x i128]** %long_add_mod.a.declare_arg, align 8
  %b = load [256 x i128]*, [256 x i128]** %long_add_mod.b.declare_arg, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n3 = load i128, i128* %long_add_mod.n.declare_arg, align 4
  %k4 = load i128, i128* %long_add_mod.k.declare_arg, align 4
  %sum5 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %long_add_mod.p.declare_arg, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 1, [256 x i128]* %sum5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %mod_exp.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %mod_exp.n.declare_arg, align 4
  %mod_exp.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %mod_exp.k.declare_arg, align 4
  %mod_exp.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %mod_exp.a.declare_arg, align 8
  %mod_exp.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %mod_exp.e.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %mod_exp.e.declare_arg, align 8
  %bitlength = alloca i128, align 8
  %bitlength1 = call i128 @fn_intrinsic_inline_init()
  store i128 %bitlength1, i128* %bitlength, align 4
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %temp = alloca [256 x i128]*, align 8
  %temp3 = alloca [256 x i128], align 8
  store [256 x i128]* %temp3, [256 x i128]** %temp, align 8
  %i = alloca i128, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  store i128 %i4, i128* %i, align 4
  %j = alloca i128, align 8
  %j5 = call i128 @fn_intrinsic_inline_init()
  store i128 %j5, i128* %j, align 4
  %eBits = alloca [256 x i128]*, align 8
  %eBits6 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits6, [256 x i128]** %eBits, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp27 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp27, [256 x [256 x i128]]** %temp2, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %mod_exp.e.declare_arg, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i9
  %e10 = load i128, i128* %array_getter, align 4
  %j11 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e10, %j11
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j12 = load i128, i128* %j, align 4
  %n = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i13 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i13
  %add = add i128 %j12, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %eBits15 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits15, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %j23 = load i128, i128* %j, align 4
  %n24 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %i25 = load i128, i128* %i, align 4
  %mul26 = mul i128 %n24, %i25
  %add27 = add i128 %j23, %mul26
  %add28 = add i128 %add27, 1
  store i128 %add28, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j29 = load i128, i128* %j, align 4
  %add30 = add i128 %j29, 1
  store i128 %add30, i128* %j, align 4
  %j31 = load i128, i128* %j, align 4
  %n32 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %slt = icmp slt i128 %j31, %n32
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %i34 = load i128, i128* %i, align 4
  %add35 = add i128 %i34, 1
  store i128 %add35, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k = load i128, i128* %mod_exp.k.declare_arg, align 4
  %slt37 = icmp slt i128 %i36, %k
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array39, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %ptr_getter41 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i42 = load i128, i128* %i, align 4
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter41, i128 0, i128 %i42
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %slt48 = icmp slt i128 %i47, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %bitlength52 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength52, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %eBits56 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits56, i128 0, i128 %i57
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array61, [256 x i128]** %temp, align 8
  %n62 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k63 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %out64 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %mod_exp.a.declare_arg, align 8
  %call = call [256 x i128]* @prod(i128 %n62, i128 %k63, [256 x i128]* %out64, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array65, [256 x [256 x i128]]** %temp2, align 8
  %n66 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k67 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %temp68 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %n66, i128 %k67, [256 x i128]* %temp68, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call69, [256 x [256 x i128]]** %temp2, align 8
  %temp270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp270, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %i76 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i76, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array77, [256 x i128]** %temp, align 8
  %n78 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k79 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %out80 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out81 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call82 = call [256 x i128]* @prod(i128 %n78, i128 %k79, [256 x i128]* %out80, [256 x i128]* %out81)
  store [256 x i128]* %call82, [256 x i128]** %temp, align 8
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array83, [256 x [256 x i128]]** %temp2, align 8
  %n84 = load i128, i128* %mod_exp.n.declare_arg, align 4
  %k85 = load i128, i128* %mod_exp.k.declare_arg, align 4
  %temp86 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p87 = load [256 x i128]*, [256 x i128]** %mod_exp.p.declare_arg, align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %n84, i128 %k85, [256 x i128]* %temp86, [256 x i128]* %p87)
  store [256 x [256 x i128]]* %call88, [256 x [256 x i128]]** %temp2, align 8
  %temp289 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp289, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  store [256 x i128]* %spice_inline_array92, [256 x i128]** %out, align 8
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %i95 = load i128, i128* %i, align 4
  %sub96 = sub i128 %i95, 1
  store i128 %sub96, i128* %i, align 4
  %i97 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i97, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  %out99 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out99
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %mod_inv.n.declare_arg = alloca i128, align 8
  store i128 %0, i128* %mod_inv.n.declare_arg, align 4
  %mod_inv.k.declare_arg = alloca i128, align 8
  store i128 %1, i128* %mod_inv.k.declare_arg, align 4
  %mod_inv.a.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %mod_inv.p.declare_arg = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %mod_inv.p.declare_arg, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo1 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo1, [256 x i128]** %pMinusTwo, align 8
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy3 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy3, [256 x i128]** %pCopy, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret4 = alloca [256 x i128], align 8
  store [256 x i128]* %ret4, [256 x i128]** %ret, align 8
  %isZero = alloca i128, align 8
  %isZero5 = call i128 @fn_intrinsic_inline_init()
  store i128 %isZero5, i128* %isZero, align 4
  %two = alloca [256 x i128]*, align 8
  %two6 = alloca [256 x i128], align 8
  store [256 x i128]* %two6, [256 x i128]** %two, align 8
  %i = alloca i128, align 8
  %i7 = call i128 @fn_intrinsic_inline_init()
  store i128 %i7, i128* %i, align 4
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i10 = load i128, i128* %i, align 4
  %add = add i128 %i10, 1
  store i128 %add, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %k = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt = icmp slt i128 %i11, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero14 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero14, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i16 = load i128, i128* %i, align 4
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k22 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt23 = icmp slt i128 %i21, %k22
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  %ret25 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret25

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array27, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i31 = load i128, i128* %i, align 4
  %k32 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %slt33 = icmp slt i128 %i31, %k32
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %p = load [256 x i128]*, [256 x i128]** %mod_inv.p.declare_arg, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i34
  %p36 = load i128, i128* %array_getter35, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i38 = load i128, i128* %i, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i41 = load i128, i128* %i, align 4
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %slt48 = icmp slt i128 %i47, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array50, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %ptr_getter52 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i53 = load i128, i128* %i, align 4
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter52, i128 0, i128 %i53
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %i, align 4
  %i58 = load i128, i128* %i, align 4
  %slt59 = icmp slt i128 %i58, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %ptr_getter61 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter61, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array63, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %mod_inv.n.declare_arg, align 4
  %k64 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %pCopy65 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two66 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k64, [256 x i128]* %pCopy65, [256 x i128]* %two66)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array67 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array67, [256 x i128]** %out, align 8
  %n68 = load i128, i128* %mod_inv.n.declare_arg, align 4
  %k69 = load i128, i128* %mod_inv.k.declare_arg, align 4
  %a70 = load [256 x i128]*, [256 x i128]** %mod_inv.a.declare_arg, align 8
  %pCopy71 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo72 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %n68, i128 %k69, [256 x i128]* %a70, [256 x i128]* %pCopy71, [256 x i128]* %pMinusTwo72)
  store [256 x i128]* %call73, [256 x i128]** %out, align 8
  %out74 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out74
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
