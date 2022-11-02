; ModuleID = 'main'
source_filename = "main"

%t_struct_bits2num = type { %t_struct_param_bits2num*, void (%t_struct_bits2num*)*, [256 x i128]*, i128 }
%t_struct_param_bits2num = type { i128 }

@constraint = external global i1

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
  ret void
}

define i128 @intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @t_fn_init_bits2num(%t_struct_bits2num* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_bits2num, %t_struct_bits2num* %0, i32 0, i32 0
  %param = load %t_struct_param_bits2num*, %t_struct_param_bits2num** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_bits2num, %t_struct_param_bits2num* %param, i32 0, i32 0
  %params.n = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_bits2num, %t_struct_bits2num* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add4, %loop.latch ]
  %array_ptr = getelementptr inbounds i128, i128* %in, i128 %loop.i
  %in3 = load i128, i128* %array_ptr, align 4
  %mul = mul i128 %in3, 1
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %add = add i128 0, %mul.mod
  %add.mod = srem i128 %add, 12539295309507511577697735
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add4 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add4, %params.n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @intrinsic_add_constraint(i128 %add.mod, i128 %add.mod, i1* @constraint)
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_bits2num, %t_struct_bits2num* %0, i32 0, i32 3
  store i128 %add.mod, i128* %write_signal_output.out, align 4
  ret void
}

define %t_struct_bits2num* @t_fn_build_bits2num(%t_struct_param_bits2num* %0) {
entry:
  %1 = alloca %t_struct_bits2num, align 8
  %param = getelementptr inbounds %t_struct_bits2num, %t_struct_bits2num* %1, i32 0, i32 0
  store %t_struct_param_bits2num* %0, %t_struct_param_bits2num** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_bits2num, %t_struct_bits2num* %1, i32 0, i32 1
  store void (%t_struct_bits2num*)* @t_fn_init_bits2num, void (%t_struct_bits2num*)** %init_fn, align 8
  ret %t_struct_bits2num* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn }
