; ModuleID = 'main'
source_filename = "main"

%t_struct_k = type { %t_struct_param_k*, void (%t_struct_k*)*, [256 x i128]* }
%t_struct_param_k = type { i128 }

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

define void @t_fn_init_k(%t_struct_k* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_k, %t_struct_k* %0, i32 0, i32 0
  %param = load %t_struct_param_k*, %t_struct_param_k** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_k, %t_struct_param_k* %param, i32 0, i32 0
  %params.x = load i128, i128* %struct_ptr1, align 4
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*
  %inlinearray = alloca i128, i32 64, align 8
  store [64 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298], i128* %inlinearray, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds i128, i128* %inlinearray, i128 %params.x
  %c = load i128, i128* %array_ptr, align 4
  %rshift = lshr i128 %c, %loop.i
  %and = and i128 %rshift, 1
  %out2 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  store i128 %and, i128* %out2, align 4
  %array_ptr3 = getelementptr inbounds i128, i128* %out, i128 %loop.i
  %out4 = load i128, i128* %array_ptr3, align 4
  call void @intrinsic_add_constraint(i128 %out4, i128 %and, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.i, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_k, %t_struct_k* %0, i32 0, i32 2
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
  ret void
}

define %t_struct_k* @t_fn_build_k(%t_struct_param_k* %0) {
entry:
  %1 = alloca %t_struct_k, align 8
  %param = getelementptr inbounds %t_struct_k, %t_struct_k* %1, i32 0, i32 0
  store %t_struct_param_k* %0, %t_struct_param_k** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_k, %t_struct_k* %1, i32 0, i32 1
  store void (%t_struct_k*)* @t_fn_init_k, void (%t_struct_k*)** %init_fn, align 8
  ret %t_struct_k* %1
}

declare noalias i8* @malloc(i32)
