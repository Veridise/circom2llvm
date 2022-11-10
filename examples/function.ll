; ModuleID = 'main'
source_filename = "main"

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
declare i128 @llvm.powi.i128.i64(i128, i64) #0

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %lshift1 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift1
  %lshift2 = shl i128 1, %2
  %mod3 = srem i128 %sdiv, %lshift2
  %add = add i128 %1, %2
  %lshift4 = shl i128 1, %add
  %sdiv5 = sdiv i128 %0, %lshift4
  %lshift6 = shl i128 1, %3
  %mod7 = srem i128 %sdiv5, %lshift6
  %inline_array = alloca [3 x i128], align 8
  store [3 x i128] [i128 %mod, i128 %mod3, i128 %mod7], [3 x i128]* %inline_array, align 4
  ret [3 x i128]* %inline_array
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %lshift1 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift1
  %lshift2 = shl i128 1, %2
  %mod3 = srem i128 %sdiv, %lshift2
  %inline_array = alloca [2 x i128], align 8
  store [2 x i128] [i128 %mod, i128 %mod3], [2 x i128]* %inline_array, align 4
  ret [2 x i128]* %inline_array
}

define i128 @long_gt(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %sub = sub i128 %1, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ %sub, %entry ], [ %sub11, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a1 = load i128, i128* %array_ptr, align 4
  %array_ptr2 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b3 = load i128, i128* %array_ptr2, align 4
  %sgt = icmp sgt i128 %a1, %b3
  br i1 %sgt, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body
  ret i128 1
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %array_ptr7 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a8 = load i128, i128* %array_ptr7, align 4
  %array_ptr9 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b10 = load i128, i128* %array_ptr9, align 4
  %slt = icmp slt i128 %a8, %b10
  br i1 %slt, label %if.true4, label %if.false5

if.true4:                                         ; preds = %if.exit
  ret i128 0
  br label %if.exit6

if.false5:                                        ; preds = %if.exit
  br label %if.exit6

if.exit6:                                         ; preds = %if.false5, %if.true4

loop.latch:                                       ; preds = %loop.body
  %sub11 = sub i128 %loop.iter, 1
  %sge = icmp sge i128 %sub11, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define i128 @div_ceil(i128 %0, i128 %1) {
entry:
  %mod = srem i128 %0, %1
  %eq = icmp eq i128 %mod, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %sdiv = sdiv i128 %0, %1
  br label %if.exit

if.false:                                         ; preds = %entry
  %sdiv1 = sdiv i128 %0, %1
  %add = add i128 %sdiv1, 1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret i128 %add
}

define [100 x i128] @long_sub(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add55, %loop.latch ]
  %eq = icmp eq i128 %loop.iter, 0
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a5 = load i128, i128* %array_ptr, align 4
  %array_ptr6 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b7 = load i128, i128* %array_ptr6, align 4
  %sge = icmp sge i128 %a5, %b7

if.false:                                         ; preds = %loop.body
  %array_ptr22 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a23 = load i128, i128* %array_ptr22, align 4
  %array_ptr24 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b25 = load i128, i128* %array_ptr24, align 4
  %sub26 = sub i128 %loop.iter, 1
  %array_ptr27 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %sub26
  %borrow28 = load i128, i128* %array_ptr27, align 4
  %add29 = add i128 %b25, %borrow28
  %sge30 = icmp sge i128 %a23, %add29

if.exit:                                          ; preds = %if.exit21, %if.exit4
  br i1 %sge, label %if.true2, label %if.false3

if.true2:                                         ; preds = %if.exit
  %array_ptr8 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a9 = load i128, i128* %array_ptr8, align 4
  %array_ptr10 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b11 = load i128, i128* %array_ptr10, align 4
  %sub = sub i128 %a9, %b11
  %diff = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %sub, i128* %diff, align 4
  %borrow = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 0, i128* %borrow, align 4
  br label %if.exit4

if.false3:                                        ; preds = %if.exit
  %array_ptr12 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a13 = load i128, i128* %array_ptr12, align 4
  %array_ptr14 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b15 = load i128, i128* %array_ptr14, align 4
  %sub16 = sub i128 %a13, %b15
  %lshift = shl i128 1, %0
  %add = add i128 %sub16, %lshift
  %diff17 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %add, i128* %diff17, align 4
  %borrow18 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 1, i128* %borrow18, align 4
  br label %if.exit4

if.exit4:                                         ; preds = %if.false3, %if.true2
  br label %if.exit
  br i1 %sge30, label %if.true19, label %if.false20

if.true19:                                        ; preds = %if.exit4
  %array_ptr31 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a32 = load i128, i128* %array_ptr31, align 4
  %array_ptr33 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b34 = load i128, i128* %array_ptr33, align 4
  %sub35 = sub i128 %a32, %b34
  %sub36 = sub i128 %loop.iter, 1
  %array_ptr37 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %sub36
  %borrow38 = load i128, i128* %array_ptr37, align 4
  %sub39 = sub i128 %sub35, %borrow38
  %diff40 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %sub39, i128* %diff40, align 4
  %borrow41 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 0, i128* %borrow41, align 4
  br label %if.exit21

if.false20:                                       ; preds = %if.exit4
  %lshift42 = shl i128 1, %0
  %array_ptr43 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a44 = load i128, i128* %array_ptr43, align 4
  %add45 = add i128 %lshift42, %a44
  %array_ptr46 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b47 = load i128, i128* %array_ptr46, align 4
  %sub48 = sub i128 %add45, %b47
  %sub49 = sub i128 %loop.iter, 1
  %array_ptr50 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %sub49
  %borrow51 = load i128, i128* %array_ptr50, align 4
  %sub52 = sub i128 %sub48, %borrow51
  %diff53 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %sub52, i128* %diff53, align 4
  %borrow54 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 1, i128* %borrow54, align 4
  br label %if.exit21

if.exit21:                                        ; preds = %if.false20, %if.true19
  br label %if.exit

loop.latch:                                       ; preds = %loop.body
  %add55 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add55, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [100 x i128]* %uniform_array
}

define i128 @isNegative(i128 %0) {
entry:
  %sgt = icmp sgt i128 %0, -143421864344314467536934857361548378112
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 1, i128 0)
  ret i128 %inline_switch
}

define [100 x i128] @long_scalar_mult(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch15, %loop.exit
  %loop.iter2 = phi i128 [ 0, %loop.exit ], [ %add16, %loop.latch15 ]
  %array_ptr = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter2
  %out3 = load i128, i128* %array_ptr, align 4
  %array_ptr4 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter2
  %b5 = load i128, i128* %array_ptr4, align 4
  %mul = mul i128 %2, %b5
  %add6 = add i128 %out3, %mul
  %lshift = shl i128 1, %0
  %mod = srem i128 %add6, %lshift
  %out7 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter2
  store i128 %mod, i128* %out7, align 4
  %add8 = add i128 %loop.iter2, 1
  %array_ptr9 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %add8
  %out10 = load i128, i128* %array_ptr9, align 4
  %lshift11 = shl i128 1, %0
  %sdiv = sdiv i128 %add6, %lshift11
  %add12 = add i128 %out10, %sdiv
  %add13 = add i128 %loop.iter2, 1
  %out14 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %add13
  store i128 %add12, i128* %out14, align 4
  br label %loop.latch15

loop.latch15:                                     ; preds = %loop.body1
  %add16 = add i128 %loop.iter2, 1
  %slt17 = icmp slt i128 %add16, %1
  br i1 %slt17, label %loop.body1, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch15
  ret [100 x i128]* %uniform_array
}

define [100 x i128] @prod(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %b = alloca [0 x i128], align 8
  %a = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add29, %loop.latch28 ]
  %prod_val = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %prod_val, align 4
  %slt = icmp slt i128 %loop.iter, %1
  br i1 %slt, label %if.true, label %if.false
  br label %loop.latch28

if.true:                                          ; preds = %loop.body

if.false:                                         ; preds = %loop.body
  %sub10 = sub i128 %loop.iter, %1
  %add11 = add i128 %sub10, 1

if.exit:                                          ; preds = %loop.exit27, %loop.exit
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %if.exit
  %loop.iter2 = phi i128 [ 0, %if.exit ], [ %add9, %loop.latch ]
  %array_ptr = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  %prod_val3 = load i128, i128* %array_ptr, align 4
  %array_ptr4 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter2
  %a5 = load i128, i128* %array_ptr4, align 4
  %sub = sub i128 %loop.iter, %loop.iter2
  %array_ptr6 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %sub
  %b7 = load i128, i128* %array_ptr6, align 4
  %mul = mul i128 %a5, %b7
  %add = add i128 %prod_val3, %mul
  %prod_val8 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %add, i128* %prod_val8, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body1
  %add9 = add i128 %loop.iter2, 1
  %sle = icmp sle i128 %add9, %loop.iter
  br i1 %sle, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch24, %loop.exit
  %loop.iter13 = phi i128 [ %add11, %loop.exit ], [ %add25, %loop.latch24 ]
  %array_ptr14 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  %prod_val15 = load i128, i128* %array_ptr14, align 4
  %array_ptr16 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter13
  %a17 = load i128, i128* %array_ptr16, align 4
  %sub18 = sub i128 %loop.iter, %loop.iter13
  %array_ptr19 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %sub18
  %b20 = load i128, i128* %array_ptr19, align 4
  %mul21 = mul i128 %a17, %b20
  %add22 = add i128 %prod_val15, %mul21
  %prod_val23 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 %add22, i128* %prod_val23, align 4
  br label %loop.latch24

loop.latch24:                                     ; preds = %loop.body12
  %add25 = add i128 %loop.iter13, 1
  %slt26 = icmp slt i128 %add25, %1
  br i1 %slt26, label %loop.body12, label %loop.exit27

loop.exit27:                                      ; preds = %loop.latch24
  br label %if.exit

loop.latch28:                                     ; preds = %loop.body
  %add29 = add i128 %loop.iter, 1
  %mul30 = mul i128 2, %1
  %sub31 = sub i128 %mul30, 1
  %slt32 = icmp slt i128 %add29, %sub31
  br i1 %slt32, label %loop.body, label %loop.exit33

loop.exit33:                                      ; preds = %loop.latch28
  %uniform_array34 = alloca [100 x i128], align 8
  %uniform_array35 = alloca [100 x [3 x i128]], align 8
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch40, %loop.exit33
  %loop.iter37 = phi i128 [ 0, %loop.exit33 ], [ %add41, %loop.latch40 ]
  %array_ptr38 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter37
  %prod_val39 = load i128, i128* %array_ptr38, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val39, i128 %0, i128 %0, i128 %0)
  %split = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter37
  store [3 x i128]* %call, [3 x i128]* %split, align 8
  br label %loop.latch40

loop.latch40:                                     ; preds = %loop.body36
  %add41 = add i128 %loop.iter37, 1
  %mul42 = mul i128 2, %1
  %sub43 = sub i128 %mul42, 1
  %slt44 = icmp slt i128 %add41, %sub43
  br i1 %slt44, label %loop.body36, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch40
  %uniform_array46 = alloca [100 x i128], align 8
  %carry = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 0
  store i128 0, i128* %carry, align 4
  %array_ptr47 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 0, i128 0
  %split48 = load i128, i128* %array_ptr47, align 4
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 0
  store i128 %split48, i128* %out, align 4
  %mul52 = mul i128 2, %1
  %sub53 = sub i128 %mul52, 1
  %sgt = icmp sgt i128 %sub53, 1
  br i1 %sgt, label %if.true49, label %if.false50

if.true49:                                        ; preds = %loop.exit45
  %array_ptr54 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 0, i128 1
  %split55 = load i128, i128* %array_ptr54, align 4
  %array_ptr56 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 1, i128 0
  %split57 = load i128, i128* %array_ptr56, align 4
  %add58 = add i128 %split55, %split57
  %call59 = call [2 x i128]* @SplitFn(i128 %add58, i128 %0, i128 %0)
  %array_ptr60 = getelementptr inbounds [2 x i128], [2 x i128]* %call59, i128 0, i128 0
  %sumAndCarry = load i128, i128* %array_ptr60, align 4
  %out61 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 1
  store i128 %sumAndCarry, i128* %out61, align 4
  %array_ptr62 = getelementptr inbounds [2 x i128], [2 x i128]* %call59, i128 0, i128 1
  %sumAndCarry63 = load i128, i128* %array_ptr62, align 4
  %carry64 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 1
  store i128 %sumAndCarry63, i128* %carry64, align 4
  br label %if.exit51

if.false50:                                       ; preds = %loop.exit45
  br label %if.exit51

if.exit51:                                        ; preds = %if.false50, %if.true49
  %mul68 = mul i128 2, %1
  %sub69 = sub i128 %mul68, 1
  %sgt70 = icmp sgt i128 %sub69, 2
  br i1 %sgt70, label %if.true65, label %if.false66

if.true65:                                        ; preds = %if.exit51

if.false66:                                       ; preds = %if.exit51
  br label %if.exit67

if.exit67:                                        ; preds = %if.false66, %loop.exit99
  br label %loop.body71
  ret [100 x i128]* %uniform_array34

loop.body71:                                      ; preds = %loop.latch94, %if.exit67
  %loop.iter72 = phi i128 [ 2, %if.exit67 ], [ %add95, %loop.latch94 ]
  %array_ptr73 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter72, i128 0
  %split74 = load i128, i128* %array_ptr73, align 4
  %sub75 = sub i128 %loop.iter72, 1
  %array_ptr76 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub75, i128 1
  %split77 = load i128, i128* %array_ptr76, align 4
  %add78 = add i128 %split74, %split77
  %sub79 = sub i128 %loop.iter72, 2
  %array_ptr80 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub79, i128 2
  %split81 = load i128, i128* %array_ptr80, align 4
  %add82 = add i128 %add78, %split81
  %sub83 = sub i128 %loop.iter72, 1
  %array_ptr84 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub83
  %carry85 = load i128, i128* %array_ptr84, align 4
  %add86 = add i128 %add82, %carry85
  %call87 = call [2 x i128]* @SplitFn(i128 %add86, i128 %0, i128 %0)
  %array_ptr88 = getelementptr inbounds [2 x i128], [2 x i128]* %call87, i128 0, i128 0
  %sumAndCarry89 = load i128, i128* %array_ptr88, align 4
  %out90 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %loop.iter72
  store i128 %sumAndCarry89, i128* %out90, align 4
  %array_ptr91 = getelementptr inbounds [2 x i128], [2 x i128]* %call87, i128 0, i128 1
  %sumAndCarry92 = load i128, i128* %array_ptr91, align 4
  %carry93 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %loop.iter72
  store i128 %sumAndCarry92, i128* %carry93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body71
  %add95 = add i128 %loop.iter72, 1
  %mul96 = mul i128 2, %1
  %sub97 = sub i128 %mul96, 1
  %slt98 = icmp slt i128 %add95, %sub97
  br i1 %slt98, label %loop.body71, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch94
  %mul100 = mul i128 2, %1
  %sub101 = sub i128 %mul100, 2
  %array_ptr102 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub101, i128 1
  %split103 = load i128, i128* %array_ptr102, align 4
  %mul104 = mul i128 2, %1
  %sub105 = sub i128 %mul104, 3
  %array_ptr106 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub105, i128 2
  %split107 = load i128, i128* %array_ptr106, align 4
  %add108 = add i128 %split103, %split107
  %mul109 = mul i128 2, %1
  %sub110 = sub i128 %mul109, 2
  %array_ptr111 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub110
  %carry112 = load i128, i128* %array_ptr111, align 4
  %add113 = add i128 %add108, %carry112
  %mul114 = mul i128 2, %1
  %sub115 = sub i128 %mul114, 1
  %out116 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %sub115
  store i128 %add113, i128* %out116, align 4
  br label %if.exit67
}

define i128 @log_ceil(i128 %0) {
entry:
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %eq = icmp eq i128 %0, 0
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body
  ret i128 %loop.iter
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %sdiv = sdiv i128 %0, 2

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define [100 x i128] @splitOverflowedRegister(i128 %0, i128 %1, i128 %2) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call = call i128 @div_ceil(i128 %0, i128 %1)
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch4, %loop.exit
  %loop.iter2 = phi i128 [ 0, %loop.exit ], [ %add5, %loop.latch4 ]
  %lshift = shl i128 1, %1
  %mod = srem i128 %2, %lshift
  %out3 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter2
  store i128 %mod, i128* %out3, align 4
  %rshift = lshr i128 %2, %1
  br label %loop.latch4

loop.latch4:                                      ; preds = %loop.body1
  %add5 = add i128 %loop.iter2, 1
  %slt6 = icmp slt i128 %add5, %call
  br i1 %slt6, label %loop.body1, label %loop.exit7

loop.exit7:                                       ; preds = %loop.latch4
  ret [100 x i128]* %uniform_array
}

define [100 x i128] @getProperRepresentation(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %in = alloca [0 x i128], align 8
  %mod = srem i128 %0, %1
  %eq = icmp eq i128 %mod, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %sdiv = sdiv i128 %0, %1
  br label %if.exit

if.false:                                         ; preds = %entry
  %sdiv1 = sdiv i128 %0, %1
  %add = add i128 %sdiv1, 1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %uniform_array = alloca [100 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch27, %if.exit
  %loop.iter = phi i128 [ 0, %if.exit ], [ %add28, %loop.latch27 ]
  br label %loop.body2
  br label %loop.latch27

loop.body2:                                       ; preds = %loop.latch, %loop.body
  %loop.iter3 = phi i128 [ 0, %loop.body ], [ %add4, %loop.latch ]
  %pieces = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter3
  store i128 0, i128* %pieces, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body2
  %add4 = add i128 %loop.iter3, 1
  %slt = icmp slt i128 %add4, 100
  br i1 %slt, label %loop.body2, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in8 = load i128, i128* %array_ptr, align 4
  %call = call i128 @isNegative(i128 %in8)
  %eq9 = icmp eq i128 %call, 1
  br i1 %eq9, label %if.true5, label %if.false6

if.true5:                                         ; preds = %loop.exit
  %array_ptr10 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in11 = load i128, i128* %array_ptr10, align 4
  %mul = mul i128 -1, %in11
  %call12 = call [100 x i128] @splitOverflowedRegister(i128 %0, i128 %1, i128 %mul)
  %negPieces = alloca [100 x i128], align 8
  store [100 x i128] %call12, [100 x i128]* %negPieces, align 4

if.false6:                                        ; preds = %loop.exit
  %array_ptr23 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in24 = load i128, i128* %array_ptr23, align 4
  %call25 = call [100 x i128] @splitOverflowedRegister(i128 %0, i128 %1, i128 %in24)
  %pieces26 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter
  store [100 x i128] %call25, [100 x i128]* %pieces26, align 4
  br label %if.exit7

if.exit7:                                         ; preds = %if.false6, %loop.exit22
  br label %loop.body13

loop.body13:                                      ; preds = %loop.latch19, %if.exit7
  %loop.iter14 = phi i128 [ 0, %if.exit7 ], [ %add20, %loop.latch19 ]
  %array_ptr15 = getelementptr inbounds [100 x i128], [100 x i128]* %negPieces, i128 0, i128 %loop.iter14
  %negPieces16 = load i128, i128* %array_ptr15, align 4
  %mul17 = mul i128 -1, %negPieces16
  %pieces18 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter14
  store i128 %mul17, i128* %pieces18, align 4
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.body13
  %add20 = add i128 %loop.iter14, 1
  %slt21 = icmp slt i128 %add20, %add
  br i1 %slt21, label %loop.body13, label %loop.exit22

loop.exit22:                                      ; preds = %loop.latch19
  br label %if.exit7

loop.latch27:                                     ; preds = %loop.body
  %add28 = add i128 %loop.iter, 1
  %slt29 = icmp slt i128 %add28, %2
  br i1 %slt29, label %loop.body, label %loop.exit30

loop.exit30:                                      ; preds = %loop.latch27
  %uniform_array31 = alloca [100 x i128], align 8
  %uniform_array32 = alloca [100 x i128], align 8
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch35, %loop.exit30
  %loop.iter34 = phi i128 [ 0, %loop.exit30 ], [ %add36, %loop.latch35 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array31, i128 0, i128 %loop.iter34
  store i128 0, i128* %out, align 4
  %carries = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array32, i128 0, i128 %loop.iter34
  store i128 0, i128* %carries, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body33
  %add36 = add i128 %loop.iter34, 1
  %slt37 = icmp slt i128 %add36, 100
  br i1 %slt37, label %loop.body33, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch35
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch82, %loop.exit38
  %loop.iter40 = phi i128 [ 0, %loop.exit38 ], [ %add83, %loop.latch82 ]
  %sgt = icmp sgt i128 %loop.iter40, 0
  br i1 %sgt, label %if.true41, label %if.false42
  br label %loop.latch82

if.true41:                                        ; preds = %loop.body39
  %sub = sub i128 %loop.iter40, 1
  %array_ptr44 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array32, i128 0, i128 %sub
  %carries45 = load i128, i128* %array_ptr44, align 4
  br label %if.exit43

if.false42:                                       ; preds = %loop.body39
  br label %if.exit43

if.exit43:                                        ; preds = %if.false42, %if.true41
  %sge = icmp sge i128 %loop.iter40, %add
  br i1 %sge, label %if.true46, label %if.false47

if.true46:                                        ; preds = %if.exit43
  %sub49 = sub i128 %loop.iter40, %add
  %add50 = add i128 %sub49, 1
  br label %if.exit48

if.false47:                                       ; preds = %if.exit43
  br label %if.exit48

if.exit48:                                        ; preds = %if.false47, %if.true46
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch61, %if.exit48
  %loop.iter52 = phi i128 [ %add50, %if.exit48 ], [ %add62, %loop.latch61 ]
  %slt56 = icmp slt i128 %loop.iter52, %2
  br i1 %slt56, label %if.true53, label %if.false54
  br label %loop.latch61

if.true53:                                        ; preds = %loop.body51
  %sub57 = sub i128 %loop.iter40, %loop.iter52
  %array_ptr58 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter52, i128 %sub57
  %pieces59 = load i128, i128* %array_ptr58, align 4
  %add60 = add i128 %carries45, %pieces59
  br label %if.exit55

if.false54:                                       ; preds = %loop.body51
  br label %if.exit55

if.exit55:                                        ; preds = %if.false54, %if.true53

loop.latch61:                                     ; preds = %loop.body51
  %add62 = add i128 %loop.iter52, 1
  %sle = icmp sle i128 %add62, %loop.iter40
  br i1 %sle, label %loop.body51, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch61
  %call67 = call i128 @isNegative(i128 %add60)
  %eq68 = icmp eq i128 %call67, 1
  br i1 %eq68, label %if.true64, label %if.false65

if.true64:                                        ; preds = %loop.exit63
  %mul69 = mul i128 -1, %add60
  %lshift = shl i128 1, %1
  %lshift70 = shl i128 1, %1
  %mod71 = srem i128 %mul69, %lshift70
  %sub72 = sub i128 %lshift, %mod71
  %out73 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array31, i128 0, i128 %loop.iter40
  store i128 %sub72, i128* %out73, align 4
  %rshift = lshr i128 %mul69, %1
  %mul74 = mul i128 -1, %rshift
  %sub75 = sub i128 %mul74, 1
  %carries76 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array32, i128 0, i128 %loop.iter40
  store i128 %sub75, i128* %carries76, align 4
  br label %if.exit66

if.false65:                                       ; preds = %loop.exit63
  %lshift77 = shl i128 1, %1
  %mod78 = srem i128 %add60, %lshift77
  %out79 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array31, i128 0, i128 %loop.iter40
  store i128 %mod78, i128* %out79, align 4
  %rshift80 = lshr i128 %add60, %1
  %carries81 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array32, i128 0, i128 %loop.iter40
  store i128 %rshift80, i128* %carries81, align 4
  br label %if.exit66

if.exit66:                                        ; preds = %if.false65, %if.true64

loop.latch82:                                     ; preds = %loop.body39
  %add83 = add i128 %loop.iter40, 1
  %add84 = add i128 %2, %add
  %slt85 = icmp slt i128 %add83, %add84
  br i1 %slt85, label %loop.body39, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch82
  ret [100 x i128]* %uniform_array31
}

define i128 @short_div_norm(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %1
  %a1 = load i128, i128* %array_ptr, align 4
  %lshift = shl i128 1, %0
  %mul = mul i128 %a1, %lshift
  %sub = sub i128 %1, 1
  %array_ptr2 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %sub
  %a3 = load i128, i128* %array_ptr2, align 4
  %add = add i128 %mul, %a3
  %sub4 = sub i128 %1, 1
  %array_ptr5 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %sub4
  %b6 = load i128, i128* %array_ptr5, align 4
  %sdiv = sdiv i128 %add, %b6
  %lshift7 = shl i128 1, %0
  %sub8 = sub i128 %lshift7, 1
  %sgt = icmp sgt i128 %sdiv, %sub8
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %lshift9 = shl i128 1, %0
  %sub10 = sub i128 %lshift9, 1
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %call = call [100 x i128] @long_scalar_mult(i128 %0, i128 %1, i128 %sub10, [0 x i128]* %b)
  %mult = alloca [100 x i128], align 8
  store [100 x i128] %call, [100 x i128]* %mult, align 4
  %add14 = add i128 %1, 1
  %call15 = call i128 @long_gt(i128 %0, i128 %add14, [100 x i128]* %mult, [0 x i128]* %a)
  %eq = icmp eq i128 %call15, 1
  br i1 %eq, label %if.true11, label %if.false12

if.true11:                                        ; preds = %if.exit
  %add16 = add i128 %1, 1
  %call17 = call [100 x i128] @long_sub(i128 %0, i128 %add16, [100 x i128]* %mult, [0 x i128]* %b)
  store [100 x i128] %call17, [100 x i128]* %mult, align 4
  %add21 = add i128 %1, 1
  %call22 = call i128 @long_gt(i128 %0, i128 %add21, [100 x i128]* %mult, [0 x i128]* %a)
  %eq23 = icmp eq i128 %call22, 1

if.false12:                                       ; preds = %if.exit
  ret i128 %sub10
  br label %if.exit13

if.exit13:                                        ; preds = %if.false12, %if.exit20
  br i1 %eq23, label %if.true18, label %if.false19

if.true18:                                        ; preds = %if.exit13
  %sub24 = sub i128 %sub10, 2
  ret i128 %sub24
  br label %if.exit20

if.false19:                                       ; preds = %if.exit13
  %sub25 = sub i128 %sub10, 1
  ret i128 %sub25
  br label %if.exit20

if.exit20:                                        ; preds = %if.false19, %if.true18
  br label %if.exit13
}

define i128 @short_div(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %b = alloca [0 x i128], align 8
  %lshift = shl i128 1, %0
  %sub = sub i128 %1, 1
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %sub
  %b1 = load i128, i128* %array_ptr, align 4
  %add = add i128 1, %b1
  %sdiv = sdiv i128 %lshift, %add
  %add2 = add i128 %1, 1
  %call = call [100 x i128] @long_scalar_mult(i128 %0, i128 %add2, i128 %sdiv, i128 %2)
  %norm_a = alloca [100 x i128], align 8
  store [100 x i128] %call, [100 x i128]* %norm_a, align 4
  %call3 = call [100 x i128] @long_scalar_mult(i128 %0, i128 %1, i128 %sdiv, [0 x i128]* %b)
  %norm_b = alloca [100 x i128], align 8
  store [100 x i128] %call3, [100 x i128]* %norm_b, align 4
  %array_ptr4 = getelementptr inbounds [100 x i128], [100 x i128]* %norm_b, i128 0, i128 %1
  %norm_b5 = load i128, i128* %array_ptr4, align 4
  %ne = icmp ne i128 %norm_b5, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add6 = add i128 %1, 1
  %call7 = call i128 @short_div_norm(i128 %0, i128 %add6, [100 x i128]* %norm_a, [100 x i128]* %norm_b)
  br label %if.exit

if.false:                                         ; preds = %entry
  %call8 = call i128 @short_div_norm(i128 %0, i128 %1, [100 x i128]* %norm_a, [100 x i128]* %norm_b)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret i128 %call8
}

define [2 x [100 x i128]] @long_div(i128 %0, i128 %1, i128 %2, [0 x i128]* %3, i128 %4) {
entry:
  %a = alloca [0 x i128], align 8
  %uniform_array = alloca [2 x [100 x i128]], align 8
  %uniform_array1 = alloca [200 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a2 = load i128, i128* %array_ptr, align 4
  %remainder = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 %a2, i128* %remainder, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %add3 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add3
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array4 = alloca [200 x i128], align 8
  %uniform_array5 = alloca [200 x i128], align 8
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch55, %loop.exit
  %loop.iter7 = phi i128 [ %2, %loop.exit ], [ %sub56, %loop.latch55 ]
  %eq = icmp eq i128 %loop.iter7, %2
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch55

if.true:                                          ; preds = %loop.body6
  %dividend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %1
  store i128 0, i128* %dividend, align 4
  %sub = sub i128 %1, 1

if.false:                                         ; preds = %loop.body6

if.exit:                                          ; preds = %loop.exit26, %loop.exit16
  br label %loop.body8
  %call = call i128 @short_div(i128 %0, i128 %1, [200 x i128]* %uniform_array5, i128 %4)
  %out = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  store i128 %call, i128* %out, align 4
  %array_ptr27 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  %out28 = load i128, i128* %array_ptr27, align 4
  %call29 = call [100 x i128] @long_scalar_mult(i128 %0, i128 %1, i128 %out28, i128 %4)
  %mult_shift = alloca [100 x i128], align 8
  store [100 x i128] %call29, [100 x i128]* %mult_shift, align 4
  %uniform_array30 = alloca [200 x i128], align 8

loop.body8:                                       ; preds = %loop.latch14, %if.exit
  %loop.iter9 = phi i128 [ %sub, %if.exit ], [ %sub15, %loop.latch14 ]
  %add10 = add i128 %loop.iter9, %2
  %array_ptr11 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add10
  %remainder12 = load i128, i128* %array_ptr11, align 4
  %dividend13 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter9
  store i128 %remainder12, i128* %dividend13, align 4
  br label %loop.latch14

loop.latch14:                                     ; preds = %loop.body8
  %sub15 = sub i128 %loop.iter9, 1
  %sge = icmp sge i128 %sub15, 0
  br i1 %sge, label %loop.body8, label %loop.exit16

loop.exit16:                                      ; preds = %loop.latch14
  br label %if.exit
  br label %loop.body17

loop.body17:                                      ; preds = %loop.latch23, %loop.exit16
  %loop.iter18 = phi i128 [ %1, %loop.exit16 ], [ %sub24, %loop.latch23 ]
  %add19 = add i128 %loop.iter18, %loop.iter7
  %array_ptr20 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add19
  %remainder21 = load i128, i128* %array_ptr20, align 4
  %dividend22 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter18
  store i128 %remainder21, i128* %dividend22, align 4
  br label %loop.latch23

loop.latch23:                                     ; preds = %loop.body17
  %sub24 = sub i128 %loop.iter18, 1
  %sge25 = icmp sge i128 %sub24, 0
  br i1 %sge25, label %loop.body17, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch23
  br label %if.exit
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch33, %loop.exit26
  %loop.iter32 = phi i128 [ 0, %loop.exit26 ], [ %add34, %loop.latch33 ]
  %subtrahend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array30, i128 0, i128 %loop.iter32
  store i128 0, i128* %subtrahend, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body31
  %add34 = add i128 %loop.iter32, 1
  %add35 = add i128 %2, %1
  %slt36 = icmp slt i128 %add34, %add35
  br i1 %slt36, label %loop.body31, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch33
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch50, %loop.exit37
  %loop.iter39 = phi i128 [ 0, %loop.exit37 ], [ %add51, %loop.latch50 ]
  %add43 = add i128 %loop.iter7, %loop.iter39
  %add44 = add i128 %2, %1
  %slt45 = icmp slt i128 %add43, %add44
  br i1 %slt45, label %if.true40, label %if.false41
  br label %loop.latch50

if.true40:                                        ; preds = %loop.body38
  %array_ptr46 = getelementptr inbounds [100 x i128], [100 x i128]* %mult_shift, i128 0, i128 %loop.iter39
  %mult_shift47 = load i128, i128* %array_ptr46, align 4
  %add48 = add i128 %loop.iter7, %loop.iter39
  %subtrahend49 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array30, i128 0, i128 %add48
  store i128 %mult_shift47, i128* %subtrahend49, align 4
  br label %if.exit42

if.false41:                                       ; preds = %loop.body38
  br label %if.exit42

if.exit42:                                        ; preds = %if.false41, %if.true40

loop.latch50:                                     ; preds = %loop.body38
  %add51 = add i128 %loop.iter39, 1
  %sle = icmp sle i128 %add51, %1
  br i1 %sle, label %loop.body38, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch50
  %add53 = add i128 %2, %1
  %call54 = call [100 x i128] @long_sub(i128 %0, i128 %add53, [200 x i128]* %uniform_array1, [200 x i128]* %uniform_array30)
  store [100 x i128] %call54, [200 x i128]* %uniform_array1, align 4

loop.latch55:                                     ; preds = %loop.body6
  %sub56 = sub i128 %loop.iter7, 1
  %sge57 = icmp sge i128 %sub56, 0
  br i1 %sge57, label %loop.body6, label %loop.exit58

loop.exit58:                                      ; preds = %loop.latch55
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch64, %loop.exit58
  %loop.iter60 = phi i128 [ 0, %loop.exit58 ], [ %add65, %loop.latch64 ]
  %array_ptr61 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %loop.iter60
  %remainder62 = load i128, i128* %array_ptr61, align 4
  %out63 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %loop.iter60
  store i128 %remainder62, i128* %out63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body59
  %add65 = add i128 %loop.iter60, 1
  %slt66 = icmp slt i128 %add65, %1
  br i1 %slt66, label %loop.body59, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch64
  %out68 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out68, align 4
  ret [2 x [100 x i128]]* %uniform_array
}

define [100 x i128] @long_sub_mod_p(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %call = call i128 @long_gt(i128 %0, i128 %1, i128 %2, i128 %3)
  %uniform_array = alloca [100 x i128], align 8
  br i128 %call, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call1 = call [100 x i128] @long_sub(i128 %0, i128 %1, i128 %2, i128 %3)
  store [100 x i128] %call1, [100 x i128]* %uniform_array, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %call2 = call [100 x i128] @long_sub(i128 %0, i128 %1, i128 %3, i128 %2)
  store [100 x i128] %call2, [100 x i128]* %uniform_array, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %uniform_array3 = alloca [2 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.exit
  %loop.iter = phi i128 [ %1, %if.exit ], [ %add, %loop.latch ]
  %tmp = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %tmp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %mul = mul i128 2, %1
  %slt = icmp slt i128 %add, %mul
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call4 = call [2 x [100 x i128]] @long_div(i128 %0, i128 %1, i128 %1, [100 x i128]* %uniform_array, i128 %4)
  store [2 x [100 x i128]] %call4, [2 x [100 x i128]]* %uniform_array3, align 4
  %eq = icmp eq i128 %call, 0
  br i1 %eq, label %if.true5, label %if.false6

if.true5:                                         ; preds = %loop.exit
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array3, i128 0, i128 1
  %out = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %call8 = call [100 x i128] @long_sub(i128 %0, i128 %1, i128 %4, [100 x i128] %out)
  store [100 x i128] %call8, [100 x i128]* %uniform_array, align 4
  br label %if.exit7

if.false6:                                        ; preds = %loop.exit
  br label %if.exit7

if.exit7:                                         ; preds = %if.false6, %if.true5
  ret [100 x i128]* %uniform_array
}

define [100 x i128] @mod_exp(i128 %0, i128 %1, i128 %2, i128 %3, [0 x i128]* %4) {
entry:
  %e = alloca [0 x i128], align 8
  %uniform_array = alloca [500 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch5, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add6, %loop.latch5 ]
  br label %loop.body1
  br label %loop.latch5

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %loop.iter2 = phi i128 [ 0, %loop.body ], [ %add4, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %e, i128 0, i128 %loop.iter
  %e3 = load i128, i128* %array_ptr, align 4
  %rshift = lshr i128 %e3, %loop.iter2
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %loop.iter
  %add = add i128 %loop.iter2, %mul
  %eBits = getelementptr inbounds [500 x i128], [500 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body1
  %add4 = add i128 %loop.iter2, 1
  %slt = icmp slt i128 %add4, %0
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch

loop.latch5:                                      ; preds = %loop.body
  %add6 = add i128 %loop.iter, 1
  %slt7 = icmp slt i128 %add6, %1
  br i1 %slt7, label %loop.body, label %loop.exit8

loop.exit8:                                       ; preds = %loop.latch5
  %uniform_array9 = alloca [100 x i128], align 8
  br label %loop.body10

loop.body10:                                      ; preds = %loop.latch12, %loop.exit8
  %loop.iter11 = phi i128 [ 0, %loop.exit8 ], [ %add13, %loop.latch12 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 %loop.iter11
  store i128 0, i128* %out, align 4
  br label %loop.latch12

loop.latch12:                                     ; preds = %loop.body10
  %add13 = add i128 %loop.iter11, 1
  %slt14 = icmp slt i128 %add13, 100
  br i1 %slt14, label %loop.body10, label %loop.exit15

loop.exit15:                                      ; preds = %loop.latch12
  %out16 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 0
  store i128 1, i128* %out16, align 4
  %mul17 = mul i128 %1, %0
  %sub = sub i128 %mul17, 1
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch35, %loop.exit15
  %loop.iter19 = phi i128 [ %sub, %loop.exit15 ], [ %sub36, %loop.latch35 ]
  %array_ptr20 = getelementptr inbounds [500 x i128], [500 x i128]* %uniform_array, i128 0, i128 %loop.iter19
  %eBits21 = load i128, i128* %array_ptr20, align 4
  %eq = icmp eq i128 %eBits21, 1
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch35

if.true:                                          ; preds = %loop.body18
  %uniform_array22 = alloca [200 x i128], align 8
  %call = call [100 x i128] @prod(i128 %0, i128 %1, [100 x i128]* %uniform_array9, i128 %2)
  store [100 x i128] %call, [200 x i128]* %uniform_array22, align 4
  %uniform_array23 = alloca [2 x [100 x i128]], align 8
  %call24 = call [2 x [100 x i128]] @long_div(i128 %0, i128 %1, i128 %1, [200 x i128]* %uniform_array22, i128 %3)
  store [2 x [100 x i128]] %call24, [2 x [100 x i128]]* %uniform_array23, align 4
  %array_ptr25 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array23, i128 0, i128 1
  %temp2 = load [100 x i128], [100 x i128]* %array_ptr25, align 4
  store [100 x i128] %temp2, [100 x i128]* %uniform_array9, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body18
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %sgt = icmp sgt i128 %loop.iter19, 0
  br i1 %sgt, label %if.true26, label %if.false27

if.true26:                                        ; preds = %if.exit
  %uniform_array29 = alloca [200 x i128], align 8
  %call30 = call [100 x i128] @prod(i128 %0, i128 %1, [100 x i128]* %uniform_array9, [100 x i128]* %uniform_array9)
  store [100 x i128] %call30, [200 x i128]* %uniform_array29, align 4
  %uniform_array31 = alloca [2 x [100 x i128]], align 8
  %call32 = call [2 x [100 x i128]] @long_div(i128 %0, i128 %1, i128 %1, [200 x i128]* %uniform_array29, i128 %3)
  store [2 x [100 x i128]] %call32, [2 x [100 x i128]]* %uniform_array31, align 4
  %array_ptr33 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array31, i128 0, i128 1
  %temp234 = load [100 x i128], [100 x i128]* %array_ptr33, align 4
  store [100 x i128] %temp234, [100 x i128]* %uniform_array9, align 4
  br label %if.exit28

if.false27:                                       ; preds = %if.exit
  br label %if.exit28

if.exit28:                                        ; preds = %if.false27, %if.true26

loop.latch35:                                     ; preds = %loop.body18
  %sub36 = sub i128 %loop.iter19, 1
  %sge = icmp sge i128 %sub36, 0
  br i1 %sge, label %loop.body18, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch35
  ret [100 x i128]* %uniform_array9
}

define [100 x i128] @mod_inv(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %p = alloca [0 x i128], align 8
  %a = alloca [0 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a1 = load i128, i128* %array_ptr, align 4
  %ne = icmp ne i128 %a1, 0
  br i1 %ne, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br i1 false, label %if.true2, label %if.false3

if.true2:                                         ; preds = %loop.exit
  %uniform_array = alloca [100 x i128], align 8

if.false3:                                        ; preds = %loop.exit
  br label %if.exit4

if.exit4:                                         ; preds = %if.false3, %loop.exit10
  br label %loop.body5
  %uniform_array11 = alloca [100 x i128], align 8

loop.body5:                                       ; preds = %loop.latch7, %if.exit4
  %loop.iter6 = phi i128 [ 0, %if.exit4 ], [ %add8, %loop.latch7 ]
  %ret = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter6
  store i128 0, i128* %ret, align 4
  br label %loop.latch7

loop.latch7:                                      ; preds = %loop.body5
  %add8 = add i128 %loop.iter6, 1
  %slt9 = icmp slt i128 %add8, %1
  br i1 %slt9, label %loop.body5, label %loop.exit10

loop.exit10:                                      ; preds = %loop.latch7
  ret [100 x i128]* %uniform_array
  br label %if.exit4
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch21, %loop.exit10
  %loop.iter13 = phi i128 [ 0, %loop.exit10 ], [ %add22, %loop.latch21 ]
  %slt17 = icmp slt i128 %loop.iter13, %1
  br i1 %slt17, label %if.true14, label %if.false15
  br label %loop.latch21

if.true14:                                        ; preds = %loop.body12
  %array_ptr18 = getelementptr inbounds [0 x i128], [0 x i128]* %p, i128 0, i128 %loop.iter13
  %p19 = load i128, i128* %array_ptr18, align 4
  %pCopy = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 %p19, i128* %pCopy, align 4
  br label %if.exit16

if.false15:                                       ; preds = %loop.body12
  %pCopy20 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 0, i128* %pCopy20, align 4
  br label %if.exit16

if.exit16:                                        ; preds = %if.false15, %if.true14

loop.latch21:                                     ; preds = %loop.body12
  %add22 = add i128 %loop.iter13, 1
  %slt23 = icmp slt i128 %add22, 100
  br i1 %slt23, label %loop.body12, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch21
  %uniform_array25 = alloca [100 x i128], align 8
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch28, %loop.exit24
  %loop.iter27 = phi i128 [ 0, %loop.exit24 ], [ %add29, %loop.latch28 ]
  %two = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 %loop.iter27
  store i128 0, i128* %two, align 4
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.body26
  %add29 = add i128 %loop.iter27, 1
  %slt30 = icmp slt i128 %add29, 100
  br i1 %slt30, label %loop.body26, label %loop.exit31

loop.exit31:                                      ; preds = %loop.latch28
  %two32 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 0
  store i128 2, i128* %two32, align 4
  %uniform_array33 = alloca [100 x i128], align 8
  %call = call [100 x i128] @long_sub(i128 %0, i128 %1, [100 x i128]* %uniform_array11, [100 x i128]* %uniform_array25)
  store [100 x i128] %call, [100 x i128]* %uniform_array33, align 4
  %uniform_array34 = alloca [100 x i128], align 8
  %call35 = call [100 x i128] @mod_exp(i128 %0, i128 %1, [0 x i128]* %a, [100 x i128]* %uniform_array11, [100 x i128]* %uniform_array33)
  store [100 x i128] %call35, [100 x i128]* %uniform_array34, align 4
  ret [100 x i128]* %uniform_array34
}

define i128 @prod_mod_p(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [2 x [100 x i128]], align 8
  %call = call [100 x i128] @prod(i128 %0, i128 %1, i128 %2, i128 %3)
  store [100 x i128] %call, [100 x i128]* %uniform_array, align 4
  %call2 = call [2 x [100 x i128]] @long_div(i128 %0, i128 %1, i128 %1, [100 x i128]* %uniform_array, i128 %4)
  store [2 x [100 x i128]] %call2, [2 x [100 x i128]]* %uniform_array1, align 4
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array1, i128 0, i128 1
  %result = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([100 x i128]* getelementptr ([100 x i128], [100 x i128]* null, i32 1) to i32))
  %ret_array = bitcast i8* %malloccall to [100 x i128]*
  store [100 x i128] %result, [100 x i128]* %ret_array, align 4
  ret [100 x i128]* %ret_array
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
