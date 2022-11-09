; ModuleID = 'main'
source_filename = "main"

@array_size.inline_array = external global i64
@array_size.inline_array.1 = external global i64
@array_size.inline_array.2 = external global i128
@array_size.inline_array.3 = external global i128
@array_size.inline_array2 = external global i128

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

define void @fn_intrinsic_add_arraysize(i64 %0, i64* %1) {
entry:
  store i64 %0, i64* %1, align 4
  ret void
}

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
  %inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 %mod, i128 %mod3, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %inline_array, align 4
  call void @fn_intrinsic_add_arraysize(i64 2, i64* @array_size.inline_array)
  ret [256 x i128]* %inline_array
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
  %inline_array = alloca [256 x i128], align 8
  store [256 x i128] [i128 %mod, i128 %mod3, i128 %mod7, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [256 x i128]* %inline_array, align 4
  call void @fn_intrinsic_add_arraysize(i64 3, i64* @array_size.inline_array.1)
  ret [256 x i128]* %inline_array
}

define i128 @splitOverflowedRegister(i128 %0, i128 %1, i128 %2) {
entry:
  %inline_array = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %inline_array, align 4
  call void @fn_intrinsic_add_arraysize(i128 100, i128* @array_size.inline_array.2)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out = getelementptr inbounds [256 x i128], [256 x i128]* %inline_array, i128 0, i128 %loop.iter
  store i128 0, i128* %out, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 100
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %div_ceil = call i128 @div_ceil(i128 %0, i128 %1)
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch4, %loop.exit
  %loop.iter2 = phi i128 [ 0, %loop.exit ], [ %add5, %loop.latch4 ]
  %lshift = shl i128 1, %1
  %mod = srem i128 %2, %lshift
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %inline_array, i128 0, i128 %loop.iter2
  store i128 %mod, i128* %out3, align 4
  %rshift = lshr i128 %2, %1
  br label %loop.latch4

loop.latch4:                                      ; preds = %loop.body1
  %add5 = add i128 %loop.iter2, 1
  %slt6 = icmp slt i128 %add5, %div_ceil
  br i1 %slt6, label %loop.body1, label %loop.exit7

loop.exit7:                                       ; preds = %loop.latch4
  ret [256 x i128]* %inline_array
}

define i128 @getProperRepresentation(i128 %0, i128 %1, i128 %2, i128 %3) {
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
  %inline_array = alloca [256 x i128], align 8
  store [256 x i128] zeroinitializer, [256 x i128]* %inline_array, align 4
  call void @fn_intrinsic_add_arraysize(i128 100, i128* @array_size.inline_array.3)
  %inline_array_ptr = ptrtoint [256 x i128]* %inline_array to i64
  %inline_array2 = alloca [256 x i128], align 8
  store [256 x i128] [i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr, i128 %inline_array_ptr], [256 x i128]* %inline_array2, align 4
  call void @fn_intrinsic_add_arraysize(i128 100, i128* @array_size.inline_array2)
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
