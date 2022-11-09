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

define i128 @isNegative(i128 %0) {
entry:
  %sgt = icmp sgt i128 %0, -143421864344314467536934857361548378112
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 1, i128 0)
  ret i128 %inline_switch
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

define i128 @SplitFn(i128 %0, i128 %1, i128 %2) {
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

define i128 @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
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

define i128 @splitOverflowedRegister(i128 %0, i128 %1, i128 %2) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry, %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body, %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  %div_ceil = call i128 @div_ceil(i128 %0, i128 %1)
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch4, %loop.exit, %loop.latch4, %loop.exit
  %loop.iter2 = phi i128 [ 0, %loop.exit ], [ %add5, %loop.latch4 ]
  %lshift = shl i128 1, %1
  %mod = srem i128 %2, %lshift
  %out3 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter2
  store i128 %mod, i128* %out3, align 4
  %rshift = lshr i128 %2, %1
  br label %loop.latch4

loop.latch4:                                      ; preds = %loop.body1, %loop.body1
  %add5 = add i128 %loop.iter2, 1
  %slt6 = icmp slt i128 %add5, %div_ceil
  br i1 %slt6, label %loop.body1, label %loop.exit7

loop.exit7:                                       ; preds = %loop.latch4, %loop.latch4
  ret [100 x i128]* %uniform_array
}

define i128 @getProperRepresentation(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %in = alloca [0 x i128], align 8
  %mod = srem i128 %0, %1
  %eq = icmp eq i128 %mod, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry, %entry
  %sdiv = sdiv i128 %0, %1
  br label %if.exit

if.false:                                         ; preds = %entry, %entry
  %sdiv1 = sdiv i128 %0, %1
  %add = add i128 %sdiv1, 1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true, %if.false, %if.true
  %uniform_array = alloca [100 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch25, %if.exit, %loop.latch25, %if.exit
  %loop.iter = phi i128 [ 0, %if.exit ], [ %add26, %loop.latch25 ]
  br label %loop.body2
  br label %loop.latch25

loop.body2:                                       ; preds = %loop.latch, %loop.body, %loop.latch, %loop.body
  %loop.iter3 = phi i128 [ 0, %loop.body ], [ %add4, %loop.latch ]
  %pieces = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter3
  store i128 0, i128* %pieces, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body2, %loop.body2
  %add4 = add i128 %loop.iter3, 1
  %slt = icmp slt i128 %add4, 100
  br i1 %slt, label %loop.body2, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in8 = load i128, i128* %array_ptr, align 4
  %isNegative = call i128 @isNegative(i128 %in8)
  %eq9 = icmp eq i128 %isNegative, 1
  br i1 %eq9, label %if.true5, label %if.false6

if.true5:                                         ; preds = %loop.exit, %loop.exit
  %array_ptr10 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in11 = load i128, i128* %array_ptr10, align 4
  %mul = mul i128 -1, %in11
  %splitOverflowedRegister.3 = call [100 x i128]* @splitOverflowedRegister.3(i128 %0, i128 %1, i128 %mul)

if.false6:                                        ; preds = %loop.exit, %loop.exit
  %array_ptr21 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in22 = load i128, i128* %array_ptr21, align 4
  %splitOverflowedRegister.323 = call [100 x i128]* @splitOverflowedRegister.3(i128 %0, i128 %1, i128 %in22)
  %pieces24 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter
  store [100 x i128]* %splitOverflowedRegister.323, [100 x i128]* %pieces24, align 8
  br label %if.exit7

if.exit7:                                         ; preds = %loop.exit20, %if.false6, %if.false6, %loop.exit20
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch17, %if.exit7, %loop.latch17, %if.exit7
  %loop.iter13 = phi i128 [ 0, %if.exit7 ], [ %add18, %loop.latch17 ]
  %array_ptr14 = getelementptr inbounds [100 x i128], [100 x i128]* %splitOverflowedRegister.3, i128 0, i128 %loop.iter13
  %negPieces = load i128, i128* %array_ptr14, align 4
  %mul15 = mul i128 -1, %negPieces
  %pieces16 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter13
  store i128 %mul15, i128* %pieces16, align 4
  br label %loop.latch17

loop.latch17:                                     ; preds = %loop.body12, %loop.body12
  %add18 = add i128 %loop.iter13, 1
  %slt19 = icmp slt i128 %add18, %add
  br i1 %slt19, label %loop.body12, label %loop.exit20

loop.exit20:                                      ; preds = %loop.latch17, %loop.latch17
  br label %if.exit7

loop.latch25:                                     ; preds = %loop.body, %loop.body
  %add26 = add i128 %loop.iter, 1
  %slt27 = icmp slt i128 %add26, %2
  br i1 %slt27, label %loop.body, label %loop.exit28

loop.exit28:                                      ; preds = %loop.latch25, %loop.latch25
  %uniform_array29 = alloca [100 x i128], align 8
  %uniform_array30 = alloca [100 x i128], align 8
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch33, %loop.exit28, %loop.latch33, %loop.exit28
  %loop.iter32 = phi i128 [ 0, %loop.exit28 ], [ %add34, %loop.latch33 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter32
  store i128 0, i128* %out, align 4
  %carries = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter32
  store i128 0, i128* %carries, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body31, %loop.body31
  %add34 = add i128 %loop.iter32, 1
  %slt35 = icmp slt i128 %add34, 100
  br i1 %slt35, label %loop.body31, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch33, %loop.latch33
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch80, %loop.exit36, %loop.latch80, %loop.exit36
  %loop.iter38 = phi i128 [ 0, %loop.exit36 ], [ %add81, %loop.latch80 ]
  %sgt = icmp sgt i128 %loop.iter38, 0
  br i1 %sgt, label %if.true39, label %if.false40
  br label %loop.latch80

if.true39:                                        ; preds = %loop.body37, %loop.body37
  %sub = sub i128 %loop.iter38, 1
  %array_ptr42 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %sub
  %carries43 = load i128, i128* %array_ptr42, align 4
  br label %if.exit41

if.false40:                                       ; preds = %loop.body37, %loop.body37
  br label %if.exit41

if.exit41:                                        ; preds = %if.false40, %if.true39, %if.false40, %if.true39
  %sge = icmp sge i128 %loop.iter38, %add
  br i1 %sge, label %if.true44, label %if.false45

if.true44:                                        ; preds = %if.exit41, %if.exit41
  %sub47 = sub i128 %loop.iter38, %add
  %add48 = add i128 %sub47, 1
  br label %if.exit46

if.false45:                                       ; preds = %if.exit41, %if.exit41
  br label %if.exit46

if.exit46:                                        ; preds = %if.false45, %if.true44, %if.false45, %if.true44
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch59, %if.exit46, %loop.latch59, %if.exit46
  %loop.iter50 = phi i128 [ %add48, %if.exit46 ], [ %add60, %loop.latch59 ]
  %slt54 = icmp slt i128 %loop.iter50, %2
  br i1 %slt54, label %if.true51, label %if.false52
  br label %loop.latch59

if.true51:                                        ; preds = %loop.body49, %loop.body49
  %sub55 = sub i128 %loop.iter38, %loop.iter50
  %array_ptr56 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter50, i128 %sub55
  %pieces57 = load i128, i128* %array_ptr56, align 4
  %add58 = add i128 %carries43, %pieces57
  br label %if.exit53

if.false52:                                       ; preds = %loop.body49, %loop.body49
  br label %if.exit53

if.exit53:                                        ; preds = %if.false52, %if.true51, %if.false52, %if.true51

loop.latch59:                                     ; preds = %loop.body49, %loop.body49
  %add60 = add i128 %loop.iter50, 1
  %sle = icmp sle i128 %add60, %loop.iter38
  br i1 %sle, label %loop.body49, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch59, %loop.latch59
  %isNegative65 = call i128 @isNegative(i128 %add58)
  %eq66 = icmp eq i128 %isNegative65, 1
  br i1 %eq66, label %if.true62, label %if.false63

if.true62:                                        ; preds = %loop.exit61, %loop.exit61
  %mul67 = mul i128 -1, %add58
  %lshift = shl i128 1, %1
  %lshift68 = shl i128 1, %1
  %mod69 = srem i128 %mul67, %lshift68
  %sub70 = sub i128 %lshift, %mod69
  %out71 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter38
  store i128 %sub70, i128* %out71, align 4
  %rshift = lshr i128 %mul67, %1
  %mul72 = mul i128 -1, %rshift
  %sub73 = sub i128 %mul72, 1
  %carries74 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter38
  store i128 %sub73, i128* %carries74, align 4
  br label %if.exit64

if.false63:                                       ; preds = %loop.exit61, %loop.exit61
  %lshift75 = shl i128 1, %1
  %mod76 = srem i128 %add58, %lshift75
  %out77 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter38
  store i128 %mod76, i128* %out77, align 4
  %rshift78 = lshr i128 %add58, %1
  %carries79 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter38
  store i128 %rshift78, i128* %carries79, align 4
  br label %if.exit64

if.exit64:                                        ; preds = %if.false63, %if.true62, %if.false63, %if.true62

loop.latch80:                                     ; preds = %loop.body37, %loop.body37
  %add81 = add i128 %loop.iter38, 1
  %add82 = add i128 %2, %add
  %slt83 = icmp slt i128 %add81, %add82
  br i1 %slt83, label %loop.body37, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch80, %loop.latch80
  ret [100 x i128]* %uniform_array29
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

define i128 @long_sub(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry, %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add55, %loop.latch ]
  %eq = icmp eq i128 %loop.iter, 0
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body, %loop.body
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a5 = load i128, i128* %array_ptr, align 4
  %array_ptr6 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b7 = load i128, i128* %array_ptr6, align 4
  %sge = icmp sge i128 %a5, %b7

if.false:                                         ; preds = %loop.body, %loop.body
  %array_ptr22 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a23 = load i128, i128* %array_ptr22, align 4
  %array_ptr24 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b25 = load i128, i128* %array_ptr24, align 4
  %sub26 = sub i128 %loop.iter, 1
  %array_ptr27 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %sub26
  %borrow28 = load i128, i128* %array_ptr27, align 4
  %add29 = add i128 %b25, %borrow28
  %sge30 = icmp sge i128 %a23, %add29

if.exit:                                          ; preds = %if.exit21, %if.exit4, %if.exit21, %if.exit4
  br i1 %sge, label %if.true2, label %if.false3

if.true2:                                         ; preds = %if.exit, %if.exit
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

if.false3:                                        ; preds = %if.exit, %if.exit
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

if.exit4:                                         ; preds = %if.false3, %if.true2, %if.false3, %if.true2
  br label %if.exit
  br i1 %sge30, label %if.true19, label %if.false20

if.true19:                                        ; preds = %if.exit4, %if.exit4
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

if.false20:                                       ; preds = %if.exit4, %if.exit4
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

if.exit21:                                        ; preds = %if.false20, %if.true19, %if.false20, %if.true19
  br label %if.exit

loop.latch:                                       ; preds = %loop.body, %loop.body
  %add55 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add55, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  ret [100 x i128]* %uniform_array
}

define i128 @long_scalar_mult(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry, %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body, %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch15, %loop.exit, %loop.latch15, %loop.exit
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

loop.latch15:                                     ; preds = %loop.body1, %loop.body1
  %add16 = add i128 %loop.iter2, 1
  %slt17 = icmp slt i128 %add16, %1
  br i1 %slt17, label %loop.body1, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch15, %loop.latch15
  ret [100 x i128]* %uniform_array
}

define i128 @long_div(i128 %0, i128 %1, i128 %2, [0 x i128]* %3, i128 %4) {
entry:
  %a = alloca [0 x i128], align 8
  %uniform_array = alloca [2 x [100 x i128]], align 8
  %uniform_array1 = alloca [200 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry, %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a2 = load i128, i128* %array_ptr, align 4
  %remainder = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 %a2, i128* %remainder, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body, %loop.body
  %add = add i128 %loop.iter, 1
  %add3 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add3
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  %uniform_array4 = alloca [200 x i128], align 8
  %uniform_array5 = alloca [200 x i128], align 8
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch52, %loop.exit, %loop.latch52, %loop.exit
  %loop.iter7 = phi i128 [ %2, %loop.exit ], [ %sub53, %loop.latch52 ]
  %eq = icmp eq i128 %loop.iter7, %2
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch52

if.true:                                          ; preds = %loop.body6, %loop.body6
  %dividend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %1
  store i128 0, i128* %dividend, align 4
  %sub = sub i128 %1, 1

if.false:                                         ; preds = %loop.body6, %loop.body6

if.exit:                                          ; preds = %loop.exit26, %loop.exit16, %loop.exit26, %loop.exit16
  br label %loop.body8
  %short_div = call i128 @short_div(i128 %0, i128 %1, [200 x i128]* %uniform_array5, i128 %4)
  %out = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  store i128 %short_div, i128* %out, align 4
  %array_ptr27 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  %out28 = load i128, i128* %array_ptr27, align 4
  %long_scalar_mult.6 = call [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %1, i128 %out28, i128 %4)
  %uniform_array29 = alloca [200 x i128], align 8

loop.body8:                                       ; preds = %loop.latch14, %if.exit, %loop.latch14, %if.exit
  %loop.iter9 = phi i128 [ %sub, %if.exit ], [ %sub15, %loop.latch14 ]
  %add10 = add i128 %loop.iter9, %2
  %array_ptr11 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add10
  %remainder12 = load i128, i128* %array_ptr11, align 4
  %dividend13 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter9
  store i128 %remainder12, i128* %dividend13, align 4
  br label %loop.latch14

loop.latch14:                                     ; preds = %loop.body8, %loop.body8
  %sub15 = sub i128 %loop.iter9, 1
  %sge = icmp sge i128 %sub15, 0
  br i1 %sge, label %loop.body8, label %loop.exit16

loop.exit16:                                      ; preds = %loop.latch14, %loop.latch14
  br label %if.exit
  br label %loop.body17

loop.body17:                                      ; preds = %loop.latch23, %loop.exit16, %loop.latch23, %loop.exit16
  %loop.iter18 = phi i128 [ %1, %loop.exit16 ], [ %sub24, %loop.latch23 ]
  %add19 = add i128 %loop.iter18, %loop.iter7
  %array_ptr20 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add19
  %remainder21 = load i128, i128* %array_ptr20, align 4
  %dividend22 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter18
  store i128 %remainder21, i128* %dividend22, align 4
  br label %loop.latch23

loop.latch23:                                     ; preds = %loop.body17, %loop.body17
  %sub24 = sub i128 %loop.iter18, 1
  %sge25 = icmp sge i128 %sub24, 0
  br i1 %sge25, label %loop.body17, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch23, %loop.latch23
  br label %if.exit
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch32, %loop.exit26, %loop.latch32, %loop.exit26
  %loop.iter31 = phi i128 [ 0, %loop.exit26 ], [ %add33, %loop.latch32 ]
  %subtrahend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array29, i128 0, i128 %loop.iter31
  store i128 0, i128* %subtrahend, align 4
  br label %loop.latch32

loop.latch32:                                     ; preds = %loop.body30, %loop.body30
  %add33 = add i128 %loop.iter31, 1
  %add34 = add i128 %2, %1
  %slt35 = icmp slt i128 %add33, %add34
  br i1 %slt35, label %loop.body30, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch32, %loop.latch32
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch48, %loop.exit36, %loop.latch48, %loop.exit36
  %loop.iter38 = phi i128 [ 0, %loop.exit36 ], [ %add49, %loop.latch48 ]
  %add42 = add i128 %loop.iter7, %loop.iter38
  %add43 = add i128 %2, %1
  %slt44 = icmp slt i128 %add42, %add43
  br i1 %slt44, label %if.true39, label %if.false40
  br label %loop.latch48

if.true39:                                        ; preds = %loop.body37, %loop.body37
  %array_ptr45 = getelementptr inbounds [100 x i128], [100 x i128]* %long_scalar_mult.6, i128 0, i128 %loop.iter38
  %mult_shift = load i128, i128* %array_ptr45, align 4
  %add46 = add i128 %loop.iter7, %loop.iter38
  %subtrahend47 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array29, i128 0, i128 %add46
  store i128 %mult_shift, i128* %subtrahend47, align 4
  br label %if.exit41

if.false40:                                       ; preds = %loop.body37, %loop.body37
  br label %if.exit41

if.exit41:                                        ; preds = %if.false40, %if.true39, %if.false40, %if.true39

loop.latch48:                                     ; preds = %loop.body37, %loop.body37
  %add49 = add i128 %loop.iter38, 1
  %sle = icmp sle i128 %add49, %1
  br i1 %sle, label %loop.body37, label %loop.exit50

loop.exit50:                                      ; preds = %loop.latch48, %loop.latch48
  %add51 = add i128 %2, %1
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %add51, [200 x i128]* %uniform_array1, [200 x i128]* %uniform_array29)

loop.latch52:                                     ; preds = %loop.body6, %loop.body6
  %sub53 = sub i128 %loop.iter7, 1
  %sge54 = icmp sge i128 %sub53, 0
  br i1 %sge54, label %loop.body6, label %loop.exit55

loop.exit55:                                      ; preds = %loop.latch52, %loop.latch52
  br label %loop.body56

loop.body56:                                      ; preds = %loop.latch61, %loop.exit55, %loop.latch61, %loop.exit55
  %loop.iter57 = phi i128 [ 0, %loop.exit55 ], [ %add62, %loop.latch61 ]
  %array_ptr58 = getelementptr inbounds [100 x i128], [100 x i128]* %long_sub.5, i128 0, i128 %loop.iter57
  %remainder59 = load i128, i128* %array_ptr58, align 4
  %out60 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %loop.iter57
  store i128 %remainder59, i128* %out60, align 4
  br label %loop.latch61

loop.latch61:                                     ; preds = %loop.body56, %loop.body56
  %add62 = add i128 %loop.iter57, 1
  %slt63 = icmp slt i128 %add62, %1
  br i1 %slt63, label %loop.body56, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch61, %loop.latch61
  %out65 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out65, align 4
  ret [2 x [100 x i128]]* %uniform_array
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
  %long_scalar_mult.6 = call [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %1, i128 %sub10, [0 x i128]* %b)
  %add14 = add i128 %1, 1
  %long_gt = call i128 @long_gt(i128 %0, i128 %add14, [100 x i128]* %long_scalar_mult.6, [0 x i128]* %a)
  %eq = icmp eq i128 %long_gt, 1
  br i1 %eq, label %if.true11, label %if.false12

if.true11:                                        ; preds = %if.exit
  %add15 = add i128 %1, 1
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %add15, [100 x i128]* %long_scalar_mult.6, [0 x i128]* %b)
  %add19 = add i128 %1, 1
  %long_gt20 = call i128 @long_gt(i128 %0, i128 %add19, [100 x i128]* %long_sub.5, [0 x i128]* %a)
  %eq21 = icmp eq i128 %long_gt20, 1

if.false12:                                       ; preds = %if.exit
  ret i128 %sub10
  br label %if.exit13

if.exit13:                                        ; preds = %if.false12, %if.exit18
  br i1 %eq21, label %if.true16, label %if.false17

if.true16:                                        ; preds = %if.exit13
  %sub22 = sub i128 %sub10, 2
  ret i128 %sub22
  br label %if.exit18

if.false17:                                       ; preds = %if.exit13
  %sub23 = sub i128 %sub10, 1
  ret i128 %sub23
  br label %if.exit18

if.exit18:                                        ; preds = %if.false17, %if.true16
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
  %long_scalar_mult.6 = call [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %add2, i128 %sdiv, i128 %2)
  %long_scalar_mult.63 = call [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %1, i128 %sdiv, [0 x i128]* %b)
  %array_ptr4 = getelementptr inbounds [100 x i128], [100 x i128]* %long_scalar_mult.63, i128 0, i128 %1
  %norm_b = load i128, i128* %array_ptr4, align 4
  %ne = icmp ne i128 %norm_b, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add5 = add i128 %1, 1
  %short_div_norm = call i128 @short_div_norm(i128 %0, i128 %add5, [100 x i128]* %long_scalar_mult.6, [100 x i128]* %long_scalar_mult.63)
  br label %if.exit

if.false:                                         ; preds = %entry
  %short_div_norm6 = call i128 @short_div_norm(i128 %0, i128 %1, [100 x i128]* %long_scalar_mult.6, [100 x i128]* %long_scalar_mult.63)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  ret i128 %short_div_norm6
}

define i128 @prod(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry, %loop.latch28, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add29, %loop.latch28 ]
  %prod_val = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %prod_val, align 4
  %slt = icmp slt i128 %loop.iter, %1
  br i1 %slt, label %if.true, label %if.false
  br label %loop.latch28

if.true:                                          ; preds = %loop.body, %loop.body

if.false:                                         ; preds = %loop.body, %loop.body
  %sub10 = sub i128 %loop.iter, %1
  %add11 = add i128 %sub10, 1

if.exit:                                          ; preds = %loop.exit27, %loop.exit, %loop.exit27, %loop.exit
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %if.exit, %loop.latch, %if.exit
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

loop.latch:                                       ; preds = %loop.body1, %loop.body1
  %add9 = add i128 %loop.iter2, 1
  %sle = icmp sle i128 %add9, %loop.iter
  br i1 %sle, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  br label %if.exit
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch24, %loop.exit, %loop.latch24, %loop.exit
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

loop.latch24:                                     ; preds = %loop.body12, %loop.body12
  %add25 = add i128 %loop.iter13, 1
  %slt26 = icmp slt i128 %add25, %1
  br i1 %slt26, label %loop.body12, label %loop.exit27

loop.exit27:                                      ; preds = %loop.latch24, %loop.latch24
  br label %if.exit

loop.latch28:                                     ; preds = %loop.body, %loop.body
  %add29 = add i128 %loop.iter, 1
  %mul30 = mul i128 2, %1
  %sub31 = sub i128 %mul30, 1
  %slt32 = icmp slt i128 %add29, %sub31
  br i1 %slt32, label %loop.body, label %loop.exit33

loop.exit33:                                      ; preds = %loop.latch28, %loop.latch28
  %uniform_array34 = alloca [100 x i128], align 8
  %uniform_array35 = alloca [100 x [3 x i128]], align 8
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch40, %loop.exit33, %loop.latch40, %loop.exit33
  %loop.iter37 = phi i128 [ 0, %loop.exit33 ], [ %add41, %loop.latch40 ]
  %array_ptr38 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter37
  %prod_val39 = load i128, i128* %array_ptr38, align 4
  %SplitThreeFn.2 = call [3 x i128]* @SplitThreeFn.2(i128 %prod_val39, i128 %0, i128 %0, i128 %0)
  %split = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter37
  store [3 x i128]* %SplitThreeFn.2, [3 x i128]* %split, align 8
  br label %loop.latch40

loop.latch40:                                     ; preds = %loop.body36, %loop.body36
  %add41 = add i128 %loop.iter37, 1
  %mul42 = mul i128 2, %1
  %sub43 = sub i128 %mul42, 1
  %slt44 = icmp slt i128 %add41, %sub43
  br i1 %slt44, label %loop.body36, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch40, %loop.latch40
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

if.true49:                                        ; preds = %loop.exit45, %loop.exit45
  %array_ptr54 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 0, i128 1
  %split55 = load i128, i128* %array_ptr54, align 4
  %array_ptr56 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 1, i128 0
  %split57 = load i128, i128* %array_ptr56, align 4
  %add58 = add i128 %split55, %split57
  %SplitFn.1 = call [2 x i128]* @SplitFn.1(i128 %add58, i128 %0, i128 %0)
  %array_ptr59 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.1, i128 0, i128 0
  %sumAndCarry = load i128, i128* %array_ptr59, align 4
  %out60 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 1
  store i128 %sumAndCarry, i128* %out60, align 4
  %array_ptr61 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.1, i128 0, i128 1
  %sumAndCarry62 = load i128, i128* %array_ptr61, align 4
  %carry63 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 1
  store i128 %sumAndCarry62, i128* %carry63, align 4
  br label %if.exit51

if.false50:                                       ; preds = %loop.exit45, %loop.exit45
  br label %if.exit51

if.exit51:                                        ; preds = %if.false50, %if.true49, %if.false50, %if.true49
  %mul67 = mul i128 2, %1
  %sub68 = sub i128 %mul67, 1
  %sgt69 = icmp sgt i128 %sub68, 2
  br i1 %sgt69, label %if.true64, label %if.false65

if.true64:                                        ; preds = %if.exit51, %if.exit51

if.false65:                                       ; preds = %if.exit51, %if.exit51
  br label %if.exit66

if.exit66:                                        ; preds = %loop.exit98, %if.false65, %if.false65, %loop.exit98
  br label %loop.body70
  ret [100 x i128]* %uniform_array34

loop.body70:                                      ; preds = %loop.latch93, %if.exit66, %loop.latch93, %if.exit66
  %loop.iter71 = phi i128 [ 2, %if.exit66 ], [ %add94, %loop.latch93 ]
  %array_ptr72 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter71, i128 0
  %split73 = load i128, i128* %array_ptr72, align 4
  %sub74 = sub i128 %loop.iter71, 1
  %array_ptr75 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub74, i128 1
  %split76 = load i128, i128* %array_ptr75, align 4
  %add77 = add i128 %split73, %split76
  %sub78 = sub i128 %loop.iter71, 2
  %array_ptr79 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub78, i128 2
  %split80 = load i128, i128* %array_ptr79, align 4
  %add81 = add i128 %add77, %split80
  %sub82 = sub i128 %loop.iter71, 1
  %array_ptr83 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub82
  %carry84 = load i128, i128* %array_ptr83, align 4
  %add85 = add i128 %add81, %carry84
  %SplitFn.186 = call [2 x i128]* @SplitFn.1(i128 %add85, i128 %0, i128 %0)
  %array_ptr87 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.186, i128 0, i128 0
  %sumAndCarry88 = load i128, i128* %array_ptr87, align 4
  %out89 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %loop.iter71
  store i128 %sumAndCarry88, i128* %out89, align 4
  %array_ptr90 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.186, i128 0, i128 1
  %sumAndCarry91 = load i128, i128* %array_ptr90, align 4
  %carry92 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %loop.iter71
  store i128 %sumAndCarry91, i128* %carry92, align 4
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body70, %loop.body70
  %add94 = add i128 %loop.iter71, 1
  %mul95 = mul i128 2, %1
  %sub96 = sub i128 %mul95, 1
  %slt97 = icmp slt i128 %add94, %sub96
  br i1 %slt97, label %loop.body70, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch93, %loop.latch93
  %mul99 = mul i128 2, %1
  %sub100 = sub i128 %mul99, 2
  %array_ptr101 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub100, i128 1
  %split102 = load i128, i128* %array_ptr101, align 4
  %mul103 = mul i128 2, %1
  %sub104 = sub i128 %mul103, 3
  %array_ptr105 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub104, i128 2
  %split106 = load i128, i128* %array_ptr105, align 4
  %add107 = add i128 %split102, %split106
  %mul108 = mul i128 2, %1
  %sub109 = sub i128 %mul108, 2
  %array_ptr110 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub109
  %carry111 = load i128, i128* %array_ptr110, align 4
  %add112 = add i128 %add107, %carry111
  %mul113 = mul i128 2, %1
  %sub114 = sub i128 %mul113, 1
  %out115 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %sub114
  store i128 %add112, i128* %out115, align 4
  br label %if.exit66
}

define i128 @mod_exp(i128 %0, i128 %1, i128 %2, i128 %3, [0 x i128]* %4) {
entry:
  %e = alloca [0 x i128], align 8
  %uniform_array = alloca [500 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch5, %entry, %loop.latch5, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add6, %loop.latch5 ]
  br label %loop.body1
  br label %loop.latch5

loop.body1:                                       ; preds = %loop.latch, %loop.body, %loop.latch, %loop.body
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

loop.latch:                                       ; preds = %loop.body1, %loop.body1
  %add4 = add i128 %loop.iter2, 1
  %slt = icmp slt i128 %add4, %0
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch

loop.latch5:                                      ; preds = %loop.body, %loop.body
  %add6 = add i128 %loop.iter, 1
  %slt7 = icmp slt i128 %add6, %1
  br i1 %slt7, label %loop.body, label %loop.exit8

loop.exit8:                                       ; preds = %loop.latch5, %loop.latch5
  %uniform_array9 = alloca [100 x i128], align 8
  br label %loop.body10

loop.body10:                                      ; preds = %loop.latch12, %loop.exit8, %loop.latch12, %loop.exit8
  %loop.iter11 = phi i128 [ 0, %loop.exit8 ], [ %add13, %loop.latch12 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 %loop.iter11
  store i128 0, i128* %out, align 4
  br label %loop.latch12

loop.latch12:                                     ; preds = %loop.body10, %loop.body10
  %add13 = add i128 %loop.iter11, 1
  %slt14 = icmp slt i128 %add13, 100
  br i1 %slt14, label %loop.body10, label %loop.exit15

loop.exit15:                                      ; preds = %loop.latch12, %loop.latch12
  %out16 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 0
  store i128 1, i128* %out16, align 4
  %mul17 = mul i128 %1, %0
  %sub = sub i128 %mul17, 1
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch34, %loop.exit15, %loop.latch34, %loop.exit15
  %loop.iter19 = phi i128 [ %sub, %loop.exit15 ], [ %sub35, %loop.latch34 ]
  %array_ptr20 = getelementptr inbounds [500 x i128], [500 x i128]* %uniform_array, i128 0, i128 %loop.iter19
  %eBits21 = load i128, i128* %array_ptr20, align 4
  %eq = icmp eq i128 %eBits21, 1
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch34

if.true:                                          ; preds = %loop.body18, %loop.body18
  %uniform_array22 = alloca [200 x i128], align 8
  %prod.8 = call [100 x i128]* @prod.8(i128 %0, i128 %1, [100 x i128]* %uniform_array9, i128 %2)
  %uniform_array23 = alloca [2 x [100 x i128]], align 8
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.8, i128 %3)
  %array_ptr24 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %temp2 = load [100 x i128], [100 x i128]* %array_ptr24, align 4
  store [100 x i128] %temp2, [100 x i128]* %uniform_array9, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body18, %loop.body18
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true, %if.false, %if.true
  %sgt = icmp sgt i128 %loop.iter19, 0
  br i1 %sgt, label %if.true25, label %if.false26

if.true25:                                        ; preds = %if.exit, %if.exit
  %uniform_array28 = alloca [200 x i128], align 8
  %prod.829 = call [100 x i128]* @prod.8(i128 %0, i128 %1, [100 x i128]* %uniform_array9, [100 x i128]* %uniform_array9)
  %uniform_array30 = alloca [2 x [100 x i128]], align 8
  %long_div.731 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.829, i128 %3)
  %array_ptr32 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.731, i128 0, i128 1
  %temp233 = load [100 x i128], [100 x i128]* %array_ptr32, align 4
  store [100 x i128] %temp233, [100 x i128]* %uniform_array9, align 4
  br label %if.exit27

if.false26:                                       ; preds = %if.exit, %if.exit
  br label %if.exit27

if.exit27:                                        ; preds = %if.false26, %if.true25, %if.false26, %if.true25

loop.latch34:                                     ; preds = %loop.body18, %loop.body18
  %sub35 = sub i128 %loop.iter19, 1
  %sge = icmp sge i128 %sub35, 0
  br i1 %sge, label %loop.body18, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch34, %loop.latch34
  ret [100 x i128]* %uniform_array9
}

define i128 @mod_inv(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %p = alloca [0 x i128], align 8
  %a = alloca [0 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry, %loop.latch, %entry, %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a1 = load i128, i128* %array_ptr, align 4
  %ne = icmp ne i128 %a1, 0
  br i1 %ne, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; preds = %loop.body, %loop.body, %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body, %loop.body, %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true, %if.false, %if.true, %if.false, %if.true

loop.latch:                                       ; preds = %loop.body, %loop.body, %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch, %loop.latch
  br i1 false, label %if.true2, label %if.false3

if.true2:                                         ; preds = %loop.exit, %loop.exit, %loop.exit
  %uniform_array = alloca [100 x i128], align 8

if.false3:                                        ; preds = %loop.exit, %loop.exit, %loop.exit
  br label %if.exit4

if.exit4:                                         ; preds = %if.false3, %if.false3, %loop.exit10
  br label %loop.body5
  %uniform_array11 = alloca [100 x i128], align 8

loop.body5:                                       ; preds = %loop.latch7, %if.exit4, %loop.latch7, %if.exit4, %loop.latch7, %if.exit4
  %loop.iter6 = phi i128 [ 0, %if.exit4 ], [ %add8, %loop.latch7 ]
  %ret = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter6
  store i128 0, i128* %ret, align 4
  br label %loop.latch7

loop.latch7:                                      ; preds = %loop.body5, %loop.body5, %loop.body5
  %add8 = add i128 %loop.iter6, 1
  %slt9 = icmp slt i128 %add8, %1
  br i1 %slt9, label %loop.body5, label %loop.exit10

loop.exit10:                                      ; preds = %loop.latch7, %loop.latch7, %loop.latch7
  ret [100 x i128]* %uniform_array
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch21, %loop.exit10, %loop.latch21, %loop.exit10
  %loop.iter13 = phi i128 [ 0, %loop.exit10 ], [ %add22, %loop.latch21 ]
  %slt17 = icmp slt i128 %loop.iter13, %1
  br i1 %slt17, label %if.true14, label %if.false15
  br label %loop.latch21

if.true14:                                        ; preds = %loop.body12, %loop.body12
  %array_ptr18 = getelementptr inbounds [0 x i128], [0 x i128]* %p, i128 0, i128 %loop.iter13
  %p19 = load i128, i128* %array_ptr18, align 4
  %pCopy = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 %p19, i128* %pCopy, align 4
  br label %if.exit16

if.false15:                                       ; preds = %loop.body12, %loop.body12
  %pCopy20 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 0, i128* %pCopy20, align 4
  br label %if.exit16

if.exit16:                                        ; preds = %if.false15, %if.true14, %if.false15, %if.true14

loop.latch21:                                     ; preds = %loop.body12, %loop.body12
  %add22 = add i128 %loop.iter13, 1
  %slt23 = icmp slt i128 %add22, 100
  br i1 %slt23, label %loop.body12, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch21, %loop.latch21
  %uniform_array25 = alloca [100 x i128], align 8
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch28, %loop.exit24, %loop.latch28, %loop.exit24
  %loop.iter27 = phi i128 [ 0, %loop.exit24 ], [ %add29, %loop.latch28 ]
  %two = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 %loop.iter27
  store i128 0, i128* %two, align 4
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.body26, %loop.body26
  %add29 = add i128 %loop.iter27, 1
  %slt30 = icmp slt i128 %add29, 100
  br i1 %slt30, label %loop.body26, label %loop.exit31

loop.exit31:                                      ; preds = %loop.latch28, %loop.latch28
  %two32 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 0
  store i128 2, i128* %two32, align 4
  %uniform_array33 = alloca [100 x i128], align 8
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, [100 x i128]* %uniform_array11, [100 x i128]* %uniform_array25)
  %uniform_array34 = alloca [100 x i128], align 8
  %mod_exp.9 = call [100 x i128]* @mod_exp.9(i128 %0, i128 %1, [0 x i128]* %a, [100 x i128]* %uniform_array11, [100 x i128]* %long_sub.5)
  ret [100 x i128]* %mod_exp.9
}

define i128 @long_sub_mod_p(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %long_gt = call i128 @long_gt(i128 %0, i128 %1, i128 %2, i128 %3)
  %uniform_array = alloca [100 x i128], align 8
  br i128 %long_gt, label %if.true, label %if.false

if.true:                                          ; preds = %entry, %entry
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %2, i128 %3)
  br label %if.exit

if.false:                                         ; preds = %entry, %entry
  %long_sub.51 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %3, i128 %2)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true, %if.false, %if.true
  %uniform_array2 = alloca [2 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.exit, %loop.latch, %if.exit
  %loop.iter = phi i128 [ %1, %if.exit ], [ %add, %loop.latch ]
  %tmp = getelementptr inbounds [100 x i128], [100 x i128]* %long_sub.51, i128 0, i128 %loop.iter
  store i128 0, i128* %tmp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body, %loop.body
  %add = add i128 %loop.iter, 1
  %mul = mul i128 2, %1
  %slt = icmp slt i128 %add, %mul
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch, %loop.latch
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %long_sub.51, i128 %4)
  %eq = icmp eq i128 %long_gt, 0
  br i1 %eq, label %if.true3, label %if.false4

if.true3:                                         ; preds = %loop.exit, %loop.exit
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %out = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %long_sub.56 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %4, [100 x i128] %out)
  br label %if.exit5

if.false4:                                        ; preds = %loop.exit, %loop.exit
  br label %if.exit5

if.exit5:                                         ; preds = %if.false4, %if.true3, %if.false4, %if.true3
  ret [100 x i128]* %long_sub.56
}

define i128 @prod_mod_p(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [2 x [100 x i128]], align 8
  %prod.8 = call [100 x i128]* @prod.8(i128 %0, i128 %1, i128 %2, i128 %3)
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.8, i128 %4)
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %result = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([100 x i128]* getelementptr ([100 x i128], [100 x i128]* null, i32 1) to i32))
  %ret_array = bitcast i8* %malloccall to [100 x i128]*
  store [100 x i128] %result, [100 x i128]* %ret_array, align 4
  ret [100 x i128]* %ret_array
}

define [2 x i128]* @SplitFn.1(i128 %0, i128 %1, i128 %2) {
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

define [3 x i128]* @SplitThreeFn.2(i128 %0, i128 %1, i128 %2, i128 %3) {
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

define [100 x i128]* @splitOverflowedRegister.3(i128 %0, i128 %1, i128 %2) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  %div_ceil = call i128 @div_ceil(i128 %0, i128 %1)
  br label %loop.body1

loop.body1:                                       ; No predecessors!
  %loop.iter2 = phi i128 [ 0, %loop.exit ], [ %add5, %loop.latch4 ]
  %lshift = shl i128 1, %1
  %mod = srem i128 %2, %lshift
  %out3 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter2
  store i128 %mod, i128* %out3, align 4
  %rshift = lshr i128 %2, %1
  br label %loop.latch4

loop.latch4:                                      ; No predecessors!
  %add5 = add i128 %loop.iter2, 1
  %slt6 = icmp slt i128 %add5, %div_ceil
  br i1 %slt6, label %loop.body1, label %loop.exit7

loop.exit7:                                       ; No predecessors!
  ret [100 x i128]* %uniform_array
}

define [100 x i128]* @getProperRepresentation.4(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %in = alloca [0 x i128], align 8
  %mod = srem i128 %0, %1
  %eq = icmp eq i128 %mod, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; No predecessors!
  %sdiv = sdiv i128 %0, %1
  br label %if.exit

if.false:                                         ; No predecessors!
  %sdiv1 = sdiv i128 %0, %1
  %add = add i128 %sdiv1, 1
  br label %if.exit

if.exit:                                          ; No predecessors!
  %uniform_array = alloca [100 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %if.exit ], [ %add26, %loop.latch25 ]
  br label %loop.body2
  br label %loop.latch25

loop.body2:                                       ; No predecessors!
  %loop.iter3 = phi i128 [ 0, %loop.body ], [ %add4, %loop.latch ]
  %pieces = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter3
  store i128 0, i128* %pieces, align 4
  br label %loop.latch

loop.latch:                                       ; No predecessors!
  %add4 = add i128 %loop.iter3, 1
  %slt = icmp slt i128 %add4, 100
  br i1 %slt, label %loop.body2, label %loop.exit

loop.exit:                                        ; No predecessors!
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in8 = load i128, i128* %array_ptr, align 4
  %isNegative = call i128 @isNegative(i128 %in8)
  %eq9 = icmp eq i128 %isNegative, 1
  br i1 %eq9, label %if.true5, label %if.false6

if.true5:                                         ; No predecessors!
  %array_ptr10 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in11 = load i128, i128* %array_ptr10, align 4
  %mul = mul i128 -1, %in11
  %splitOverflowedRegister.3 = call [100 x i128]* @splitOverflowedRegister.3(i128 %0, i128 %1, i128 %mul)

if.false6:                                        ; No predecessors!
  %array_ptr21 = getelementptr inbounds [0 x i128], [0 x i128]* %in, i128 0, i128 %loop.iter
  %in22 = load i128, i128* %array_ptr21, align 4
  %splitOverflowedRegister.323 = call [100 x i128]* @splitOverflowedRegister.3(i128 %0, i128 %1, i128 %in22)
  %pieces24 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter
  store [100 x i128]* %splitOverflowedRegister.323, [100 x i128]* %pieces24, align 8
  br label %if.exit7

if.exit7:                                         ; No predecessors!
  br label %loop.body12

loop.body12:                                      ; No predecessors!
  %loop.iter13 = phi i128 [ 0, %if.exit7 ], [ %add18, %loop.latch17 ]
  %array_ptr14 = getelementptr inbounds [100 x i128], [100 x i128]* %splitOverflowedRegister.3, i128 0, i128 %loop.iter13
  %negPieces = load i128, i128* %array_ptr14, align 4
  %mul15 = mul i128 -1, %negPieces
  %pieces16 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter, i128 %loop.iter13
  store i128 %mul15, i128* %pieces16, align 4
  br label %loop.latch17

loop.latch17:                                     ; No predecessors!
  %add18 = add i128 %loop.iter13, 1
  %slt19 = icmp slt i128 %add18, %add
  br i1 %slt19, label %loop.body12, label %loop.exit20

loop.exit20:                                      ; No predecessors!
  br label %if.exit7

loop.latch25:                                     ; No predecessors!
  %add26 = add i128 %loop.iter, 1
  %slt27 = icmp slt i128 %add26, %2
  br i1 %slt27, label %loop.body, label %loop.exit28

loop.exit28:                                      ; No predecessors!
  %uniform_array29 = alloca [100 x i128], align 8
  %uniform_array30 = alloca [100 x i128], align 8
  br label %loop.body31

loop.body31:                                      ; No predecessors!
  %loop.iter32 = phi i128 [ 0, %loop.exit28 ], [ %add34, %loop.latch33 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter32
  store i128 0, i128* %out, align 4
  %carries = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter32
  store i128 0, i128* %carries, align 4
  br label %loop.latch33

loop.latch33:                                     ; No predecessors!
  %add34 = add i128 %loop.iter32, 1
  %slt35 = icmp slt i128 %add34, 100
  br i1 %slt35, label %loop.body31, label %loop.exit36

loop.exit36:                                      ; No predecessors!
  br label %loop.body37

loop.body37:                                      ; No predecessors!
  %loop.iter38 = phi i128 [ 0, %loop.exit36 ], [ %add81, %loop.latch80 ]
  %sgt = icmp sgt i128 %loop.iter38, 0
  br i1 %sgt, label %if.true39, label %if.false40
  br label %loop.latch80

if.true39:                                        ; No predecessors!
  %sub = sub i128 %loop.iter38, 1
  %array_ptr42 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %sub
  %carries43 = load i128, i128* %array_ptr42, align 4
  br label %if.exit41

if.false40:                                       ; No predecessors!
  br label %if.exit41

if.exit41:                                        ; No predecessors!
  %sge = icmp sge i128 %loop.iter38, %add
  br i1 %sge, label %if.true44, label %if.false45

if.true44:                                        ; No predecessors!
  %sub47 = sub i128 %loop.iter38, %add
  %add48 = add i128 %sub47, 1
  br label %if.exit46

if.false45:                                       ; No predecessors!
  br label %if.exit46

if.exit46:                                        ; No predecessors!
  br label %loop.body49

loop.body49:                                      ; No predecessors!
  %loop.iter50 = phi i128 [ %add48, %if.exit46 ], [ %add60, %loop.latch59 ]
  %slt54 = icmp slt i128 %loop.iter50, %2
  br i1 %slt54, label %if.true51, label %if.false52
  br label %loop.latch59

if.true51:                                        ; No predecessors!
  %sub55 = sub i128 %loop.iter38, %loop.iter50
  %array_ptr56 = getelementptr inbounds [100 x [100 x i128]], [100 x [100 x i128]]* %uniform_array, i128 0, i128 %loop.iter50, i128 %sub55
  %pieces57 = load i128, i128* %array_ptr56, align 4
  %add58 = add i128 %carries43, %pieces57
  br label %if.exit53

if.false52:                                       ; No predecessors!
  br label %if.exit53

if.exit53:                                        ; No predecessors!

loop.latch59:                                     ; No predecessors!
  %add60 = add i128 %loop.iter50, 1
  %sle = icmp sle i128 %add60, %loop.iter38
  br i1 %sle, label %loop.body49, label %loop.exit61

loop.exit61:                                      ; No predecessors!
  %isNegative65 = call i128 @isNegative(i128 %add58)
  %eq66 = icmp eq i128 %isNegative65, 1
  br i1 %eq66, label %if.true62, label %if.false63

if.true62:                                        ; No predecessors!
  %mul67 = mul i128 -1, %add58
  %lshift = shl i128 1, %1
  %lshift68 = shl i128 1, %1
  %mod69 = srem i128 %mul67, %lshift68
  %sub70 = sub i128 %lshift, %mod69
  %out71 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter38
  store i128 %sub70, i128* %out71, align 4
  %rshift = lshr i128 %mul67, %1
  %mul72 = mul i128 -1, %rshift
  %sub73 = sub i128 %mul72, 1
  %carries74 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter38
  store i128 %sub73, i128* %carries74, align 4
  br label %if.exit64

if.false63:                                       ; No predecessors!
  %lshift75 = shl i128 1, %1
  %mod76 = srem i128 %add58, %lshift75
  %out77 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array29, i128 0, i128 %loop.iter38
  store i128 %mod76, i128* %out77, align 4
  %rshift78 = lshr i128 %add58, %1
  %carries79 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array30, i128 0, i128 %loop.iter38
  store i128 %rshift78, i128* %carries79, align 4
  br label %if.exit64

if.exit64:                                        ; No predecessors!

loop.latch80:                                     ; No predecessors!
  %add81 = add i128 %loop.iter38, 1
  %add82 = add i128 %2, %add
  %slt83 = icmp slt i128 %add81, %add82
  br i1 %slt83, label %loop.body37, label %loop.exit84

loop.exit84:                                      ; No predecessors!
  ret [100 x i128]* %uniform_array29
}

define [100 x i128]* @long_sub.5(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add55, %loop.latch ]
  %eq = icmp eq i128 %loop.iter, 0
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; No predecessors!
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a5 = load i128, i128* %array_ptr, align 4
  %array_ptr6 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b7 = load i128, i128* %array_ptr6, align 4
  %sge = icmp sge i128 %a5, %b7

if.false:                                         ; No predecessors!
  %array_ptr22 = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a23 = load i128, i128* %array_ptr22, align 4
  %array_ptr24 = getelementptr inbounds [0 x i128], [0 x i128]* %b, i128 0, i128 %loop.iter
  %b25 = load i128, i128* %array_ptr24, align 4
  %sub26 = sub i128 %loop.iter, 1
  %array_ptr27 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array1, i128 0, i128 %sub26
  %borrow28 = load i128, i128* %array_ptr27, align 4
  %add29 = add i128 %b25, %borrow28
  %sge30 = icmp sge i128 %a23, %add29

if.exit:                                          ; No predecessors!
  br i1 %sge, label %if.true2, label %if.false3

if.true2:                                         ; No predecessors!
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

if.false3:                                        ; No predecessors!
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

if.exit4:                                         ; No predecessors!
  br label %if.exit
  br i1 %sge30, label %if.true19, label %if.false20

if.true19:                                        ; No predecessors!
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

if.false20:                                       ; No predecessors!
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

if.exit21:                                        ; No predecessors!
  br label %if.exit

loop.latch:                                       ; No predecessors!
  %add55 = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add55, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  ret [100 x i128]* %uniform_array
}

define [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %1, i128 %2, [0 x i128]* %3) {
entry:
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  br label %loop.body1

loop.body1:                                       ; No predecessors!
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

loop.latch15:                                     ; No predecessors!
  %add16 = add i128 %loop.iter2, 1
  %slt17 = icmp slt i128 %add16, %1
  br i1 %slt17, label %loop.body1, label %loop.exit18

loop.exit18:                                      ; No predecessors!
  ret [100 x i128]* %uniform_array
}

define [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %2, [0 x i128]* %3, i128 %4) {
entry:
  %a = alloca [0 x i128], align 8
  %uniform_array = alloca [2 x [100 x i128]], align 8
  %uniform_array1 = alloca [200 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a2 = load i128, i128* %array_ptr, align 4
  %remainder = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %loop.iter
  store i128 %a2, i128* %remainder, align 4
  br label %loop.latch

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %add3 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add3
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  %uniform_array4 = alloca [200 x i128], align 8
  %uniform_array5 = alloca [200 x i128], align 8
  br label %loop.body6

loop.body6:                                       ; No predecessors!
  %loop.iter7 = phi i128 [ %2, %loop.exit ], [ %sub53, %loop.latch52 ]
  %eq = icmp eq i128 %loop.iter7, %2
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch52

if.true:                                          ; No predecessors!
  %dividend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %1
  store i128 0, i128* %dividend, align 4
  %sub = sub i128 %1, 1

if.false:                                         ; No predecessors!

if.exit:                                          ; No predecessors!
  br label %loop.body8
  %short_div = call i128 @short_div(i128 %0, i128 %1, [200 x i128]* %uniform_array5, i128 %4)
  %out = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  store i128 %short_div, i128* %out, align 4
  %array_ptr27 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 0, i128 %loop.iter7
  %out28 = load i128, i128* %array_ptr27, align 4
  %long_scalar_mult.6 = call [100 x i128]* @long_scalar_mult.6(i128 %0, i128 %1, i128 %out28, i128 %4)
  %uniform_array29 = alloca [200 x i128], align 8

loop.body8:                                       ; No predecessors!
  %loop.iter9 = phi i128 [ %sub, %if.exit ], [ %sub15, %loop.latch14 ]
  %add10 = add i128 %loop.iter9, %2
  %array_ptr11 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add10
  %remainder12 = load i128, i128* %array_ptr11, align 4
  %dividend13 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter9
  store i128 %remainder12, i128* %dividend13, align 4
  br label %loop.latch14

loop.latch14:                                     ; No predecessors!
  %sub15 = sub i128 %loop.iter9, 1
  %sge = icmp sge i128 %sub15, 0
  br i1 %sge, label %loop.body8, label %loop.exit16

loop.exit16:                                      ; No predecessors!
  br label %if.exit
  br label %loop.body17

loop.body17:                                      ; No predecessors!
  %loop.iter18 = phi i128 [ %1, %loop.exit16 ], [ %sub24, %loop.latch23 ]
  %add19 = add i128 %loop.iter18, %loop.iter7
  %array_ptr20 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array1, i128 0, i128 %add19
  %remainder21 = load i128, i128* %array_ptr20, align 4
  %dividend22 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array5, i128 0, i128 %loop.iter18
  store i128 %remainder21, i128* %dividend22, align 4
  br label %loop.latch23

loop.latch23:                                     ; No predecessors!
  %sub24 = sub i128 %loop.iter18, 1
  %sge25 = icmp sge i128 %sub24, 0
  br i1 %sge25, label %loop.body17, label %loop.exit26

loop.exit26:                                      ; No predecessors!
  br label %if.exit
  br label %loop.body30

loop.body30:                                      ; No predecessors!
  %loop.iter31 = phi i128 [ 0, %loop.exit26 ], [ %add33, %loop.latch32 ]
  %subtrahend = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array29, i128 0, i128 %loop.iter31
  store i128 0, i128* %subtrahend, align 4
  br label %loop.latch32

loop.latch32:                                     ; No predecessors!
  %add33 = add i128 %loop.iter31, 1
  %add34 = add i128 %2, %1
  %slt35 = icmp slt i128 %add33, %add34
  br i1 %slt35, label %loop.body30, label %loop.exit36

loop.exit36:                                      ; No predecessors!
  br label %loop.body37

loop.body37:                                      ; No predecessors!
  %loop.iter38 = phi i128 [ 0, %loop.exit36 ], [ %add49, %loop.latch48 ]
  %add42 = add i128 %loop.iter7, %loop.iter38
  %add43 = add i128 %2, %1
  %slt44 = icmp slt i128 %add42, %add43
  br i1 %slt44, label %if.true39, label %if.false40
  br label %loop.latch48

if.true39:                                        ; No predecessors!
  %array_ptr45 = getelementptr inbounds [100 x i128], [100 x i128]* %long_scalar_mult.6, i128 0, i128 %loop.iter38
  %mult_shift = load i128, i128* %array_ptr45, align 4
  %add46 = add i128 %loop.iter7, %loop.iter38
  %subtrahend47 = getelementptr inbounds [200 x i128], [200 x i128]* %uniform_array29, i128 0, i128 %add46
  store i128 %mult_shift, i128* %subtrahend47, align 4
  br label %if.exit41

if.false40:                                       ; No predecessors!
  br label %if.exit41

if.exit41:                                        ; No predecessors!

loop.latch48:                                     ; No predecessors!
  %add49 = add i128 %loop.iter38, 1
  %sle = icmp sle i128 %add49, %1
  br i1 %sle, label %loop.body37, label %loop.exit50

loop.exit50:                                      ; No predecessors!
  %add51 = add i128 %2, %1
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %add51, [200 x i128]* %uniform_array1, [200 x i128]* %uniform_array29)

loop.latch52:                                     ; No predecessors!
  %sub53 = sub i128 %loop.iter7, 1
  %sge54 = icmp sge i128 %sub53, 0
  br i1 %sge54, label %loop.body6, label %loop.exit55

loop.exit55:                                      ; No predecessors!
  br label %loop.body56

loop.body56:                                      ; No predecessors!
  %loop.iter57 = phi i128 [ 0, %loop.exit55 ], [ %add62, %loop.latch61 ]
  %array_ptr58 = getelementptr inbounds [100 x i128], [100 x i128]* %long_sub.5, i128 0, i128 %loop.iter57
  %remainder59 = load i128, i128* %array_ptr58, align 4
  %out60 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %loop.iter57
  store i128 %remainder59, i128* %out60, align 4
  br label %loop.latch61

loop.latch61:                                     ; No predecessors!
  %add62 = add i128 %loop.iter57, 1
  %slt63 = icmp slt i128 %add62, %1
  br i1 %slt63, label %loop.body56, label %loop.exit64

loop.exit64:                                      ; No predecessors!
  %out65 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out65, align 4
  ret [2 x [100 x i128]]* %uniform_array
}

define [100 x i128]* @prod.8(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %a = alloca [0 x i128], align 8
  %b = alloca [0 x i128], align 8
  %uniform_array = alloca [100 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add29, %loop.latch28 ]
  %prod_val = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter
  store i128 0, i128* %prod_val, align 4
  %slt = icmp slt i128 %loop.iter, %1
  br i1 %slt, label %if.true, label %if.false
  br label %loop.latch28

if.true:                                          ; No predecessors!

if.false:                                         ; No predecessors!
  %sub10 = sub i128 %loop.iter, %1
  %add11 = add i128 %sub10, 1

if.exit:                                          ; No predecessors!
  br label %loop.body1

loop.body1:                                       ; No predecessors!
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

loop.latch:                                       ; No predecessors!
  %add9 = add i128 %loop.iter2, 1
  %sle = icmp sle i128 %add9, %loop.iter
  br i1 %sle, label %loop.body1, label %loop.exit

loop.exit:                                        ; No predecessors!
  br label %if.exit
  br label %loop.body12

loop.body12:                                      ; No predecessors!
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

loop.latch24:                                     ; No predecessors!
  %add25 = add i128 %loop.iter13, 1
  %slt26 = icmp slt i128 %add25, %1
  br i1 %slt26, label %loop.body12, label %loop.exit27

loop.exit27:                                      ; No predecessors!
  br label %if.exit

loop.latch28:                                     ; No predecessors!
  %add29 = add i128 %loop.iter, 1
  %mul30 = mul i128 2, %1
  %sub31 = sub i128 %mul30, 1
  %slt32 = icmp slt i128 %add29, %sub31
  br i1 %slt32, label %loop.body, label %loop.exit33

loop.exit33:                                      ; No predecessors!
  %uniform_array34 = alloca [100 x i128], align 8
  %uniform_array35 = alloca [100 x [3 x i128]], align 8
  br label %loop.body36

loop.body36:                                      ; No predecessors!
  %loop.iter37 = phi i128 [ 0, %loop.exit33 ], [ %add41, %loop.latch40 ]
  %array_ptr38 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter37
  %prod_val39 = load i128, i128* %array_ptr38, align 4
  %SplitThreeFn.2 = call [3 x i128]* @SplitThreeFn.2(i128 %prod_val39, i128 %0, i128 %0, i128 %0)
  %split = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter37
  store [3 x i128]* %SplitThreeFn.2, [3 x i128]* %split, align 8
  br label %loop.latch40

loop.latch40:                                     ; No predecessors!
  %add41 = add i128 %loop.iter37, 1
  %mul42 = mul i128 2, %1
  %sub43 = sub i128 %mul42, 1
  %slt44 = icmp slt i128 %add41, %sub43
  br i1 %slt44, label %loop.body36, label %loop.exit45

loop.exit45:                                      ; No predecessors!
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

if.true49:                                        ; No predecessors!
  %array_ptr54 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 0, i128 1
  %split55 = load i128, i128* %array_ptr54, align 4
  %array_ptr56 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 1, i128 0
  %split57 = load i128, i128* %array_ptr56, align 4
  %add58 = add i128 %split55, %split57
  %SplitFn.1 = call [2 x i128]* @SplitFn.1(i128 %add58, i128 %0, i128 %0)
  %array_ptr59 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.1, i128 0, i128 0
  %sumAndCarry = load i128, i128* %array_ptr59, align 4
  %out60 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 1
  store i128 %sumAndCarry, i128* %out60, align 4
  %array_ptr61 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.1, i128 0, i128 1
  %sumAndCarry62 = load i128, i128* %array_ptr61, align 4
  %carry63 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 1
  store i128 %sumAndCarry62, i128* %carry63, align 4
  br label %if.exit51

if.false50:                                       ; No predecessors!
  br label %if.exit51

if.exit51:                                        ; No predecessors!
  %mul67 = mul i128 2, %1
  %sub68 = sub i128 %mul67, 1
  %sgt69 = icmp sgt i128 %sub68, 2
  br i1 %sgt69, label %if.true64, label %if.false65

if.true64:                                        ; No predecessors!

if.false65:                                       ; No predecessors!
  br label %if.exit66

if.exit66:                                        ; No predecessors!
  br label %loop.body70
  ret [100 x i128]* %uniform_array34

loop.body70:                                      ; No predecessors!
  %loop.iter71 = phi i128 [ 2, %if.exit66 ], [ %add94, %loop.latch93 ]
  %array_ptr72 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %loop.iter71, i128 0
  %split73 = load i128, i128* %array_ptr72, align 4
  %sub74 = sub i128 %loop.iter71, 1
  %array_ptr75 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub74, i128 1
  %split76 = load i128, i128* %array_ptr75, align 4
  %add77 = add i128 %split73, %split76
  %sub78 = sub i128 %loop.iter71, 2
  %array_ptr79 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub78, i128 2
  %split80 = load i128, i128* %array_ptr79, align 4
  %add81 = add i128 %add77, %split80
  %sub82 = sub i128 %loop.iter71, 1
  %array_ptr83 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub82
  %carry84 = load i128, i128* %array_ptr83, align 4
  %add85 = add i128 %add81, %carry84
  %SplitFn.186 = call [2 x i128]* @SplitFn.1(i128 %add85, i128 %0, i128 %0)
  %array_ptr87 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.186, i128 0, i128 0
  %sumAndCarry88 = load i128, i128* %array_ptr87, align 4
  %out89 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %loop.iter71
  store i128 %sumAndCarry88, i128* %out89, align 4
  %array_ptr90 = getelementptr inbounds [2 x i128], [2 x i128]* %SplitFn.186, i128 0, i128 1
  %sumAndCarry91 = load i128, i128* %array_ptr90, align 4
  %carry92 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %loop.iter71
  store i128 %sumAndCarry91, i128* %carry92, align 4
  br label %loop.latch93

loop.latch93:                                     ; No predecessors!
  %add94 = add i128 %loop.iter71, 1
  %mul95 = mul i128 2, %1
  %sub96 = sub i128 %mul95, 1
  %slt97 = icmp slt i128 %add94, %sub96
  br i1 %slt97, label %loop.body70, label %loop.exit98

loop.exit98:                                      ; No predecessors!
  %mul99 = mul i128 2, %1
  %sub100 = sub i128 %mul99, 2
  %array_ptr101 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub100, i128 1
  %split102 = load i128, i128* %array_ptr101, align 4
  %mul103 = mul i128 2, %1
  %sub104 = sub i128 %mul103, 3
  %array_ptr105 = getelementptr inbounds [100 x [3 x i128]], [100 x [3 x i128]]* %uniform_array35, i128 0, i128 %sub104, i128 2
  %split106 = load i128, i128* %array_ptr105, align 4
  %add107 = add i128 %split102, %split106
  %mul108 = mul i128 2, %1
  %sub109 = sub i128 %mul108, 2
  %array_ptr110 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array46, i128 0, i128 %sub109
  %carry111 = load i128, i128* %array_ptr110, align 4
  %add112 = add i128 %add107, %carry111
  %mul113 = mul i128 2, %1
  %sub114 = sub i128 %mul113, 1
  %out115 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array34, i128 0, i128 %sub114
  store i128 %add112, i128* %out115, align 4
  br label %if.exit66
}

define [100 x i128]* @mod_exp.9(i128 %0, i128 %1, i128 %2, i128 %3, [0 x i128]* %4) {
entry:
  %e = alloca [0 x i128], align 8
  %uniform_array = alloca [500 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add6, %loop.latch5 ]
  br label %loop.body1
  br label %loop.latch5

loop.body1:                                       ; No predecessors!
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

loop.latch:                                       ; No predecessors!
  %add4 = add i128 %loop.iter2, 1
  %slt = icmp slt i128 %add4, %0
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; No predecessors!

loop.latch5:                                      ; No predecessors!
  %add6 = add i128 %loop.iter, 1
  %slt7 = icmp slt i128 %add6, %1
  br i1 %slt7, label %loop.body, label %loop.exit8

loop.exit8:                                       ; No predecessors!
  %uniform_array9 = alloca [100 x i128], align 8
  br label %loop.body10

loop.body10:                                      ; No predecessors!
  %loop.iter11 = phi i128 [ 0, %loop.exit8 ], [ %add13, %loop.latch12 ]
  %out = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 %loop.iter11
  store i128 0, i128* %out, align 4
  br label %loop.latch12

loop.latch12:                                     ; No predecessors!
  %add13 = add i128 %loop.iter11, 1
  %slt14 = icmp slt i128 %add13, 100
  br i1 %slt14, label %loop.body10, label %loop.exit15

loop.exit15:                                      ; No predecessors!
  %out16 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array9, i128 0, i128 0
  store i128 1, i128* %out16, align 4
  %mul17 = mul i128 %1, %0
  %sub = sub i128 %mul17, 1
  br label %loop.body18

loop.body18:                                      ; No predecessors!
  %loop.iter19 = phi i128 [ %sub, %loop.exit15 ], [ %sub35, %loop.latch34 ]
  %array_ptr20 = getelementptr inbounds [500 x i128], [500 x i128]* %uniform_array, i128 0, i128 %loop.iter19
  %eBits21 = load i128, i128* %array_ptr20, align 4
  %eq = icmp eq i128 %eBits21, 1
  br i1 %eq, label %if.true, label %if.false
  br label %loop.latch34

if.true:                                          ; No predecessors!
  %uniform_array22 = alloca [200 x i128], align 8
  %prod.8 = call [100 x i128]* @prod.8(i128 %0, i128 %1, [100 x i128]* %uniform_array9, i128 %2)
  %uniform_array23 = alloca [2 x [100 x i128]], align 8
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.8, i128 %3)
  %array_ptr24 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %temp2 = load [100 x i128], [100 x i128]* %array_ptr24, align 4
  store [100 x i128] %temp2, [100 x i128]* %uniform_array9, align 4
  br label %if.exit

if.false:                                         ; No predecessors!
  br label %if.exit

if.exit:                                          ; No predecessors!
  %sgt = icmp sgt i128 %loop.iter19, 0
  br i1 %sgt, label %if.true25, label %if.false26

if.true25:                                        ; No predecessors!
  %uniform_array28 = alloca [200 x i128], align 8
  %prod.829 = call [100 x i128]* @prod.8(i128 %0, i128 %1, [100 x i128]* %uniform_array9, [100 x i128]* %uniform_array9)
  %uniform_array30 = alloca [2 x [100 x i128]], align 8
  %long_div.731 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.829, i128 %3)
  %array_ptr32 = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.731, i128 0, i128 1
  %temp233 = load [100 x i128], [100 x i128]* %array_ptr32, align 4
  store [100 x i128] %temp233, [100 x i128]* %uniform_array9, align 4
  br label %if.exit27

if.false26:                                       ; No predecessors!
  br label %if.exit27

if.exit27:                                        ; No predecessors!

loop.latch34:                                     ; No predecessors!
  %sub35 = sub i128 %loop.iter19, 1
  %sge = icmp sge i128 %sub35, 0
  br i1 %sge, label %loop.body18, label %loop.exit36

loop.exit36:                                      ; No predecessors!
  ret [100 x i128]* %uniform_array9
}

define [100 x i128]* @mod_inv.10(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %p = alloca [0 x i128], align 8
  %a = alloca [0 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a1 = load i128, i128* %array_ptr, align 4
  %ne = icmp ne i128 %a1, 0
  br i1 %ne, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; No predecessors!
  br label %if.exit

if.false:                                         ; No predecessors!
  br label %if.exit

if.exit:                                          ; No predecessors!

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  br i1 false, label %if.true2, label %if.false3

if.true2:                                         ; No predecessors!
  %uniform_array = alloca [100 x i128], align 8

if.false3:                                        ; No predecessors!

if.exit4:                                         ; No predecessors!
  br label %loop.body5

loop.body5:                                       ; No predecessors!
  %loop.iter6 = phi i128 [ 0, %if.exit4 ], [ %add8, %loop.latch7 ]
  %ret = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter6
  store i128 0, i128* %ret, align 4
  br label %loop.latch7

loop.latch7:                                      ; No predecessors!
  %add8 = add i128 %loop.iter6, 1
  %slt9 = icmp slt i128 %add8, %1
  br i1 %slt9, label %loop.body5, label %loop.exit10

loop.exit10:                                      ; No predecessors!
  ret [100 x i128]* %uniform_array
  br label %if.exit4
}

define [100 x i128]* @mod_inv.11(i128 %0, i128 %1, [0 x i128]* %2, [0 x i128]* %3) {
entry:
  %p = alloca [0 x i128], align 8
  %a = alloca [0 x i128], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [0 x i128], [0 x i128]* %a, i128 0, i128 %loop.iter
  %a1 = load i128, i128* %array_ptr, align 4
  %ne = icmp ne i128 %a1, 0
  br i1 %ne, label %if.true, label %if.false
  br label %loop.latch

if.true:                                          ; No predecessors!
  br label %if.exit

if.false:                                         ; No predecessors!
  br label %if.exit

if.exit:                                          ; No predecessors!

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  br i1 false, label %if.true2, label %if.false3

if.true2:                                         ; No predecessors!
  %uniform_array = alloca [100 x i128], align 8

if.false3:                                        ; No predecessors!
  br label %if.exit4

if.exit4:                                         ; No predecessors!
  br label %loop.body5
  %uniform_array11 = alloca [100 x i128], align 8

loop.body5:                                       ; No predecessors!
  %loop.iter6 = phi i128 [ 0, %if.exit4 ], [ %add8, %loop.latch7 ]
  %ret = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array, i128 0, i128 %loop.iter6
  store i128 0, i128* %ret, align 4
  br label %loop.latch7

loop.latch7:                                      ; No predecessors!
  %add8 = add i128 %loop.iter6, 1
  %slt9 = icmp slt i128 %add8, %1
  br i1 %slt9, label %loop.body5, label %loop.exit10

loop.exit10:                                      ; No predecessors!
  ret [100 x i128]* %uniform_array
  br label %loop.body12

loop.body12:                                      ; No predecessors!
  %loop.iter13 = phi i128 [ 0, %loop.exit10 ], [ %add22, %loop.latch21 ]
  %slt17 = icmp slt i128 %loop.iter13, %1
  br i1 %slt17, label %if.true14, label %if.false15
  br label %loop.latch21

if.true14:                                        ; No predecessors!
  %array_ptr18 = getelementptr inbounds [0 x i128], [0 x i128]* %p, i128 0, i128 %loop.iter13
  %p19 = load i128, i128* %array_ptr18, align 4
  %pCopy = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 %p19, i128* %pCopy, align 4
  br label %if.exit16

if.false15:                                       ; No predecessors!
  %pCopy20 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array11, i128 0, i128 %loop.iter13
  store i128 0, i128* %pCopy20, align 4
  br label %if.exit16

if.exit16:                                        ; No predecessors!

loop.latch21:                                     ; No predecessors!
  %add22 = add i128 %loop.iter13, 1
  %slt23 = icmp slt i128 %add22, 100
  br i1 %slt23, label %loop.body12, label %loop.exit24

loop.exit24:                                      ; No predecessors!
  %uniform_array25 = alloca [100 x i128], align 8
  br label %loop.body26

loop.body26:                                      ; No predecessors!
  %loop.iter27 = phi i128 [ 0, %loop.exit24 ], [ %add29, %loop.latch28 ]
  %two = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 %loop.iter27
  store i128 0, i128* %two, align 4
  br label %loop.latch28

loop.latch28:                                     ; No predecessors!
  %add29 = add i128 %loop.iter27, 1
  %slt30 = icmp slt i128 %add29, 100
  br i1 %slt30, label %loop.body26, label %loop.exit31

loop.exit31:                                      ; No predecessors!
  %two32 = getelementptr inbounds [100 x i128], [100 x i128]* %uniform_array25, i128 0, i128 0
  store i128 2, i128* %two32, align 4
  %uniform_array33 = alloca [100 x i128], align 8
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, [100 x i128]* %uniform_array11, [100 x i128]* %uniform_array25)
  %uniform_array34 = alloca [100 x i128], align 8
  %mod_exp.9 = call [100 x i128]* @mod_exp.9(i128 %0, i128 %1, [0 x i128]* %a, [100 x i128]* %uniform_array11, [100 x i128]* %long_sub.5)
  ret [100 x i128]* %mod_exp.9
}

define [100 x i128]* @long_sub_mod_p.12(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %long_gt = call i128 @long_gt(i128 %0, i128 %1, i128 %2, i128 %3)
  %uniform_array = alloca [100 x i128], align 8
  br i128 %long_gt, label %if.true, label %if.false

if.true:                                          ; No predecessors!
  %long_sub.5 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %2, i128 %3)
  br label %if.exit

if.false:                                         ; No predecessors!
  %long_sub.51 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %3, i128 %2)
  br label %if.exit

if.exit:                                          ; No predecessors!
  %uniform_array2 = alloca [2 x [100 x i128]], align 8
  br label %loop.body

loop.body:                                        ; No predecessors!
  %loop.iter = phi i128 [ %1, %if.exit ], [ %add, %loop.latch ]
  %tmp = getelementptr inbounds [100 x i128], [100 x i128]* %long_sub.51, i128 0, i128 %loop.iter
  store i128 0, i128* %tmp, align 4
  br label %loop.latch

loop.latch:                                       ; No predecessors!
  %add = add i128 %loop.iter, 1
  %mul = mul i128 2, %1
  %slt = icmp slt i128 %add, %mul
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; No predecessors!
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %long_sub.51, i128 %4)
  %eq = icmp eq i128 %long_gt, 0
  br i1 %eq, label %if.true3, label %if.false4

if.true3:                                         ; No predecessors!
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %out = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %long_sub.56 = call [100 x i128]* @long_sub.5(i128 %0, i128 %1, i128 %4, [100 x i128] %out)
  br label %if.exit5

if.false4:                                        ; No predecessors!
  br label %if.exit5

if.exit5:                                         ; No predecessors!
  ret [100 x i128]* %long_sub.56
}

declare noalias i8* @malloc(i32)

define [100 x i128]* @prod_mod_p.13(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %uniform_array = alloca [100 x i128], align 8
  %uniform_array1 = alloca [2 x [100 x i128]], align 8
  %prod.8 = call [100 x i128]* @prod.8(i128 %0, i128 %1, i128 %2, i128 %3)
  %long_div.7 = call [2 x [100 x i128]]* @long_div.7(i128 %0, i128 %1, i128 %1, [100 x i128]* %prod.8, i128 %4)
  %array_ptr = getelementptr inbounds [2 x [100 x i128]], [2 x [100 x i128]]* %long_div.7, i128 0, i128 1
  %result = load [100 x i128], [100 x i128]* %array_ptr, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([100 x i128]* getelementptr ([100 x i128], [100 x i128]* null, i32 1) to i32))
  %ret_array = bitcast i8* %malloccall to [100 x i128]*
  store [100 x i128] %result, [100 x i128]* %ret_array, align 4
  ret [100 x i128]* %ret_array
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
