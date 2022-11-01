; ModuleID = 'main'
source_filename = "main"

%t_struct_bits2point = type { %t_struct_param_bits2point*, void (%t_struct_bits2point*)*, [256 x i128]*, [256 x i128]* }
%t_struct_param_bits2point = type {}

define void @intrinsic_add_constraint(i128 %0, i128 %1, i1* %2) {
entry:
  %constraint = icmp eq i128 %0, %1
  store i1 %constraint, i1* %2, align 1
}

define i128 @intrinsic_inline_switch(i1 %0, i128 %1, i128 %2) {
entry:
  br i1 %0, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %1

if.false:                                         ; preds = %entry
  ret i128 %2
}

define void @t_fn_init_bits2point(%t_struct_bits2point* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_bits2point, %t_struct_bits2point* %0, i32 0, i32 2
  %read_signal_input.in = load [256 x i128]*, [256 x i128]** %struct_ptr, align 8
  %in = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32), i32 256))
  %out = bitcast i8* %malloccall to i128*

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_bits2point, %t_struct_bits2point* %0, i32 0, i32 3
  store i128* %out, [256 x i128]** %write_signal_output.out, align 8
}

define %t_struct_bits2point @t_fn_build_bits2point(%t_struct_param_bits2point* %0) {
entry:
  %1 = alloca %t_struct_bits2point, align 8
  %param = getelementptr inbounds %t_struct_bits2point, %t_struct_bits2point* %1, i32 0, i32 0
  store %t_struct_param_bits2point* %0, %t_struct_param_bits2point** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_bits2point, %t_struct_bits2point* %1, i32 0, i32 1
  store void (%t_struct_bits2point*)* @t_fn_init_bits2point, void (%t_struct_bits2point*)** %init_fn, align 8
  ret %t_struct_bits2point* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

declare noalias i8* @malloc(i32)

attributes #0 = { argmemonly nofree nounwind willreturn }
