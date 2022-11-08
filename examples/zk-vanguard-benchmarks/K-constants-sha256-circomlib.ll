; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_k = type { %struct_template_params_k*, void (%struct_template_circuit_k*)*, [256 x i128]* }
%struct_template_params_k = type { i128 }

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
declare i128 @llvm.powi.i128.i32(i128, i32) #0

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %struct_ptr = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %struct_template_params_k = load %struct_template_params_k*, %struct_template_params_k** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %struct_template_params_k, %struct_template_params_k* %struct_template_params_k, i32 0, i32 0
  %struct_template_params_k.x = load i128, i128* %struct_ptr1, align 4
  %c = alloca [256 x i128], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %inline_array = alloca [64 x i128], align 8
  store [64 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298], [64 x i128]* %inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.iter = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_ptr = getelementptr inbounds [64 x i128], [64 x i128]* %inline_array, i64 0, i128 %struct_template_params_k.x
  %c2 = load i128, i128* %array_ptr, align 4
  %rshift = lshr i128 %c2, %loop.iter
  %and = and i128 %rshift, 1
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  store i128 %and, i128* %out3, align 4
  %array_ptr4 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i64 0, i128 %loop.iter
  %out5 = load i128, i128* %array_ptr4, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %and, i1* @constraint)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %loop.iter, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %inner_output_write__k.out = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 2
  store [256 x i128]* %out, [256 x i128]** %inner_output_write__k.out, align 8
  ret void
}

define %struct_template_circuit_k* @fn_template_build_k(%struct_template_params_k* %0) {
entry:
  %1 = alloca %struct_template_circuit_k, align 8
  %struct_template_params_k = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %1, i32 0, i32 0
  store %struct_template_params_k* %0, %struct_template_params_k** %struct_template_params_k, align 8
  %fn_template_init_k = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %1, i32 0, i32 1
  store void (%struct_template_circuit_k*)* @fn_template_init_k, void (%struct_template_circuit_k*)** %fn_template_init_k, align 8
  ret %struct_template_circuit_k* %1
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
