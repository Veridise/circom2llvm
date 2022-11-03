; ModuleID = 'main'
source_filename = "main"

%t_struct_escalarproduct = type { %t_struct_param_escalarproduct*, void (%t_struct_escalarproduct*)*, [256 x i128]*, [256 x i128]*, i128 }
%t_struct_param_escalarproduct = type { i128 }

@constraint = external global i1
@constraint.1 = external global i1

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

define void @t_fn_init_escalarproduct(%t_struct_escalarproduct* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %0, i32 0, i32 0
  %param = load %t_struct_param_escalarproduct*, %t_struct_param_escalarproduct** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_escalarproduct, %t_struct_param_escalarproduct* %param, i32 0, i32 0
  %params.w = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %0, i32 0, i32 2
  %read_signal_input.in1 = load [256 x i128]*, [256 x i128]** %struct_ptr2, align 8
  %in1 = alloca i128, i32 256, align 8
  %1 = bitcast i128* %in1 to i8*
  %2 = bitcast [256 x i128]* %read_signal_input.in1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %1, i8* align 4 %2, i32 256, i1 false)
  %struct_ptr3 = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %0, i32 0, i32 3
  %read_signal_input.in2 = load [256 x i128]*, [256 x i128]** %struct_ptr3, align 8
  %in2 = alloca i128, i32 256, align 8
  %3 = bitcast i128* %in2 to i8*
  %4 = bitcast [256 x i128]* %read_signal_input.in2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 256, i1 false)
  %aux = alloca i128, i32 256, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add12, %loop.latch ]
  %array_ptr = getelementptr inbounds i128, i128* %in1, i128 %loop.i
  %in14 = load i128, i128* %array_ptr, align 4
  %array_ptr5 = getelementptr inbounds i128, i128* %in2, i128 %loop.i
  %in26 = load i128, i128* %array_ptr5, align 4
  %mul = mul i128 %in14, %in26
  %aux7 = getelementptr inbounds i128, i128* %aux, i128 %loop.i
  store i128 %mul, i128* %aux7, align 4
  %array_ptr8 = getelementptr inbounds i128, i128* %aux, i128 %loop.i
  %aux9 = load i128, i128* %array_ptr8, align 4
  call void @intrinsic_add_constraint(i128 %aux9, i128 %mul, i1* @constraint)
  %array_ptr10 = getelementptr inbounds i128, i128* %aux, i128 %loop.i
  %aux11 = load i128, i128* %array_ptr10, align 4
  %add = add i128 0, %aux11
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add12 = add i128 %loop.i, 1
  %slt = icmp slt i128 %add12, %params.w
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @intrinsic_add_constraint(i128 %add, i128 %add, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %loop.exit
  %write_signal_output.out = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %0, i32 0, i32 4
  store i128 %add, i128* %write_signal_output.out, align 4
  ret void
}

define %t_struct_escalarproduct* @t_fn_build_escalarproduct(%t_struct_param_escalarproduct* %0) {
entry:
  %1 = alloca %t_struct_escalarproduct, align 8
  %param = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %1, i32 0, i32 0
  store %t_struct_param_escalarproduct* %0, %t_struct_param_escalarproduct** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_escalarproduct, %t_struct_escalarproduct* %1, i32 0, i32 1
  store void (%t_struct_escalarproduct*)* @t_fn_init_escalarproduct, void (%t_struct_escalarproduct*)** %init_fn, align 8
  ret %t_struct_escalarproduct* %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn }
