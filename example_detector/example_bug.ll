; ModuleID = 'main'
source_filename = "main"

%struct_template_circuit_and = type { i128, i128, i128, i128 }

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
declare fp128 @llvm.powi.f128.i32(fp128, i32) #0

define i128 @fn_intrinsic_inline_powi(i128 %0, i128 %1) {
entry:
  %inline_powi.base = uitofp i128 %0 to fp128
  %inline_powi.power = trunc i128 %1 to i32
  %inline_powi.cal = call fp128 @llvm.powi.f128.i32(fp128 %inline_powi.base, i32 %inline_powi.power)
  %inline_powi.ret = fptoui fp128 %inline_powi.cal to i128
  ret i128 %inline_powi.ret
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %read_arg_inner.and.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.and.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 1
  %read_input_inner.and.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.and.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  %read_input_inner.and.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.and.b, i128* %b.bind, align 4
  %out = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 1000, %n
  store i128 %add, i128* %out, align 4
  %out3 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out3, i128 %add, i1* @constraint)
  br label %exit

exit:                                             ; preds = %entry
  %out4 = load i128, i128* %out, align 4
  %write_output_inner.and.out = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 3
  store i128 %out4, i128* %write_output_inner.and.out, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and(i128 %0) {
entry:
  %struct_template_circuit_and = alloca %struct_template_circuit_and, align 8
  %write_arg_inner.and.n = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %struct_template_circuit_and, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.and.n, align 4
  ret %struct_template_circuit_and* %struct_template_circuit_and
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
