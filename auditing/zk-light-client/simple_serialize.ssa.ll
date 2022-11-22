; ModuleID = './auditing/zk-light-client/simple_serialize.ll'
source_filename = "/Users/hongbo/code/zk-light-client-main/circuits/circuits/simple_serialize.circom"

%struct_template_circuit_bits2num = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_maj_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_h = type { i128, [4096 x i128]* }
%struct_template_circuit_rotr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_k = type { i128, [4096 x i128]* }
%struct_template_circuit_compconstant = type { i128, [4096 x i128]*, [4096 x i128]*, i128, i128 }
%struct_template_circuit_lessthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_ch_t = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_xor3 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_shr = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bigsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_binsum = type { i128, i128, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_aliascheck = type { [4096 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_isequal = type { [4096 x i128]*, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [4096 x i128]* }
%struct_template_circuit_lesseqthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_smallsigma = type { i128, i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_bits2num_strict = type { [4096 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [4096 x i128]* }
%struct_template_circuit_greaterthan = type { i128, [4096 x i128]*, i128 }
%struct_template_circuit_t2 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_num2bits_strict = type { i128, [4096 x i128]* }
%struct_template_circuit_t1 = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sigmaplus = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256compression = type { [4096 x i128]*, [4096 x i128]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]*, [4096 x i128]* }
%struct_template_circuit_sha256 = type { i128, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sha256bytes = type { i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszlayer = type { i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszarray = type { i128, i128, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszphase0synccommittee = type { [4096 x [4096 x i128]]*, [4096 x i128]*, [4096 x i128]* }
%struct_template_circuit_sszphase0beaconblockheader = type { [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]*, [4096 x i128]* }

@constraint = external global i1
@constraint.1 = external global i1
@constraint.2 = external global i1
@constraint.3 = external global i1
@constraint.4 = external global i1
@constraint.5 = external global i1
@constraint.6 = external global i1
@constraint.7 = external global i1
@constraint.8 = external global i1
@constraint.9 = external global i1
@constraint.10 = external global i1
@constraint.11 = external global i1
@constraint.12 = external global i1
@constraint.13 = external global i1
@constraint.14 = external global i1
@constraint.15 = external global i1
@constraint.16 = external global i1
@constraint.17 = external global i1
@constraint.18 = external global i1
@constraint.19 = external global i1
@constraint.20 = external global i1
@constraint.21 = external global i1
@constraint.22 = external global i1
@constraint.23 = external global i1
@constraint.24 = external global i1
@constraint.25 = external global i1
@constraint.26 = external global i1
@constraint.27 = external global i1
@constraint.28 = external global i1
@constraint.29 = external global i1
@constraint.30 = external global i1
@constraint.31 = external global i1
@constraint.32 = external global i1
@constraint.33 = external global i1
@constraint.34 = external global i1
@constraint.35 = external global i1
@constraint.36 = external global i1
@constraint.37 = external global i1
@constraint.38 = external global i1
@constraint.39 = external global i1
@constraint.40 = external global i1
@constraint.41 = external global i1
@constraint.42 = external global i1
@constraint.43 = external global i1
@constraint.44 = external global i1
@constraint.45 = external global i1
@constraint.46 = external global i1
@constraint.47 = external global i1
@constraint.48 = external global i1
@constraint.49 = external global i1
@constraint.50 = external global i1
@constraint.51 = external global i1
@constraint.52 = external global i1
@constraint.53 = external global i1
@constraint.54 = external global i1
@constraint.55 = external global i1
@constraint.56 = external global i1
@constraint.57 = external global i1
@constraint.58 = external global i1
@constraint.59 = external global i1
@constraint.60 = external global i1
@constraint.61 = external global i1
@constraint.62 = external global i1
@constraint.63 = external global i1
@constraint.64 = external global i1
@constraint.65 = external global i1
@constraint.66 = external global i1
@constraint.67 = external global i1
@constraint.68 = external global i1
@constraint.69 = external global i1
@constraint.70 = external global i1
@constraint.71 = external global i1
@constraint.72 = external global i1
@constraint.73 = external global i1
@constraint.74 = external global i1
@constraint.75 = external global i1
@constraint.76 = external global i1
@constraint.77 = external global i1
@constraint.78 = external global i1
@constraint.79 = external global i1
@constraint.80 = external global i1
@constraint.81 = external global i1
@constraint.82 = external global i1
@constraint.83 = external global i1
@constraint.84 = external global i1
@constraint.85 = external global i1
@constraint.86 = external global i1
@constraint.87 = external global i1
@constraint.88 = external global i1
@constraint.89 = external global i1
@constraint.90 = external global i1
@constraint.91 = external global i1
@constraint.92 = external global i1
@constraint.93 = external global i1
@constraint.94 = external global i1
@constraint.95 = external global i1
@constraint.96 = external global i1
@constraint.97 = external global i1
@constraint.98 = external global i1
@constraint.99 = external global i1
@constraint.100 = external global i1
@constraint.101 = external global i1
@constraint.102 = external global i1
@constraint.103 = external global i1
@constraint.104 = external global i1
@constraint.105 = external global i1
@constraint.106 = external global i1
@constraint.107 = external global i1
@constraint.108 = external global i1
@constraint.109 = external global i1
@constraint.110 = external global i1
@constraint.111 = external global i1
@constraint.112 = external global i1
@constraint.113 = external global i1
@constraint.114 = external global i1
@constraint.115 = external global i1
@constraint.116 = external global i1
@constraint.117 = external global i1
@constraint.118 = external global i1
@constraint.119 = external global i1
@constraint.120 = external global i1
@constraint.121 = external global i1
@constraint.122 = external global i1
@constraint.123 = external global i1
@constraint.124 = external global i1
@constraint.125 = external global i1
@constraint.126 = external global i1
@constraint.127 = external global i1
@constraint.128 = external global i1
@constraint.129 = external global i1
@constraint.130 = external global i1
@constraint.131 = external global i1
@constraint.132 = external global i1
@constraint.133 = external global i1
@constraint.134 = external global i1
@constraint.135 = external global i1
@constraint.136 = external global i1
@constraint.137 = external global i1
@constraint.138 = external global i1
@constraint.139 = external global i1
@constraint.140 = external global i1
@constraint.141 = external global i1
@constraint.142 = external global i1
@constraint.143 = external global i1
@constraint.144 = external global i1
@constraint.145 = external global i1
@constraint.146 = external global i1
@constraint.147 = external global i1
@constraint.148 = external global i1
@constraint.149 = external global i1
@constraint.150 = external global i1
@constraint.151 = external global i1
@constraint.152 = external global i1
@constraint.153 = external global i1
@constraint.154 = external global i1
@constraint.155 = external global i1
@constraint.156 = external global i1
@constraint.157 = external global i1
@constraint.158 = external global i1
@constraint.159 = external global i1
@constraint.160 = external global i1
@constraint.161 = external global i1
@constraint.162 = external global i1
@constraint.163 = external global i1
@constraint.164 = external global i1
@constraint.165 = external global i1
@constraint.166 = external global i1
@constraint.167 = external global i1
@constraint.168 = external global i1
@constraint.169 = external global i1
@constraint.170 = external global i1
@constraint.171 = external global i1
@constraint.172 = external global i1
@constraint.173 = external global i1
@constraint.174 = external global i1
@constraint.175 = external global i1
@constraint.176 = external global i1
@constraint.177 = external global i1
@constraint.178 = external global i1
@constraint.179 = external global i1
@constraint.180 = external global i1
@constraint.181 = external global i1
@constraint.182 = external global i1
@constraint.183 = external global i1
@constraint.184 = external global i1
@constraint.185 = external global i1
@constraint.186 = external global i1
@constraint.187 = external global i1
@constraint.188 = external global i1
@constraint.189 = external global i1
@constraint.190 = external global i1
@constraint.191 = external global i1

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

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %lc12 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %e24 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_inner, i128 0, i128 %i.0
  %in7 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %in7, %e2.0
  %add = add i128 %lc1.0, %mul
  %add11 = add i128 %e2.0, %e2.0
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add13 = add i128 %i.0, 1
  %slt = icmp slt i128 %add13, %bits2num.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint)
  %bits2num.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %add, i128* %bits2num.out.write_output_inner, align 4
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  %bits2num.out.read_output_inner = load i128, i128* %struct_getter18, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bits2num.out.write_output_inner20 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %bits2num.out.read_output_inner, i128* %bits2num.out.write_output_inner20, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %bits2num.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %bits2num.n.write_arg_inner, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_maj_t(%struct_template_circuit_maj_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 0
  %maj_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 1
  %maj_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 2
  %maj_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 3
  %maj_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall5 to [4096 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add47, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_inner, i128 0, i128 %k.0
  %b7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_inner, i128 0, i128 %k.0
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.1)
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  store i128 %mul, i128* %mid16, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_inner, i128 0, i128 %k.0
  %b23 = load i128, i128* %array_getter22, align 4
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_inner, i128 0, i128 %k.0
  %c27 = load i128, i128* %array_getter26, align 4
  %add = add i128 %b23, %c27
  %array_getter30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid31 = load i128, i128* %array_getter30, align 4
  %mul32 = mul i128 2, %mid31
  %sub = sub i128 %add, %mul32
  %mul33 = mul i128 %a19, %sub
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid37 = load i128, i128* %array_getter36, align 4
  %add38 = add i128 %mul33, %mid37
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %out42, i128 %add38, i1* @constraint.2)
  %out45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %add38, i128* %out45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add47 = add i128 %k.0, 1
  %slt = icmp slt i128 %add47, %maj_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %maj_t.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 4
  store [4096 x i128]* %mid, [4096 x i128]** %maj_t.mid.write_inter_inner, align 8
  %maj_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %0, i32 0, i32 5
  store [4096 x i128]* %out, [4096 x i128]** %maj_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 %0) {
entry:
  %struct_template_circuit_maj_t = alloca %struct_template_circuit_maj_t, align 8
  %maj_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %struct_template_circuit_maj_t, i32 0, i32 0
  store i128 %0, i128* %maj_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_maj_t* %struct_template_circuit_maj_t
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %i2 = call i128 @fn_intrinsic_inline_init()
  %lc13 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %e24 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %rshift = lshr i128 %num2bits.in.read_input_inner, %i.0
  %and = and i128 %rshift, 1
  %out7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out7, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out10 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.3)
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out19 = load i128, i128* %array_getter18, align 4
  %mul21 = mul i128 %out19, %e2.0
  %add = add i128 %lc1.0, %mul21
  %add24 = add i128 %e2.0, %e2.0
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add26 = add i128 %i.0, 1
  %slt = icmp slt i128 %add26, %num2bits.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.4)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_h(%struct_template_circuit_h* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 0
  %h.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i2 = call i128 @fn_intrinsic_inline_init()
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1779033703, i128 3144134277, i128 1013904242, i128 2773480762, i128 1359893119, i128 2600822924, i128 528734635, i128 1541459225, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %h.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint.5)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %h.out.write_output_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %h.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_h* @fn_template_build_h(i128 %0) {
entry:
  %struct_template_circuit_h = alloca %struct_template_circuit_h, align 8
  %h.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %struct_template_circuit_h, i32 0, i32 0
  store i128 %0, i128* %h.x.write_arg_inner, align 4
  ret %struct_template_circuit_h* %struct_template_circuit_h
}

define i128 @rrot(i128 %0, i128 %1) {
entry:
  %rshift = lshr i128 %0, %1
  %sub = sub i128 32, %1
  %lshift = shl i128 %0, %sub
  %or = or i128 %rshift, %lshift
  %and = and i128 %or, 4294967295
  ret i128 %and
}

define i128 @ssigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 17)
  %call2 = call i128 @rrot(i128 %0, i128 19)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 10
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define i128 @bsigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 2)
  %call2 = call i128 @rrot(i128 %0, i128 13)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 22)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_rotr(%struct_template_circuit_rotr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 0
  %rotr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 1
  %rotr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 2
  %rotr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %add = add i128 %i.0, %rotr.r.read_arg_inner
  %mod = srem i128 %add, %rotr.n.read_arg_inner
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_inner, i128 0, i128 %mod
  %in5 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %in5, i1* @constraint.6)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %in5, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add13 = add i128 %i.0, 1
  %slt = icmp slt i128 %add13, %rotr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %rotr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %rotr.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_rotr* @fn_template_build_rotr(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_rotr = alloca %struct_template_circuit_rotr, align 8
  %rotr.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %struct_template_circuit_rotr, i32 0, i32 0
  store i128 %0, i128* %rotr.n.write_arg_inner, align 4
  %rotr.r.write_arg_inner = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %struct_template_circuit_rotr, i32 0, i32 1
  store i128 %1, i128* %rotr.r.write_arg_inner, align 4
  ret %struct_template_circuit_rotr* %struct_template_circuit_rotr
}

define void @fn_template_init_k(%struct_template_circuit_k* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 0
  %k.x.read_arg_inner = load i128, i128* %struct_getter, align 4
  %i2 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %k.x.read_arg_inner
  %c4 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %c4, %i.0
  %and = and i128 %rshift, 1
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %and, i1* @constraint.7)
  %out11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %k.out.write_output_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %k.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_k* @fn_template_build_k(i128 %0) {
entry:
  %struct_template_circuit_k = alloca %struct_template_circuit_k, align 8
  %k.x.write_arg_inner = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %struct_template_circuit_k, i32 0, i32 0
  store i128 %0, i128* %k.x.write_arg_inner, align 4
  ret %struct_template_circuit_k* %struct_template_circuit_k
}

define i128 @sha256K(i128 %0) {
entry:
  %const_inline_array = alloca [4096 x i128], align 8
  store [4096 x i128] [i128 1116352408, i128 1899447441, i128 3049323471, i128 3921009573, i128 961987163, i128 1508970993, i128 2453635748, i128 2870763221, i128 3624381080, i128 310598401, i128 607225278, i128 1426881987, i128 1925078388, i128 2162078206, i128 2614888103, i128 3248222580, i128 3835390401, i128 4022224774, i128 264347078, i128 604807628, i128 770255983, i128 1249150122, i128 1555081692, i128 1996064986, i128 2554220882, i128 2821834349, i128 2952996808, i128 3210313671, i128 3336571891, i128 3584528711, i128 113926993, i128 338241895, i128 666307205, i128 773529912, i128 1294757372, i128 1396182291, i128 1695183700, i128 1986661051, i128 2177026350, i128 2456956037, i128 2730485921, i128 2820302411, i128 3259730800, i128 3345764771, i128 3516065817, i128 3600352804, i128 4094571909, i128 275423344, i128 430227734, i128 506948616, i128 659060556, i128 883997877, i128 958139571, i128 1322822218, i128 1537002063, i128 1747873779, i128 1955562222, i128 2024104815, i128 2227730452, i128 2361852424, i128 2428436474, i128 2756734187, i128 3204031479, i128 3329325298, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0, i128 0], [4096 x i128]* %const_inline_array, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %const_inline_array, i128 0, i128 %0
  %k3 = load i128, i128* %array_getter, align 4
  ret i128 %k3
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %smsb2 = call i128 @fn_intrinsic_inline_init()
  %sum3 = call i128 @fn_intrinsic_inline_init()
  %a4 = call i128 @fn_intrinsic_inline_init()
  %e5 = call i128 @fn_intrinsic_inline_init()
  %clsb6 = call i128 @fn_intrinsic_inline_init()
  %slsb7 = call i128 @fn_intrinsic_inline_init()
  %sout = call i128 @fn_intrinsic_inline_init()
  %b8 = call i128 @fn_intrinsic_inline_init()
  %i9 = call i128 @fn_intrinsic_inline_init()
  %cmsb10 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [4096 x i128]*
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %b.0 = phi i128 [ poison, %entry ], [ %sub131, %loop.latch ]
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
  %mul = mul i128 %i.0, 2
  %rshift = lshr i128 %compconstant.ct.read_arg_inner, %mul
  %and = and i128 %rshift, 1
  %mul14 = mul i128 %i.0, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %compconstant.ct.read_arg_inner, %add
  %and16 = and i128 %rshift15, 1
  %mul18 = mul i128 %i.0, 2
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  %mul22 = mul i128 %i.0, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %add23
  %in25 = load i128, i128* %array_getter24, align 4
  %eq = icmp eq i128 %and16, 0
  %eq28 = icmp eq i128 %and, 0
  %and29 = and i1 %eq, %eq28
  br i1 %and29, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %neg = sub i128 0, %b.0
  %mul32 = mul i128 %neg, %in25
  %mul34 = mul i128 %mul32, %in19
  %mul37 = mul i128 %b.0, %in25
  %add38 = add i128 %mul34, %mul37
  %mul41 = mul i128 %b.0, %in19
  %add42 = add i128 %add38, %mul41
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts46, i128 %add42, i1* @constraint.8)
  %parts48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add42, i128* %parts48, align 4
  br label %if.exit122

if.false:                                         ; preds = %loop.body
  %eq52 = icmp eq i128 %and16, 0
  %eq54 = icmp eq i128 %and, 1
  %and55 = and i1 %eq52, %eq54
  br i1 %and55, label %if.true49, label %if.false50

if.true49:                                        ; preds = %if.false
  %mul58 = mul i128 %a.0, %in25
  %mul60 = mul i128 %mul58, %in19
  %mul63 = mul i128 %a.0, %in19
  %sub = sub i128 %mul60, %mul63
  %mul66 = mul i128 %b.0, %in25
  %add67 = add i128 %sub, %mul66
  %mul70 = mul i128 %a.0, %in25
  %sub71 = sub i128 %add67, %mul70
  %add73 = add i128 %sub71, %a.0
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts77, i128 %add73, i1* @constraint.9)
  %parts80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add73, i128* %parts80, align 4
  br label %if.exit121

if.false50:                                       ; preds = %if.false
  %eq84 = icmp eq i128 %and16, 1
  %eq86 = icmp eq i128 %and, 0
  %and87 = and i1 %eq84, %eq86
  br i1 %and87, label %if.true81, label %if.false82

if.true81:                                        ; preds = %if.false50
  %mul90 = mul i128 %b.0, %in25
  %mul92 = mul i128 %mul90, %in19
  %mul95 = mul i128 %a.0, %in25
  %sub96 = sub i128 %mul92, %mul95
  %add98 = add i128 %sub96, %a.0
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts102, i128 %add98, i1* @constraint.10)
  %parts105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %neg107 = sub i128 0, %a.0
  %mul109 = mul i128 %neg107, %in25
  %mul111 = mul i128 %mul109, %in19
  %add113 = add i128 %mul111, %a.0
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts117, i128 %add113, i1* @constraint.11)
  %parts120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %array_getter126 = getelementptr inbounds [4096 x i128], [4096 x i128]* %parts, i128 0, i128 %i.0
  %parts127 = load i128, i128* %array_getter126, align 4
  %add128 = add i128 %sum.0, %parts127
  %sub131 = sub i128 %b.0, %e.0
  %add134 = add i128 %a.0, %e.0
  %mul136 = mul i128 %e.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit122
  %add138 = add i128 %i.0, 1
  %slt = icmp slt i128 %add138, 127
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  call void @fn_intrinsic_add_constraint(i128 %sout, i128 %add128, i1* @constraint.12)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.13)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %num2bits152, i1* @constraint.14)
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [4096 x i128]* %parts, [4096 x i128]** %compconstant.parts.write_inter_inner, align 8
  %compconstant.sout.write_inter_inner159 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %compconstant.sout.read_inter_inner, i128* %compconstant.sout.write_inter_inner159, align 4
  %compconstant.out.write_output_inner161 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %compconstant.out.read_output_inner, i128* %compconstant.out.write_output_inner161, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %compconstant.ct.write_arg_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %compconstant.ct.write_arg_inner, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %lessthan.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %lessthan.n.read_arg_inner
  %add4 = add i128 %in2, %lshift
  %array_getter6 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_inner, i128 0, i128 1
  %in7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %add4, %in7
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.15)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub15, i1* @constraint.16)
  %lessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %sub15, i128* %lessthan.out.write_output_inner, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  %lessthan.out.read_output_inner = load i128, i128* %struct_getter19, align 4
  br label %exit

exit:                                             ; preds = %entry
  %lessthan.out.write_output_inner21 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_inner, i128* %lessthan.out.write_output_inner21, align 4
  ret void
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
  %struct_template_circuit_lessthan = alloca %struct_template_circuit_lessthan, align 8
  %lessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %struct_template_circuit_lessthan, i32 0, i32 0
  store i128 %0, i128* %lessthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lessthan* %struct_template_circuit_lessthan
}

define i128 @Maj(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %and2 = and i128 %0, %2
  %xor = xor i128 %and, %and2
  %and5 = and i128 %1, %2
  %xor6 = xor i128 %xor, %and5
  ret i128 %xor6
}

define void @fn_template_init_ch_t(%struct_template_circuit_ch_t* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 0
  %ch_t.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 1
  %ch_t.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 2
  %ch_t.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 3
  %ch_t.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k4 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add24, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_inner, i128 0, i128 %k.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_inner, i128 0, i128 %k.0
  %b9 = load i128, i128* %array_getter8, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_inner, i128 0, i128 %k.0
  %c12 = load i128, i128* %array_getter11, align 4
  %sub = sub i128 %b9, %c12
  %mul = mul i128 %a6, %sub
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_inner, i128 0, i128 %k.0
  %c16 = load i128, i128* %array_getter15, align 4
  %add = add i128 %mul, %c16
  %array_getter19 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %add, i1* @constraint.17)
  %out22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %add, i128* %out22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add24 = add i128 %k.0, 1
  %slt = icmp slt i128 %add24, %ch_t.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %ch_t.out.write_output_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %ch_t.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 %0) {
entry:
  %struct_template_circuit_ch_t = alloca %struct_template_circuit_ch_t, align 8
  %ch_t.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %struct_template_circuit_ch_t, i32 0, i32 0
  store i128 %0, i128* %ch_t.n.write_arg_inner, align 4
  ret %struct_template_circuit_ch_t* %struct_template_circuit_ch_t
}

define i128 @nbits(i128 %0) {
entry:
  %n1 = call i128 @fn_intrinsic_inline_init()
  %r2 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n.0 = phi i128 [ 1, %entry ], [ %mul, %loop.latch ]
  %r.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %add = add i128 %r.0, 1
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %mul = mul i128 %n.0, 2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %sub, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 %add
}

define void @fn_template_init_xor3(%struct_template_circuit_xor3* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 0
  %xor3.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 1
  %xor3.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 2
  %xor3.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 3
  %xor3.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %mid = bitcast i8* %malloccall to [4096 x i128]*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall4 to [4096 x i128]*
  %k5 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add61, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c10 = load i128, i128* %array_getter9, align 4
  %mul = mul i128 %b7, %c10
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %mid14, i128 %mul, i1* @constraint.18)
  %mid16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  store i128 %mul, i128* %mid16, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %array_getter22 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b23 = load i128, i128* %array_getter22, align 4
  %mul24 = mul i128 2, %b23
  %sub = sub i128 1, %mul24
  %array_getter27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c28 = load i128, i128* %array_getter27, align 4
  %mul29 = mul i128 2, %c28
  %sub30 = sub i128 %sub, %mul29
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid34 = load i128, i128* %array_getter33, align 4
  %mul35 = mul i128 4, %mid34
  %add = add i128 %sub30, %mul35
  %mul36 = mul i128 %a19, %add
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_inner, i128 0, i128 %k.0
  %b40 = load i128, i128* %array_getter39, align 4
  %add41 = add i128 %mul36, %b40
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_inner, i128 0, i128 %k.0
  %c45 = load i128, i128* %array_getter44, align 4
  %add46 = add i128 %add41, %c45
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %mid, i128 0, i128 %k.0
  %mid50 = load i128, i128* %array_getter49, align 4
  %mul51 = mul i128 2, %mid50
  %sub52 = sub i128 %add46, %mul51
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  %out56 = load i128, i128* %array_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %out56, i128 %sub52, i1* @constraint.19)
  %out59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.0
  store i128 %sub52, i128* %out59, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add61 = add i128 %k.0, 1
  %slt = icmp slt i128 %add61, %xor3.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %xor3.mid.write_inter_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 4
  store [4096 x i128]* %mid, [4096 x i128]** %xor3.mid.write_inter_inner, align 8
  %xor3.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %0, i32 0, i32 5
  store [4096 x i128]* %out, [4096 x i128]** %xor3.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_xor3* @fn_template_build_xor3(i128 %0) {
entry:
  %struct_template_circuit_xor3 = alloca %struct_template_circuit_xor3, align 8
  %xor3.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %struct_template_circuit_xor3, i32 0, i32 0
  store i128 %0, i128* %xor3.n.write_arg_inner, align 4
  ret %struct_template_circuit_xor3* %struct_template_circuit_xor3
}

define void @fn_template_init_shr(%struct_template_circuit_shr* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 0
  %shr.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 1
  %shr.r.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 2
  %shr.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i3 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add23, %loop.latch ]
  %add = add i128 %i.0, %shr.r.read_arg_inner
  %sge = icmp sge i128 %add, %shr.n.read_arg_inner
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out7 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %out7, i128 0, i1* @constraint.20)
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 0, i128* %out9, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %add12 = add i128 %i.0, %shr.r.read_arg_inner
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_inner, i128 0, i128 %add12
  %in14 = load i128, i128* %array_getter13, align 4
  %array_getter17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %in14, i1* @constraint.21)
  %out21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %in14, i128* %out21, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add23 = add i128 %i.0, 1
  %slt = icmp slt i128 %add23, %shr.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %shr.out.write_output_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %shr.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_shr* @fn_template_build_shr(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_shr = alloca %struct_template_circuit_shr, align 8
  %shr.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %struct_template_circuit_shr, i32 0, i32 0
  store i128 %0, i128* %shr.n.write_arg_inner, align 4
  %shr.r.write_arg_inner = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %struct_template_circuit_shr, i32 0, i32 1
  store i128 %1, i128* %shr.r.write_arg_inner, align 4
  ret %struct_template_circuit_shr* %struct_template_circuit_shr
}

define i128 @bsigma1(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 6)
  %call2 = call i128 @rrot(i128 %0, i128 11)
  %xor = xor i128 %call, %call2
  %call4 = call i128 @rrot(i128 %0, i128 25)
  %xor5 = xor i128 %xor, %call4
  ret i128 %xor5
}

define void @fn_template_init_bigsigma(%struct_template_circuit_bigsigma* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 0
  %bigsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 1
  %bigsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 2
  %bigsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 3
  %bigsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k4 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %bigsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.22)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.23)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_inner, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 2
  %rotr.in.read_input_outter39 = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter39, i128 0, i128 %k.0
  %rotc42 = load i128, i128* %array_getter41, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotc42, i128 %in36, i1* @constraint.24)
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 2
  %rotr.in.read_input_outter45 = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %rotc47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter45, i128 0, i128 %k.0
  store i128 %in36, i128* %rotc47, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call50 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch99, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add101, %loop.latch99 ]
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter53, align 8
  %array_getter55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k.1
  %rota56 = load i128, i128* %array_getter55, align 4
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter58, align 8
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k.1
  %xor361 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor361, i128 %rota56, i1* @constraint.25)
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 1
  %xor3.a.read_input_outter64 = load [4096 x i128]*, [4096 x i128]** %struct_getter63, align 8
  %xor366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter64, i128 0, i128 %k.1
  store i128 %rota56, i128* %xor366, align 4
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 3
  %rotr.out.read_output_outter69 = load [4096 x i128]*, [4096 x i128]** %struct_getter68, align 8
  %array_getter71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter69, i128 0, i128 %k.1
  %rotb72 = load i128, i128* %array_getter71, align 4
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter74, align 8
  %array_getter76 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k.1
  %xor377 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor377, i128 %rotb72, i1* @constraint.26)
  %struct_getter79 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 2
  %xor3.b.read_input_outter80 = load [4096 x i128]*, [4096 x i128]** %struct_getter79, align 8
  %xor382 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter80, i128 0, i128 %k.1
  store i128 %rotb72, i128* %xor382, align 4
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call6, i32 0, i32 3
  %rotr.out.read_output_outter85 = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %array_getter87 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter85, i128 0, i128 %k.1
  %rotc88 = load i128, i128* %array_getter87, align 4
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter90, align 8
  %array_getter92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k.1
  %xor393 = load i128, i128* %array_getter92, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor393, i128 %rotc88, i1* @constraint.27)
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 3
  %xor3.c.read_input_outter96 = load [4096 x i128]*, [4096 x i128]** %struct_getter95, align 8
  %xor398 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter96, i128 0, i128 %k.1
  store i128 %rotc88, i128* %xor398, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body51
  %add101 = add i128 %k.1, 1
  %slt103 = icmp slt i128 %add101, 32
  br i1 %slt103, label %loop.body51, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch99
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch118, %loop.exit104
  %k.2 = phi i128 [ 0, %loop.exit104 ], [ %add120, %loop.latch118 ]
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call50, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k.2
  %xor3110 = load i128, i128* %array_getter109, align 4
  %array_getter113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %xor3110, i1* @constraint.28)
  %out117 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %xor3110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %add120 = add i128 %k.2, 1
  %slt122 = icmp slt i128 %add120, 32
  br i1 %slt122, label %loop.body105, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch118
  br label %exit

exit:                                             ; preds = %loop.exit123
  %bigsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %bigsigma.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigsigma = alloca %struct_template_circuit_bigsigma, align 8
  %bigsigma.ra.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 0
  store i128 %0, i128* %bigsigma.ra.write_arg_inner, align 4
  %bigsigma.rb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 1
  store i128 %1, i128* %bigsigma.rb.write_arg_inner, align 4
  %bigsigma.rc.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma, i32 0, i32 2
  store i128 %2, i128* %bigsigma.rc.write_arg_inner, align 4
  ret %struct_template_circuit_bigsigma* %struct_template_circuit_bigsigma
}

define i128 @ssigma0(i128 %0) {
entry:
  %call = call i128 @rrot(i128 %0, i128 7)
  %call2 = call i128 @rrot(i128 %0, i128 18)
  %xor = xor i128 %call, %call2
  %rshift = lshr i128 %0, 3
  %xor4 = xor i128 %xor, %rshift
  ret i128 %xor4
}

define i128 @Ch(i128 %0, i128 %1, i128 %2) {
entry:
  %and = and i128 %0, %1
  %xor = xor i128 4294967295, %0
  %and2 = and i128 %xor, %2
  %xor3 = xor i128 %and, %and2
  ret i128 %xor3
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %iszero.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %inv = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %ne = icmp ne i128 %iszero.in.read_input_inner, 0
  %sdiv = sdiv i128 1, %iszero.in.read_input_inner
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  %iszero.inv.write_inter_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %inline_switch, i128* %iszero.inv.write_inter_inner, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  %iszero.inv.read_inter_inner = load i128, i128* %struct_getter3, align 4
  %neg = sub i128 0, %iszero.in.read_input_inner
  %mul = mul i128 %neg, %iszero.inv.read_inter_inner
  %add = add i128 %mul, 1
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint.29)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 0, i1* @constraint.30)
  br label %exit

exit:                                             ; preds = %entry
  %iszero.inv.write_inter_inner14 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %iszero.inv.read_inter_inner, i128* %iszero.inv.write_inter_inner14, align 4
  %iszero.out.write_output_inner16 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %iszero.out.read_output_inner, i128* %iszero.out.write_output_inner16, align 4
  ret void
}

define %struct_template_circuit_iszero* @fn_template_build_iszero() {
entry:
  %struct_template_circuit_iszero = alloca %struct_template_circuit_iszero, align 8
  ret %struct_template_circuit_iszero* %struct_template_circuit_iszero
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter2, align 8
  %k3 = call i128 @fn_intrinsic_inline_init()
  %lin4 = call i128 @fn_intrinsic_inline_init()
  %lout5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %j6 = call i128 @fn_intrinsic_inline_init()
  %nout7 = call i128 @fn_intrinsic_inline_init()
  %e28 = call i128 @fn_intrinsic_inline_init()
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %binsum.n.read_arg_inner)
  %sub = sub i128 %pow, 1
  %mul = mul i128 %sub, %binsum.ops.read_arg_inner
  %call = call i128 @nbits(i128 %mul)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch23, %entry
  %lin.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch23 ]
  %k.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch23 ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add22, %loop.latch23 ]
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch, %loop.body
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add17, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_inner, i128 0, i128 %j.0, i128 %k.0
  %in13 = load i128, i128* %array_getter, align 4
  %mul15 = mul i128 %in13, %e2.0
  %add = add i128 %lin.1, %mul15
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body9
  %add17 = add i128 %j.0, 1
  %slt = icmp slt i128 %add17, %binsum.ops.read_arg_inner
  br i1 %slt, label %loop.body9, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add22 = add i128 %e2.0, %e2.0
  br label %loop.latch23

loop.latch23:                                     ; preds = %loop.exit
  %add25 = add i128 %k.0, 1
  %slt28 = icmp slt i128 %add25, %binsum.n.read_arg_inner
  br i1 %slt28, label %loop.body, label %loop.exit29

loop.exit29:                                      ; preds = %loop.latch23
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch56, %loop.exit29
  %k.1 = phi i128 [ 0, %loop.exit29 ], [ %add58, %loop.latch56 ]
  %lout.0 = phi i128 [ 0, %loop.exit29 ], [ %add52, %loop.latch56 ]
  %e2.1 = phi i128 [ 1, %loop.exit29 ], [ %add55, %loop.latch56 ]
  %rshift = lshr i128 %add, %k.1
  %and = and i128 %rshift, 1
  %out34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  store i128 %and, i128* %out34, align 4
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out38 = load i128, i128* %array_getter37, align 4
  %array_getter41 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out42 = load i128, i128* %array_getter41, align 4
  %sub43 = sub i128 %out42, 1
  %mul44 = mul i128 %out38, %sub43
  call void @fn_intrinsic_add_constraint(i128 %mul44, i128 0, i1* @constraint.31)
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.1
  %out49 = load i128, i128* %array_getter48, align 4
  %mul51 = mul i128 %out49, %e2.1
  %add52 = add i128 %lout.0, %mul51
  %add55 = add i128 %e2.1, %e2.1
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body30
  %add58 = add i128 %k.1, 1
  %slt61 = icmp slt i128 %add58, %call
  br i1 %slt61, label %loop.body30, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add52, i1* @constraint.32)
  br label %exit

exit:                                             ; preds = %loop.exit62
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %binsum.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_binsum* @fn_template_build_binsum(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_binsum = alloca %struct_template_circuit_binsum, align 8
  %binsum.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 0
  store i128 %0, i128* %binsum.n.write_arg_inner, align 4
  %binsum.ops.write_arg_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 1
  store i128 %1, i128* %binsum.ops.write_arg_inner, align 4
  ret %struct_template_circuit_binsum* %struct_template_circuit_binsum
}

define [4096 x i128]* @sha256compression([4096 x i128]* %0, [4096 x i128]* %1) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %f3 = call i128 @fn_intrinsic_inline_init()
  %g4 = call i128 @fn_intrinsic_inline_init()
  %b5 = call i128 @fn_intrinsic_inline_init()
  %h6 = call i128 @fn_intrinsic_inline_init()
  %T17 = call i128 @fn_intrinsic_inline_init()
  %j9 = call i128 @fn_intrinsic_inline_init()
  %a10 = call i128 @fn_intrinsic_inline_init()
  %c11 = call i128 @fn_intrinsic_inline_init()
  %e12 = call i128 @fn_intrinsic_inline_init()
  %T213 = call i128 @fn_intrinsic_inline_init()
  %d14 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [4096 x i128], align 8
  %uniform_array16 = alloca [4096 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch35, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add37, %loop.latch35 ]
  %H18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %H18, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add33, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  %H22 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %i.0, 32
  %add = add i128 %mul, %j.0
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %0, i128 0, i128 %add
  %hin26 = load i128, i128* %array_getter25, align 4
  %lshift = shl i128 %hin26, %j.0
  %add28 = add i128 %H22, %lshift
  %H31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add28, i128* %H31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body19
  %add33 = add i128 %j.0, 1
  %slt = icmp slt i128 %add33, 32
  br i1 %slt, label %loop.body19, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.exit
  %add37 = add i128 %i.0, 1
  %slt39 = icmp slt i128 %add37, 8
  br i1 %slt39, label %loop.body, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  %H43 = load i128, i128* %array_getter42, align 4
  %array_getter45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  %H46 = load i128, i128* %array_getter45, align 4
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  %H49 = load i128, i128* %array_getter48, align 4
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  %H52 = load i128, i128* %array_getter51, align 4
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  %H55 = load i128, i128* %array_getter54, align 4
  %array_getter57 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  %H58 = load i128, i128* %array_getter57, align 4
  %array_getter60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  %H61 = load i128, i128* %array_getter60, align 4
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  %H64 = load i128, i128* %array_getter63, align 4
  %uniform_array65 = alloca [4096 x i128], align 8
  br label %loop.body66

loop.body66:                                      ; preds = %loop.latch162, %loop.exit40
  %e.0 = phi i128 [ %H55, %loop.exit40 ], [ %and154, %loop.latch162 ]
  %c.0 = phi i128 [ %H49, %loop.exit40 ], [ %b.0, %loop.latch162 ]
  %a.0 = phi i128 [ %H43, %loop.exit40 ], [ %and161, %loop.latch162 ]
  %h.0 = phi i128 [ %H64, %loop.exit40 ], [ %g.0, %loop.latch162 ]
  %b.0 = phi i128 [ %H46, %loop.exit40 ], [ %a.0, %loop.latch162 ]
  %g.0 = phi i128 [ %H61, %loop.exit40 ], [ %f.0, %loop.latch162 ]
  %f.0 = phi i128 [ %H58, %loop.exit40 ], [ %e.0, %loop.latch162 ]
  %i.1 = phi i128 [ 0, %loop.exit40 ], [ %add164, %loop.latch162 ]
  %d.0 = phi i128 [ %H52, %loop.exit40 ], [ %c.0, %loop.latch162 ]
  %slt68 = icmp slt i128 %i.1, 16
  br i1 %slt68, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body66
  %w71 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 0, i128* %w71, align 4
  br label %loop.body72

if.false:                                         ; preds = %loop.body66
  %sub97 = sub i128 %i.1, 2
  %array_getter98 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub97
  %w99 = load i128, i128* %array_getter98, align 4
  %call = call i128 @ssigma1(i128 %w99)
  %sub102 = sub i128 %i.1, 7
  %array_getter103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub102
  %w104 = load i128, i128* %array_getter103, align 4
  %add105 = add i128 %call, %w104
  %sub108 = sub i128 %i.1, 15
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub108
  %w110 = load i128, i128* %array_getter109, align 4
  %call111 = call i128 @ssigma0(i128 %w110)
  %add112 = add i128 %add105, %call111
  %sub115 = sub i128 %i.1, 16
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %sub115
  %w117 = load i128, i128* %array_getter116, align 4
  %add118 = add i128 %add112, %w117
  %and = and i128 %add118, 4294967295
  %w121 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 %and, i128* %w121, align 4
  br label %if.exit

loop.body72:                                      ; preds = %loop.latch89, %if.true
  %j.1 = phi i128 [ 0, %if.true ], [ %add91, %loop.latch89 ]
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  %w76 = load i128, i128* %array_getter75, align 4
  %mul78 = mul i128 %i.1, 32
  %add79 = add i128 %mul78, 31
  %sub = sub i128 %add79, %j.1
  %array_getter81 = getelementptr inbounds [4096 x i128], [4096 x i128]* %1, i128 0, i128 %sub
  %inp82 = load i128, i128* %array_getter81, align 4
  %lshift84 = shl i128 %inp82, %j.1
  %add85 = add i128 %w76, %lshift84
  %w88 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  store i128 %add85, i128* %w88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body72
  %add91 = add i128 %j.1, 1
  %slt93 = icmp slt i128 %add91, 32
  br i1 %slt93, label %loop.body72, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch89
  br label %if.exit

if.exit:                                          ; preds = %loop.exit94, %if.false
  %call124 = call i128 @bsigma1(i128 %e.0)
  %add125 = add i128 %h.0, %call124
  %call129 = call i128 @Ch(i128 %e.0, i128 %f.0, i128 %g.0)
  %add130 = add i128 %add125, %call129
  %call132 = call i128 @sha256K(i128 %i.1)
  %add133 = add i128 %add130, %call132
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array65, i128 0, i128 %i.1
  %w137 = load i128, i128* %array_getter136, align 4
  %add138 = add i128 %add133, %w137
  %and139 = and i128 %add138, 4294967295
  %call141 = call i128 @bsigma0(i128 %a.0)
  %call145 = call i128 @Maj(i128 %a.0, i128 %b.0, i128 %c.0)
  %add146 = add i128 %call141, %call145
  %and147 = and i128 %add146, 4294967295
  %add153 = add i128 %d.0, %and139
  %and154 = and i128 %add153, 4294967295
  %add160 = add i128 %and139, %and147
  %and161 = and i128 %add160, 4294967295
  br label %loop.latch162

loop.latch162:                                    ; preds = %if.exit
  %add164 = add i128 %i.1, 1
  %slt166 = icmp slt i128 %add164, 64
  br i1 %slt166, label %loop.body66, label %loop.exit167

loop.exit167:                                     ; preds = %loop.latch162
  %array_getter169 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  %H170 = load i128, i128* %array_getter169, align 4
  %add172 = add i128 %H170, %and161
  %H174 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 0
  store i128 %add172, i128* %H174, align 4
  %array_getter176 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  %H177 = load i128, i128* %array_getter176, align 4
  %add179 = add i128 %H177, %a.0
  %H181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 1
  store i128 %add179, i128* %H181, align 4
  %array_getter183 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  %H184 = load i128, i128* %array_getter183, align 4
  %add186 = add i128 %H184, %b.0
  %H188 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 2
  store i128 %add186, i128* %H188, align 4
  %array_getter190 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  %H191 = load i128, i128* %array_getter190, align 4
  %add193 = add i128 %H191, %c.0
  %H195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 3
  store i128 %add193, i128* %H195, align 4
  %array_getter197 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  %H198 = load i128, i128* %array_getter197, align 4
  %add200 = add i128 %H198, %and154
  %H202 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 4
  store i128 %add200, i128* %H202, align 4
  %array_getter204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  %H205 = load i128, i128* %array_getter204, align 4
  %add207 = add i128 %H205, %e.0
  %H209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 5
  store i128 %add207, i128* %H209, align 4
  %array_getter211 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  %H212 = load i128, i128* %array_getter211, align 4
  %add214 = add i128 %H212, %f.0
  %H216 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 6
  store i128 %add214, i128* %H216, align 4
  %array_getter218 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  %H219 = load i128, i128* %array_getter218, align 4
  %add221 = add i128 %H219, %g.0
  %H223 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 7
  store i128 %add221, i128* %H223, align 4
  br label %loop.body224

loop.body224:                                     ; preds = %loop.latch245, %loop.exit167
  %i.2 = phi i128 [ 0, %loop.exit167 ], [ %add247, %loop.latch245 ]
  br label %loop.body225

loop.body225:                                     ; preds = %loop.latch239, %loop.body224
  %j.2 = phi i128 [ 0, %loop.body224 ], [ %add241, %loop.latch239 ]
  %array_getter228 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array, i128 0, i128 %i.2
  %H229 = load i128, i128* %array_getter228, align 4
  %rshift = lshr i128 %H229, %j.2
  %and231 = and i128 %rshift, 1
  %mul234 = mul i128 %i.2, 32
  %add235 = add i128 %mul234, 31
  %sub237 = sub i128 %add235, %j.2
  %out238 = getelementptr inbounds [4096 x i128], [4096 x i128]* %uniform_array16, i128 0, i128 %sub237
  store i128 %and231, i128* %out238, align 4
  br label %loop.latch239

loop.latch239:                                    ; preds = %loop.body225
  %add241 = add i128 %j.2, 1
  %slt243 = icmp slt i128 %add241, 32
  br i1 %slt243, label %loop.body225, label %loop.exit244

loop.exit244:                                     ; preds = %loop.latch239
  br label %loop.latch245

loop.latch245:                                    ; preds = %loop.exit244
  %add247 = add i128 %i.2, 1
  %slt249 = icmp slt i128 %add247, 8
  br i1 %slt249, label %loop.body224, label %loop.exit250

loop.exit250:                                     ; preds = %loop.latch245
  ret [4096 x i128]* %uniform_array16
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_inner, i128 0, i128 %i.0
  %in3 = load i128, i128* %array_getter, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %array_getter7 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i.0
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.33)
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %compConstant12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i.0
  store i128 %in3, i128* %compConstant12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 4
  %compconstant.out.read_output_outter = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.34)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greatereqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.35)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.36)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.37)
  %greatereqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greatereqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  %greatereqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
  %greatereqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %greatereqthan.out.read_output_inner, i128* %greatereqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greatereqthan* @fn_template_build_greatereqthan(i128 %0) {
entry:
  %struct_template_circuit_greatereqthan = alloca %struct_template_circuit_greatereqthan, align 8
  %greatereqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan, i32 0, i32 0
  store i128 %0, i128* %greatereqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %isequal.in.read_input_inner, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %array_getter3 = getelementptr inbounds [4096 x i128], [4096 x i128]* %isequal.in.read_input_inner, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.38)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.39)
  %isequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %iszero.out.read_output_outter, i128* %isequal.out.write_output_inner, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  %isequal.out.read_output_inner = load i128, i128* %struct_getter12, align 4
  br label %exit

exit:                                             ; preds = %entry
  %isequal.out.write_output_inner14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %isequal.out.read_output_inner, i128* %isequal.out.write_output_inner14, align 4
  ret void
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
  %struct_template_circuit_isequal = alloca %struct_template_circuit_isequal, align 8
  ret %struct_template_circuit_isequal* %struct_template_circuit_isequal
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %lc12 = call i128 @fn_intrinsic_inline_init()
  %neg3 = call i128 @fn_intrinsic_inline_init()
  %i4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %eq = icmp eq i128 %num2bitsneg.n.read_arg_inner, 0
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub = sub i128 %pow, %num2bitsneg.in.read_input_inner
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 0, i128 %sub)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add27, %loop.latch ]
  %rshift = lshr i128 %inline_switch, %i.0
  %and = and i128 %rshift, 1
  %out9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out9, align 4
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter, align 4
  %array_getter15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out16 = load i128, i128* %array_getter15, align 4
  %sub17 = sub i128 %out16, 1
  %mul = mul i128 %out12, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.40)
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out22 = load i128, i128* %array_getter21, align 4
  %pow24 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %i.0)
  %mul25 = mul i128 %out22, %pow24
  %add = add i128 %lc1.0, %mul25
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add27 = add i128 %i.0, 1
  %slt = icmp slt i128 %add27, %num2bitsneg.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.41)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter36, align 4
  %pow38 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul39 = mul i128 %iszero.out.read_output_outter, %pow38
  %add40 = add i128 %add, %mul39
  %pow42 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub44 = sub i128 %pow42, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %add40, i128 %sub44, i1* @constraint.42)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %lesseqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.43)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.44)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.45)
  %lesseqthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %lesseqthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  %lesseqthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
  %lesseqthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %lesseqthan.out.read_output_inner, i128* %lesseqthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_lesseqthan* @fn_template_build_lesseqthan(i128 %0) {
entry:
  %struct_template_circuit_lesseqthan = alloca %struct_template_circuit_lesseqthan, align 8
  %lesseqthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan, i32 0, i32 0
  store i128 %0, i128* %lesseqthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan
}

define void @fn_template_init_smallsigma(%struct_template_circuit_smallsigma* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 0
  %smallsigma.ra.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 1
  %smallsigma.rb.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 2
  %smallsigma.rc.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 3
  %smallsigma.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.ra.read_arg_inner)
  %call5 = call %struct_template_circuit_rotr* @fn_template_build_rotr(i128 32, i128 %smallsigma.rb.read_arg_inner)
  %call6 = call %struct_template_circuit_shr* @fn_template_build_shr(i128 32, i128 %smallsigma.rc.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter, i128 0, i128 %k.0
  %rota13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %rota13, i128 %in8, i1* @constraint.46)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 2
  %rotr.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %rota17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter15, i128 0, i128 %k.0
  store i128 %in8, i128* %rota17, align 4
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter24, i128 0, i128 %k.0
  %rotb27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %rotb27, i128 %in21, i1* @constraint.47)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 2
  %rotr.in.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %rotb32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.in.read_input_outter30, i128 0, i128 %k.0
  store i128 %in21, i128* %rotb32, align 4
  %array_getter35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_inner, i128 0, i128 %k.0
  %in36 = load i128, i128* %array_getter35, align 4
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 2
  %shr.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter, i128 0, i128 %k.0
  %shrc41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %shrc41, i128 %in36, i1* @constraint.48)
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 2
  %shr.in.read_input_outter44 = load [4096 x i128]*, [4096 x i128]** %struct_getter43, align 8
  %shrc46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.in.read_input_outter44, i128 0, i128 %k.0
  store i128 %in36, i128* %shrc46, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call49 = call %struct_template_circuit_xor3* @fn_template_build_xor3(i128 32)
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch97, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add99, %loop.latch97 ]
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call, i32 0, i32 3
  %rotr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter, i128 0, i128 %k.1
  %rota55 = load i128, i128* %array_getter54, align 4
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 1
  %xor3.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter57, align 8
  %array_getter59 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter, i128 0, i128 %k.1
  %xor360 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor360, i128 %rota55, i1* @constraint.49)
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 1
  %xor3.a.read_input_outter63 = load [4096 x i128]*, [4096 x i128]** %struct_getter62, align 8
  %xor365 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.a.read_input_outter63, i128 0, i128 %k.1
  store i128 %rota55, i128* %xor365, align 4
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_rotr, %struct_template_circuit_rotr* %call5, i32 0, i32 3
  %rotr.out.read_output_outter68 = load [4096 x i128]*, [4096 x i128]** %struct_getter67, align 8
  %array_getter70 = getelementptr inbounds [4096 x i128], [4096 x i128]* %rotr.out.read_output_outter68, i128 0, i128 %k.1
  %rotb71 = load i128, i128* %array_getter70, align 4
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 2
  %xor3.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter73, align 8
  %array_getter75 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter, i128 0, i128 %k.1
  %xor376 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor376, i128 %rotb71, i1* @constraint.50)
  %struct_getter78 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 2
  %xor3.b.read_input_outter79 = load [4096 x i128]*, [4096 x i128]** %struct_getter78, align 8
  %xor381 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.b.read_input_outter79, i128 0, i128 %k.1
  store i128 %rotb71, i128* %xor381, align 4
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_shr, %struct_template_circuit_shr* %call6, i32 0, i32 3
  %shr.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %array_getter85 = getelementptr inbounds [4096 x i128], [4096 x i128]* %shr.out.read_output_outter, i128 0, i128 %k.1
  %shrc86 = load i128, i128* %array_getter85, align 4
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 3
  %xor3.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter88, align 8
  %array_getter90 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter, i128 0, i128 %k.1
  %xor391 = load i128, i128* %array_getter90, align 4
  call void @fn_intrinsic_add_constraint(i128 %xor391, i128 %shrc86, i1* @constraint.51)
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 3
  %xor3.c.read_input_outter94 = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %xor396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.c.read_input_outter94, i128 0, i128 %k.1
  store i128 %shrc86, i128* %xor396, align 4
  br label %loop.latch97

loop.latch97:                                     ; preds = %loop.body50
  %add99 = add i128 %k.1, 1
  %slt101 = icmp slt i128 %add99, 32
  br i1 %slt101, label %loop.body50, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch97
  br label %loop.body103

loop.body103:                                     ; preds = %loop.latch116, %loop.exit102
  %k.2 = phi i128 [ 0, %loop.exit102 ], [ %add118, %loop.latch116 ]
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_xor3, %struct_template_circuit_xor3* %call49, i32 0, i32 5
  %xor3.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter105, align 8
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %xor3.out.read_output_outter, i128 0, i128 %k.2
  %xor3108 = load i128, i128* %array_getter107, align 4
  %array_getter111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_add_constraint(i128 %out112, i128 %xor3108, i1* @constraint.52)
  %out115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %xor3108, i128* %out115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body103
  %add118 = add i128 %k.2, 1
  %slt120 = icmp slt i128 %add118, 32
  br i1 %slt120, label %loop.body103, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch116
  br label %exit

exit:                                             ; preds = %loop.exit121
  %smallsigma.out.write_output_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %smallsigma.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_smallsigma = alloca %struct_template_circuit_smallsigma, align 8
  %smallsigma.ra.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 0
  store i128 %0, i128* %smallsigma.ra.write_arg_inner, align 4
  %smallsigma.rb.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 1
  store i128 %1, i128* %smallsigma.rb.write_arg_inner, align 4
  %smallsigma.rc.write_arg_inner = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma, i32 0, i32 2
  store i128 %2, i128* %smallsigma.rc.write_arg_inner, align 4
  ret %struct_template_circuit_smallsigma* %struct_template_circuit_smallsigma
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in4 = load i128, i128* %array_getter, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n9, i128 %in4, i1* @constraint.53)
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %b2n13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i.0
  store i128 %in4, i128* %b2n13, align 4
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.54)
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %aliasCheck27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i.0
  store i128 %in17, i128* %aliasCheck27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.55)
  %bits2num_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num.out.read_output_outter, i128* %bits2num_strict.out.write_output_inner, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  %bits2num_strict.out.read_output_inner = load i128, i128* %struct_getter35, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bits2num_strict.out.write_output_inner37 = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %bits2num_strict.out.read_output_inner, i128* %bits2num_strict.out.write_output_inner37, align 4
  ret void
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
  %struct_template_circuit_bits2num_strict = alloca %struct_template_circuit_bits2num_strict, align 8
  ret %struct_template_circuit_bits2num_strict* %struct_template_circuit_bits2num_strict
}

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %array_getter4 = getelementptr inbounds [4096 x i128], [4096 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.56)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %mul = mul i128 %sub10, %forceequalifenabled.enabled.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.57)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greaterthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.58)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [4096 x i128]*, [4096 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %in12, i1* @constraint.59)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.60)
  %greaterthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %lessthan.out.read_output_outter, i128* %greaterthan.out.write_output_inner, align 4
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  %greaterthan.out.read_output_inner = load i128, i128* %struct_getter27, align 4
  br label %exit

exit:                                             ; preds = %entry
  %greaterthan.out.write_output_inner29 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %greaterthan.out.read_output_inner, i128* %greaterthan.out.write_output_inner29, align 4
  ret void
}

define %struct_template_circuit_greaterthan* @fn_template_build_greaterthan(i128 %0) {
entry:
  %struct_template_circuit_greaterthan = alloca %struct_template_circuit_greaterthan, align 8
  %greaterthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan, i32 0, i32 0
  store i128 %0, i128* %greaterthan.n.write_arg_inner, align 4
  ret %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan
}

define void @fn_template_init_t2(%struct_template_circuit_t2* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 0
  %t2.a.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 1
  %t2.b.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 2
  %t2.c.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %k3 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 2, i128 13, i128 22)
  %call4 = call %struct_template_circuit_maj_t* @fn_template_build_maj_t(i128 32)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_inner, i128 0, i128 %k.0
  %a6 = load i128, i128* %array_getter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter8, align 8
  %array_getter10 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %k.0
  %bigsigma011 = load i128, i128* %array_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma011, i128 %a6, i1* @constraint.61)
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 3
  %bigsigma.in.read_input_outter13 = load [4096 x i128]*, [4096 x i128]** %struct_getter12, align 8
  %bigsigma015 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter13, i128 0, i128 %k.0
  store i128 %a6, i128* %bigsigma015, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_inner, i128 0, i128 %k.0
  %a19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter, i128 0, i128 %k.0
  %maj24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj24, i128 %a19, i1* @constraint.62)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 1
  %maj_t.a.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %maj29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.a.read_input_outter27, i128 0, i128 %k.0
  store i128 %a19, i128* %maj29, align 4
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_inner, i128 0, i128 %k.0
  %b32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter, i128 0, i128 %k.0
  %maj37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj37, i128 %b32, i1* @constraint.63)
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 2
  %maj_t.b.read_input_outter40 = load [4096 x i128]*, [4096 x i128]** %struct_getter39, align 8
  %maj42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.b.read_input_outter40, i128 0, i128 %k.0
  store i128 %b32, i128* %maj42, align 4
  %array_getter44 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_inner, i128 0, i128 %k.0
  %c45 = load i128, i128* %array_getter44, align 4
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 3
  %maj_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter47, align 8
  %array_getter49 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter, i128 0, i128 %k.0
  %maj50 = load i128, i128* %array_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %maj50, i128 %c45, i1* @constraint.64)
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 3
  %maj_t.c.read_input_outter53 = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %maj55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.c.read_input_outter53, i128 0, i128 %k.0
  store i128 %c45, i128* %maj55, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call58 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch91, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add93, %loop.latch91 ]
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter61, align 8
  %array_getter63 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %k.1
  %bigsigma064 = load i128, i128* %array_getter63, align 4
  %struct_getter66 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter66, align 8
  %array_getter68 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.1
  %sum69 = load i128, i128* %array_getter68, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum69, i128 %bigsigma064, i1* @constraint.65)
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %sum74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 0, i128 %k.1
  store i128 %bigsigma064, i128* %sum74, align 4
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_maj_t, %struct_template_circuit_maj_t* %call4, i32 0, i32 5
  %maj_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %array_getter78 = getelementptr inbounds [4096 x i128], [4096 x i128]* %maj_t.out.read_output_outter, i128 0, i128 %k.1
  %maj79 = load i128, i128* %array_getter78, align 4
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter82 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter81, align 8
  %array_getter84 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter82, i128 0, i128 1, i128 %k.1
  %sum85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum85, i128 %maj79, i1* @constraint.66)
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 2
  %binsum.in.read_input_outter88 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter87, align 8
  %sum90 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter88, i128 0, i128 1, i128 %k.1
  store i128 %maj79, i128* %sum90, align 4
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body59
  %add93 = add i128 %k.1, 1
  %slt95 = icmp slt i128 %add93, 32
  br i1 %slt95, label %loop.body59, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch110, %loop.exit96
  %k.2 = phi i128 [ 0, %loop.exit96 ], [ %add112, %loop.latch110 ]
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call58, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.2
  %sum102 = load i128, i128* %array_getter101, align 4
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out106 = load i128, i128* %array_getter105, align 4
  call void @fn_intrinsic_add_constraint(i128 %out106, i128 %sum102, i1* @constraint.67)
  %out109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %sum102, i128* %out109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body97
  %add112 = add i128 %k.2, 1
  %slt114 = icmp slt i128 %add112, 32
  br i1 %slt114, label %loop.body97, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  br label %exit

exit:                                             ; preds = %loop.exit115
  %t2.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %t2.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t2* @fn_template_build_t2() {
entry:
  %struct_template_circuit_t2 = alloca %struct_template_circuit_t2, align 8
  ret %struct_template_circuit_t2* %struct_template_circuit_t2
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.68)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b8 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %out12, i128 %n2b8, i1* @constraint.69)
  %out15 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %n2b8, i128* %out15, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [4096 x i128]*, [4096 x i128]** %struct_getter17, align 8
  %array_getter20 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i.0
  %n2b21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.70)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [4096 x i128]*, [4096 x i128]** %struct_getter28, align 8
  %aliasCheck31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i.0
  store i128 %n2b21, i128* %aliasCheck31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bits_strict.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 1
  store [4096 x i128]* %out, [4096 x i128]** %num2bits_strict.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define void @fn_template_init_t1(%struct_template_circuit_t1* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 0
  %t1.h.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 1
  %t1.e.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 2
  %t1.f.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 3
  %t1.g.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 4
  %t1.k.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 5
  %t1.w.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter5, align 8
  %ki6 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_ch_t* @fn_template_build_ch_t(i128 32)
  %call7 = call %struct_template_circuit_bigsigma* @fn_template_build_bigsigma(i128 6, i128 11, i128 25)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ki.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_inner, i128 0, i128 %ki.0
  %e9 = load i128, i128* %array_getter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter, i128 0, i128 %ki.0
  %bigsigma114 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsigma114, i128 %e9, i1* @constraint.71)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 3
  %bigsigma.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %bigsigma118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.in.read_input_outter16, i128 0, i128 %ki.0
  store i128 %e9, i128* %bigsigma118, align 4
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_inner, i128 0, i128 %ki.0
  %e22 = load i128, i128* %array_getter21, align 4
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %array_getter26 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter, i128 0, i128 %ki.0
  %ch27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch27, i128 %e22, i1* @constraint.72)
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 1
  %ch_t.a.read_input_outter30 = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %ch32 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.a.read_input_outter30, i128 0, i128 %ki.0
  store i128 %e22, i128* %ch32, align 4
  %array_getter34 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_inner, i128 0, i128 %ki.0
  %f35 = load i128, i128* %array_getter34, align 4
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter37, align 8
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter, i128 0, i128 %ki.0
  %ch40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch40, i128 %f35, i1* @constraint.73)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 2
  %ch_t.b.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %ch45 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.b.read_input_outter43, i128 0, i128 %ki.0
  store i128 %f35, i128* %ch45, align 4
  %array_getter47 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_inner, i128 0, i128 %ki.0
  %g48 = load i128, i128* %array_getter47, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 3
  %ch_t.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter, i128 0, i128 %ki.0
  %ch53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %ch53, i128 %g48, i1* @constraint.74)
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 3
  %ch_t.c.read_input_outter56 = load [4096 x i128]*, [4096 x i128]** %struct_getter55, align 8
  %ch58 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.c.read_input_outter56, i128 0, i128 %ki.0
  store i128 %g48, i128* %ch58, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %ki.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call61 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 5)
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch136, %loop.exit
  %ki.1 = phi i128 [ 0, %loop.exit ], [ %add138, %loop.latch136 ]
  %array_getter64 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_inner, i128 0, i128 %ki.1
  %h65 = load i128, i128* %array_getter64, align 4
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter67, align 8
  %array_getter69 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %ki.1
  %sum70 = load i128, i128* %array_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum70, i128 %h65, i1* @constraint.75)
  %struct_getter72 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter73 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter72, align 8
  %sum75 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter73, i128 0, i128 0, i128 %ki.1
  store i128 %h65, i128* %sum75, align 4
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_bigsigma, %struct_template_circuit_bigsigma* %call7, i32 0, i32 4
  %bigsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter77, align 8
  %array_getter79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bigsigma.out.read_output_outter, i128 0, i128 %ki.1
  %bigsigma180 = load i128, i128* %array_getter79, align 4
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter83 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter82, align 8
  %array_getter85 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter83, i128 0, i128 1, i128 %ki.1
  %sum86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum86, i128 %bigsigma180, i1* @constraint.76)
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter89 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter88, align 8
  %sum91 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter89, i128 0, i128 1, i128 %ki.1
  store i128 %bigsigma180, i128* %sum91, align 4
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_ch_t, %struct_template_circuit_ch_t* %call, i32 0, i32 4
  %ch_t.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter93, align 8
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %ch_t.out.read_output_outter, i128 0, i128 %ki.1
  %ch96 = load i128, i128* %array_getter95, align 4
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter99 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter98, align 8
  %array_getter101 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter99, i128 0, i128 2, i128 %ki.1
  %sum102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum102, i128 %ch96, i1* @constraint.77)
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter105 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter104, align 8
  %sum107 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter105, i128 0, i128 2, i128 %ki.1
  store i128 %ch96, i128* %sum107, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_inner, i128 0, i128 %ki.1
  %k110 = load i128, i128* %array_getter109, align 4
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter113 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter112, align 8
  %array_getter115 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter113, i128 0, i128 3, i128 %ki.1
  %sum116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum116, i128 %k110, i1* @constraint.78)
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter119 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter118, align 8
  %sum121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter119, i128 0, i128 3, i128 %ki.1
  store i128 %k110, i128* %sum121, align 4
  %array_getter123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_inner, i128 0, i128 %ki.1
  %w124 = load i128, i128* %array_getter123, align 4
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter127 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter126, align 8
  %array_getter129 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter127, i128 0, i128 4, i128 %ki.1
  %sum130 = load i128, i128* %array_getter129, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum130, i128 %w124, i1* @constraint.79)
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 2
  %binsum.in.read_input_outter133 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter132, align 8
  %sum135 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter133, i128 0, i128 4, i128 %ki.1
  store i128 %w124, i128* %sum135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body62
  %add138 = add i128 %ki.1, 1
  %slt140 = icmp slt i128 %add138, 32
  br i1 %slt140, label %loop.body62, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch136
  br label %loop.body142

loop.body142:                                     ; preds = %loop.latch155, %loop.exit141
  %ki.2 = phi i128 [ 0, %loop.exit141 ], [ %add157, %loop.latch155 ]
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call61, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter144, align 8
  %array_getter146 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %ki.2
  %sum147 = load i128, i128* %array_getter146, align 4
  %array_getter150 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %ki.2
  %out151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_add_constraint(i128 %out151, i128 %sum147, i1* @constraint.80)
  %out154 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %ki.2
  store i128 %sum147, i128* %out154, align 4
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.body142
  %add157 = add i128 %ki.2, 1
  %slt159 = icmp slt i128 %add157, 32
  br i1 %slt159, label %loop.body142, label %loop.exit160

loop.exit160:                                     ; preds = %loop.latch155
  br label %exit

exit:                                             ; preds = %loop.exit160
  %t1.out.write_output_inner = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %0, i32 0, i32 6
  store [4096 x i128]* %out, [4096 x i128]** %t1.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_t1* @fn_template_build_t1() {
entry:
  %struct_template_circuit_t1 = alloca %struct_template_circuit_t1, align 8
  ret %struct_template_circuit_t1* %struct_template_circuit_t1
}

define void @fn_template_init_sigmaplus(%struct_template_circuit_sigmaplus* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 0
  %sigmaplus.in2.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 1
  %sigmaplus.in7.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 2
  %sigmaplus.in15.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 3
  %sigmaplus.in16.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %k4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 17, i128 19, i128 10)
  %call5 = call %struct_template_circuit_smallsigma* @fn_template_build_smallsigma(i128 7, i128 18, i128 3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_inner, i128 0, i128 %k.0
  %in27 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter, i128 0, i128 %k.0
  %sigma112 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma112, i128 %in27, i1* @constraint.81)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 3
  %smallsigma.in.read_input_outter14 = load [4096 x i128]*, [4096 x i128]** %struct_getter13, align 8
  %sigma116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter14, i128 0, i128 %k.0
  store i128 %in27, i128* %sigma116, align 4
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_inner, i128 0, i128 %k.0
  %in1519 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 3
  %smallsigma.in.read_input_outter22 = load [4096 x i128]*, [4096 x i128]** %struct_getter21, align 8
  %array_getter24 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter22, i128 0, i128 %k.0
  %sigma025 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigma025, i128 %in1519, i1* @constraint.82)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 3
  %smallsigma.in.read_input_outter28 = load [4096 x i128]*, [4096 x i128]** %struct_getter27, align 8
  %sigma030 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.in.read_input_outter28, i128 0, i128 %k.0
  store i128 %in1519, i128* %sigma030, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %k.0, 1
  %slt = icmp slt i128 %add, 32
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call33 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 4)
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch95, %loop.exit
  %k.1 = phi i128 [ 0, %loop.exit ], [ %add97, %loop.latch95 ]
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call, i32 0, i32 4
  %smallsigma.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter36, align 8
  %array_getter38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter, i128 0, i128 %k.1
  %sigma139 = load i128, i128* %array_getter38, align 4
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter41, align 8
  %array_getter43 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.1
  %sum44 = load i128, i128* %array_getter43, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum44, i128 %sigma139, i1* @constraint.83)
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter47 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter46, align 8
  %sum49 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter47, i128 0, i128 0, i128 %k.1
  store i128 %sigma139, i128* %sum49, align 4
  %array_getter51 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_inner, i128 0, i128 %k.1
  %in752 = load i128, i128* %array_getter51, align 4
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter55 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter54, align 8
  %array_getter57 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter55, i128 0, i128 1, i128 %k.1
  %sum58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum58, i128 %in752, i1* @constraint.84)
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter61 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter60, align 8
  %sum63 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter61, i128 0, i128 1, i128 %k.1
  store i128 %in752, i128* %sum63, align 4
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_smallsigma, %struct_template_circuit_smallsigma* %call5, i32 0, i32 4
  %smallsigma.out.read_output_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %array_getter68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %smallsigma.out.read_output_outter66, i128 0, i128 %k.1
  %sigma069 = load i128, i128* %array_getter68, align 4
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter72 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter71, align 8
  %array_getter74 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter72, i128 0, i128 2, i128 %k.1
  %sum75 = load i128, i128* %array_getter74, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum75, i128 %sigma069, i1* @constraint.85)
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter78 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter77, align 8
  %sum80 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter78, i128 0, i128 2, i128 %k.1
  store i128 %sigma069, i128* %sum80, align 4
  %array_getter82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_inner, i128 0, i128 %k.1
  %in1683 = load i128, i128* %array_getter82, align 4
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter86 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter85, align 8
  %array_getter88 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter86, i128 0, i128 3, i128 %k.1
  %sum89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum89, i128 %in1683, i1* @constraint.86)
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 2
  %binsum.in.read_input_outter92 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter91, align 8
  %sum94 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter92, i128 0, i128 3, i128 %k.1
  store i128 %in1683, i128* %sum94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body34
  %add97 = add i128 %k.1, 1
  %slt99 = icmp slt i128 %add97, 32
  br i1 %slt99, label %loop.body34, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch95
  br label %loop.body101

loop.body101:                                     ; preds = %loop.latch114, %loop.exit100
  %k.2 = phi i128 [ 0, %loop.exit100 ], [ %add116, %loop.latch114 ]
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %call33, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter103, align 8
  %array_getter105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.2
  %sum106 = load i128, i128* %array_getter105, align 4
  %array_getter109 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  %out110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %out110, i128 %sum106, i1* @constraint.87)
  %out113 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.2
  store i128 %sum106, i128* %out113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body101
  %add116 = add i128 %k.2, 1
  %slt118 = icmp slt i128 %add116, 32
  br i1 %slt118, label %loop.body101, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch114
  br label %exit

exit:                                             ; preds = %loop.exit119
  %sigmaplus.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %0, i32 0, i32 4
  store [4096 x i128]* %out, [4096 x i128]** %sigmaplus.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus() {
entry:
  %struct_template_circuit_sigmaplus = alloca %struct_template_circuit_sigmaplus, align 8
  ret %struct_template_circuit_sigmaplus* %struct_template_circuit_sigmaplus
}

define void @fn_template_init_sha256compression(%struct_template_circuit_sha256compression* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 0
  %sha256compression.hin.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 1
  %sha256compression.inp.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %t2 = call i128 @fn_intrinsic_inline_init()
  %sigmaPlus3 = alloca [4096 x %struct_template_circuit_sigmaplus*], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %e = bitcast i8* %malloccall to [4096 x [4096 x i128]]*
  %ct_k4 = alloca [4096 x %struct_template_circuit_k*], align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall5 to [4096 x i128]*
  %sume6 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %f = bitcast i8* %malloccall7 to [4096 x [4096 x i128]]*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %w = bitcast i8* %malloccall9 to [4096 x [4096 x i128]]*
  %i10 = call i128 @fn_intrinsic_inline_init()
  %t111 = alloca [4096 x %struct_template_circuit_t1*], align 8
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %d = bitcast i8* %malloccall12 to [4096 x [4096 x i128]]*
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %c = bitcast i8* %malloccall13 to [4096 x [4096 x i128]]*
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %a = bitcast i8* %malloccall14 to [4096 x [4096 x i128]]*
  %fsum15 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %t217 = alloca [4096 x %struct_template_circuit_t2*], align 8
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %h = bitcast i8* %malloccall18 to [4096 x [4096 x i128]]*
  %suma19 = alloca [4096 x %struct_template_circuit_binsum*], align 8
  %k20 = call i128 @fn_intrinsic_inline_init()
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %b = bitcast i8* %malloccall21 to [4096 x [4096 x i128]]*
  %malloccall22 = tail call i8* @malloc(i32 ptrtoint ([4096 x [4096 x i128]]* getelementptr ([4096 x [4096 x i128]], [4096 x [4096 x i128]]* null, i32 1) to i32))
  %g = bitcast i8* %malloccall22 to [4096 x [4096 x i128]]*
  %call = call [4096 x i128]* @sha256compression([4096 x i128]* %sha256compression.hin.read_input_inner, [4096 x i128]* %sha256compression.inp.read_input_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %call, i128 0, i128 %i.0
  %outCalc25 = load i128, i128* %array_getter, align 4
  %out27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.0
  store i128 %outCalc25, i128* %out27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 256
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch35, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add37, %loop.latch35 ]
  %call31 = call %struct_template_circuit_sigmaplus* @fn_template_build_sigmaplus()
  %sigmaPlus34 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %i.1
  store %struct_template_circuit_sigmaplus* %call31, %struct_template_circuit_sigmaplus** %sigmaPlus34, align 8
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body30
  %add37 = add i128 %i.1, 1
  %slt39 = icmp slt i128 %add37, 48
  br i1 %slt39, label %loop.body30, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch35
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch47, %loop.exit40
  %i.2 = phi i128 [ 0, %loop.exit40 ], [ %add49, %loop.latch47 ]
  %call43 = call %struct_template_circuit_k* @fn_template_build_k(i128 %i.2)
  %ct_k46 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k4, i128 0, i128 %i.2
  store %struct_template_circuit_k* %call43, %struct_template_circuit_k** %ct_k46, align 8
  br label %loop.latch47

loop.latch47:                                     ; preds = %loop.body41
  %add49 = add i128 %i.2, 1
  %slt51 = icmp slt i128 %add49, 64
  br i1 %slt51, label %loop.body41, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch47
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch58, %loop.exit52
  %i.3 = phi i128 [ 0, %loop.exit52 ], [ %add60, %loop.latch58 ]
  %call54 = call %struct_template_circuit_t1* @fn_template_build_t1()
  %t157 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %i.3
  store %struct_template_circuit_t1* %call54, %struct_template_circuit_t1** %t157, align 8
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body53
  %add60 = add i128 %i.3, 1
  %slt62 = icmp slt i128 %add60, 64
  br i1 %slt62, label %loop.body53, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch58
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch69, %loop.exit63
  %i.4 = phi i128 [ 0, %loop.exit63 ], [ %add71, %loop.latch69 ]
  %call65 = call %struct_template_circuit_t2* @fn_template_build_t2()
  %t268 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %i.4
  store %struct_template_circuit_t2* %call65, %struct_template_circuit_t2** %t268, align 8
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.body64
  %add71 = add i128 %i.4, 1
  %slt73 = icmp slt i128 %add71, 64
  br i1 %slt73, label %loop.body64, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch69
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch80, %loop.exit74
  %i.5 = phi i128 [ 0, %loop.exit74 ], [ %add82, %loop.latch80 ]
  %call76 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %suma79 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %i.5
  store %struct_template_circuit_binsum* %call76, %struct_template_circuit_binsum** %suma79, align 8
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.body75
  %add82 = add i128 %i.5, 1
  %slt84 = icmp slt i128 %add82, 64
  br i1 %slt84, label %loop.body75, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch80
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch91, %loop.exit85
  %i.6 = phi i128 [ 0, %loop.exit85 ], [ %add93, %loop.latch91 ]
  %call87 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %sume90 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %i.6
  store %struct_template_circuit_binsum* %call87, %struct_template_circuit_binsum** %sume90, align 8
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.body86
  %add93 = add i128 %i.6, 1
  %slt95 = icmp slt i128 %add93, 64
  br i1 %slt95, label %loop.body86, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch91
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch102, %loop.exit96
  %i.7 = phi i128 [ 0, %loop.exit96 ], [ %add104, %loop.latch102 ]
  %call98 = call %struct_template_circuit_binsum* @fn_template_build_binsum(i128 32, i128 2)
  %fsum101 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 %i.7
  store %struct_template_circuit_binsum* %call98, %struct_template_circuit_binsum** %fsum101, align 8
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body97
  %add104 = add i128 %i.7, 1
  %slt106 = icmp slt i128 %add104, 8
  br i1 %slt106, label %loop.body97, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch102
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch261, %loop.exit107
  %t.0 = phi i128 [ 0, %loop.exit107 ], [ %add263, %loop.latch261 ]
  %slt110 = icmp slt i128 %t.0, 16
  br i1 %slt110, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body108
  br label %loop.body111

if.false:                                         ; preds = %loop.body108
  br label %loop.body133

loop.body111:                                     ; preds = %loop.latch127, %if.true
  %k.0 = phi i128 [ 0, %if.true ], [ %add129, %loop.latch127 ]
  %mul = mul i128 %t.0, 32
  %add114 = add i128 %mul, 31
  %sub = sub i128 %add114, %k.0
  %array_getter116 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_inner, i128 0, i128 %sub
  %inp117 = load i128, i128* %array_getter116, align 4
  %array_getter121 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.0
  %w122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_add_constraint(i128 %w122, i128 %inp117, i1* @constraint.88)
  %w126 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.0
  store i128 %inp117, i128* %w126, align 4
  br label %loop.latch127

loop.latch127:                                    ; preds = %loop.body111
  %add129 = add i128 %k.0, 1
  %slt131 = icmp slt i128 %add129, 32
  br i1 %slt131, label %loop.body111, label %loop.exit132

loop.exit132:                                     ; preds = %loop.latch127
  br label %if.exit

loop.body133:                                     ; preds = %loop.latch230, %if.false
  %k.1 = phi i128 [ 0, %if.false ], [ %add232, %loop.latch230 ]
  %sub136 = sub i128 %t.0, 2
  %array_getter138 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub136, i128 %k.1
  %w139 = load i128, i128* %array_getter138, align 4
  %sub142 = sub i128 %t.0, 16
  %array_getter143 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub142
  %sigmaPlus144 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter143, align 8
  %struct_getter145 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus144, i32 0, i32 0
  %sigmaplus.in2.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter145, align 8
  %array_getter147 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus148, i128 %w139, i1* @constraint.89)
  %sub151 = sub i128 %t.0, 16
  %array_getter152 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub151
  %sigmaPlus153 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter152, align 8
  %struct_getter154 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus153, i32 0, i32 0
  %sigmaplus.in2.read_input_outter155 = load [4096 x i128]*, [4096 x i128]** %struct_getter154, align 8
  %sigmaPlus157 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in2.read_input_outter155, i128 0, i128 %k.1
  store i128 %w139, i128* %sigmaPlus157, align 4
  %sub160 = sub i128 %t.0, 7
  %array_getter162 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub160, i128 %k.1
  %w163 = load i128, i128* %array_getter162, align 4
  %sub166 = sub i128 %t.0, 16
  %array_getter167 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub166
  %sigmaPlus168 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter167, align 8
  %struct_getter169 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus168, i32 0, i32 1
  %sigmaplus.in7.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter169, align 8
  %array_getter171 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus172 = load i128, i128* %array_getter171, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus172, i128 %w163, i1* @constraint.90)
  %sub175 = sub i128 %t.0, 16
  %array_getter176 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub175
  %sigmaPlus177 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter176, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus177, i32 0, i32 1
  %sigmaplus.in7.read_input_outter179 = load [4096 x i128]*, [4096 x i128]** %struct_getter178, align 8
  %sigmaPlus181 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in7.read_input_outter179, i128 0, i128 %k.1
  store i128 %w163, i128* %sigmaPlus181, align 4
  %sub184 = sub i128 %t.0, 15
  %array_getter186 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub184, i128 %k.1
  %w187 = load i128, i128* %array_getter186, align 4
  %sub190 = sub i128 %t.0, 16
  %array_getter191 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub190
  %sigmaPlus192 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter191, align 8
  %struct_getter193 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus192, i32 0, i32 2
  %sigmaplus.in15.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter193, align 8
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus196, i128 %w187, i1* @constraint.91)
  %sub199 = sub i128 %t.0, 16
  %array_getter200 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub199
  %sigmaPlus201 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter200, align 8
  %struct_getter202 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus201, i32 0, i32 2
  %sigmaplus.in15.read_input_outter203 = load [4096 x i128]*, [4096 x i128]** %struct_getter202, align 8
  %sigmaPlus205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in15.read_input_outter203, i128 0, i128 %k.1
  store i128 %w187, i128* %sigmaPlus205, align 4
  %sub208 = sub i128 %t.0, 16
  %array_getter210 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %sub208, i128 %k.1
  %w211 = load i128, i128* %array_getter210, align 4
  %sub214 = sub i128 %t.0, 16
  %array_getter215 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub214
  %sigmaPlus216 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter215, align 8
  %struct_getter217 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus216, i32 0, i32 3
  %sigmaplus.in16.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter217, align 8
  %array_getter219 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter, i128 0, i128 %k.1
  %sigmaPlus220 = load i128, i128* %array_getter219, align 4
  call void @fn_intrinsic_add_constraint(i128 %sigmaPlus220, i128 %w211, i1* @constraint.92)
  %sub223 = sub i128 %t.0, 16
  %array_getter224 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub223
  %sigmaPlus225 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter224, align 8
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus225, i32 0, i32 3
  %sigmaplus.in16.read_input_outter227 = load [4096 x i128]*, [4096 x i128]** %struct_getter226, align 8
  %sigmaPlus229 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.in16.read_input_outter227, i128 0, i128 %k.1
  store i128 %w211, i128* %sigmaPlus229, align 4
  br label %loop.latch230

loop.latch230:                                    ; preds = %loop.body133
  %add232 = add i128 %k.1, 1
  %slt234 = icmp slt i128 %add232, 32
  br i1 %slt234, label %loop.body133, label %loop.exit235

loop.exit235:                                     ; preds = %loop.latch230
  br label %loop.body236

loop.body236:                                     ; preds = %loop.latch255, %loop.exit235
  %k.2 = phi i128 [ 0, %loop.exit235 ], [ %add257, %loop.latch255 ]
  %sub239 = sub i128 %t.0, 16
  %array_getter240 = getelementptr inbounds [4096 x %struct_template_circuit_sigmaplus*], [4096 x %struct_template_circuit_sigmaplus*]* %sigmaPlus3, i128 0, i128 %sub239
  %sigmaPlus241 = load %struct_template_circuit_sigmaplus*, %struct_template_circuit_sigmaplus** %array_getter240, align 8
  %struct_getter242 = getelementptr inbounds %struct_template_circuit_sigmaplus, %struct_template_circuit_sigmaplus* %sigmaPlus241, i32 0, i32 4
  %sigmaplus.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter242, align 8
  %array_getter244 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sigmaplus.out.read_output_outter, i128 0, i128 %k.2
  %sigmaPlus245 = load i128, i128* %array_getter244, align 4
  %array_getter249 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.2
  %w250 = load i128, i128* %array_getter249, align 4
  call void @fn_intrinsic_add_constraint(i128 %w250, i128 %sigmaPlus245, i1* @constraint.93)
  %w254 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.0, i128 %k.2
  store i128 %sigmaPlus245, i128* %w254, align 4
  br label %loop.latch255

loop.latch255:                                    ; preds = %loop.body236
  %add257 = add i128 %k.2, 1
  %slt259 = icmp slt i128 %add257, 32
  br i1 %slt259, label %loop.body236, label %loop.exit260

loop.exit260:                                     ; preds = %loop.latch255
  br label %if.exit

if.exit:                                          ; preds = %loop.exit260, %loop.exit132
  br label %loop.latch261

loop.latch261:                                    ; preds = %if.exit
  %add263 = add i128 %t.0, 1
  %slt265 = icmp slt i128 %add263, 64
  br i1 %slt265, label %loop.body108, label %loop.exit266

loop.exit266:                                     ; preds = %loop.latch261
  br label %loop.body267

loop.body267:                                     ; preds = %loop.latch363, %loop.exit266
  %k.3 = phi i128 [ 0, %loop.exit266 ], [ %add365, %loop.latch363 ]
  %array_getter270 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %k.3
  %hin271 = load i128, i128* %array_getter270, align 4
  %array_getter274 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 0, i128 %k.3
  %a275 = load i128, i128* %array_getter274, align 4
  call void @fn_intrinsic_add_constraint(i128 %a275, i128 %hin271, i1* @constraint.94)
  %a278 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 0, i128 %k.3
  store i128 %hin271, i128* %a278, align 4
  %add281 = add i128 32, %k.3
  %array_getter282 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add281
  %hin283 = load i128, i128* %array_getter282, align 4
  %array_getter286 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 0, i128 %k.3
  %b287 = load i128, i128* %array_getter286, align 4
  call void @fn_intrinsic_add_constraint(i128 %b287, i128 %hin283, i1* @constraint.95)
  %b290 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 0, i128 %k.3
  store i128 %hin283, i128* %b290, align 4
  %add293 = add i128 64, %k.3
  %array_getter294 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add293
  %hin295 = load i128, i128* %array_getter294, align 4
  %array_getter298 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 0, i128 %k.3
  %c299 = load i128, i128* %array_getter298, align 4
  call void @fn_intrinsic_add_constraint(i128 %c299, i128 %hin295, i1* @constraint.96)
  %c302 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 0, i128 %k.3
  store i128 %hin295, i128* %c302, align 4
  %add305 = add i128 96, %k.3
  %array_getter306 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add305
  %hin307 = load i128, i128* %array_getter306, align 4
  %array_getter310 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 0, i128 %k.3
  %d311 = load i128, i128* %array_getter310, align 4
  call void @fn_intrinsic_add_constraint(i128 %d311, i128 %hin307, i1* @constraint.97)
  %d314 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 0, i128 %k.3
  store i128 %hin307, i128* %d314, align 4
  %add317 = add i128 128, %k.3
  %array_getter318 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add317
  %hin319 = load i128, i128* %array_getter318, align 4
  %array_getter322 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 0, i128 %k.3
  %e323 = load i128, i128* %array_getter322, align 4
  call void @fn_intrinsic_add_constraint(i128 %e323, i128 %hin319, i1* @constraint.98)
  %e326 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 0, i128 %k.3
  store i128 %hin319, i128* %e326, align 4
  %add329 = add i128 160, %k.3
  %array_getter330 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add329
  %hin331 = load i128, i128* %array_getter330, align 4
  %array_getter334 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 0, i128 %k.3
  %f335 = load i128, i128* %array_getter334, align 4
  call void @fn_intrinsic_add_constraint(i128 %f335, i128 %hin331, i1* @constraint.99)
  %f338 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 0, i128 %k.3
  store i128 %hin331, i128* %f338, align 4
  %add341 = add i128 192, %k.3
  %array_getter342 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add341
  %hin343 = load i128, i128* %array_getter342, align 4
  %array_getter346 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 0, i128 %k.3
  %g347 = load i128, i128* %array_getter346, align 4
  call void @fn_intrinsic_add_constraint(i128 %g347, i128 %hin343, i1* @constraint.100)
  %g350 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 0, i128 %k.3
  store i128 %hin343, i128* %g350, align 4
  %add353 = add i128 224, %k.3
  %array_getter354 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add353
  %hin355 = load i128, i128* %array_getter354, align 4
  %array_getter358 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 0, i128 %k.3
  %h359 = load i128, i128* %array_getter358, align 4
  call void @fn_intrinsic_add_constraint(i128 %h359, i128 %hin355, i1* @constraint.101)
  %h362 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 0, i128 %k.3
  store i128 %hin355, i128* %h362, align 4
  br label %loop.latch363

loop.latch363:                                    ; preds = %loop.body267
  %add365 = add i128 %k.3, 1
  %slt367 = icmp slt i128 %add365, 32
  br i1 %slt367, label %loop.body267, label %loop.exit368

loop.exit368:                                     ; preds = %loop.latch363
  br label %loop.body369

loop.body369:                                     ; preds = %loop.latch815, %loop.exit368
  %t.1 = phi i128 [ 0, %loop.exit368 ], [ %add817, %loop.latch815 ]
  br label %loop.body370

loop.body370:                                     ; preds = %loop.latch563, %loop.body369
  %k.4 = phi i128 [ 0, %loop.body369 ], [ %add565, %loop.latch563 ]
  %array_getter374 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %t.1, i128 %k.4
  %h375 = load i128, i128* %array_getter374, align 4
  %array_getter378 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1379 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter378, align 8
  %struct_getter380 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1379, i32 0, i32 0
  %t1.h.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter380, align 8
  %array_getter382 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter, i128 0, i128 %k.4
  %t1383 = load i128, i128* %array_getter382, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1383, i128 %h375, i1* @constraint.102)
  %array_getter386 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1387 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter386, align 8
  %struct_getter388 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1387, i32 0, i32 0
  %t1.h.read_input_outter389 = load [4096 x i128]*, [4096 x i128]** %struct_getter388, align 8
  %t1391 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.h.read_input_outter389, i128 0, i128 %k.4
  store i128 %h375, i128* %t1391, align 4
  %array_getter395 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %t.1, i128 %k.4
  %e396 = load i128, i128* %array_getter395, align 4
  %array_getter399 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1400 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter399, align 8
  %struct_getter401 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1400, i32 0, i32 1
  %t1.e.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter401, align 8
  %array_getter403 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter, i128 0, i128 %k.4
  %t1404 = load i128, i128* %array_getter403, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1404, i128 %e396, i1* @constraint.103)
  %array_getter407 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1408 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter407, align 8
  %struct_getter409 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1408, i32 0, i32 1
  %t1.e.read_input_outter410 = load [4096 x i128]*, [4096 x i128]** %struct_getter409, align 8
  %t1412 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.e.read_input_outter410, i128 0, i128 %k.4
  store i128 %e396, i128* %t1412, align 4
  %array_getter416 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %t.1, i128 %k.4
  %f417 = load i128, i128* %array_getter416, align 4
  %array_getter420 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1421 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter420, align 8
  %struct_getter422 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1421, i32 0, i32 2
  %t1.f.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter422, align 8
  %array_getter424 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter, i128 0, i128 %k.4
  %t1425 = load i128, i128* %array_getter424, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1425, i128 %f417, i1* @constraint.104)
  %array_getter428 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1429 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter428, align 8
  %struct_getter430 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1429, i32 0, i32 2
  %t1.f.read_input_outter431 = load [4096 x i128]*, [4096 x i128]** %struct_getter430, align 8
  %t1433 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.f.read_input_outter431, i128 0, i128 %k.4
  store i128 %f417, i128* %t1433, align 4
  %array_getter437 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %t.1, i128 %k.4
  %g438 = load i128, i128* %array_getter437, align 4
  %array_getter441 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1442 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter441, align 8
  %struct_getter443 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1442, i32 0, i32 3
  %t1.g.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter443, align 8
  %array_getter445 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter, i128 0, i128 %k.4
  %t1446 = load i128, i128* %array_getter445, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1446, i128 %g438, i1* @constraint.105)
  %array_getter449 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1450 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter449, align 8
  %struct_getter451 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1450, i32 0, i32 3
  %t1.g.read_input_outter452 = load [4096 x i128]*, [4096 x i128]** %struct_getter451, align 8
  %t1454 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.g.read_input_outter452, i128 0, i128 %k.4
  store i128 %g438, i128* %t1454, align 4
  %array_getter457 = getelementptr inbounds [4096 x %struct_template_circuit_k*], [4096 x %struct_template_circuit_k*]* %ct_k4, i128 0, i128 %t.1
  %ct_k458 = load %struct_template_circuit_k*, %struct_template_circuit_k** %array_getter457, align 8
  %struct_getter459 = getelementptr inbounds %struct_template_circuit_k, %struct_template_circuit_k* %ct_k458, i32 0, i32 1
  %k.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter459, align 8
  %array_getter461 = getelementptr inbounds [4096 x i128], [4096 x i128]* %k.out.read_output_outter, i128 0, i128 %k.4
  %ct_k462 = load i128, i128* %array_getter461, align 4
  %array_getter465 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1466 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter465, align 8
  %struct_getter467 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1466, i32 0, i32 4
  %t1.k.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter467, align 8
  %array_getter469 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter, i128 0, i128 %k.4
  %t1470 = load i128, i128* %array_getter469, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1470, i128 %ct_k462, i1* @constraint.106)
  %array_getter473 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1474 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter473, align 8
  %struct_getter475 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1474, i32 0, i32 4
  %t1.k.read_input_outter476 = load [4096 x i128]*, [4096 x i128]** %struct_getter475, align 8
  %t1478 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.k.read_input_outter476, i128 0, i128 %k.4
  store i128 %ct_k462, i128* %t1478, align 4
  %array_getter482 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %w, i128 0, i128 %t.1, i128 %k.4
  %w483 = load i128, i128* %array_getter482, align 4
  %array_getter486 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1487 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter486, align 8
  %struct_getter488 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1487, i32 0, i32 5
  %t1.w.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter488, align 8
  %array_getter490 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter, i128 0, i128 %k.4
  %t1491 = load i128, i128* %array_getter490, align 4
  call void @fn_intrinsic_add_constraint(i128 %t1491, i128 %w483, i1* @constraint.107)
  %array_getter494 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1495 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter494, align 8
  %struct_getter496 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1495, i32 0, i32 5
  %t1.w.read_input_outter497 = load [4096 x i128]*, [4096 x i128]** %struct_getter496, align 8
  %t1499 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.w.read_input_outter497, i128 0, i128 %k.4
  store i128 %w483, i128* %t1499, align 4
  %array_getter503 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %t.1, i128 %k.4
  %a504 = load i128, i128* %array_getter503, align 4
  %array_getter507 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2508 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter507, align 8
  %struct_getter509 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2508, i32 0, i32 0
  %t2.a.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter509, align 8
  %array_getter511 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter, i128 0, i128 %k.4
  %t2512 = load i128, i128* %array_getter511, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2512, i128 %a504, i1* @constraint.108)
  %array_getter515 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2516 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter515, align 8
  %struct_getter517 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2516, i32 0, i32 0
  %t2.a.read_input_outter518 = load [4096 x i128]*, [4096 x i128]** %struct_getter517, align 8
  %t2520 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.a.read_input_outter518, i128 0, i128 %k.4
  store i128 %a504, i128* %t2520, align 4
  %array_getter524 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %t.1, i128 %k.4
  %b525 = load i128, i128* %array_getter524, align 4
  %array_getter528 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2529 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter528, align 8
  %struct_getter530 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2529, i32 0, i32 1
  %t2.b.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter530, align 8
  %array_getter532 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter, i128 0, i128 %k.4
  %t2533 = load i128, i128* %array_getter532, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2533, i128 %b525, i1* @constraint.109)
  %array_getter536 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2537 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter536, align 8
  %struct_getter538 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2537, i32 0, i32 1
  %t2.b.read_input_outter539 = load [4096 x i128]*, [4096 x i128]** %struct_getter538, align 8
  %t2541 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.b.read_input_outter539, i128 0, i128 %k.4
  store i128 %b525, i128* %t2541, align 4
  %array_getter545 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %t.1, i128 %k.4
  %c546 = load i128, i128* %array_getter545, align 4
  %array_getter549 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2550 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter549, align 8
  %struct_getter551 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2550, i32 0, i32 2
  %t2.c.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter551, align 8
  %array_getter553 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter, i128 0, i128 %k.4
  %t2554 = load i128, i128* %array_getter553, align 4
  call void @fn_intrinsic_add_constraint(i128 %t2554, i128 %c546, i1* @constraint.110)
  %array_getter557 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2558 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter557, align 8
  %struct_getter559 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2558, i32 0, i32 2
  %t2.c.read_input_outter560 = load [4096 x i128]*, [4096 x i128]** %struct_getter559, align 8
  %t2562 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.c.read_input_outter560, i128 0, i128 %k.4
  store i128 %c546, i128* %t2562, align 4
  br label %loop.latch563

loop.latch563:                                    ; preds = %loop.body370
  %add565 = add i128 %k.4, 1
  %slt567 = icmp slt i128 %add565, 32
  br i1 %slt567, label %loop.body370, label %loop.exit568

loop.exit568:                                     ; preds = %loop.latch563
  br label %loop.body569

loop.body569:                                     ; preds = %loop.latch667, %loop.exit568
  %k.5 = phi i128 [ 0, %loop.exit568 ], [ %add669, %loop.latch667 ]
  %array_getter573 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %t.1, i128 %k.5
  %d574 = load i128, i128* %array_getter573, align 4
  %array_getter577 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %t.1
  %sume578 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter577, align 8
  %struct_getter579 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume578, i32 0, i32 2
  %binsum.in.read_input_outter = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter579, align 8
  %array_getter581 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter, i128 0, i128 0, i128 %k.5
  %sume582 = load i128, i128* %array_getter581, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume582, i128 %d574, i1* @constraint.111)
  %array_getter585 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %t.1
  %sume586 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter585, align 8
  %struct_getter587 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume586, i32 0, i32 2
  %binsum.in.read_input_outter588 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter587, align 8
  %sume590 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter588, i128 0, i128 0, i128 %k.5
  store i128 %d574, i128* %sume590, align 4
  %array_getter593 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1594 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter593, align 8
  %struct_getter595 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1594, i32 0, i32 6
  %t1.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter595, align 8
  %array_getter597 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter, i128 0, i128 %k.5
  %t1598 = load i128, i128* %array_getter597, align 4
  %array_getter601 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %t.1
  %sume602 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter601, align 8
  %struct_getter603 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume602, i32 0, i32 2
  %binsum.in.read_input_outter604 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter603, align 8
  %array_getter606 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter604, i128 0, i128 1, i128 %k.5
  %sume607 = load i128, i128* %array_getter606, align 4
  call void @fn_intrinsic_add_constraint(i128 %sume607, i128 %t1598, i1* @constraint.112)
  %array_getter610 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %t.1
  %sume611 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter610, align 8
  %struct_getter612 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume611, i32 0, i32 2
  %binsum.in.read_input_outter613 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter612, align 8
  %sume615 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter613, i128 0, i128 1, i128 %k.5
  store i128 %t1598, i128* %sume615, align 4
  %array_getter618 = getelementptr inbounds [4096 x %struct_template_circuit_t1*], [4096 x %struct_template_circuit_t1*]* %t111, i128 0, i128 %t.1
  %t1619 = load %struct_template_circuit_t1*, %struct_template_circuit_t1** %array_getter618, align 8
  %struct_getter620 = getelementptr inbounds %struct_template_circuit_t1, %struct_template_circuit_t1* %t1619, i32 0, i32 6
  %t1.out.read_output_outter621 = load [4096 x i128]*, [4096 x i128]** %struct_getter620, align 8
  %array_getter623 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t1.out.read_output_outter621, i128 0, i128 %k.5
  %t1624 = load i128, i128* %array_getter623, align 4
  %array_getter627 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %t.1
  %suma628 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter627, align 8
  %struct_getter629 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma628, i32 0, i32 2
  %binsum.in.read_input_outter630 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter629, align 8
  %array_getter632 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter630, i128 0, i128 0, i128 %k.5
  %suma633 = load i128, i128* %array_getter632, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma633, i128 %t1624, i1* @constraint.113)
  %array_getter636 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %t.1
  %suma637 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter636, align 8
  %struct_getter638 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma637, i32 0, i32 2
  %binsum.in.read_input_outter639 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter638, align 8
  %suma641 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter639, i128 0, i128 0, i128 %k.5
  store i128 %t1624, i128* %suma641, align 4
  %array_getter644 = getelementptr inbounds [4096 x %struct_template_circuit_t2*], [4096 x %struct_template_circuit_t2*]* %t217, i128 0, i128 %t.1
  %t2645 = load %struct_template_circuit_t2*, %struct_template_circuit_t2** %array_getter644, align 8
  %struct_getter646 = getelementptr inbounds %struct_template_circuit_t2, %struct_template_circuit_t2* %t2645, i32 0, i32 3
  %t2.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter646, align 8
  %array_getter648 = getelementptr inbounds [4096 x i128], [4096 x i128]* %t2.out.read_output_outter, i128 0, i128 %k.5
  %t2649 = load i128, i128* %array_getter648, align 4
  %array_getter652 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %t.1
  %suma653 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter652, align 8
  %struct_getter654 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma653, i32 0, i32 2
  %binsum.in.read_input_outter655 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter654, align 8
  %array_getter657 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter655, i128 0, i128 1, i128 %k.5
  %suma658 = load i128, i128* %array_getter657, align 4
  call void @fn_intrinsic_add_constraint(i128 %suma658, i128 %t2649, i1* @constraint.114)
  %array_getter661 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %t.1
  %suma662 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter661, align 8
  %struct_getter663 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma662, i32 0, i32 2
  %binsum.in.read_input_outter664 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter663, align 8
  %suma666 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter664, i128 0, i128 1, i128 %k.5
  store i128 %t2649, i128* %suma666, align 4
  br label %loop.latch667

loop.latch667:                                    ; preds = %loop.body569
  %add669 = add i128 %k.5, 1
  %slt671 = icmp slt i128 %add669, 32
  br i1 %slt671, label %loop.body569, label %loop.exit672

loop.exit672:                                     ; preds = %loop.latch667
  br label %loop.body673

loop.body673:                                     ; preds = %loop.latch809, %loop.exit672
  %k.6 = phi i128 [ 0, %loop.exit672 ], [ %add811, %loop.latch809 ]
  %array_getter677 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %t.1, i128 %k.6
  %g678 = load i128, i128* %array_getter677, align 4
  %add681 = add i128 %t.1, 1
  %array_getter683 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %add681, i128 %k.6
  %h684 = load i128, i128* %array_getter683, align 4
  call void @fn_intrinsic_add_constraint(i128 %h684, i128 %g678, i1* @constraint.115)
  %add687 = add i128 %t.1, 1
  %h689 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 %add687, i128 %k.6
  store i128 %g678, i128* %h689, align 4
  %array_getter693 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %t.1, i128 %k.6
  %f694 = load i128, i128* %array_getter693, align 4
  %add697 = add i128 %t.1, 1
  %array_getter699 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %add697, i128 %k.6
  %g700 = load i128, i128* %array_getter699, align 4
  call void @fn_intrinsic_add_constraint(i128 %g700, i128 %f694, i1* @constraint.116)
  %add703 = add i128 %t.1, 1
  %g705 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 %add703, i128 %k.6
  store i128 %f694, i128* %g705, align 4
  %array_getter709 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %t.1, i128 %k.6
  %e710 = load i128, i128* %array_getter709, align 4
  %add713 = add i128 %t.1, 1
  %array_getter715 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %add713, i128 %k.6
  %f716 = load i128, i128* %array_getter715, align 4
  call void @fn_intrinsic_add_constraint(i128 %f716, i128 %e710, i1* @constraint.117)
  %add719 = add i128 %t.1, 1
  %f721 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 %add719, i128 %k.6
  store i128 %e710, i128* %f721, align 4
  %array_getter724 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %sume6, i128 0, i128 %t.1
  %sume725 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter724, align 8
  %struct_getter726 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %sume725, i32 0, i32 3
  %binsum.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter726, align 8
  %array_getter728 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter, i128 0, i128 %k.6
  %sume729 = load i128, i128* %array_getter728, align 4
  %add732 = add i128 %t.1, 1
  %array_getter734 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %add732, i128 %k.6
  %e735 = load i128, i128* %array_getter734, align 4
  call void @fn_intrinsic_add_constraint(i128 %e735, i128 %sume729, i1* @constraint.118)
  %add738 = add i128 %t.1, 1
  %e740 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 %add738, i128 %k.6
  store i128 %sume729, i128* %e740, align 4
  %array_getter744 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %t.1, i128 %k.6
  %c745 = load i128, i128* %array_getter744, align 4
  %add748 = add i128 %t.1, 1
  %array_getter750 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %add748, i128 %k.6
  %d751 = load i128, i128* %array_getter750, align 4
  call void @fn_intrinsic_add_constraint(i128 %d751, i128 %c745, i1* @constraint.119)
  %add754 = add i128 %t.1, 1
  %d756 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 %add754, i128 %k.6
  store i128 %c745, i128* %d756, align 4
  %array_getter760 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %t.1, i128 %k.6
  %b761 = load i128, i128* %array_getter760, align 4
  %add764 = add i128 %t.1, 1
  %array_getter766 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %add764, i128 %k.6
  %c767 = load i128, i128* %array_getter766, align 4
  call void @fn_intrinsic_add_constraint(i128 %c767, i128 %b761, i1* @constraint.120)
  %add770 = add i128 %t.1, 1
  %c772 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 %add770, i128 %k.6
  store i128 %b761, i128* %c772, align 4
  %array_getter776 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %t.1, i128 %k.6
  %a777 = load i128, i128* %array_getter776, align 4
  %add780 = add i128 %t.1, 1
  %array_getter782 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %add780, i128 %k.6
  %b783 = load i128, i128* %array_getter782, align 4
  call void @fn_intrinsic_add_constraint(i128 %b783, i128 %a777, i1* @constraint.121)
  %add786 = add i128 %t.1, 1
  %b788 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 %add786, i128 %k.6
  store i128 %a777, i128* %b788, align 4
  %array_getter791 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %suma19, i128 0, i128 %t.1
  %suma792 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter791, align 8
  %struct_getter793 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %suma792, i32 0, i32 3
  %binsum.out.read_output_outter794 = load [4096 x i128]*, [4096 x i128]** %struct_getter793, align 8
  %array_getter796 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter794, i128 0, i128 %k.6
  %suma797 = load i128, i128* %array_getter796, align 4
  %add800 = add i128 %t.1, 1
  %array_getter802 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %add800, i128 %k.6
  %a803 = load i128, i128* %array_getter802, align 4
  call void @fn_intrinsic_add_constraint(i128 %a803, i128 %suma797, i1* @constraint.122)
  %add806 = add i128 %t.1, 1
  %a808 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 %add806, i128 %k.6
  store i128 %suma797, i128* %a808, align 4
  br label %loop.latch809

loop.latch809:                                    ; preds = %loop.body673
  %add811 = add i128 %k.6, 1
  %slt813 = icmp slt i128 %add811, 32
  br i1 %slt813, label %loop.body673, label %loop.exit814

loop.exit814:                                     ; preds = %loop.latch809
  br label %loop.latch815

loop.latch815:                                    ; preds = %loop.exit814
  %add817 = add i128 %t.1, 1
  %slt819 = icmp slt i128 %add817, 64
  br i1 %slt819, label %loop.body369, label %loop.exit820

loop.exit820:                                     ; preds = %loop.latch815
  br label %loop.body821

loop.body821:                                     ; preds = %loop.latch1134, %loop.exit820
  %k.7 = phi i128 [ 0, %loop.exit820 ], [ %add1136, %loop.latch1134 ]
  %add824 = add i128 0, %k.7
  %array_getter825 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add824
  %hin826 = load i128, i128* %array_getter825, align 4
  %array_getter828 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 0
  %fsum829 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter828, align 8
  %struct_getter830 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum829, i32 0, i32 2
  %binsum.in.read_input_outter831 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter830, align 8
  %array_getter833 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter831, i128 0, i128 0, i128 %k.7
  %fsum834 = load i128, i128* %array_getter833, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum834, i128 %hin826, i1* @constraint.123)
  %array_getter836 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 0
  %fsum837 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter836, align 8
  %struct_getter838 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum837, i32 0, i32 2
  %binsum.in.read_input_outter839 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter838, align 8
  %fsum841 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter839, i128 0, i128 0, i128 %k.7
  store i128 %hin826, i128* %fsum841, align 4
  %array_getter844 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %a, i128 0, i128 64, i128 %k.7
  %a845 = load i128, i128* %array_getter844, align 4
  %array_getter847 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 0
  %fsum848 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter847, align 8
  %struct_getter849 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum848, i32 0, i32 2
  %binsum.in.read_input_outter850 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter849, align 8
  %array_getter852 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter850, i128 0, i128 1, i128 %k.7
  %fsum853 = load i128, i128* %array_getter852, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum853, i128 %a845, i1* @constraint.124)
  %array_getter855 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 0
  %fsum856 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter855, align 8
  %struct_getter857 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum856, i32 0, i32 2
  %binsum.in.read_input_outter858 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter857, align 8
  %fsum860 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter858, i128 0, i128 1, i128 %k.7
  store i128 %a845, i128* %fsum860, align 4
  %add863 = add i128 32, %k.7
  %array_getter864 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add863
  %hin865 = load i128, i128* %array_getter864, align 4
  %array_getter867 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 1
  %fsum868 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter867, align 8
  %struct_getter869 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum868, i32 0, i32 2
  %binsum.in.read_input_outter870 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter869, align 8
  %array_getter872 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter870, i128 0, i128 0, i128 %k.7
  %fsum873 = load i128, i128* %array_getter872, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum873, i128 %hin865, i1* @constraint.125)
  %array_getter875 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 1
  %fsum876 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter875, align 8
  %struct_getter877 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum876, i32 0, i32 2
  %binsum.in.read_input_outter878 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter877, align 8
  %fsum880 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter878, i128 0, i128 0, i128 %k.7
  store i128 %hin865, i128* %fsum880, align 4
  %array_getter883 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %b, i128 0, i128 64, i128 %k.7
  %b884 = load i128, i128* %array_getter883, align 4
  %array_getter886 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 1
  %fsum887 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter886, align 8
  %struct_getter888 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum887, i32 0, i32 2
  %binsum.in.read_input_outter889 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter888, align 8
  %array_getter891 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter889, i128 0, i128 1, i128 %k.7
  %fsum892 = load i128, i128* %array_getter891, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum892, i128 %b884, i1* @constraint.126)
  %array_getter894 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 1
  %fsum895 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter894, align 8
  %struct_getter896 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum895, i32 0, i32 2
  %binsum.in.read_input_outter897 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter896, align 8
  %fsum899 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter897, i128 0, i128 1, i128 %k.7
  store i128 %b884, i128* %fsum899, align 4
  %add902 = add i128 64, %k.7
  %array_getter903 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add902
  %hin904 = load i128, i128* %array_getter903, align 4
  %array_getter906 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 2
  %fsum907 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter906, align 8
  %struct_getter908 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum907, i32 0, i32 2
  %binsum.in.read_input_outter909 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter908, align 8
  %array_getter911 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter909, i128 0, i128 0, i128 %k.7
  %fsum912 = load i128, i128* %array_getter911, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum912, i128 %hin904, i1* @constraint.127)
  %array_getter914 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 2
  %fsum915 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter914, align 8
  %struct_getter916 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum915, i32 0, i32 2
  %binsum.in.read_input_outter917 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter916, align 8
  %fsum919 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter917, i128 0, i128 0, i128 %k.7
  store i128 %hin904, i128* %fsum919, align 4
  %array_getter922 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %c, i128 0, i128 64, i128 %k.7
  %c923 = load i128, i128* %array_getter922, align 4
  %array_getter925 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 2
  %fsum926 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter925, align 8
  %struct_getter927 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum926, i32 0, i32 2
  %binsum.in.read_input_outter928 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter927, align 8
  %array_getter930 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter928, i128 0, i128 1, i128 %k.7
  %fsum931 = load i128, i128* %array_getter930, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum931, i128 %c923, i1* @constraint.128)
  %array_getter933 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 2
  %fsum934 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter933, align 8
  %struct_getter935 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum934, i32 0, i32 2
  %binsum.in.read_input_outter936 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter935, align 8
  %fsum938 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter936, i128 0, i128 1, i128 %k.7
  store i128 %c923, i128* %fsum938, align 4
  %add941 = add i128 96, %k.7
  %array_getter942 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add941
  %hin943 = load i128, i128* %array_getter942, align 4
  %array_getter945 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 3
  %fsum946 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter945, align 8
  %struct_getter947 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum946, i32 0, i32 2
  %binsum.in.read_input_outter948 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter947, align 8
  %array_getter950 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter948, i128 0, i128 0, i128 %k.7
  %fsum951 = load i128, i128* %array_getter950, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum951, i128 %hin943, i1* @constraint.129)
  %array_getter953 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 3
  %fsum954 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter953, align 8
  %struct_getter955 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum954, i32 0, i32 2
  %binsum.in.read_input_outter956 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter955, align 8
  %fsum958 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter956, i128 0, i128 0, i128 %k.7
  store i128 %hin943, i128* %fsum958, align 4
  %array_getter961 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %d, i128 0, i128 64, i128 %k.7
  %d962 = load i128, i128* %array_getter961, align 4
  %array_getter964 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 3
  %fsum965 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter964, align 8
  %struct_getter966 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum965, i32 0, i32 2
  %binsum.in.read_input_outter967 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter966, align 8
  %array_getter969 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter967, i128 0, i128 1, i128 %k.7
  %fsum970 = load i128, i128* %array_getter969, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum970, i128 %d962, i1* @constraint.130)
  %array_getter972 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 3
  %fsum973 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter972, align 8
  %struct_getter974 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum973, i32 0, i32 2
  %binsum.in.read_input_outter975 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter974, align 8
  %fsum977 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter975, i128 0, i128 1, i128 %k.7
  store i128 %d962, i128* %fsum977, align 4
  %add980 = add i128 128, %k.7
  %array_getter981 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add980
  %hin982 = load i128, i128* %array_getter981, align 4
  %array_getter984 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 4
  %fsum985 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter984, align 8
  %struct_getter986 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum985, i32 0, i32 2
  %binsum.in.read_input_outter987 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter986, align 8
  %array_getter989 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter987, i128 0, i128 0, i128 %k.7
  %fsum990 = load i128, i128* %array_getter989, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum990, i128 %hin982, i1* @constraint.131)
  %array_getter992 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 4
  %fsum993 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter992, align 8
  %struct_getter994 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum993, i32 0, i32 2
  %binsum.in.read_input_outter995 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter994, align 8
  %fsum997 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter995, i128 0, i128 0, i128 %k.7
  store i128 %hin982, i128* %fsum997, align 4
  %array_getter1000 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %e, i128 0, i128 64, i128 %k.7
  %e1001 = load i128, i128* %array_getter1000, align 4
  %array_getter1003 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 4
  %fsum1004 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1003, align 8
  %struct_getter1005 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1004, i32 0, i32 2
  %binsum.in.read_input_outter1006 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1005, align 8
  %array_getter1008 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1006, i128 0, i128 1, i128 %k.7
  %fsum1009 = load i128, i128* %array_getter1008, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1009, i128 %e1001, i1* @constraint.132)
  %array_getter1011 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 4
  %fsum1012 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1011, align 8
  %struct_getter1013 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1012, i32 0, i32 2
  %binsum.in.read_input_outter1014 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1013, align 8
  %fsum1016 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1014, i128 0, i128 1, i128 %k.7
  store i128 %e1001, i128* %fsum1016, align 4
  %add1019 = add i128 160, %k.7
  %array_getter1020 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1019
  %hin1021 = load i128, i128* %array_getter1020, align 4
  %array_getter1023 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 5
  %fsum1024 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1023, align 8
  %struct_getter1025 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1024, i32 0, i32 2
  %binsum.in.read_input_outter1026 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1025, align 8
  %array_getter1028 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1026, i128 0, i128 0, i128 %k.7
  %fsum1029 = load i128, i128* %array_getter1028, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1029, i128 %hin1021, i1* @constraint.133)
  %array_getter1031 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 5
  %fsum1032 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1031, align 8
  %struct_getter1033 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1032, i32 0, i32 2
  %binsum.in.read_input_outter1034 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1033, align 8
  %fsum1036 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1034, i128 0, i128 0, i128 %k.7
  store i128 %hin1021, i128* %fsum1036, align 4
  %array_getter1039 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %f, i128 0, i128 64, i128 %k.7
  %f1040 = load i128, i128* %array_getter1039, align 4
  %array_getter1042 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 5
  %fsum1043 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1042, align 8
  %struct_getter1044 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1043, i32 0, i32 2
  %binsum.in.read_input_outter1045 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1044, align 8
  %array_getter1047 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1045, i128 0, i128 1, i128 %k.7
  %fsum1048 = load i128, i128* %array_getter1047, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1048, i128 %f1040, i1* @constraint.134)
  %array_getter1050 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 5
  %fsum1051 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1050, align 8
  %struct_getter1052 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1051, i32 0, i32 2
  %binsum.in.read_input_outter1053 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1052, align 8
  %fsum1055 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1053, i128 0, i128 1, i128 %k.7
  store i128 %f1040, i128* %fsum1055, align 4
  %add1058 = add i128 192, %k.7
  %array_getter1059 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1058
  %hin1060 = load i128, i128* %array_getter1059, align 4
  %array_getter1062 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 6
  %fsum1063 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1062, align 8
  %struct_getter1064 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1063, i32 0, i32 2
  %binsum.in.read_input_outter1065 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1064, align 8
  %array_getter1067 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1065, i128 0, i128 0, i128 %k.7
  %fsum1068 = load i128, i128* %array_getter1067, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1068, i128 %hin1060, i1* @constraint.135)
  %array_getter1070 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 6
  %fsum1071 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1070, align 8
  %struct_getter1072 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1071, i32 0, i32 2
  %binsum.in.read_input_outter1073 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1072, align 8
  %fsum1075 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1073, i128 0, i128 0, i128 %k.7
  store i128 %hin1060, i128* %fsum1075, align 4
  %array_getter1078 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %g, i128 0, i128 64, i128 %k.7
  %g1079 = load i128, i128* %array_getter1078, align 4
  %array_getter1081 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 6
  %fsum1082 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1081, align 8
  %struct_getter1083 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1082, i32 0, i32 2
  %binsum.in.read_input_outter1084 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1083, align 8
  %array_getter1086 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1084, i128 0, i128 1, i128 %k.7
  %fsum1087 = load i128, i128* %array_getter1086, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1087, i128 %g1079, i1* @constraint.136)
  %array_getter1089 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 6
  %fsum1090 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1089, align 8
  %struct_getter1091 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1090, i32 0, i32 2
  %binsum.in.read_input_outter1092 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1091, align 8
  %fsum1094 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1092, i128 0, i128 1, i128 %k.7
  store i128 %g1079, i128* %fsum1094, align 4
  %add1097 = add i128 224, %k.7
  %array_getter1098 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_inner, i128 0, i128 %add1097
  %hin1099 = load i128, i128* %array_getter1098, align 4
  %array_getter1101 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 7
  %fsum1102 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1101, align 8
  %struct_getter1103 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1102, i32 0, i32 2
  %binsum.in.read_input_outter1104 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1103, align 8
  %array_getter1106 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1104, i128 0, i128 0, i128 %k.7
  %fsum1107 = load i128, i128* %array_getter1106, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1107, i128 %hin1099, i1* @constraint.137)
  %array_getter1109 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 7
  %fsum1110 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1109, align 8
  %struct_getter1111 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1110, i32 0, i32 2
  %binsum.in.read_input_outter1112 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1111, align 8
  %fsum1114 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1112, i128 0, i128 0, i128 %k.7
  store i128 %hin1099, i128* %fsum1114, align 4
  %array_getter1117 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %h, i128 0, i128 64, i128 %k.7
  %h1118 = load i128, i128* %array_getter1117, align 4
  %array_getter1120 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 7
  %fsum1121 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1120, align 8
  %struct_getter1122 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1121, i32 0, i32 2
  %binsum.in.read_input_outter1123 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1122, align 8
  %array_getter1125 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1123, i128 0, i128 1, i128 %k.7
  %fsum1126 = load i128, i128* %array_getter1125, align 4
  call void @fn_intrinsic_add_constraint(i128 %fsum1126, i128 %h1118, i1* @constraint.138)
  %array_getter1128 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 7
  %fsum1129 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1128, align 8
  %struct_getter1130 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1129, i32 0, i32 2
  %binsum.in.read_input_outter1131 = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter1130, align 8
  %fsum1133 = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %binsum.in.read_input_outter1131, i128 0, i128 1, i128 %k.7
  store i128 %h1118, i128* %fsum1133, align 4
  br label %loop.latch1134

loop.latch1134:                                   ; preds = %loop.body821
  %add1136 = add i128 %k.7, 1
  %slt1138 = icmp slt i128 %add1136, 32
  br i1 %slt1138, label %loop.body821, label %loop.exit1139

loop.exit1139:                                    ; preds = %loop.latch1134
  br label %loop.body1140

loop.body1140:                                    ; preds = %loop.latch1245, %loop.exit1139
  %k.8 = phi i128 [ 0, %loop.exit1139 ], [ %add1247, %loop.latch1245 ]
  %sub1143 = sub i128 31, %k.8
  %array_getter1144 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1143
  %out1145 = load i128, i128* %array_getter1144, align 4
  %array_getter1147 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 0
  %fsum1148 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1147, align 8
  %struct_getter1149 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1148, i32 0, i32 3
  %binsum.out.read_output_outter1150 = load [4096 x i128]*, [4096 x i128]** %struct_getter1149, align 8
  %array_getter1152 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1150, i128 0, i128 %k.8
  %fsum1153 = load i128, i128* %array_getter1152, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1145, i128 %fsum1153, i1* @constraint.139)
  %sub1156 = sub i128 63, %k.8
  %array_getter1157 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1156
  %out1158 = load i128, i128* %array_getter1157, align 4
  %array_getter1160 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 1
  %fsum1161 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1160, align 8
  %struct_getter1162 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1161, i32 0, i32 3
  %binsum.out.read_output_outter1163 = load [4096 x i128]*, [4096 x i128]** %struct_getter1162, align 8
  %array_getter1165 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1163, i128 0, i128 %k.8
  %fsum1166 = load i128, i128* %array_getter1165, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1158, i128 %fsum1166, i1* @constraint.140)
  %sub1169 = sub i128 95, %k.8
  %array_getter1170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1169
  %out1171 = load i128, i128* %array_getter1170, align 4
  %array_getter1173 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 2
  %fsum1174 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1173, align 8
  %struct_getter1175 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1174, i32 0, i32 3
  %binsum.out.read_output_outter1176 = load [4096 x i128]*, [4096 x i128]** %struct_getter1175, align 8
  %array_getter1178 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1176, i128 0, i128 %k.8
  %fsum1179 = load i128, i128* %array_getter1178, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1171, i128 %fsum1179, i1* @constraint.141)
  %sub1182 = sub i128 127, %k.8
  %array_getter1183 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1182
  %out1184 = load i128, i128* %array_getter1183, align 4
  %array_getter1186 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 3
  %fsum1187 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1186, align 8
  %struct_getter1188 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1187, i32 0, i32 3
  %binsum.out.read_output_outter1189 = load [4096 x i128]*, [4096 x i128]** %struct_getter1188, align 8
  %array_getter1191 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1189, i128 0, i128 %k.8
  %fsum1192 = load i128, i128* %array_getter1191, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1184, i128 %fsum1192, i1* @constraint.142)
  %sub1195 = sub i128 159, %k.8
  %array_getter1196 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1195
  %out1197 = load i128, i128* %array_getter1196, align 4
  %array_getter1199 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 4
  %fsum1200 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1199, align 8
  %struct_getter1201 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1200, i32 0, i32 3
  %binsum.out.read_output_outter1202 = load [4096 x i128]*, [4096 x i128]** %struct_getter1201, align 8
  %array_getter1204 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1202, i128 0, i128 %k.8
  %fsum1205 = load i128, i128* %array_getter1204, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1197, i128 %fsum1205, i1* @constraint.143)
  %sub1208 = sub i128 191, %k.8
  %array_getter1209 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1208
  %out1210 = load i128, i128* %array_getter1209, align 4
  %array_getter1212 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 5
  %fsum1213 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1212, align 8
  %struct_getter1214 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1213, i32 0, i32 3
  %binsum.out.read_output_outter1215 = load [4096 x i128]*, [4096 x i128]** %struct_getter1214, align 8
  %array_getter1217 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1215, i128 0, i128 %k.8
  %fsum1218 = load i128, i128* %array_getter1217, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1210, i128 %fsum1218, i1* @constraint.144)
  %sub1221 = sub i128 223, %k.8
  %array_getter1222 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1221
  %out1223 = load i128, i128* %array_getter1222, align 4
  %array_getter1225 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 6
  %fsum1226 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1225, align 8
  %struct_getter1227 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1226, i32 0, i32 3
  %binsum.out.read_output_outter1228 = load [4096 x i128]*, [4096 x i128]** %struct_getter1227, align 8
  %array_getter1230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1228, i128 0, i128 %k.8
  %fsum1231 = load i128, i128* %array_getter1230, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1223, i128 %fsum1231, i1* @constraint.145)
  %sub1234 = sub i128 255, %k.8
  %array_getter1235 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %sub1234
  %out1236 = load i128, i128* %array_getter1235, align 4
  %array_getter1238 = getelementptr inbounds [4096 x %struct_template_circuit_binsum*], [4096 x %struct_template_circuit_binsum*]* %fsum15, i128 0, i128 7
  %fsum1239 = load %struct_template_circuit_binsum*, %struct_template_circuit_binsum** %array_getter1238, align 8
  %struct_getter1240 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %fsum1239, i32 0, i32 3
  %binsum.out.read_output_outter1241 = load [4096 x i128]*, [4096 x i128]** %struct_getter1240, align 8
  %array_getter1243 = getelementptr inbounds [4096 x i128], [4096 x i128]* %binsum.out.read_output_outter1241, i128 0, i128 %k.8
  %fsum1244 = load i128, i128* %array_getter1243, align 4
  call void @fn_intrinsic_add_constraint(i128 %out1236, i128 %fsum1244, i1* @constraint.146)
  br label %loop.latch1245

loop.latch1245:                                   ; preds = %loop.body1140
  %add1247 = add i128 %k.8, 1
  %slt1249 = icmp slt i128 %add1247, 32
  br i1 %slt1249, label %loop.body1140, label %loop.exit1250

loop.exit1250:                                    ; preds = %loop.latch1245
  br label %exit

exit:                                             ; preds = %loop.exit1250
  %sha256compression.a.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 2
  store [4096 x [4096 x i128]]* %a, [4096 x [4096 x i128]]** %sha256compression.a.write_inter_inner, align 8
  %sha256compression.b.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 3
  store [4096 x [4096 x i128]]* %b, [4096 x [4096 x i128]]** %sha256compression.b.write_inter_inner, align 8
  %sha256compression.c.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 4
  store [4096 x [4096 x i128]]* %c, [4096 x [4096 x i128]]** %sha256compression.c.write_inter_inner, align 8
  %sha256compression.d.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 5
  store [4096 x [4096 x i128]]* %d, [4096 x [4096 x i128]]** %sha256compression.d.write_inter_inner, align 8
  %sha256compression.e.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 6
  store [4096 x [4096 x i128]]* %e, [4096 x [4096 x i128]]** %sha256compression.e.write_inter_inner, align 8
  %sha256compression.f.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 7
  store [4096 x [4096 x i128]]* %f, [4096 x [4096 x i128]]** %sha256compression.f.write_inter_inner, align 8
  %sha256compression.g.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 8
  store [4096 x [4096 x i128]]* %g, [4096 x [4096 x i128]]** %sha256compression.g.write_inter_inner, align 8
  %sha256compression.h.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 9
  store [4096 x [4096 x i128]]* %h, [4096 x [4096 x i128]]** %sha256compression.h.write_inter_inner, align 8
  %sha256compression.w.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 10
  store [4096 x [4096 x i128]]* %w, [4096 x [4096 x i128]]** %sha256compression.w.write_inter_inner, align 8
  %sha256compression.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %0, i32 0, i32 11
  store [4096 x i128]* %out, [4096 x i128]** %sha256compression.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256compression* @fn_template_build_sha256compression() {
entry:
  %struct_template_circuit_sha256compression = alloca %struct_template_circuit_sha256compression, align 8
  ret %struct_template_circuit_sha256compression* %struct_template_circuit_sha256compression
}

define void @fn_template_init_sha256(%struct_template_circuit_sha256* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 0
  %sha256.nbits.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 1
  %sha256.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i2 = call i128 @fn_intrinsic_inline_init()
  %nBlocks3 = call i128 @fn_intrinsic_inline_init()
  %sha256compression4 = alloca [4096 x %struct_template_circuit_sha256compression*], align 8
  %k5 = call i128 @fn_intrinsic_inline_init()
  %bitsLastBlock6 = call i128 @fn_intrinsic_inline_init()
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %paddedIn = bitcast i8* %malloccall7 to [4096 x i128]*
  %add = add i128 %sha256.nbits.read_arg_inner, 64
  %sdiv = sdiv i128 %add, 512
  %add8 = add i128 %sdiv, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %k.0 = phi i128 [ 0, %entry ], [ %add18, %loop.latch ]
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_inner, i128 0, i128 %k.0
  %in10 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.0
  %paddedIn14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn14, i128 %in10, i1* @constraint.147)
  %paddedIn16 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.0
  store i128 %in10, i128* %paddedIn16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add18 = add i128 %k.0, 1
  %slt = icmp slt i128 %add18, %sha256.nbits.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sha256.nbits.read_arg_inner
  %paddedIn24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn24, i128 1, i1* @constraint.148)
  %paddedIn27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sha256.nbits.read_arg_inner
  store i128 1, i128* %paddedIn27, align 4
  %add29 = add i128 %sha256.nbits.read_arg_inner, 1
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch38, %loop.exit
  %k.1 = phi i128 [ %add29, %loop.exit ], [ %add40, %loop.latch38 ]
  %array_getter33 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.1
  %paddedIn34 = load i128, i128* %array_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn34, i128 0, i1* @constraint.149)
  %paddedIn37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %k.1
  store i128 0, i128* %paddedIn37, align 4
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body30
  %add40 = add i128 %k.1, 1
  %mul = mul i128 %add8, 512
  %sub = sub i128 %mul, 64
  %slt43 = icmp slt i128 %add40, %sub
  br i1 %slt43, label %loop.body30, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch38
  br label %loop.body45

loop.body45:                                      ; preds = %loop.latch63, %loop.exit44
  %k.2 = phi i128 [ 0, %loop.exit44 ], [ %add65, %loop.latch63 ]
  %rshift = lshr i128 %sha256.nbits.read_arg_inner, %k.2
  %and = and i128 %rshift, 1
  %mul50 = mul i128 %add8, 512
  %sub52 = sub i128 %mul50, %k.2
  %sub53 = sub i128 %sub52, 1
  %array_getter54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sub53
  %paddedIn55 = load i128, i128* %array_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %paddedIn55, i128 %and, i1* @constraint.150)
  %mul58 = mul i128 %add8, 512
  %sub60 = sub i128 %mul58, %k.2
  %sub61 = sub i128 %sub60, 1
  %paddedIn62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %sub61
  store i128 %and, i128* %paddedIn62, align 4
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.body45
  %add65 = add i128 %k.2, 1
  %slt67 = icmp slt i128 %add65, 64
  br i1 %slt67, label %loop.body45, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch63
  %call = call %struct_template_circuit_h* @fn_template_build_h(i128 0)
  %call69 = call %struct_template_circuit_h* @fn_template_build_h(i128 1)
  %call70 = call %struct_template_circuit_h* @fn_template_build_h(i128 2)
  %call71 = call %struct_template_circuit_h* @fn_template_build_h(i128 3)
  %call72 = call %struct_template_circuit_h* @fn_template_build_h(i128 4)
  %call73 = call %struct_template_circuit_h* @fn_template_build_h(i128 5)
  %call74 = call %struct_template_circuit_h* @fn_template_build_h(i128 6)
  %call75 = call %struct_template_circuit_h* @fn_template_build_h(i128 7)
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch563, %loop.exit68
  %i.0 = phi i128 [ 0, %loop.exit68 ], [ %add565, %loop.latch563 ]
  %call77 = call %struct_template_circuit_sha256compression* @fn_template_build_sha256compression()
  %sha256compression80 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  store %struct_template_circuit_sha256compression* %call77, %struct_template_circuit_sha256compression** %sha256compression80, align 8
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body76
  br label %loop.body82

if.false:                                         ; preds = %loop.body76
  br label %loop.body287

loop.body82:                                      ; preds = %loop.latch281, %if.true
  %k.3 = phi i128 [ 0, %if.true ], [ %add283, %loop.latch281 ]
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call, i32 0, i32 1
  %h.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter84, align 8
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter, i128 0, i128 %k.3
  %ha087 = load i128, i128* %array_getter86, align 4
  %array_getter90 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression91 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression91, i32 0, i32 0
  %sha256compression.hin.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter92, align 8
  %add94 = add i128 0, %k.3
  %array_getter95 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter, i128 0, i128 %add94
  %sha256compression96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression96, i128 %ha087, i1* @constraint.151)
  %array_getter99 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression100 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter99, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression100, i32 0, i32 0
  %sha256compression.hin.read_input_outter102 = load [4096 x i128]*, [4096 x i128]** %struct_getter101, align 8
  %add104 = add i128 0, %k.3
  %sha256compression105 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter102, i128 0, i128 %add104
  store i128 %ha087, i128* %sha256compression105, align 4
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call69, i32 0, i32 1
  %h.out.read_output_outter108 = load [4096 x i128]*, [4096 x i128]** %struct_getter107, align 8
  %array_getter110 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter108, i128 0, i128 %k.3
  %hb0111 = load i128, i128* %array_getter110, align 4
  %array_getter114 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression115 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression115, i32 0, i32 0
  %sha256compression.hin.read_input_outter117 = load [4096 x i128]*, [4096 x i128]** %struct_getter116, align 8
  %add119 = add i128 32, %k.3
  %array_getter120 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter117, i128 0, i128 %add119
  %sha256compression121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression121, i128 %hb0111, i1* @constraint.152)
  %array_getter124 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression125 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression125, i32 0, i32 0
  %sha256compression.hin.read_input_outter127 = load [4096 x i128]*, [4096 x i128]** %struct_getter126, align 8
  %add129 = add i128 32, %k.3
  %sha256compression130 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter127, i128 0, i128 %add129
  store i128 %hb0111, i128* %sha256compression130, align 4
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call70, i32 0, i32 1
  %h.out.read_output_outter133 = load [4096 x i128]*, [4096 x i128]** %struct_getter132, align 8
  %array_getter135 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter133, i128 0, i128 %k.3
  %hc0136 = load i128, i128* %array_getter135, align 4
  %array_getter139 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression140 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter139, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression140, i32 0, i32 0
  %sha256compression.hin.read_input_outter142 = load [4096 x i128]*, [4096 x i128]** %struct_getter141, align 8
  %add144 = add i128 64, %k.3
  %array_getter145 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter142, i128 0, i128 %add144
  %sha256compression146 = load i128, i128* %array_getter145, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression146, i128 %hc0136, i1* @constraint.153)
  %array_getter149 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression150 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter149, align 8
  %struct_getter151 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression150, i32 0, i32 0
  %sha256compression.hin.read_input_outter152 = load [4096 x i128]*, [4096 x i128]** %struct_getter151, align 8
  %add154 = add i128 64, %k.3
  %sha256compression155 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter152, i128 0, i128 %add154
  store i128 %hc0136, i128* %sha256compression155, align 4
  %struct_getter157 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call71, i32 0, i32 1
  %h.out.read_output_outter158 = load [4096 x i128]*, [4096 x i128]** %struct_getter157, align 8
  %array_getter160 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter158, i128 0, i128 %k.3
  %hd0161 = load i128, i128* %array_getter160, align 4
  %array_getter164 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression165 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter164, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression165, i32 0, i32 0
  %sha256compression.hin.read_input_outter167 = load [4096 x i128]*, [4096 x i128]** %struct_getter166, align 8
  %add169 = add i128 96, %k.3
  %array_getter170 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter167, i128 0, i128 %add169
  %sha256compression171 = load i128, i128* %array_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression171, i128 %hd0161, i1* @constraint.154)
  %array_getter174 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression175 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter174, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression175, i32 0, i32 0
  %sha256compression.hin.read_input_outter177 = load [4096 x i128]*, [4096 x i128]** %struct_getter176, align 8
  %add179 = add i128 96, %k.3
  %sha256compression180 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter177, i128 0, i128 %add179
  store i128 %hd0161, i128* %sha256compression180, align 4
  %struct_getter182 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call72, i32 0, i32 1
  %h.out.read_output_outter183 = load [4096 x i128]*, [4096 x i128]** %struct_getter182, align 8
  %array_getter185 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter183, i128 0, i128 %k.3
  %he0186 = load i128, i128* %array_getter185, align 4
  %array_getter189 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression190 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter189, align 8
  %struct_getter191 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression190, i32 0, i32 0
  %sha256compression.hin.read_input_outter192 = load [4096 x i128]*, [4096 x i128]** %struct_getter191, align 8
  %add194 = add i128 128, %k.3
  %array_getter195 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter192, i128 0, i128 %add194
  %sha256compression196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression196, i128 %he0186, i1* @constraint.155)
  %array_getter199 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression200 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression200, i32 0, i32 0
  %sha256compression.hin.read_input_outter202 = load [4096 x i128]*, [4096 x i128]** %struct_getter201, align 8
  %add204 = add i128 128, %k.3
  %sha256compression205 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter202, i128 0, i128 %add204
  store i128 %he0186, i128* %sha256compression205, align 4
  %struct_getter207 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call73, i32 0, i32 1
  %h.out.read_output_outter208 = load [4096 x i128]*, [4096 x i128]** %struct_getter207, align 8
  %array_getter210 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter208, i128 0, i128 %k.3
  %hf0211 = load i128, i128* %array_getter210, align 4
  %array_getter214 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression215 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter214, align 8
  %struct_getter216 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression215, i32 0, i32 0
  %sha256compression.hin.read_input_outter217 = load [4096 x i128]*, [4096 x i128]** %struct_getter216, align 8
  %add219 = add i128 160, %k.3
  %array_getter220 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter217, i128 0, i128 %add219
  %sha256compression221 = load i128, i128* %array_getter220, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression221, i128 %hf0211, i1* @constraint.156)
  %array_getter224 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression225 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter224, align 8
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression225, i32 0, i32 0
  %sha256compression.hin.read_input_outter227 = load [4096 x i128]*, [4096 x i128]** %struct_getter226, align 8
  %add229 = add i128 160, %k.3
  %sha256compression230 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter227, i128 0, i128 %add229
  store i128 %hf0211, i128* %sha256compression230, align 4
  %struct_getter232 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call74, i32 0, i32 1
  %h.out.read_output_outter233 = load [4096 x i128]*, [4096 x i128]** %struct_getter232, align 8
  %array_getter235 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter233, i128 0, i128 %k.3
  %hg0236 = load i128, i128* %array_getter235, align 4
  %array_getter239 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression240 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter239, align 8
  %struct_getter241 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression240, i32 0, i32 0
  %sha256compression.hin.read_input_outter242 = load [4096 x i128]*, [4096 x i128]** %struct_getter241, align 8
  %add244 = add i128 192, %k.3
  %array_getter245 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter242, i128 0, i128 %add244
  %sha256compression246 = load i128, i128* %array_getter245, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression246, i128 %hg0236, i1* @constraint.157)
  %array_getter249 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression250 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter249, align 8
  %struct_getter251 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression250, i32 0, i32 0
  %sha256compression.hin.read_input_outter252 = load [4096 x i128]*, [4096 x i128]** %struct_getter251, align 8
  %add254 = add i128 192, %k.3
  %sha256compression255 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter252, i128 0, i128 %add254
  store i128 %hg0236, i128* %sha256compression255, align 4
  %struct_getter257 = getelementptr inbounds %struct_template_circuit_h, %struct_template_circuit_h* %call75, i32 0, i32 1
  %h.out.read_output_outter258 = load [4096 x i128]*, [4096 x i128]** %struct_getter257, align 8
  %array_getter260 = getelementptr inbounds [4096 x i128], [4096 x i128]* %h.out.read_output_outter258, i128 0, i128 %k.3
  %hh0261 = load i128, i128* %array_getter260, align 4
  %array_getter264 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression265 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter264, align 8
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression265, i32 0, i32 0
  %sha256compression.hin.read_input_outter267 = load [4096 x i128]*, [4096 x i128]** %struct_getter266, align 8
  %add269 = add i128 224, %k.3
  %array_getter270 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter267, i128 0, i128 %add269
  %sha256compression271 = load i128, i128* %array_getter270, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression271, i128 %hh0261, i1* @constraint.158)
  %array_getter274 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression275 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter274, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression275, i32 0, i32 0
  %sha256compression.hin.read_input_outter277 = load [4096 x i128]*, [4096 x i128]** %struct_getter276, align 8
  %add279 = add i128 224, %k.3
  %sha256compression280 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter277, i128 0, i128 %add279
  store i128 %hh0261, i128* %sha256compression280, align 4
  br label %loop.latch281

loop.latch281:                                    ; preds = %loop.body82
  %add283 = add i128 %k.3, 1
  %slt285 = icmp slt i128 %add283, 32
  br i1 %slt285, label %loop.body82, label %loop.exit286

loop.exit286:                                     ; preds = %loop.latch281
  br label %if.exit

loop.body287:                                     ; preds = %loop.latch527, %if.false
  %k.4 = phi i128 [ 0, %if.false ], [ %add529, %loop.latch527 ]
  %sub290 = sub i128 %i.0, 1
  %array_getter291 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub290
  %sha256compression292 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression292, i32 0, i32 11
  %sha256compression.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter293, align 8
  %sub295 = sub i128 31, %k.4
  %array_getter296 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter, i128 0, i128 %sub295
  %sha256compression297 = load i128, i128* %array_getter296, align 4
  %array_getter300 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression301 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter300, align 8
  %struct_getter302 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression301, i32 0, i32 0
  %sha256compression.hin.read_input_outter303 = load [4096 x i128]*, [4096 x i128]** %struct_getter302, align 8
  %add305 = add i128 0, %k.4
  %array_getter306 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter303, i128 0, i128 %add305
  %sha256compression307 = load i128, i128* %array_getter306, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression307, i128 %sha256compression297, i1* @constraint.159)
  %array_getter310 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression311 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter310, align 8
  %struct_getter312 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression311, i32 0, i32 0
  %sha256compression.hin.read_input_outter313 = load [4096 x i128]*, [4096 x i128]** %struct_getter312, align 8
  %add315 = add i128 0, %k.4
  %sha256compression316 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter313, i128 0, i128 %add315
  store i128 %sha256compression297, i128* %sha256compression316, align 4
  %sub319 = sub i128 %i.0, 1
  %array_getter320 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub319
  %sha256compression321 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter320, align 8
  %struct_getter322 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression321, i32 0, i32 11
  %sha256compression.out.read_output_outter323 = load [4096 x i128]*, [4096 x i128]** %struct_getter322, align 8
  %sub325 = sub i128 63, %k.4
  %array_getter326 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter323, i128 0, i128 %sub325
  %sha256compression327 = load i128, i128* %array_getter326, align 4
  %array_getter330 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression331 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter330, align 8
  %struct_getter332 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression331, i32 0, i32 0
  %sha256compression.hin.read_input_outter333 = load [4096 x i128]*, [4096 x i128]** %struct_getter332, align 8
  %add335 = add i128 32, %k.4
  %array_getter336 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter333, i128 0, i128 %add335
  %sha256compression337 = load i128, i128* %array_getter336, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression337, i128 %sha256compression327, i1* @constraint.160)
  %array_getter340 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression341 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter340, align 8
  %struct_getter342 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression341, i32 0, i32 0
  %sha256compression.hin.read_input_outter343 = load [4096 x i128]*, [4096 x i128]** %struct_getter342, align 8
  %add345 = add i128 32, %k.4
  %sha256compression346 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter343, i128 0, i128 %add345
  store i128 %sha256compression327, i128* %sha256compression346, align 4
  %sub349 = sub i128 %i.0, 1
  %array_getter350 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub349
  %sha256compression351 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter350, align 8
  %struct_getter352 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression351, i32 0, i32 11
  %sha256compression.out.read_output_outter353 = load [4096 x i128]*, [4096 x i128]** %struct_getter352, align 8
  %sub355 = sub i128 95, %k.4
  %array_getter356 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter353, i128 0, i128 %sub355
  %sha256compression357 = load i128, i128* %array_getter356, align 4
  %array_getter360 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression361 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter360, align 8
  %struct_getter362 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression361, i32 0, i32 0
  %sha256compression.hin.read_input_outter363 = load [4096 x i128]*, [4096 x i128]** %struct_getter362, align 8
  %add365 = add i128 64, %k.4
  %array_getter366 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter363, i128 0, i128 %add365
  %sha256compression367 = load i128, i128* %array_getter366, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression367, i128 %sha256compression357, i1* @constraint.161)
  %array_getter370 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression371 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter370, align 8
  %struct_getter372 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression371, i32 0, i32 0
  %sha256compression.hin.read_input_outter373 = load [4096 x i128]*, [4096 x i128]** %struct_getter372, align 8
  %add375 = add i128 64, %k.4
  %sha256compression376 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter373, i128 0, i128 %add375
  store i128 %sha256compression357, i128* %sha256compression376, align 4
  %sub379 = sub i128 %i.0, 1
  %array_getter380 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub379
  %sha256compression381 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter380, align 8
  %struct_getter382 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression381, i32 0, i32 11
  %sha256compression.out.read_output_outter383 = load [4096 x i128]*, [4096 x i128]** %struct_getter382, align 8
  %sub385 = sub i128 127, %k.4
  %array_getter386 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter383, i128 0, i128 %sub385
  %sha256compression387 = load i128, i128* %array_getter386, align 4
  %array_getter390 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression391 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter390, align 8
  %struct_getter392 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression391, i32 0, i32 0
  %sha256compression.hin.read_input_outter393 = load [4096 x i128]*, [4096 x i128]** %struct_getter392, align 8
  %add395 = add i128 96, %k.4
  %array_getter396 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter393, i128 0, i128 %add395
  %sha256compression397 = load i128, i128* %array_getter396, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression397, i128 %sha256compression387, i1* @constraint.162)
  %array_getter400 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression401 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter400, align 8
  %struct_getter402 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression401, i32 0, i32 0
  %sha256compression.hin.read_input_outter403 = load [4096 x i128]*, [4096 x i128]** %struct_getter402, align 8
  %add405 = add i128 96, %k.4
  %sha256compression406 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter403, i128 0, i128 %add405
  store i128 %sha256compression387, i128* %sha256compression406, align 4
  %sub409 = sub i128 %i.0, 1
  %array_getter410 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub409
  %sha256compression411 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter410, align 8
  %struct_getter412 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression411, i32 0, i32 11
  %sha256compression.out.read_output_outter413 = load [4096 x i128]*, [4096 x i128]** %struct_getter412, align 8
  %sub415 = sub i128 159, %k.4
  %array_getter416 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter413, i128 0, i128 %sub415
  %sha256compression417 = load i128, i128* %array_getter416, align 4
  %array_getter420 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression421 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter420, align 8
  %struct_getter422 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression421, i32 0, i32 0
  %sha256compression.hin.read_input_outter423 = load [4096 x i128]*, [4096 x i128]** %struct_getter422, align 8
  %add425 = add i128 128, %k.4
  %array_getter426 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter423, i128 0, i128 %add425
  %sha256compression427 = load i128, i128* %array_getter426, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression427, i128 %sha256compression417, i1* @constraint.163)
  %array_getter430 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression431 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter430, align 8
  %struct_getter432 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression431, i32 0, i32 0
  %sha256compression.hin.read_input_outter433 = load [4096 x i128]*, [4096 x i128]** %struct_getter432, align 8
  %add435 = add i128 128, %k.4
  %sha256compression436 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter433, i128 0, i128 %add435
  store i128 %sha256compression417, i128* %sha256compression436, align 4
  %sub439 = sub i128 %i.0, 1
  %array_getter440 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub439
  %sha256compression441 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter440, align 8
  %struct_getter442 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression441, i32 0, i32 11
  %sha256compression.out.read_output_outter443 = load [4096 x i128]*, [4096 x i128]** %struct_getter442, align 8
  %sub445 = sub i128 191, %k.4
  %array_getter446 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter443, i128 0, i128 %sub445
  %sha256compression447 = load i128, i128* %array_getter446, align 4
  %array_getter450 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression451 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter450, align 8
  %struct_getter452 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression451, i32 0, i32 0
  %sha256compression.hin.read_input_outter453 = load [4096 x i128]*, [4096 x i128]** %struct_getter452, align 8
  %add455 = add i128 160, %k.4
  %array_getter456 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter453, i128 0, i128 %add455
  %sha256compression457 = load i128, i128* %array_getter456, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression457, i128 %sha256compression447, i1* @constraint.164)
  %array_getter460 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression461 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter460, align 8
  %struct_getter462 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression461, i32 0, i32 0
  %sha256compression.hin.read_input_outter463 = load [4096 x i128]*, [4096 x i128]** %struct_getter462, align 8
  %add465 = add i128 160, %k.4
  %sha256compression466 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter463, i128 0, i128 %add465
  store i128 %sha256compression447, i128* %sha256compression466, align 4
  %sub469 = sub i128 %i.0, 1
  %array_getter470 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub469
  %sha256compression471 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter470, align 8
  %struct_getter472 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression471, i32 0, i32 11
  %sha256compression.out.read_output_outter473 = load [4096 x i128]*, [4096 x i128]** %struct_getter472, align 8
  %sub475 = sub i128 223, %k.4
  %array_getter476 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter473, i128 0, i128 %sub475
  %sha256compression477 = load i128, i128* %array_getter476, align 4
  %array_getter480 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression481 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter480, align 8
  %struct_getter482 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression481, i32 0, i32 0
  %sha256compression.hin.read_input_outter483 = load [4096 x i128]*, [4096 x i128]** %struct_getter482, align 8
  %add485 = add i128 192, %k.4
  %array_getter486 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter483, i128 0, i128 %add485
  %sha256compression487 = load i128, i128* %array_getter486, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression487, i128 %sha256compression477, i1* @constraint.165)
  %array_getter490 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression491 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter490, align 8
  %struct_getter492 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression491, i32 0, i32 0
  %sha256compression.hin.read_input_outter493 = load [4096 x i128]*, [4096 x i128]** %struct_getter492, align 8
  %add495 = add i128 192, %k.4
  %sha256compression496 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter493, i128 0, i128 %add495
  store i128 %sha256compression477, i128* %sha256compression496, align 4
  %sub499 = sub i128 %i.0, 1
  %array_getter500 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub499
  %sha256compression501 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter500, align 8
  %struct_getter502 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression501, i32 0, i32 11
  %sha256compression.out.read_output_outter503 = load [4096 x i128]*, [4096 x i128]** %struct_getter502, align 8
  %sub505 = sub i128 255, %k.4
  %array_getter506 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter503, i128 0, i128 %sub505
  %sha256compression507 = load i128, i128* %array_getter506, align 4
  %array_getter510 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression511 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter510, align 8
  %struct_getter512 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression511, i32 0, i32 0
  %sha256compression.hin.read_input_outter513 = load [4096 x i128]*, [4096 x i128]** %struct_getter512, align 8
  %add515 = add i128 224, %k.4
  %array_getter516 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter513, i128 0, i128 %add515
  %sha256compression517 = load i128, i128* %array_getter516, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression517, i128 %sha256compression507, i1* @constraint.166)
  %array_getter520 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression521 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter520, align 8
  %struct_getter522 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression521, i32 0, i32 0
  %sha256compression.hin.read_input_outter523 = load [4096 x i128]*, [4096 x i128]** %struct_getter522, align 8
  %add525 = add i128 224, %k.4
  %sha256compression526 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.hin.read_input_outter523, i128 0, i128 %add525
  store i128 %sha256compression507, i128* %sha256compression526, align 4
  br label %loop.latch527

loop.latch527:                                    ; preds = %loop.body287
  %add529 = add i128 %k.4, 1
  %slt531 = icmp slt i128 %add529, 32
  br i1 %slt531, label %loop.body287, label %loop.exit532

loop.exit532:                                     ; preds = %loop.latch527
  br label %if.exit

if.exit:                                          ; preds = %loop.exit532, %loop.exit286
  br label %loop.body533

loop.body533:                                     ; preds = %loop.latch557, %if.exit
  %k.5 = phi i128 [ 0, %if.exit ], [ %add559, %loop.latch557 ]
  %mul536 = mul i128 %i.0, 512
  %add538 = add i128 %mul536, %k.5
  %array_getter539 = getelementptr inbounds [4096 x i128], [4096 x i128]* %paddedIn, i128 0, i128 %add538
  %paddedIn540 = load i128, i128* %array_getter539, align 4
  %array_getter543 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression544 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter543, align 8
  %struct_getter545 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression544, i32 0, i32 1
  %sha256compression.inp.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter545, align 8
  %array_getter547 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter, i128 0, i128 %k.5
  %sha256compression548 = load i128, i128* %array_getter547, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha256compression548, i128 %paddedIn540, i1* @constraint.167)
  %array_getter551 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %i.0
  %sha256compression552 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter551, align 8
  %struct_getter553 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression552, i32 0, i32 1
  %sha256compression.inp.read_input_outter554 = load [4096 x i128]*, [4096 x i128]** %struct_getter553, align 8
  %sha256compression556 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.inp.read_input_outter554, i128 0, i128 %k.5
  store i128 %paddedIn540, i128* %sha256compression556, align 4
  br label %loop.latch557

loop.latch557:                                    ; preds = %loop.body533
  %add559 = add i128 %k.5, 1
  %slt561 = icmp slt i128 %add559, 512
  br i1 %slt561, label %loop.body533, label %loop.exit562

loop.exit562:                                     ; preds = %loop.latch557
  br label %loop.latch563

loop.latch563:                                    ; preds = %loop.exit562
  %add565 = add i128 %i.0, 1
  %slt568 = icmp slt i128 %add565, %add8
  br i1 %slt568, label %loop.body76, label %loop.exit569

loop.exit569:                                     ; preds = %loop.latch563
  br label %loop.body570

loop.body570:                                     ; preds = %loop.latch588, %loop.exit569
  %k.6 = phi i128 [ 0, %loop.exit569 ], [ %add590, %loop.latch588 ]
  %sub573 = sub i128 %add8, 1
  %array_getter574 = getelementptr inbounds [4096 x %struct_template_circuit_sha256compression*], [4096 x %struct_template_circuit_sha256compression*]* %sha256compression4, i128 0, i128 %sub573
  %sha256compression575 = load %struct_template_circuit_sha256compression*, %struct_template_circuit_sha256compression** %array_getter574, align 8
  %struct_getter576 = getelementptr inbounds %struct_template_circuit_sha256compression, %struct_template_circuit_sha256compression* %sha256compression575, i32 0, i32 11
  %sha256compression.out.read_output_outter577 = load [4096 x i128]*, [4096 x i128]** %struct_getter576, align 8
  %array_getter579 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256compression.out.read_output_outter577, i128 0, i128 %k.6
  %sha256compression580 = load i128, i128* %array_getter579, align 4
  %array_getter583 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.6
  %out584 = load i128, i128* %array_getter583, align 4
  call void @fn_intrinsic_add_constraint(i128 %out584, i128 %sha256compression580, i1* @constraint.168)
  %out587 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %k.6
  store i128 %sha256compression580, i128* %out587, align 4
  br label %loop.latch588

loop.latch588:                                    ; preds = %loop.body570
  %add590 = add i128 %k.6, 1
  %slt592 = icmp slt i128 %add590, 256
  br i1 %slt592, label %loop.body570, label %loop.exit593

loop.exit593:                                     ; preds = %loop.latch588
  br label %exit

exit:                                             ; preds = %loop.exit593
  %sha256.paddedin.write_inter_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 2
  store [4096 x i128]* %paddedIn, [4096 x i128]** %sha256.paddedin.write_inter_inner, align 8
  %sha256.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %sha256.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %0) {
entry:
  %struct_template_circuit_sha256 = alloca %struct_template_circuit_sha256, align 8
  %sha256.nbits.write_arg_inner = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %struct_template_circuit_sha256, i32 0, i32 0
  store i128 %0, i128* %sha256.nbits.write_arg_inner, align 4
  ret %struct_template_circuit_sha256* %struct_template_circuit_sha256
}

define void @fn_template_init_sha256bytes(%struct_template_circuit_sha256bytes* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 0
  %sha256bytes.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 1
  %sha256bytes.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %byte_to_bits2 = alloca [4096 x %struct_template_circuit_num2bits*], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %i3 = call i128 @fn_intrinsic_inline_init()
  %bits_to_bytes4 = alloca [4096 x %struct_template_circuit_bits2num*], align 8
  %j5 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 8)
  %byte_to_bits7 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits2, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %byte_to_bits7, align 8
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_inner, i128 0, i128 %i.0
  %in9 = load i128, i128* %array_getter, align 4
  %array_getter12 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits2, i128 0, i128 %i.0
  %byte_to_bits13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter12, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits13, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %in9, i1* @constraint.169)
  %array_getter17 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits2, i128 0, i128 %i.0
  %byte_to_bits18 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter17, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits18, i32 0, i32 1
  store i128 %in9, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sha256bytes.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %mul = mul i128 %sha256bytes.n.read_arg_inner, 8
  %call22 = call %struct_template_circuit_sha256* @fn_template_build_sha256(i128 %mul)
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch55, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add57, %loop.latch55 ]
  br label %loop.body24

loop.body24:                                      ; preds = %loop.latch49, %loop.body23
  %j.0 = phi i128 [ 0, %loop.body23 ], [ %add51, %loop.latch49 ]
  %array_getter27 = getelementptr inbounds [4096 x %struct_template_circuit_num2bits*], [4096 x %struct_template_circuit_num2bits*]* %byte_to_bits2, i128 0, i128 %i.1
  %byte_to_bits28 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %byte_to_bits28, i32 0, i32 2
  %num2bits.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter29, align 8
  %sub = sub i128 7, %j.0
  %array_getter31 = getelementptr inbounds [4096 x i128], [4096 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %sub
  %byte_to_bits32 = load i128, i128* %array_getter31, align 4
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 1
  %sha256.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter34, align 8
  %mul36 = mul i128 %i.1, 8
  %add38 = add i128 %mul36, %j.0
  %array_getter39 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter, i128 0, i128 %add38
  %sha25640 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %sha25640, i128 %byte_to_bits32, i1* @constraint.170)
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 1
  %sha256.in.read_input_outter43 = load [4096 x i128]*, [4096 x i128]** %struct_getter42, align 8
  %mul45 = mul i128 %i.1, 8
  %add47 = add i128 %mul45, %j.0
  %sha25648 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.in.read_input_outter43, i128 0, i128 %add47
  store i128 %byte_to_bits32, i128* %sha25648, align 4
  br label %loop.latch49

loop.latch49:                                     ; preds = %loop.body24
  %add51 = add i128 %j.0, 1
  %slt53 = icmp slt i128 %add51, 8
  br i1 %slt53, label %loop.body24, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch49
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit54
  %add57 = add i128 %i.1, 1
  %slt60 = icmp slt i128 %add57, %sha256bytes.n.read_arg_inner
  br i1 %slt60, label %loop.body23, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch112, %loop.exit61
  %i.2 = phi i128 [ 0, %loop.exit61 ], [ %add114, %loop.latch112 ]
  %call63 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 8)
  %bits_to_bytes66 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes4, i128 0, i128 %i.2
  store %struct_template_circuit_bits2num* %call63, %struct_template_circuit_bits2num** %bits_to_bytes66, align 8
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch94, %loop.body62
  %j.1 = phi i128 [ 0, %loop.body62 ], [ %add96, %loop.latch94 ]
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_sha256, %struct_template_circuit_sha256* %call22, i32 0, i32 3
  %sha256.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter69, align 8
  %mul71 = mul i128 %i.2, 8
  %add73 = add i128 %mul71, %j.1
  %array_getter74 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256.out.read_output_outter, i128 0, i128 %add73
  %sha25675 = load i128, i128* %array_getter74, align 4
  %array_getter78 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes4, i128 0, i128 %i.2
  %bits_to_bytes79 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes79, i32 0, i32 1
  %bits2num.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter80, align 8
  %sub82 = sub i128 7, %j.1
  %array_getter83 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %sub82
  %bits_to_bytes84 = load i128, i128* %array_getter83, align 4
  call void @fn_intrinsic_add_constraint(i128 %bits_to_bytes84, i128 %sha25675, i1* @constraint.171)
  %array_getter87 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes4, i128 0, i128 %i.2
  %bits_to_bytes88 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter87, align 8
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes88, i32 0, i32 1
  %bits2num.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %sub92 = sub i128 7, %j.1
  %bits_to_bytes93 = getelementptr inbounds [4096 x i128], [4096 x i128]* %bits2num.in.read_input_outter90, i128 0, i128 %sub92
  store i128 %sha25675, i128* %bits_to_bytes93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body67
  %add96 = add i128 %j.1, 1
  %slt98 = icmp slt i128 %add96, 8
  br i1 %slt98, label %loop.body67, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch94
  %array_getter102 = getelementptr inbounds [4096 x %struct_template_circuit_bits2num*], [4096 x %struct_template_circuit_bits2num*]* %bits_to_bytes4, i128 0, i128 %i.2
  %bits_to_bytes103 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %array_getter102, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %bits_to_bytes103, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter104, align 4
  %array_getter107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.2
  %out108 = load i128, i128* %array_getter107, align 4
  call void @fn_intrinsic_add_constraint(i128 %out108, i128 %bits2num.out.read_output_outter, i1* @constraint.172)
  %out111 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.2
  store i128 %bits2num.out.read_output_outter, i128* %out111, align 4
  br label %loop.latch112

loop.latch112:                                    ; preds = %loop.exit99
  %add114 = add i128 %i.2, 1
  %slt116 = icmp slt i128 %add114, 32
  br i1 %slt116, label %loop.body62, label %loop.exit117

loop.exit117:                                     ; preds = %loop.latch112
  br label %exit

exit:                                             ; preds = %loop.exit117
  %sha256bytes.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %sha256bytes.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 %0) {
entry:
  %struct_template_circuit_sha256bytes = alloca %struct_template_circuit_sha256bytes, align 8
  %sha256bytes.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %struct_template_circuit_sha256bytes, i32 0, i32 0
  store i128 %0, i128* %sha256bytes.n.write_arg_inner, align 4
  ret %struct_template_circuit_sha256bytes* %struct_template_circuit_sha256bytes
}

define void @fn_template_init_sszlayer(%struct_template_circuit_sszlayer* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 0
  %sszlayer.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 1
  %sszlayer.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  %num_pairs3 = call i128 @fn_intrinsic_inline_init()
  %j4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %hashers5 = alloca [4096 x %struct_template_circuit_sha256bytes*], align 8
  %sdiv = sdiv i128 %sszlayer.num_bytes.read_arg_inner, 64
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add33, %loop.latch31 ]
  %call = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  %hashers7 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers5, i128 0, i128 %i.0
  store %struct_template_circuit_sha256bytes* %call, %struct_template_circuit_sha256bytes** %hashers7, align 8
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add29, %loop.latch ]
  %mul = mul i128 %i.0, 64
  %add = add i128 %mul, %j.0
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_inner, i128 0, i128 %add
  %in11 = load i128, i128* %array_getter, align 4
  %array_getter14 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers5, i128 0, i128 %i.0
  %hashers15 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter14, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers15, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter16, align 8
  %array_getter18 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %j.0
  %hashers19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %hashers19, i128 %in11, i1* @constraint.173)
  %array_getter22 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers5, i128 0, i128 %i.0
  %hashers23 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers23, i32 0, i32 1
  %sha256bytes.in.read_input_outter25 = load [4096 x i128]*, [4096 x i128]** %struct_getter24, align 8
  %hashers27 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter25, i128 0, i128 %j.0
  store i128 %in11, i128* %hashers27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body8
  %add29 = add i128 %j.0, 1
  %slt = icmp slt i128 %add29, 64
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %add33 = add i128 %i.0, 1
  %slt36 = icmp slt i128 %add33, %sdiv
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch67, %loop.exit37
  %i.1 = phi i128 [ 0, %loop.exit37 ], [ %add69, %loop.latch67 ]
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch61, %loop.body38
  %j.1 = phi i128 [ 0, %loop.body38 ], [ %add63, %loop.latch61 ]
  %array_getter42 = getelementptr inbounds [4096 x %struct_template_circuit_sha256bytes*], [4096 x %struct_template_circuit_sha256bytes*]* %hashers5, i128 0, i128 %i.1
  %hashers43 = load %struct_template_circuit_sha256bytes*, %struct_template_circuit_sha256bytes** %array_getter42, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %hashers43, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter44, align 8
  %array_getter46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %j.1
  %hashers47 = load i128, i128* %array_getter46, align 4
  %mul50 = mul i128 %i.1, 32
  %add52 = add i128 %mul50, %j.1
  %array_getter53 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %add52
  %out54 = load i128, i128* %array_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %out54, i128 %hashers47, i1* @constraint.174)
  %mul57 = mul i128 %i.1, 32
  %add59 = add i128 %mul57, %j.1
  %out60 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %add59
  store i128 %hashers47, i128* %out60, align 4
  br label %loop.latch61

loop.latch61:                                     ; preds = %loop.body39
  %add63 = add i128 %j.1, 1
  %slt65 = icmp slt i128 %add63, 32
  br i1 %slt65, label %loop.body39, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch61
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.exit66
  %add69 = add i128 %i.1, 1
  %slt72 = icmp slt i128 %add69, %sdiv
  br i1 %slt72, label %loop.body38, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  br label %exit

exit:                                             ; preds = %loop.exit73
  %sszlayer.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %sszlayer.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszlayer* @fn_template_build_sszlayer(i128 %0) {
entry:
  %struct_template_circuit_sszlayer = alloca %struct_template_circuit_sszlayer, align 8
  %sszlayer.num_bytes.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %struct_template_circuit_sszlayer, i32 0, i32 0
  store i128 %0, i128* %sszlayer.num_bytes.write_arg_inner, align 4
  ret %struct_template_circuit_sszlayer* %struct_template_circuit_sszlayer
}

define void @fn_template_init_sszarray(%struct_template_circuit_sszarray* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 0
  %sszarray.num_bytes.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 1
  %sszarray.log2b.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 2
  %sszarray.in.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %num_input_bytes3 = call i128 @fn_intrinsic_inline_init()
  %i4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %layer_idx5 = call i128 @fn_intrinsic_inline_init()
  %ssz_layers6 = alloca [4096 x %struct_template_circuit_sszlayer*], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch59, %entry
  %layer_idx.0 = phi i128 [ 0, %entry ], [ %add61, %loop.latch59 ]
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %layer_idx.0)
  %sdiv = sdiv i128 %sszarray.num_bytes.read_arg_inner, %pow
  %call = call %struct_template_circuit_sszlayer* @fn_template_build_sszlayer(i128 %sdiv)
  %ssz_layers10 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %layer_idx.0
  store %struct_template_circuit_sszlayer* %call, %struct_template_circuit_sszlayer** %ssz_layers10, align 8
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch, %loop.body
  %i.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %eq = icmp eq i128 %layer_idx.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body11
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_inner, i128 0, i128 %i.0
  %in14 = load i128, i128* %array_getter, align 4
  %array_getter17 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %layer_idx.0
  %ssz_layers18 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter17, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers18, i32 0, i32 1
  %sszlayer.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter, i128 0, i128 %i.0
  %ssz_layers22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_layers22, i128 %in14, i1* @constraint.175)
  %array_getter25 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %layer_idx.0
  %ssz_layers26 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter25, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers26, i32 0, i32 1
  %sszlayer.in.read_input_outter28 = load [4096 x i128]*, [4096 x i128]** %struct_getter27, align 8
  %ssz_layers30 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter28, i128 0, i128 %i.0
  store i128 %in14, i128* %ssz_layers30, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body11
  %sub = sub i128 %layer_idx.0, 1
  %array_getter33 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %sub
  %ssz_layers34 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers34, i32 0, i32 2
  %sszlayer.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter35, align 8
  %array_getter37 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter, i128 0, i128 %i.0
  %ssz_layers38 = load i128, i128* %array_getter37, align 4
  %array_getter41 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %layer_idx.0
  %ssz_layers42 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter41, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers42, i32 0, i32 1
  %sszlayer.in.read_input_outter44 = load [4096 x i128]*, [4096 x i128]** %struct_getter43, align 8
  %array_getter46 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter44, i128 0, i128 %i.0
  %ssz_layers47 = load i128, i128* %array_getter46, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_layers47, i128 %ssz_layers38, i1* @constraint.176)
  %array_getter50 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %layer_idx.0
  %ssz_layers51 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter50, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers51, i32 0, i32 1
  %sszlayer.in.read_input_outter53 = load [4096 x i128]*, [4096 x i128]** %struct_getter52, align 8
  %ssz_layers55 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.in.read_input_outter53, i128 0, i128 %i.0
  store i128 %ssz_layers38, i128* %ssz_layers55, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sdiv
  br i1 %slt, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.exit
  %add61 = add i128 %layer_idx.0, 1
  %slt63 = icmp slt i128 %add61, %sszarray.log2b.read_arg_inner
  br i1 %slt63, label %loop.body, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch59
  br label %loop.body65

loop.body65:                                      ; preds = %loop.latch83, %loop.exit64
  %i.1 = phi i128 [ 0, %loop.exit64 ], [ %add85, %loop.latch83 ]
  %sub68 = sub i128 %sszarray.log2b.read_arg_inner, 1
  %array_getter69 = getelementptr inbounds [4096 x %struct_template_circuit_sszlayer*], [4096 x %struct_template_circuit_sszlayer*]* %ssz_layers6, i128 0, i128 %sub68
  %ssz_layers70 = load %struct_template_circuit_sszlayer*, %struct_template_circuit_sszlayer** %array_getter69, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_sszlayer, %struct_template_circuit_sszlayer* %ssz_layers70, i32 0, i32 2
  %sszlayer.out.read_output_outter72 = load [4096 x i128]*, [4096 x i128]** %struct_getter71, align 8
  %array_getter74 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszlayer.out.read_output_outter72, i128 0, i128 %i.1
  %ssz_layers75 = load i128, i128* %array_getter74, align 4
  %array_getter78 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.1
  %out79 = load i128, i128* %array_getter78, align 4
  call void @fn_intrinsic_add_constraint(i128 %out79, i128 %ssz_layers75, i1* @constraint.177)
  %out82 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.1
  store i128 %ssz_layers75, i128* %out82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body65
  %add85 = add i128 %i.1, 1
  %slt87 = icmp slt i128 %add85, 32
  br i1 %slt87, label %loop.body65, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch83
  br label %exit

exit:                                             ; preds = %loop.exit88
  %sszarray.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %0, i32 0, i32 3
  store [4096 x i128]* %out, [4096 x i128]** %sszarray.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_sszarray = alloca %struct_template_circuit_sszarray, align 8
  %sszarray.num_bytes.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %struct_template_circuit_sszarray, i32 0, i32 0
  store i128 %0, i128* %sszarray.num_bytes.write_arg_inner, align 4
  %sszarray.log2b.write_arg_inner = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %struct_template_circuit_sszarray, i32 0, i32 1
  store i128 %1, i128* %sszarray.log2b.write_arg_inner, align 4
  ret %struct_template_circuit_sszarray* %struct_template_circuit_sszarray
}

define void @fn_template_init_sszphase0synccommittee(%struct_template_circuit_sszphase0synccommittee* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 0
  %sszphase0synccommittee.pubkeys.read_input_inner = load [4096 x [4096 x i128]]*, [4096 x [4096 x i128]]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 1
  %sszphase0synccommittee.aggregate_pubkey.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %j2 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 32768, i128 10)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch43, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add45, %loop.latch43 ]
  br label %loop.body4

loop.body4:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add40, %loop.latch ]
  %slt = icmp slt i128 %j.0, 48
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body4
  %array_getter = getelementptr inbounds [4096 x [4096 x i128]], [4096 x [4096 x i128]]* %sszphase0synccommittee.pubkeys.read_input_inner, i128 0, i128 %i.0, i128 %j.0
  %pubkeys8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %mul = mul i128 %i.0, 64
  %add = add i128 %mul, %j.0
  %array_getter13 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %add
  %ssz_pubkeys14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_pubkeys14, i128 %pubkeys8, i1* @constraint.178)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter16 = load [4096 x i128]*, [4096 x i128]** %struct_getter15, align 8
  %mul18 = mul i128 %i.0, 64
  %add20 = add i128 %mul18, %j.0
  %ssz_pubkeys21 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter16, i128 0, i128 %add20
  store i128 %pubkeys8, i128* %ssz_pubkeys21, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter24 = load [4096 x i128]*, [4096 x i128]** %struct_getter23, align 8
  %mul26 = mul i128 %i.0, 64
  %add28 = add i128 %mul26, %j.0
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter24, i128 0, i128 %add28
  %ssz_pubkeys30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_pubkeys30, i128 0, i1* @constraint.179)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %mul35 = mul i128 %i.0, 64
  %add37 = add i128 %mul35, %j.0
  %ssz_pubkeys38 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %add37
  store i128 0, i128* %ssz_pubkeys38, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add40 = add i128 %j.0, 1
  %slt42 = icmp slt i128 %add40, 64
  br i1 %slt42, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch43

loop.latch43:                                     ; preds = %loop.exit
  %add45 = add i128 %i.0, 1
  %slt47 = icmp slt i128 %add45, 512
  br i1 %slt47, label %loop.body, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch43
  %call49 = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 64, i128 1)
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch81, %loop.exit48
  %i.1 = phi i128 [ 0, %loop.exit48 ], [ %add83, %loop.latch81 ]
  %slt54 = icmp slt i128 %i.1, 48
  br i1 %slt54, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %array_getter56 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0synccommittee.aggregate_pubkey.read_input_inner, i128 0, i128 %i.1
  %aggregate_pubkey57 = load i128, i128* %array_getter56, align 4
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter60 = load [4096 x i128]*, [4096 x i128]** %struct_getter59, align 8
  %array_getter62 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter60, i128 0, i128 %i.1
  %ssz_aggregate_pubkey63 = load i128, i128* %array_getter62, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_aggregate_pubkey63, i128 %aggregate_pubkey57, i1* @constraint.180)
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter66 = load [4096 x i128]*, [4096 x i128]** %struct_getter65, align 8
  %ssz_aggregate_pubkey68 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter66, i128 0, i128 %i.1
  store i128 %aggregate_pubkey57, i128* %ssz_aggregate_pubkey68, align 4
  br label %if.exit80

if.false52:                                       ; preds = %loop.body50
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %array_getter73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i.1
  %ssz_aggregate_pubkey74 = load i128, i128* %array_getter73, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_aggregate_pubkey74, i128 0, i1* @constraint.181)
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 2
  %sszarray.in.read_input_outter77 = load [4096 x i128]*, [4096 x i128]** %struct_getter76, align 8
  %ssz_aggregate_pubkey79 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter77, i128 0, i128 %i.1
  store i128 0, i128* %ssz_aggregate_pubkey79, align 4
  br label %if.exit80

if.exit80:                                        ; preds = %if.false52, %if.true51
  br label %loop.latch81

loop.latch81:                                     ; preds = %if.exit80
  %add83 = add i128 %i.1, 1
  %slt85 = icmp slt i128 %add83, 64
  br i1 %slt85, label %loop.body50, label %loop.exit86

loop.exit86:                                      ; preds = %loop.latch81
  %call87 = call %struct_template_circuit_sha256bytes* @fn_template_build_sha256bytes(i128 64)
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch126, %loop.exit86
  %i.2 = phi i128 [ 0, %loop.exit86 ], [ %add128, %loop.latch126 ]
  %slt92 = icmp slt i128 %i.2, 32
  br i1 %slt92, label %if.true89, label %if.false90

if.true89:                                        ; preds = %loop.body88
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %array_getter96 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i.2
  %ssz_pubkeys97 = load i128, i128* %array_getter96, align 4
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter99, align 8
  %array_getter101 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter, i128 0, i128 %i.2
  %hasher102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %hasher102, i128 %ssz_pubkeys97, i1* @constraint.182)
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter105 = load [4096 x i128]*, [4096 x i128]** %struct_getter104, align 8
  %hasher107 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter105, i128 0, i128 %i.2
  store i128 %ssz_pubkeys97, i128* %hasher107, align 4
  br label %if.exit125

if.false90:                                       ; preds = %loop.body88
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call49, i32 0, i32 3
  %sszarray.out.read_output_outter110 = load [4096 x i128]*, [4096 x i128]** %struct_getter109, align 8
  %sub = sub i128 %i.2, 32
  %array_getter112 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter110, i128 0, i128 %sub
  %ssz_aggregate_pubkey113 = load i128, i128* %array_getter112, align 4
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter116 = load [4096 x i128]*, [4096 x i128]** %struct_getter115, align 8
  %array_getter118 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter116, i128 0, i128 %i.2
  %hasher119 = load i128, i128* %array_getter118, align 4
  call void @fn_intrinsic_add_constraint(i128 %hasher119, i128 %ssz_aggregate_pubkey113, i1* @constraint.183)
  %struct_getter121 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 1
  %sha256bytes.in.read_input_outter122 = load [4096 x i128]*, [4096 x i128]** %struct_getter121, align 8
  %hasher124 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.in.read_input_outter122, i128 0, i128 %i.2
  store i128 %ssz_aggregate_pubkey113, i128* %hasher124, align 4
  br label %if.exit125

if.exit125:                                       ; preds = %if.false90, %if.true89
  br label %loop.latch126

loop.latch126:                                    ; preds = %if.exit125
  %add128 = add i128 %i.2, 1
  %slt130 = icmp slt i128 %add128, 64
  br i1 %slt130, label %loop.body88, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch126
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch145, %loop.exit131
  %i.3 = phi i128 [ 0, %loop.exit131 ], [ %add147, %loop.latch145 ]
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_sha256bytes, %struct_template_circuit_sha256bytes* %call87, i32 0, i32 2
  %sha256bytes.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter134, align 8
  %array_getter136 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sha256bytes.out.read_output_outter, i128 0, i128 %i.3
  %hasher137 = load i128, i128* %array_getter136, align 4
  %array_getter140 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.3
  %out141 = load i128, i128* %array_getter140, align 4
  call void @fn_intrinsic_add_constraint(i128 %out141, i128 %hasher137, i1* @constraint.184)
  %out144 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.3
  store i128 %hasher137, i128* %out144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body132
  %add147 = add i128 %i.3, 1
  %slt149 = icmp slt i128 %add147, 32
  br i1 %slt149, label %loop.body132, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch145
  br label %exit

exit:                                             ; preds = %loop.exit150
  %sszphase0synccommittee.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0synccommittee, %struct_template_circuit_sszphase0synccommittee* %0, i32 0, i32 2
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0synccommittee.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0synccommittee* @fn_template_build_sszphase0synccommittee() {
entry:
  %struct_template_circuit_sszphase0synccommittee = alloca %struct_template_circuit_sszphase0synccommittee, align 8
  ret %struct_template_circuit_sszphase0synccommittee* %struct_template_circuit_sszphase0synccommittee
}

define void @fn_template_init_sszphase0beaconblockheader(%struct_template_circuit_sszphase0beaconblockheader* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 0
  %sszphase0beaconblockheader.slot.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter, align 8
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 1
  %sszphase0beaconblockheader.proposer_index.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 2
  %sszphase0beaconblockheader.parent_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 3
  %sszphase0beaconblockheader.state_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 4
  %sszphase0beaconblockheader.body_root.read_input_inner = load [4096 x i128]*, [4096 x i128]** %struct_getter4, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([4096 x i128]* getelementptr ([4096 x i128], [4096 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [4096 x i128]*
  %call = call %struct_template_circuit_sszarray* @fn_template_build_sszarray(i128 256, i128 3)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %slt = icmp slt i128 %i.0, 32
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0beaconblockheader.slot.read_input_inner, i128 0, i128 %i.0
  %slot8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter, i128 0, i128 %i.0
  %ssz_beacon_block_header13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header13, i128 %slot8, i1* @constraint.185)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter15 = load [4096 x i128]*, [4096 x i128]** %struct_getter14, align 8
  %ssz_beacon_block_header17 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter15, i128 0, i128 %i.0
  store i128 %slot8, i128* %ssz_beacon_block_header17, align 4
  br label %if.exit107

if.false:                                         ; preds = %loop.body
  %slt21 = icmp slt i128 %i.0, 64
  br i1 %slt21, label %if.true18, label %if.false19

if.true18:                                        ; preds = %if.false
  %sub = sub i128 %i.0, 32
  %array_getter23 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0beaconblockheader.proposer_index.read_input_inner, i128 0, i128 %sub
  %proposer_index24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter27 = load [4096 x i128]*, [4096 x i128]** %struct_getter26, align 8
  %array_getter29 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter27, i128 0, i128 %i.0
  %ssz_beacon_block_header30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header30, i128 %proposer_index24, i1* @constraint.186)
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter33 = load [4096 x i128]*, [4096 x i128]** %struct_getter32, align 8
  %ssz_beacon_block_header35 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter33, i128 0, i128 %i.0
  store i128 %proposer_index24, i128* %ssz_beacon_block_header35, align 4
  br label %if.exit106

if.false19:                                       ; preds = %if.false
  %slt39 = icmp slt i128 %i.0, 96
  br i1 %slt39, label %if.true36, label %if.false37

if.true36:                                        ; preds = %if.false19
  %sub41 = sub i128 %i.0, 64
  %array_getter42 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0beaconblockheader.parent_root.read_input_inner, i128 0, i128 %sub41
  %parent_root43 = load i128, i128* %array_getter42, align 4
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter46 = load [4096 x i128]*, [4096 x i128]** %struct_getter45, align 8
  %array_getter48 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter46, i128 0, i128 %i.0
  %ssz_beacon_block_header49 = load i128, i128* %array_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header49, i128 %parent_root43, i1* @constraint.187)
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter52 = load [4096 x i128]*, [4096 x i128]** %struct_getter51, align 8
  %ssz_beacon_block_header54 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter52, i128 0, i128 %i.0
  store i128 %parent_root43, i128* %ssz_beacon_block_header54, align 4
  br label %if.exit105

if.false37:                                       ; preds = %if.false19
  %slt58 = icmp slt i128 %i.0, 128
  br i1 %slt58, label %if.true55, label %if.false56

if.true55:                                        ; preds = %if.false37
  %sub60 = sub i128 %i.0, 96
  %array_getter61 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0beaconblockheader.state_root.read_input_inner, i128 0, i128 %sub60
  %state_root62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter65 = load [4096 x i128]*, [4096 x i128]** %struct_getter64, align 8
  %array_getter67 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter65, i128 0, i128 %i.0
  %ssz_beacon_block_header68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header68, i128 %state_root62, i1* @constraint.188)
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter71 = load [4096 x i128]*, [4096 x i128]** %struct_getter70, align 8
  %ssz_beacon_block_header73 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter71, i128 0, i128 %i.0
  store i128 %state_root62, i128* %ssz_beacon_block_header73, align 4
  br label %if.exit104

if.false56:                                       ; preds = %if.false37
  %slt77 = icmp slt i128 %i.0, 160
  br i1 %slt77, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.false56
  %sub79 = sub i128 %i.0, 128
  %array_getter80 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszphase0beaconblockheader.body_root.read_input_inner, i128 0, i128 %sub79
  %body_root81 = load i128, i128* %array_getter80, align 4
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter84 = load [4096 x i128]*, [4096 x i128]** %struct_getter83, align 8
  %array_getter86 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter84, i128 0, i128 %i.0
  %ssz_beacon_block_header87 = load i128, i128* %array_getter86, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header87, i128 %body_root81, i1* @constraint.189)
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter90 = load [4096 x i128]*, [4096 x i128]** %struct_getter89, align 8
  %ssz_beacon_block_header92 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter90, i128 0, i128 %i.0
  store i128 %body_root81, i128* %ssz_beacon_block_header92, align 4
  br label %if.exit

if.false75:                                       ; preds = %if.false56
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter95 = load [4096 x i128]*, [4096 x i128]** %struct_getter94, align 8
  %array_getter97 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter95, i128 0, i128 %i.0
  %ssz_beacon_block_header98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %ssz_beacon_block_header98, i128 0, i1* @constraint.190)
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 2
  %sszarray.in.read_input_outter101 = load [4096 x i128]*, [4096 x i128]** %struct_getter100, align 8
  %ssz_beacon_block_header103 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.in.read_input_outter101, i128 0, i128 %i.0
  store i128 0, i128* %ssz_beacon_block_header103, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false75, %if.true74
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit, %if.true55
  br label %if.exit105

if.exit105:                                       ; preds = %if.exit104, %if.true36
  br label %if.exit106

if.exit106:                                       ; preds = %if.exit105, %if.true18
  br label %if.exit107

if.exit107:                                       ; preds = %if.exit106, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit107
  %add = add i128 %i.0, 1
  %slt110 = icmp slt i128 %add, 256
  br i1 %slt110, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch124, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add126, %loop.latch124 ]
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_sszarray, %struct_template_circuit_sszarray* %call, i32 0, i32 3
  %sszarray.out.read_output_outter = load [4096 x i128]*, [4096 x i128]** %struct_getter113, align 8
  %array_getter115 = getelementptr inbounds [4096 x i128], [4096 x i128]* %sszarray.out.read_output_outter, i128 0, i128 %i.1
  %ssz_beacon_block_header116 = load i128, i128* %array_getter115, align 4
  %array_getter119 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.1
  %out120 = load i128, i128* %array_getter119, align 4
  call void @fn_intrinsic_add_constraint(i128 %out120, i128 %ssz_beacon_block_header116, i1* @constraint.191)
  %out123 = getelementptr inbounds [4096 x i128], [4096 x i128]* %out, i128 0, i128 %i.1
  store i128 %ssz_beacon_block_header116, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body111
  %add126 = add i128 %i.1, 1
  %slt128 = icmp slt i128 %add126, 32
  br i1 %slt128, label %loop.body111, label %loop.exit129

loop.exit129:                                     ; preds = %loop.latch124
  br label %exit

exit:                                             ; preds = %loop.exit129
  %sszphase0beaconblockheader.out.write_output_inner = getelementptr inbounds %struct_template_circuit_sszphase0beaconblockheader, %struct_template_circuit_sszphase0beaconblockheader* %0, i32 0, i32 5
  store [4096 x i128]* %out, [4096 x i128]** %sszphase0beaconblockheader.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_sszphase0beaconblockheader* @fn_template_build_sszphase0beaconblockheader() {
entry:
  %struct_template_circuit_sszphase0beaconblockheader = alloca %struct_template_circuit_sszphase0beaconblockheader, align 8
  ret %struct_template_circuit_sszphase0beaconblockheader* %struct_template_circuit_sszphase0beaconblockheader
}

declare noalias i8* @malloc(i32)

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
