; ModuleID = 'fp.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp.circom"

%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_iszero = type { i128, i128 }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]* }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_isequal = type { [256 x i128]*, i128 }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_lessthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_greaterthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_compconstant = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_lesseqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_aliascheck = type { [256 x i128]* }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_bits2num_strict = type { [256 x i128]*, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [256 x i128]* }
%struct_template_circuit_checkcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpsgn0 = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpisequal = type { i128, i128, [256 x i128]*, [256 x [256 x i128]]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [256 x i128]* }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_fpiszero = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpnegate = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsubtract = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedcheckcarrymodtozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedfpcarrymodp = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_primereduce = type { i128, i128, i128, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpmultiply = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }

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
@constraint.192 = external global i1
@constraint.193 = external global i1
@constraint.194 = external global i1
@constraint.195 = external global i1
@constraint.196 = external global i1
@constraint.197 = external global i1
@constraint.198 = external global i1
@constraint.199 = external global i1
@constraint.200 = external global i1
@constraint.201 = external global i1
@constraint.202 = external global i1
@constraint.203 = external global i1
@constraint.204 = external global i1
@constraint.205 = external global i1
@constraint.206 = external global i1
@constraint.207 = external global i1
@constraint.208 = external global i1
@constraint.209 = external global i1
@constraint.210 = external global i1
@constraint.211 = external global i1
@constraint.212 = external global i1
@constraint.213 = external global i1
@constraint.214 = external global i1
@constraint.215 = external global i1
@constraint.216 = external global i1
@constraint.217 = external global i1
@constraint.218 = external global i1
@constraint.219 = external global i1
@constraint.220 = external global i1
@constraint.221 = external global i1
@constraint.222 = external global i1
@constraint.223 = external global i1
@constraint.224 = external global i1
@constraint.225 = external global i1
@constraint.226 = external global i1
@constraint.227 = external global i1
@constraint.228 = external global i1
@constraint.229 = external global i1
@constraint.230 = external global i1
@constraint.231 = external global i1
@constraint.232 = external global i1
@constraint.233 = external global i1
@constraint.234 = external global i1
@constraint.235 = external global i1
@constraint.236 = external global i1
@constraint.237 = external global i1
@constraint.238 = external global i1
@constraint.239 = external global i1
@constraint.240 = external global i1
@constraint.241 = external global i1
@constraint.242 = external global i1
@constraint.243 = external global i1
@constraint.244 = external global i1
@constraint.245 = external global i1
@constraint.246 = external global i1
@constraint.247 = external global i1
@constraint.248 = external global i1
@constraint.249 = external global i1
@constraint.250 = external global i1
@constraint.251 = external global i1
@constraint.252 = external global i1
@constraint.253 = external global i1
@constraint.254 = external global i1
@constraint.255 = external global i1
@constraint.256 = external global i1
@constraint.257 = external global i1
@constraint.258 = external global i1
@constraint.259 = external global i1
@constraint.260 = external global i1
@constraint.261 = external global i1
@constraint.262 = external global i1
@constraint.263 = external global i1
@constraint.264 = external global i1
@constraint.265 = external global i1
@constraint.266 = external global i1
@constraint.267 = external global i1
@constraint.268 = external global i1
@constraint.269 = external global i1
@constraint.270 = external global i1

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

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %read_input_inner.not.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.not.in, i128* %in.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %in = load i128, i128* %in.bind, align 4
  %add = add i128 1, %in
  %in1 = load i128, i128* %in.bind, align 4
  %mul = mul i128 2, %in1
  %sub = sub i128 %add, %mul
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %sub, i1* @constraint)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out3 = load i128, i128* %out, align 4
  %write_output_inner.not.out = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %out3, i128* %write_output_inner.not.out, align 4
  ret void
}

define %struct_template_circuit_not* @fn_template_build_not() {
entry:
  %struct_template_circuit_not = alloca %struct_template_circuit_not, align 8
  ret %struct_template_circuit_not* %struct_template_circuit_not
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 0
  %read_input_inner.or.a = load i128, i128* %struct_getter, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.or.a, i128* %a.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 1
  %read_input_inner.or.b = load i128, i128* %struct_getter1, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.or.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %a.bind, align 4
  %b3 = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a2, %b3
  %sub = sub i128 %add, %mul
  %out4 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out4, i128 %sub, i1* @constraint.1)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out5 = load i128, i128* %out, align 4
  %write_output_inner.or.out = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %out5, i128* %write_output_inner.or.out, align 4
  ret void
}

define %struct_template_circuit_or* @fn_template_build_or() {
entry:
  %struct_template_circuit_or = alloca %struct_template_circuit_or, align 8
  ret %struct_template_circuit_or* %struct_template_circuit_or
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %in.bind = alloca i128, align 8
  store i128 %0, i128* %in.bind, align 4
  %n.bind = alloca i128, align 8
  store i128 %1, i128* %n.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %var_inline_array = alloca [2 x i128], align 8
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %in.bind, align 4
  %n3 = load i128, i128* %n.bind, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %m.bind, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch11, %entry
  store i128 0, i128* %idx, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %idx3 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i2, i128 %idx3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %idx6 = load i128, i128* %idx, align 4
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i5, i128 %idx6
  %b8 = load i128, i128* %array_getter7, align 4
  %ne = icmp ne i128 %a4, %b8
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  ret i128 0

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %idx9 = load i128, i128* %idx, align 4
  %add = add i128 %idx9, 1
  store i128 %add, i128* %idx, align 4
  %idx10 = load i128, i128* %idx, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx10, %k
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch11

loop.latch11:                                     ; preds = %loop.exit
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %slt15 = icmp slt i128 %i14, 2
  br i1 %slt15, label %loop.body, label %loop.exit16

loop.exit16:                                      ; preds = %loop.latch11
  ret i128 1
}

define void @fn_template_init_bigmultshortlong2d(%struct_template_circuit_bigmultshortlong2d* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 0
  %read_arg_inner.bigmultshortlong2d.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 1
  %read_arg_inner.bigmultshortlong2d.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 2
  %read_arg_inner.bigmultshortlong2d.l = load i128, i128* %struct_getter2, align 4
  %l.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2d.l, i128* %l.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 3
  %read_input_inner.bigmultshortlong2d.a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2d.a, [256 x [256 x i128]]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 4
  %read_input_inner.bigmultshortlong2d.b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter4, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2d.b, [256 x [256 x i128]]** %b.bind, align 8
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly5, [256 x [256 x i128]]** %out_poly, align 8
  %i1 = alloca i128, align 8
  store i128 0, i128* %i1, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val6, [256 x [256 x i128]]** %prod_val, align 8
  %j2 = alloca i128, align 8
  store i128 0, i128* %j2, align 4
  %j1 = alloca i128, align 8
  store i128 0, i128* %j1, align 4
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly7, [256 x [256 x i128]]** %b_poly, align 8
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly8, [256 x [256 x i128]]** %a_poly, align 8
  %i2 = alloca i128, align 8
  store i128 0, i128* %i2, align 4
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow9, [256 x [256 x i128]]** %pow, align 8
  %k2 = alloca i128, align 8
  store i128 0, i128* %k2, align 4
  %deg2 = alloca i128, align 8
  store i128 0, i128* %deg2, align 4
  %deg1 = alloca i128, align 8
  store i128 0, i128* %deg1, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out11 = bitcast i8* %malloccall10 to [256 x [256 x i128]]*
  store [256 x [256 x i128]]* %out11, [256 x [256 x i128]]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body12

loop.body12:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i13 = load i128, i128* %i, align 4
  %j14 = load i128, i128* %j, align 4
  %prod_val15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i13, i128 %j14
  store i128 0, i128* %prod_val15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body12
  %j16 = load i128, i128* %j, align 4
  %add = add i128 %j16, 1
  store i128 %add, i128* %j, align 4
  %j17 = load i128, i128* %j, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j17, %sub
  br i1 %slt, label %loop.body12, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul22 = mul i128 2, %l
  %sub23 = sub i128 %mul22, 1
  %slt24 = icmp slt i128 %i21, %sub23
  br i1 %slt24, label %loop.body, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch18
  store i128 0, i128* %i1, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch75, %loop.exit25
  store i128 0, i128* %i2, align 4
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch68, %loop.body26
  store i128 0, i128* %j1, align 4
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch61, %loop.body27
  store i128 0, i128* %j2, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch54, %loop.body28
  %i130 = load i128, i128* %i1, align 4
  %i231 = load i128, i128* %i2, align 4
  %add32 = add i128 %i130, %i231
  store i128 %add32, i128* %i, align 4
  %j133 = load i128, i128* %j1, align 4
  %j234 = load i128, i128* %j2, align 4
  %add35 = add i128 %j133, %j234
  store i128 %add35, i128* %j, align 4
  %prod_val36 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i37 = load i128, i128* %i, align 4
  %j38 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val36, i128 0, i128 %i37, i128 %j38
  %prod_val39 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i140 = load i128, i128* %i1, align 4
  %j141 = load i128, i128* %j1, align 4
  %array_getter42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i140, i128 %j141
  %a43 = load i128, i128* %array_getter42, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i244 = load i128, i128* %i2, align 4
  %j245 = load i128, i128* %j2, align 4
  %array_getter46 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i244, i128 %j245
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a43, %b47
  %add49 = add i128 %prod_val39, %mul48
  %ptr_getter50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i51 = load i128, i128* %i, align 4
  %j52 = load i128, i128* %j, align 4
  %prod_val53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter50, i128 0, i128 %i51, i128 %j52
  store i128 %add49, i128* %prod_val53, align 4
  br label %loop.latch54

loop.latch54:                                     ; preds = %loop.body29
  %j255 = load i128, i128* %j2, align 4
  %add56 = add i128 %j255, 1
  store i128 %add56, i128* %j2, align 4
  %j257 = load i128, i128* %j2, align 4
  %k58 = load i128, i128* %k.bind, align 4
  %slt59 = icmp slt i128 %j257, %k58
  br i1 %slt59, label %loop.body29, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch54
  br label %loop.latch61

loop.latch61:                                     ; preds = %loop.exit60
  %j162 = load i128, i128* %j1, align 4
  %add63 = add i128 %j162, 1
  store i128 %add63, i128* %j1, align 4
  %j164 = load i128, i128* %j1, align 4
  %k65 = load i128, i128* %k.bind, align 4
  %slt66 = icmp slt i128 %j164, %k65
  br i1 %slt66, label %loop.body28, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.exit67
  %i269 = load i128, i128* %i2, align 4
  %add70 = add i128 %i269, 1
  store i128 %add70, i128* %i2, align 4
  %i271 = load i128, i128* %i2, align 4
  %l72 = load i128, i128* %l.bind, align 4
  %slt73 = icmp slt i128 %i271, %l72
  br i1 %slt73, label %loop.body27, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.exit74
  %i176 = load i128, i128* %i1, align 4
  %add77 = add i128 %i176, 1
  store i128 %add77, i128* %i1, align 4
  %i178 = load i128, i128* %i1, align 4
  %l79 = load i128, i128* %l.bind, align 4
  %slt80 = icmp slt i128 %i178, %l79
  br i1 %slt80, label %loop.body26, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch75
  store i128 0, i128* %i, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch102, %loop.exit81
  store i128 0, i128* %j, align 4
  br label %loop.body83

loop.body83:                                      ; preds = %loop.latch93, %loop.body82
  %prod_val84 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i85 = load i128, i128* %i, align 4
  %j86 = load i128, i128* %j, align 4
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val84, i128 0, i128 %i85, i128 %j86
  %prod_val88 = load i128, i128* %array_getter87, align 4
  %ptr_getter89 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i90 = load i128, i128* %i, align 4
  %j91 = load i128, i128* %j, align 4
  %out92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter89, i128 0, i128 %i90, i128 %j91
  store i128 %prod_val88, i128* %out92, align 4
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body83
  %j94 = load i128, i128* %j, align 4
  %add95 = add i128 %j94, 1
  store i128 %add95, i128* %j, align 4
  %j96 = load i128, i128* %j, align 4
  %k97 = load i128, i128* %k.bind, align 4
  %mul98 = mul i128 2, %k97
  %sub99 = sub i128 %mul98, 1
  %slt100 = icmp slt i128 %j96, %sub99
  br i1 %slt100, label %loop.body83, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch93
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.exit101
  %i103 = load i128, i128* %i, align 4
  %add104 = add i128 %i103, 1
  store i128 %add104, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %l106 = load i128, i128* %l.bind, align 4
  %mul107 = mul i128 2, %l106
  %sub108 = sub i128 %mul107, 1
  %slt109 = icmp slt i128 %i105, %sub108
  br i1 %slt109, label %loop.body82, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch102
  %k111 = load i128, i128* %k.bind, align 4
  %mul112 = mul i128 2, %k111
  %sub113 = sub i128 %mul112, 1
  %l114 = load i128, i128* %l.bind, align 4
  %mul115 = mul i128 2, %l114
  %sub116 = sub i128 %mul115, 1
  %sgt = icmp sgt i128 %sub113, %sub116
  %k117 = load i128, i128* %k.bind, align 4
  %mul118 = mul i128 2, %k117
  %sub119 = sub i128 %mul118, 1
  %l120 = load i128, i128* %l.bind, align 4
  %mul121 = mul i128 2, %l120
  %sub122 = sub i128 %mul121, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub119, i128 %sub122)
  store i128 %inline_switch, i128* %k2, align 4
  %uniform_array123 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array123, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch141, %loop.exit110
  store i128 0, i128* %j, align 4
  br label %loop.body125

loop.body125:                                     ; preds = %loop.latch134, %loop.body124
  %i126 = load i128, i128* %i, align 4
  %j127 = load i128, i128* %j, align 4
  %pow128 = call i128 @fn_intrinsic_inline_powi(i128 %i126, i128 %j127)
  %ptr_getter129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i131 = load i128, i128* %i, align 4
  %j132 = load i128, i128* %j, align 4
  %pow133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter129, i128 0, i128 %i131, i128 %j132
  store i128 %pow128, i128* %pow133, align 4
  br label %loop.latch134

loop.latch134:                                    ; preds = %loop.body125
  %j135 = load i128, i128* %j, align 4
  %add136 = add i128 %j135, 1
  store i128 %add136, i128* %j, align 4
  %j137 = load i128, i128* %j, align 4
  %k2138 = load i128, i128* %k2, align 4
  %slt139 = icmp slt i128 %j137, %k2138
  br i1 %slt139, label %loop.body125, label %loop.exit140

loop.exit140:                                     ; preds = %loop.latch134
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.exit140
  %i142 = load i128, i128* %i, align 4
  %add143 = add i128 %i142, 1
  store i128 %add143, i128* %i, align 4
  %i144 = load i128, i128* %i, align 4
  %k2145 = load i128, i128* %k2, align 4
  %slt146 = icmp slt i128 %i144, %k2145
  br i1 %slt146, label %loop.body124, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch141
  %uniform_array148 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array148, [256 x [256 x i128]]** %a_poly, align 8
  %uniform_array149 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array149, [256 x [256 x i128]]** %b_poly, align 8
  %uniform_array150 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array150, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch293, %loop.exit147
  store i128 0, i128* %j, align 4
  br label %loop.body152

loop.body152:                                     ; preds = %loop.latch284, %loop.body151
  %ptr_getter153 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i154 = load i128, i128* %i, align 4
  %j155 = load i128, i128* %j, align 4
  %a_poly156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter153, i128 0, i128 %i154, i128 %j155
  store i128 0, i128* %a_poly156, align 4
  %ptr_getter157 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i158 = load i128, i128* %i, align 4
  %j159 = load i128, i128* %j, align 4
  %b_poly160 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter157, i128 0, i128 %i158, i128 %j159
  store i128 0, i128* %b_poly160, align 4
  %ptr_getter161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i162 = load i128, i128* %i, align 4
  %j163 = load i128, i128* %j, align 4
  %out_poly164 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter161, i128 0, i128 %i162, i128 %j163
  store i128 0, i128* %out_poly164, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body165

loop.body165:                                     ; preds = %loop.latch229, %loop.body152
  store i128 0, i128* %deg2, align 4
  br label %loop.body166

loop.body166:                                     ; preds = %loop.latch222, %loop.body165
  %a_poly167 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i168 = load i128, i128* %i, align 4
  %j169 = load i128, i128* %j, align 4
  %array_getter170 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly167, i128 0, i128 %i168, i128 %j169
  %a_poly171 = load i128, i128* %array_getter170, align 4
  %a172 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %deg1173 = load i128, i128* %deg1, align 4
  %deg2174 = load i128, i128* %deg2, align 4
  %array_getter175 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a172, i128 0, i128 %deg1173, i128 %deg2174
  %a176 = load i128, i128* %array_getter175, align 4
  %pow177 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i179 = load i128, i128* %i, align 4
  %deg1180 = load i128, i128* %deg1, align 4
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow177, i128 0, i128 %i179, i128 %deg1180
  %pow182 = load i128, i128* %array_getter181, align 4
  %mul183 = mul i128 %a176, %pow182
  %pow184 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j185 = load i128, i128* %j, align 4
  %deg2186 = load i128, i128* %deg2, align 4
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow184, i128 0, i128 %j185, i128 %deg2186
  %pow188 = load i128, i128* %array_getter187, align 4
  %mul189 = mul i128 %mul183, %pow188
  %add190 = add i128 %a_poly171, %mul189
  %ptr_getter191 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i192 = load i128, i128* %i, align 4
  %j193 = load i128, i128* %j, align 4
  %a_poly194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter191, i128 0, i128 %i192, i128 %j193
  store i128 %add190, i128* %a_poly194, align 4
  %b_poly195 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i196 = load i128, i128* %i, align 4
  %j197 = load i128, i128* %j, align 4
  %array_getter198 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly195, i128 0, i128 %i196, i128 %j197
  %b_poly199 = load i128, i128* %array_getter198, align 4
  %b200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %deg1201 = load i128, i128* %deg1, align 4
  %deg2202 = load i128, i128* %deg2, align 4
  %array_getter203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b200, i128 0, i128 %deg1201, i128 %deg2202
  %b204 = load i128, i128* %array_getter203, align 4
  %pow205 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i206 = load i128, i128* %i, align 4
  %deg1207 = load i128, i128* %deg1, align 4
  %array_getter208 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow205, i128 0, i128 %i206, i128 %deg1207
  %pow209 = load i128, i128* %array_getter208, align 4
  %mul210 = mul i128 %b204, %pow209
  %pow211 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j212 = load i128, i128* %j, align 4
  %deg2213 = load i128, i128* %deg2, align 4
  %array_getter214 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow211, i128 0, i128 %j212, i128 %deg2213
  %pow215 = load i128, i128* %array_getter214, align 4
  %mul216 = mul i128 %mul210, %pow215
  %add217 = add i128 %b_poly199, %mul216
  %ptr_getter218 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i219 = load i128, i128* %i, align 4
  %j220 = load i128, i128* %j, align 4
  %b_poly221 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter218, i128 0, i128 %i219, i128 %j220
  store i128 %add217, i128* %b_poly221, align 4
  br label %loop.latch222

loop.latch222:                                    ; preds = %loop.body166
  %deg2223 = load i128, i128* %deg2, align 4
  %add224 = add i128 %deg2223, 1
  store i128 %add224, i128* %deg2, align 4
  %deg2225 = load i128, i128* %deg2, align 4
  %k226 = load i128, i128* %k.bind, align 4
  %slt227 = icmp slt i128 %deg2225, %k226
  br i1 %slt227, label %loop.body166, label %loop.exit228

loop.exit228:                                     ; preds = %loop.latch222
  br label %loop.latch229

loop.latch229:                                    ; preds = %loop.exit228
  %deg1230 = load i128, i128* %deg1, align 4
  %add231 = add i128 %deg1230, 1
  store i128 %add231, i128* %deg1, align 4
  %deg1232 = load i128, i128* %deg1, align 4
  %l233 = load i128, i128* %l.bind, align 4
  %slt234 = icmp slt i128 %deg1232, %l233
  br i1 %slt234, label %loop.body165, label %loop.exit235

loop.exit235:                                     ; preds = %loop.latch229
  store i128 0, i128* %deg1, align 4
  br label %loop.body236

loop.body236:                                     ; preds = %loop.latch275, %loop.exit235
  store i128 0, i128* %deg2, align 4
  br label %loop.body237

loop.body237:                                     ; preds = %loop.latch266, %loop.body236
  %out_poly238 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i239 = load i128, i128* %i, align 4
  %j240 = load i128, i128* %j, align 4
  %array_getter241 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly238, i128 0, i128 %i239, i128 %j240
  %out_poly242 = load i128, i128* %array_getter241, align 4
  %out243 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %deg1244 = load i128, i128* %deg1, align 4
  %deg2245 = load i128, i128* %deg2, align 4
  %array_getter246 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out243, i128 0, i128 %deg1244, i128 %deg2245
  %out247 = load i128, i128* %array_getter246, align 4
  %pow248 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i249 = load i128, i128* %i, align 4
  %deg1250 = load i128, i128* %deg1, align 4
  %array_getter251 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow248, i128 0, i128 %i249, i128 %deg1250
  %pow252 = load i128, i128* %array_getter251, align 4
  %mul253 = mul i128 %out247, %pow252
  %pow254 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j256 = load i128, i128* %j, align 4
  %deg2257 = load i128, i128* %deg2, align 4
  %array_getter258 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow254, i128 0, i128 %j256, i128 %deg2257
  %pow259 = load i128, i128* %array_getter258, align 4
  %mul260 = mul i128 %mul253, %pow259
  %add261 = add i128 %out_poly242, %mul260
  %ptr_getter262 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i263 = load i128, i128* %i, align 4
  %j264 = load i128, i128* %j, align 4
  %out_poly265 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter262, i128 0, i128 %i263, i128 %j264
  store i128 %add261, i128* %out_poly265, align 4
  br label %loop.latch266

loop.latch266:                                    ; preds = %loop.body237
  %deg2267 = load i128, i128* %deg2, align 4
  %add268 = add i128 %deg2267, 1
  store i128 %add268, i128* %deg2, align 4
  %deg2269 = load i128, i128* %deg2, align 4
  %k270 = load i128, i128* %k.bind, align 4
  %mul271 = mul i128 2, %k270
  %sub272 = sub i128 %mul271, 1
  %slt273 = icmp slt i128 %deg2269, %sub272
  br i1 %slt273, label %loop.body237, label %loop.exit274

loop.exit274:                                     ; preds = %loop.latch266
  br label %loop.latch275

loop.latch275:                                    ; preds = %loop.exit274
  %deg1276 = load i128, i128* %deg1, align 4
  %add277 = add i128 %deg1276, 1
  store i128 %add277, i128* %deg1, align 4
  %deg1278 = load i128, i128* %deg1, align 4
  %l279 = load i128, i128* %l.bind, align 4
  %mul280 = mul i128 2, %l279
  %sub281 = sub i128 %mul280, 1
  %slt282 = icmp slt i128 %deg1278, %sub281
  br i1 %slt282, label %loop.body236, label %loop.exit283

loop.exit283:                                     ; preds = %loop.latch275
  br label %loop.latch284

loop.latch284:                                    ; preds = %loop.exit283
  %j285 = load i128, i128* %j, align 4
  %add286 = add i128 %j285, 1
  store i128 %add286, i128* %j, align 4
  %j287 = load i128, i128* %j, align 4
  %k288 = load i128, i128* %k.bind, align 4
  %mul289 = mul i128 2, %k288
  %sub290 = sub i128 %mul289, 1
  %slt291 = icmp slt i128 %j287, %sub290
  br i1 %slt291, label %loop.body152, label %loop.exit292

loop.exit292:                                     ; preds = %loop.latch284
  br label %loop.latch293

loop.latch293:                                    ; preds = %loop.exit292
  %i294 = load i128, i128* %i, align 4
  %add295 = add i128 %i294, 1
  store i128 %add295, i128* %i, align 4
  %i296 = load i128, i128* %i, align 4
  %l297 = load i128, i128* %l.bind, align 4
  %mul298 = mul i128 2, %l297
  %sub299 = sub i128 %mul298, 1
  %slt300 = icmp slt i128 %i296, %sub299
  br i1 %slt300, label %loop.body151, label %loop.exit301

loop.exit301:                                     ; preds = %loop.latch293
  store i128 0, i128* %i, align 4
  br label %loop.body302

loop.body302:                                     ; preds = %loop.latch329, %loop.exit301
  store i128 0, i128* %j, align 4
  br label %loop.body303

loop.body303:                                     ; preds = %loop.latch320, %loop.body302
  %out_poly304 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i305 = load i128, i128* %i, align 4
  %j306 = load i128, i128* %j, align 4
  %array_getter307 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly304, i128 0, i128 %i305, i128 %j306
  %out_poly308 = load i128, i128* %array_getter307, align 4
  %a_poly309 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i310 = load i128, i128* %i, align 4
  %j311 = load i128, i128* %j, align 4
  %array_getter312 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly309, i128 0, i128 %i310, i128 %j311
  %a_poly313 = load i128, i128* %array_getter312, align 4
  %b_poly314 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i315 = load i128, i128* %i, align 4
  %j316 = load i128, i128* %j, align 4
  %array_getter317 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly314, i128 0, i128 %i315, i128 %j316
  %b_poly318 = load i128, i128* %array_getter317, align 4
  %mul319 = mul i128 %a_poly313, %b_poly318
  call void @fn_intrinsic_add_constraint(i128 %out_poly308, i128 %mul319, i1* @constraint.2)
  br label %loop.latch320

loop.latch320:                                    ; preds = %loop.body303
  %j321 = load i128, i128* %j, align 4
  %add322 = add i128 %j321, 1
  store i128 %add322, i128* %j, align 4
  %j323 = load i128, i128* %j, align 4
  %k324 = load i128, i128* %k.bind, align 4
  %mul325 = mul i128 2, %k324
  %sub326 = sub i128 %mul325, 1
  %slt327 = icmp slt i128 %j323, %sub326
  br i1 %slt327, label %loop.body303, label %loop.exit328

loop.exit328:                                     ; preds = %loop.latch320
  br label %loop.latch329

loop.latch329:                                    ; preds = %loop.exit328
  %i330 = load i128, i128* %i, align 4
  %add331 = add i128 %i330, 1
  store i128 %add331, i128* %i, align 4
  %i332 = load i128, i128* %i, align 4
  %l333 = load i128, i128* %l.bind, align 4
  %mul334 = mul i128 2, %l333
  %sub335 = sub i128 %mul334, 1
  %slt336 = icmp slt i128 %i332, %sub335
  br i1 %slt336, label %loop.body302, label %loop.exit337

loop.exit337:                                     ; preds = %loop.latch329
  br label %exit

exit:                                             ; preds = %loop.exit337
  %out338 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %write_output_inner.bigmultshortlong2d.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 5
  store [256 x [256 x i128]]* %out338, [256 x [256 x i128]]** %write_output_inner.bigmultshortlong2d.out, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2d* @fn_template_build_bigmultshortlong2d(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong2d = alloca %struct_template_circuit_bigmultshortlong2d, align 8
  %write_arg_inner.bigmultshortlong2d.n = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultshortlong2d.n, align 4
  %write_arg_inner.bigmultshortlong2d.k = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultshortlong2d.k, align 4
  %write_arg_inner.bigmultshortlong2d.l = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmultshortlong2d.l, align 4
  ret %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d
}

define void @fn_template_init_bigmultshortlong2dunequal(%struct_template_circuit_bigmultshortlong2dunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 0
  %read_arg_inner.bigmultshortlong2dunequal.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2dunequal.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 1
  %read_arg_inner.bigmultshortlong2dunequal.ka = load i128, i128* %struct_getter1, align 4
  %ka.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2dunequal.ka, i128* %ka.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 2
  %read_arg_inner.bigmultshortlong2dunequal.kb = load i128, i128* %struct_getter2, align 4
  %kb.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2dunequal.kb, i128* %kb.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 3
  %read_arg_inner.bigmultshortlong2dunequal.la = load i128, i128* %struct_getter3, align 4
  %la.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2dunequal.la, i128* %la.bind, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 4
  %read_arg_inner.bigmultshortlong2dunequal.lb = load i128, i128* %struct_getter4, align 4
  %lb.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong2dunequal.lb, i128* %lb.bind, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 5
  %read_input_inner.bigmultshortlong2dunequal.a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter5, align 8
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2dunequal.a, [256 x [256 x i128]]** %a.bind, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 6
  %read_input_inner.bigmultshortlong2dunequal.b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter6, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.bigmultshortlong2dunequal.b, [256 x [256 x i128]]** %b.bind, align 8
  %a_poly = alloca [256 x [256 x i128]]*, align 8
  %a_poly7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %a_poly7, [256 x [256 x i128]]** %a_poly, align 8
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow8, [256 x [256 x i128]]** %pow, align 8
  %j2 = alloca i128, align 8
  store i128 0, i128* %j2, align 4
  %i1 = alloca i128, align 8
  store i128 0, i128* %i1, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %deg1 = alloca i128, align 8
  store i128 0, i128* %deg1, align 4
  %j1 = alloca i128, align 8
  store i128 0, i128* %j1, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out10 = bitcast i8* %malloccall9 to [256 x [256 x i128]]*
  store [256 x [256 x i128]]* %out10, [256 x [256 x i128]]** %out, align 8
  %b_poly = alloca [256 x [256 x i128]]*, align 8
  %b_poly11 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %b_poly11, [256 x [256 x i128]]** %b_poly, align 8
  %out_poly = alloca [256 x [256 x i128]]*, align 8
  %out_poly12 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out_poly12, [256 x [256 x i128]]** %out_poly, align 8
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val13 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val13, [256 x [256 x i128]]** %prod_val, align 8
  %k2 = alloca i128, align 8
  store i128 0, i128* %k2, align 4
  %deg2 = alloca i128, align 8
  store i128 0, i128* %deg2, align 4
  %i2 = alloca i128, align 8
  store i128 0, i128* %i2, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch21, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body14

loop.body14:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i15 = load i128, i128* %i, align 4
  %j16 = load i128, i128* %j, align 4
  %prod_val17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i15, i128 %j16
  store i128 0, i128* %prod_val17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body14
  %j18 = load i128, i128* %j, align 4
  %add = add i128 %j18, 1
  store i128 %add, i128* %j, align 4
  %j19 = load i128, i128* %j, align 4
  %ka = load i128, i128* %ka.bind, align 4
  %kb = load i128, i128* %kb.bind, align 4
  %add20 = add i128 %ka, %kb
  %sub = sub i128 %add20, 1
  %slt = icmp slt i128 %j19, %sub
  br i1 %slt, label %loop.body14, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch21

loop.latch21:                                     ; preds = %loop.exit
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %la = load i128, i128* %la.bind, align 4
  %lb = load i128, i128* %lb.bind, align 4
  %add25 = add i128 %la, %lb
  %sub26 = sub i128 %add25, 1
  %slt27 = icmp slt i128 %i24, %sub26
  br i1 %slt27, label %loop.body, label %loop.exit28

loop.exit28:                                      ; preds = %loop.latch21
  store i128 0, i128* %i1, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch77, %loop.exit28
  store i128 0, i128* %i2, align 4
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch70, %loop.body29
  store i128 0, i128* %j1, align 4
  br label %loop.body31

loop.body31:                                      ; preds = %loop.latch63, %loop.body30
  store i128 0, i128* %j2, align 4
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch56, %loop.body31
  %i133 = load i128, i128* %i1, align 4
  %i234 = load i128, i128* %i2, align 4
  %add35 = add i128 %i133, %i234
  store i128 %add35, i128* %i, align 4
  %j136 = load i128, i128* %j1, align 4
  %j237 = load i128, i128* %j2, align 4
  %add38 = add i128 %j136, %j237
  store i128 %add38, i128* %j, align 4
  %prod_val39 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i40 = load i128, i128* %i, align 4
  %j41 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val39, i128 0, i128 %i40, i128 %j41
  %prod_val42 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i143 = load i128, i128* %i1, align 4
  %j144 = load i128, i128* %j1, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i143, i128 %j144
  %a46 = load i128, i128* %array_getter45, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i247 = load i128, i128* %i2, align 4
  %j248 = load i128, i128* %j2, align 4
  %array_getter49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i247, i128 %j248
  %b50 = load i128, i128* %array_getter49, align 4
  %mul = mul i128 %a46, %b50
  %add51 = add i128 %prod_val42, %mul
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i53 = load i128, i128* %i, align 4
  %j54 = load i128, i128* %j, align 4
  %prod_val55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 %i53, i128 %j54
  store i128 %add51, i128* %prod_val55, align 4
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body32
  %j257 = load i128, i128* %j2, align 4
  %add58 = add i128 %j257, 1
  store i128 %add58, i128* %j2, align 4
  %j259 = load i128, i128* %j2, align 4
  %kb60 = load i128, i128* %kb.bind, align 4
  %slt61 = icmp slt i128 %j259, %kb60
  br i1 %slt61, label %loop.body32, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch56
  br label %loop.latch63

loop.latch63:                                     ; preds = %loop.exit62
  %j164 = load i128, i128* %j1, align 4
  %add65 = add i128 %j164, 1
  store i128 %add65, i128* %j1, align 4
  %j166 = load i128, i128* %j1, align 4
  %ka67 = load i128, i128* %ka.bind, align 4
  %slt68 = icmp slt i128 %j166, %ka67
  br i1 %slt68, label %loop.body31, label %loop.exit69

loop.exit69:                                      ; preds = %loop.latch63
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.exit69
  %i271 = load i128, i128* %i2, align 4
  %add72 = add i128 %i271, 1
  store i128 %add72, i128* %i2, align 4
  %i273 = load i128, i128* %i2, align 4
  %lb74 = load i128, i128* %lb.bind, align 4
  %slt75 = icmp slt i128 %i273, %lb74
  br i1 %slt75, label %loop.body30, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch70
  br label %loop.latch77

loop.latch77:                                     ; preds = %loop.exit76
  %i178 = load i128, i128* %i1, align 4
  %add79 = add i128 %i178, 1
  store i128 %add79, i128* %i1, align 4
  %i180 = load i128, i128* %i1, align 4
  %la81 = load i128, i128* %la.bind, align 4
  %slt82 = icmp slt i128 %i180, %la81
  br i1 %slt82, label %loop.body29, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch77
  store i128 0, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch105, %loop.exit83
  store i128 0, i128* %j, align 4
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch95, %loop.body84
  %prod_val86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i87 = load i128, i128* %i, align 4
  %j88 = load i128, i128* %j, align 4
  %array_getter89 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val86, i128 0, i128 %i87, i128 %j88
  %prod_val90 = load i128, i128* %array_getter89, align 4
  %ptr_getter91 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i92 = load i128, i128* %i, align 4
  %j93 = load i128, i128* %j, align 4
  %out94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter91, i128 0, i128 %i92, i128 %j93
  store i128 %prod_val90, i128* %out94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body85
  %j96 = load i128, i128* %j, align 4
  %add97 = add i128 %j96, 1
  store i128 %add97, i128* %j, align 4
  %j98 = load i128, i128* %j, align 4
  %ka99 = load i128, i128* %ka.bind, align 4
  %kb100 = load i128, i128* %kb.bind, align 4
  %add101 = add i128 %ka99, %kb100
  %sub102 = sub i128 %add101, 1
  %slt103 = icmp slt i128 %j98, %sub102
  br i1 %slt103, label %loop.body85, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch95
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.exit104
  %i106 = load i128, i128* %i, align 4
  %add107 = add i128 %i106, 1
  store i128 %add107, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %la109 = load i128, i128* %la.bind, align 4
  %lb110 = load i128, i128* %lb.bind, align 4
  %add111 = add i128 %la109, %lb110
  %sub112 = sub i128 %add111, 1
  %slt113 = icmp slt i128 %i108, %sub112
  br i1 %slt113, label %loop.body84, label %loop.exit114

loop.exit114:                                     ; preds = %loop.latch105
  %ka115 = load i128, i128* %ka.bind, align 4
  %kb116 = load i128, i128* %kb.bind, align 4
  %add117 = add i128 %ka115, %kb116
  %sub118 = sub i128 %add117, 1
  %la119 = load i128, i128* %la.bind, align 4
  %lb120 = load i128, i128* %lb.bind, align 4
  %add121 = add i128 %la119, %lb120
  %sub122 = sub i128 %add121, 1
  %sgt = icmp sgt i128 %sub118, %sub122
  %ka123 = load i128, i128* %ka.bind, align 4
  %kb124 = load i128, i128* %kb.bind, align 4
  %add125 = add i128 %ka123, %kb124
  %sub126 = sub i128 %add125, 1
  %la127 = load i128, i128* %la.bind, align 4
  %lb128 = load i128, i128* %lb.bind, align 4
  %add129 = add i128 %la127, %lb128
  %sub130 = sub i128 %add129, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub126, i128 %sub130)
  store i128 %inline_switch, i128* %k2, align 4
  %uniform_array131 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array131, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch149, %loop.exit114
  store i128 0, i128* %j, align 4
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch141, %loop.body132
  %i134 = load i128, i128* %i, align 4
  %j135 = load i128, i128* %j, align 4
  %pow136 = call i128 @fn_intrinsic_inline_powi(i128 %i134, i128 %j135)
  %ptr_getter137 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i138 = load i128, i128* %i, align 4
  %j139 = load i128, i128* %j, align 4
  %pow140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter137, i128 0, i128 %i138, i128 %j139
  store i128 %pow136, i128* %pow140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body133
  %j142 = load i128, i128* %j, align 4
  %add143 = add i128 %j142, 1
  store i128 %add143, i128* %j, align 4
  %j145 = load i128, i128* %j, align 4
  %k2146 = load i128, i128* %k2, align 4
  %slt147 = icmp slt i128 %j145, %k2146
  br i1 %slt147, label %loop.body133, label %loop.exit148

loop.exit148:                                     ; preds = %loop.latch141
  br label %loop.latch149

loop.latch149:                                    ; preds = %loop.exit148
  %i150 = load i128, i128* %i, align 4
  %add151 = add i128 %i150, 1
  store i128 %add151, i128* %i, align 4
  %i152 = load i128, i128* %i, align 4
  %k2153 = load i128, i128* %k2, align 4
  %slt154 = icmp slt i128 %i152, %k2153
  br i1 %slt154, label %loop.body132, label %loop.exit155

loop.exit155:                                     ; preds = %loop.latch149
  %uniform_array156 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array156, [256 x [256 x i128]]** %a_poly, align 8
  %uniform_array157 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array157, [256 x [256 x i128]]** %b_poly, align 8
  %uniform_array158 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array158, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body159

loop.body159:                                     ; preds = %loop.latch311, %loop.exit155
  store i128 0, i128* %j, align 4
  br label %loop.body160

loop.body160:                                     ; preds = %loop.latch301, %loop.body159
  %ptr_getter161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i162 = load i128, i128* %i, align 4
  %j163 = load i128, i128* %j, align 4
  %a_poly164 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter161, i128 0, i128 %i162, i128 %j163
  store i128 0, i128* %a_poly164, align 4
  %ptr_getter165 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i166 = load i128, i128* %i, align 4
  %j167 = load i128, i128* %j, align 4
  %b_poly168 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter165, i128 0, i128 %i166, i128 %j167
  store i128 0, i128* %b_poly168, align 4
  %ptr_getter169 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i170 = load i128, i128* %i, align 4
  %j171 = load i128, i128* %j, align 4
  %out_poly172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter169, i128 0, i128 %i170, i128 %j171
  store i128 0, i128* %out_poly172, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body173

loop.body173:                                     ; preds = %loop.latch291, %loop.body160
  %deg1174 = load i128, i128* %deg1, align 4
  %la175 = load i128, i128* %la.bind, align 4
  %slt176 = icmp slt i128 %deg1174, %la175
  br i1 %slt176, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body173
  store i128 0, i128* %deg2, align 4
  br label %loop.body177

if.false:                                         ; preds = %loop.body173
  br label %if.exit

loop.body177:                                     ; preds = %loop.latch205, %if.true
  %a_poly178 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i179 = load i128, i128* %i, align 4
  %j180 = load i128, i128* %j, align 4
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly178, i128 0, i128 %i179, i128 %j180
  %a_poly182 = load i128, i128* %array_getter181, align 4
  %a183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %deg1184 = load i128, i128* %deg1, align 4
  %deg2185 = load i128, i128* %deg2, align 4
  %array_getter186 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a183, i128 0, i128 %deg1184, i128 %deg2185
  %a187 = load i128, i128* %array_getter186, align 4
  %pow188 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i189 = load i128, i128* %i, align 4
  %deg1190 = load i128, i128* %deg1, align 4
  %array_getter191 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow188, i128 0, i128 %i189, i128 %deg1190
  %pow192 = load i128, i128* %array_getter191, align 4
  %mul193 = mul i128 %a187, %pow192
  %pow194 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j195 = load i128, i128* %j, align 4
  %deg2196 = load i128, i128* %deg2, align 4
  %array_getter197 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow194, i128 0, i128 %j195, i128 %deg2196
  %pow198 = load i128, i128* %array_getter197, align 4
  %mul199 = mul i128 %mul193, %pow198
  %add200 = add i128 %a_poly182, %mul199
  %ptr_getter201 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i202 = load i128, i128* %i, align 4
  %j203 = load i128, i128* %j, align 4
  %a_poly204 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter201, i128 0, i128 %i202, i128 %j203
  store i128 %add200, i128* %a_poly204, align 4
  br label %loop.latch205

loop.latch205:                                    ; preds = %loop.body177
  %deg2206 = load i128, i128* %deg2, align 4
  %add207 = add i128 %deg2206, 1
  store i128 %add207, i128* %deg2, align 4
  %deg2208 = load i128, i128* %deg2, align 4
  %ka209 = load i128, i128* %ka.bind, align 4
  %slt210 = icmp slt i128 %deg2208, %ka209
  br i1 %slt210, label %loop.body177, label %loop.exit211

loop.exit211:                                     ; preds = %loop.latch205
  br label %if.exit

if.exit:                                          ; preds = %if.false, %loop.exit211
  %deg1214 = load i128, i128* %deg1, align 4
  %lb215 = load i128, i128* %lb.bind, align 4
  %slt216 = icmp slt i128 %deg1214, %lb215
  br i1 %slt216, label %if.true212, label %if.false213

if.true212:                                       ; preds = %if.exit
  store i128 0, i128* %deg2, align 4
  br label %loop.body217

if.false213:                                      ; preds = %if.exit
  br label %if.exit252

loop.body217:                                     ; preds = %loop.latch245, %if.true212
  %b_poly218 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i219 = load i128, i128* %i, align 4
  %j220 = load i128, i128* %j, align 4
  %array_getter221 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly218, i128 0, i128 %i219, i128 %j220
  %b_poly222 = load i128, i128* %array_getter221, align 4
  %b223 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %deg1224 = load i128, i128* %deg1, align 4
  %deg2225 = load i128, i128* %deg2, align 4
  %array_getter226 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b223, i128 0, i128 %deg1224, i128 %deg2225
  %b227 = load i128, i128* %array_getter226, align 4
  %pow228 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i229 = load i128, i128* %i, align 4
  %deg1230 = load i128, i128* %deg1, align 4
  %array_getter231 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow228, i128 0, i128 %i229, i128 %deg1230
  %pow232 = load i128, i128* %array_getter231, align 4
  %mul233 = mul i128 %b227, %pow232
  %pow234 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j235 = load i128, i128* %j, align 4
  %deg2236 = load i128, i128* %deg2, align 4
  %array_getter237 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow234, i128 0, i128 %j235, i128 %deg2236
  %pow238 = load i128, i128* %array_getter237, align 4
  %mul239 = mul i128 %mul233, %pow238
  %add240 = add i128 %b_poly222, %mul239
  %ptr_getter241 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i242 = load i128, i128* %i, align 4
  %j243 = load i128, i128* %j, align 4
  %b_poly244 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter241, i128 0, i128 %i242, i128 %j243
  store i128 %add240, i128* %b_poly244, align 4
  br label %loop.latch245

loop.latch245:                                    ; preds = %loop.body217
  %deg2246 = load i128, i128* %deg2, align 4
  %add247 = add i128 %deg2246, 1
  store i128 %add247, i128* %deg2, align 4
  %deg2248 = load i128, i128* %deg2, align 4
  %kb249 = load i128, i128* %kb.bind, align 4
  %slt250 = icmp slt i128 %deg2248, %kb249
  br i1 %slt250, label %loop.body217, label %loop.exit251

loop.exit251:                                     ; preds = %loop.latch245
  br label %if.exit252

if.exit252:                                       ; preds = %if.false213, %loop.exit251
  store i128 0, i128* %deg2, align 4
  br label %loop.body253

loop.body253:                                     ; preds = %loop.latch281, %if.exit252
  %out_poly254 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i255 = load i128, i128* %i, align 4
  %j256 = load i128, i128* %j, align 4
  %array_getter257 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly254, i128 0, i128 %i255, i128 %j256
  %out_poly258 = load i128, i128* %array_getter257, align 4
  %out259 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %deg1260 = load i128, i128* %deg1, align 4
  %deg2261 = load i128, i128* %deg2, align 4
  %array_getter262 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out259, i128 0, i128 %deg1260, i128 %deg2261
  %out263 = load i128, i128* %array_getter262, align 4
  %pow264 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i265 = load i128, i128* %i, align 4
  %deg1266 = load i128, i128* %deg1, align 4
  %array_getter267 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow264, i128 0, i128 %i265, i128 %deg1266
  %pow268 = load i128, i128* %array_getter267, align 4
  %mul269 = mul i128 %out263, %pow268
  %pow270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j271 = load i128, i128* %j, align 4
  %deg2272 = load i128, i128* %deg2, align 4
  %array_getter273 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow270, i128 0, i128 %j271, i128 %deg2272
  %pow274 = load i128, i128* %array_getter273, align 4
  %mul275 = mul i128 %mul269, %pow274
  %add276 = add i128 %out_poly258, %mul275
  %ptr_getter277 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i278 = load i128, i128* %i, align 4
  %j279 = load i128, i128* %j, align 4
  %out_poly280 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter277, i128 0, i128 %i278, i128 %j279
  store i128 %add276, i128* %out_poly280, align 4
  br label %loop.latch281

loop.latch281:                                    ; preds = %loop.body253
  %deg2282 = load i128, i128* %deg2, align 4
  %add283 = add i128 %deg2282, 1
  store i128 %add283, i128* %deg2, align 4
  %deg2284 = load i128, i128* %deg2, align 4
  %ka285 = load i128, i128* %ka.bind, align 4
  %kb286 = load i128, i128* %kb.bind, align 4
  %add287 = add i128 %ka285, %kb286
  %sub288 = sub i128 %add287, 1
  %slt289 = icmp slt i128 %deg2284, %sub288
  br i1 %slt289, label %loop.body253, label %loop.exit290

loop.exit290:                                     ; preds = %loop.latch281
  br label %loop.latch291

loop.latch291:                                    ; preds = %loop.exit290
  %deg1292 = load i128, i128* %deg1, align 4
  %add293 = add i128 %deg1292, 1
  store i128 %add293, i128* %deg1, align 4
  %deg1294 = load i128, i128* %deg1, align 4
  %la295 = load i128, i128* %la.bind, align 4
  %lb296 = load i128, i128* %lb.bind, align 4
  %add297 = add i128 %la295, %lb296
  %sub298 = sub i128 %add297, 1
  %slt299 = icmp slt i128 %deg1294, %sub298
  br i1 %slt299, label %loop.body173, label %loop.exit300

loop.exit300:                                     ; preds = %loop.latch291
  br label %loop.latch301

loop.latch301:                                    ; preds = %loop.exit300
  %j302 = load i128, i128* %j, align 4
  %add303 = add i128 %j302, 1
  store i128 %add303, i128* %j, align 4
  %j304 = load i128, i128* %j, align 4
  %ka305 = load i128, i128* %ka.bind, align 4
  %kb306 = load i128, i128* %kb.bind, align 4
  %add307 = add i128 %ka305, %kb306
  %sub308 = sub i128 %add307, 1
  %slt309 = icmp slt i128 %j304, %sub308
  br i1 %slt309, label %loop.body160, label %loop.exit310

loop.exit310:                                     ; preds = %loop.latch301
  br label %loop.latch311

loop.latch311:                                    ; preds = %loop.exit310
  %i312 = load i128, i128* %i, align 4
  %add313 = add i128 %i312, 1
  store i128 %add313, i128* %i, align 4
  %i314 = load i128, i128* %i, align 4
  %la315 = load i128, i128* %la.bind, align 4
  %lb316 = load i128, i128* %lb.bind, align 4
  %add317 = add i128 %la315, %lb316
  %sub318 = sub i128 %add317, 1
  %slt319 = icmp slt i128 %i314, %sub318
  br i1 %slt319, label %loop.body159, label %loop.exit320

loop.exit320:                                     ; preds = %loop.latch311
  store i128 0, i128* %i, align 4
  br label %loop.body321

loop.body321:                                     ; preds = %loop.latch349, %loop.exit320
  store i128 0, i128* %j, align 4
  br label %loop.body322

loop.body322:                                     ; preds = %loop.latch339, %loop.body321
  %out_poly323 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i324 = load i128, i128* %i, align 4
  %j325 = load i128, i128* %j, align 4
  %array_getter326 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly323, i128 0, i128 %i324, i128 %j325
  %out_poly327 = load i128, i128* %array_getter326, align 4
  %a_poly328 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i329 = load i128, i128* %i, align 4
  %j330 = load i128, i128* %j, align 4
  %array_getter331 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly328, i128 0, i128 %i329, i128 %j330
  %a_poly332 = load i128, i128* %array_getter331, align 4
  %b_poly333 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i334 = load i128, i128* %i, align 4
  %j335 = load i128, i128* %j, align 4
  %array_getter336 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly333, i128 0, i128 %i334, i128 %j335
  %b_poly337 = load i128, i128* %array_getter336, align 4
  %mul338 = mul i128 %a_poly332, %b_poly337
  call void @fn_intrinsic_add_constraint(i128 %out_poly327, i128 %mul338, i1* @constraint.3)
  br label %loop.latch339

loop.latch339:                                    ; preds = %loop.body322
  %j340 = load i128, i128* %j, align 4
  %add341 = add i128 %j340, 1
  store i128 %add341, i128* %j, align 4
  %j342 = load i128, i128* %j, align 4
  %ka343 = load i128, i128* %ka.bind, align 4
  %kb344 = load i128, i128* %kb.bind, align 4
  %add345 = add i128 %ka343, %kb344
  %sub346 = sub i128 %add345, 1
  %slt347 = icmp slt i128 %j342, %sub346
  br i1 %slt347, label %loop.body322, label %loop.exit348

loop.exit348:                                     ; preds = %loop.latch339
  br label %loop.latch349

loop.latch349:                                    ; preds = %loop.exit348
  %i350 = load i128, i128* %i, align 4
  %add351 = add i128 %i350, 1
  store i128 %add351, i128* %i, align 4
  %i352 = load i128, i128* %i, align 4
  %la353 = load i128, i128* %la.bind, align 4
  %lb354 = load i128, i128* %lb.bind, align 4
  %add355 = add i128 %la353, %lb354
  %sub356 = sub i128 %add355, 1
  %slt357 = icmp slt i128 %i352, %sub356
  br i1 %slt357, label %loop.body321, label %loop.exit358

loop.exit358:                                     ; preds = %loop.latch349
  br label %exit

exit:                                             ; preds = %loop.exit358
  %out359 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %write_output_inner.bigmultshortlong2dunequal.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 7
  store [256 x [256 x i128]]* %out359, [256 x [256 x i128]]** %write_output_inner.bigmultshortlong2dunequal.out, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2dunequal* @fn_template_build_bigmultshortlong2dunequal(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %struct_template_circuit_bigmultshortlong2dunequal = alloca %struct_template_circuit_bigmultshortlong2dunequal, align 8
  %write_arg_inner.bigmultshortlong2dunequal.n = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultshortlong2dunequal.n, align 4
  %write_arg_inner.bigmultshortlong2dunequal.ka = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultshortlong2dunequal.ka, align 4
  %write_arg_inner.bigmultshortlong2dunequal.kb = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmultshortlong2dunequal.kb, align 4
  %write_arg_inner.bigmultshortlong2dunequal.la = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 3
  store i128 %3, i128* %write_arg_inner.bigmultshortlong2dunequal.la, align 4
  %write_arg_inner.bigmultshortlong2dunequal.lb = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 4
  store i128 %4, i128* %write_arg_inner.bigmultshortlong2dunequal.lb, align 4
  ret %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k1.bind = alloca i128, align 8
  store i128 %1, i128* %k1.bind, align 4
  %k2.bind = alloca i128, align 8
  store i128 %2, i128* %k2.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %b.bind, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry1 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry1, [256 x i128]** %sumAndCarry, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum2 = alloca [256 x i128], align 8
  store [256 x i128]* %sum2, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i3 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %k2.bind, align 4
  %slt = icmp slt i128 %i3, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i4
  %a5 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i6
  %b8 = load i128, i128* %array_getter7, align 4
  %add = add i128 %a5, %b8
  %carry9 = load i128, i128* %carry, align 4
  %add10 = add i128 %add, %carry9
  %n = load i128, i128* %n.bind, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add10, i128 %n, i128 %n11)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry12 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry12, i128 0, i128 0
  %sumAndCarry14 = load i128, i128* %array_getter13, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i15 = load i128, i128* %i, align 4
  %sum16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 %sumAndCarry14, i128* %sum16, align 4
  %sumAndCarry17 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry17, i128 0, i128 1
  %sumAndCarry19 = load i128, i128* %array_getter18, align 4
  store i128 %sumAndCarry19, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a20 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %a20, i128 0, i128 %i21
  %a23 = load i128, i128* %array_getter22, align 4
  %carry24 = load i128, i128* %carry, align 4
  %add25 = add i128 %a23, %carry24
  %n26 = load i128, i128* %n.bind, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %call28 = call [2 x i128]* @SplitFn(i128 %add25, i128 %n26, i128 %n27)
  %memcpy_ptr29 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr29 to i8*
  %8 = bitcast [2 x i128]* %call28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry30 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry30, i128 0, i128 0
  %sumAndCarry32 = load i128, i128* %array_getter31, align 4
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i34 = load i128, i128* %i, align 4
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i34
  store i128 %sumAndCarry32, i128* %sum35, align 4
  %sumAndCarry36 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry36, i128 0, i128 1
  %sumAndCarry38 = load i128, i128* %array_getter37, align 4
  store i128 %sumAndCarry38, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i39 = load i128, i128* %i, align 4
  %add40 = add i128 %i39, 1
  store i128 %add40, i128* %i, align 4
  %i41 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %k1.bind, align 4
  %slt42 = icmp slt i128 %i41, %k1
  br i1 %slt42, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry43 = load i128, i128* %carry, align 4
  %ptr_getter44 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k145 = load i128, i128* %k1.bind, align 4
  %sum46 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter44, i128 0, i128 %k145
  store i128 %carry43, i128* %sum46, align 4
  %sum47 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum47
}

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 0
  %read_input_inner.xor.a = load i128, i128* %struct_getter, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.xor.a, i128* %a.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 1
  %read_input_inner.xor.b = load i128, i128* %struct_getter1, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.xor.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %a.bind, align 4
  %mul = mul i128 2, %a2
  %b3 = load i128, i128* %b.bind, align 4
  %mul4 = mul i128 %mul, %b3
  %sub = sub i128 %add, %mul4
  %out5 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %sub, i1* @constraint.4)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out6 = load i128, i128* %out, align 4
  %write_output_inner.xor.out = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %out6, i128* %write_output_inner.xor.out, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor() {
entry:
  %struct_template_circuit_xor = alloca %struct_template_circuit_xor, align 8
  ret %struct_template_circuit_xor* %struct_template_circuit_xor
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i3
  %b5 = load i128, i128* %array_getter4, align 4
  %sgt = icmp sgt i128 %a2, %b5
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %a8 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %a8, i128 0, i128 %i9
  %a11 = load i128, i128* %array_getter10, align 4
  %b12 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %b12, i128 0, i128 %i13
  %b15 = load i128, i128* %array_getter14, align 4
  %slt = icmp slt i128 %a11, %b15
  br i1 %slt, label %if.true6, label %if.false7

if.true6:                                         ; preds = %if.exit
  ret i128 0

if.false7:                                        ; preds = %if.exit
  br label %if.exit16

if.exit16:                                        ; preds = %if.false7
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit16
  %i17 = load i128, i128* %i, align 4
  %sub18 = sub i128 %i17, 1
  store i128 %sub18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %a.bind, align 8
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  store i128 0, i128* %idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %idx1 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %idx1
  %a2 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a2, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %idx3 = load i128, i128* %idx, align 4
  %add = add i128 %idx3, 1
  store i128 %add, i128* %idx, align 4
  %idx4 = load i128, i128* %idx, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx4, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %0, [256 x i128]** %a.bind, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %borrow = alloca [256 x i128]*, align 8
  %borrow1 = alloca [256 x i128], align 8
  store [256 x i128]* %borrow1, [256 x i128]** %borrow, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %diff = alloca [256 x i128]*, align 8
  %diff2 = alloca [256 x i128], align 8
  store [256 x i128]* %diff2, [256 x i128]** %diff, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i4 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i4, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i9
  %b11 = load i128, i128* %array_getter10, align 4
  %sge = icmp sge i128 %a8, %b11
  br i1 %sge, label %if.true5, label %if.false6

if.false:                                         ; preds = %loop.body
  %a42 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %a42, i128 0, i128 %i43
  %a45 = load i128, i128* %array_getter44, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %i47
  %b49 = load i128, i128* %array_getter48, align 4
  %borrow50 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow50, i128 0, i128 %sub52
  %borrow54 = load i128, i128* %array_getter53, align 4
  %add55 = add i128 %b49, %borrow54
  %sge56 = icmp sge i128 %a45, %add55
  br i1 %sge56, label %if.true40, label %if.false41

if.true5:                                         ; preds = %if.true
  %a12 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a12, i128 0, i128 %i13
  %a15 = load i128, i128* %array_getter14, align 4
  %b16 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %b16, i128 0, i128 %i17
  %b19 = load i128, i128* %array_getter18, align 4
  %sub = sub i128 %a15, %b19
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i20 = load i128, i128* %i, align 4
  %diff21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i20
  store i128 %sub, i128* %diff21, align 4
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i23 = load i128, i128* %i, align 4
  %borrow24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 0, i128* %borrow24, align 4
  br label %if.exit

if.false6:                                        ; preds = %if.true
  %a25 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %a25, i128 0, i128 %i26
  %a28 = load i128, i128* %array_getter27, align 4
  %b29 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %b29, i128 0, i128 %i30
  %b32 = load i128, i128* %array_getter31, align 4
  %sub33 = sub i128 %a28, %b32
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub33, %lshift
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i35 = load i128, i128* %i, align 4
  %diff36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 %add, i128* %diff36, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i38 = load i128, i128* %i, align 4
  %borrow39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 1, i128* %borrow39, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false6, %if.true5
  br label %if.exit103

if.true40:                                        ; preds = %if.false
  %a57 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %a57, i128 0, i128 %i58
  %a60 = load i128, i128* %array_getter59, align 4
  %b61 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i62 = load i128, i128* %i, align 4
  %array_getter63 = getelementptr inbounds [256 x i128], [256 x i128]* %b61, i128 0, i128 %i62
  %b64 = load i128, i128* %array_getter63, align 4
  %sub65 = sub i128 %a60, %b64
  %borrow66 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i67 = load i128, i128* %i, align 4
  %sub68 = sub i128 %i67, 1
  %array_getter69 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow66, i128 0, i128 %sub68
  %borrow70 = load i128, i128* %array_getter69, align 4
  %sub71 = sub i128 %sub65, %borrow70
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i73 = load i128, i128* %i, align 4
  %diff74 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %i73
  store i128 %sub71, i128* %diff74, align 4
  %ptr_getter75 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i76 = load i128, i128* %i, align 4
  %borrow77 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter75, i128 0, i128 %i76
  store i128 0, i128* %borrow77, align 4
  br label %if.exit102

if.false41:                                       ; preds = %if.false
  %n78 = load i128, i128* %n.bind, align 4
  %lshift79 = shl i128 1, %n78
  %a80 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i81 = load i128, i128* %i, align 4
  %array_getter82 = getelementptr inbounds [256 x i128], [256 x i128]* %a80, i128 0, i128 %i81
  %a83 = load i128, i128* %array_getter82, align 4
  %add84 = add i128 %lshift79, %a83
  %b85 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i86 = load i128, i128* %i, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %b85, i128 0, i128 %i86
  %b88 = load i128, i128* %array_getter87, align 4
  %sub89 = sub i128 %add84, %b88
  %borrow90 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i91 = load i128, i128* %i, align 4
  %sub92 = sub i128 %i91, 1
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow90, i128 0, i128 %sub92
  %borrow94 = load i128, i128* %array_getter93, align 4
  %sub95 = sub i128 %sub89, %borrow94
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i97 = load i128, i128* %i, align 4
  %diff98 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 %i97
  store i128 %sub95, i128* %diff98, align 4
  %ptr_getter99 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i100 = load i128, i128* %i, align 4
  %borrow101 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter99, i128 0, i128 %i100
  store i128 1, i128* %borrow101, align 4
  br label %if.exit102

if.exit102:                                       ; preds = %if.false41, %if.true40
  br label %if.exit103

if.exit103:                                       ; preds = %if.exit102, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit103
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i106, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff107 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff107
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %read_arg_inner.num2bits.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.num2bits.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %read_input_inner.num2bits.in = load i128, i128* %struct_getter1, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.num2bits.in, i128* %in.bind, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out3 = bitcast i8* %malloccall2 to [256 x i128]*
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %lc1 = alloca i128, align 8
  store i128 0, i128* %lc1, align 4
  %e2 = alloca i128, align 8
  store i128 0, i128* %e2, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load i128, i128* %in.bind, align 4
  %i4 = load i128, i128* %i, align 4
  %rshift = lshr i128 %in, %i4
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i5 = load i128, i128* %i, align 4
  %out6 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i5
  store i128 %and, i128* %out6, align 4
  %out7 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out7, i128 0, i128 %i8
  %out9 = load i128, i128* %array_getter, align 4
  %out10 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %out10, i128 0, i128 %i11
  %out13 = load i128, i128* %array_getter12, align 4
  %sub = sub i128 %out13, 1
  %mul = mul i128 %out9, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.5)
  %lc114 = load i128, i128* %lc1, align 4
  %out15 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %out15, i128 0, i128 %i16
  %out18 = load i128, i128* %array_getter17, align 4
  %e219 = load i128, i128* %e2, align 4
  %mul20 = mul i128 %out18, %e219
  %add = add i128 %lc114, %mul20
  store i128 %add, i128* %lc1, align 4
  %e221 = load i128, i128* %e2, align 4
  %e222 = load i128, i128* %e2, align 4
  %add23 = add i128 %e221, %e222
  store i128 %add23, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i24 = load i128, i128* %i, align 4
  %add25 = add i128 %i24, 1
  store i128 %add25, i128* %i, align 4
  %i26 = load i128, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i26, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc127 = load i128, i128* %lc1, align 4
  %in28 = load i128, i128* %in.bind, align 4
  call void @fn_intrinsic_add_constraint(i128 %lc127, i128 %in28, i1* @constraint.6)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out29 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.num2bits.out = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [256 x i128]* %out29, [256 x i128]** %write_output_inner.num2bits.out, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %write_arg_inner.num2bits.n = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.num2bits.n, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_bigmultshortlong(%struct_template_circuit_bigmultshortlong* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 0
  %read_arg_inner.bigmultshortlong.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 1
  %read_arg_inner.bigmultshortlong.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 2
  %read_arg_inner.bigmultshortlong.m_out = load i128, i128* %struct_getter2, align 4
  %m_out.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlong.m_out, i128* %m_out.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 3
  %read_input_inner.bigmultshortlong.a = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultshortlong.a, [256 x i128]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 4
  %read_input_inner.bigmultshortlong.b = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultshortlong.b, [256 x i128]** %b.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow7, [256 x [256 x i128]]** %pow, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %k2 = alloca i128, align 8
  store i128 0, i128* %k2, align 4
  %a_idx = alloca i128, align 8
  store i128 0, i128* %a_idx, align 4
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly8 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly8, [256 x i128]** %a_poly, align 8
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly9 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly9, [256 x i128]** %b_poly, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly10 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly10, [256 x i128]** %out_poly, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val11 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val11, [256 x i128]** %prod_val, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch71, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i12 = load i128, i128* %i, align 4
  %prod_val13 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i12
  store i128 0, i128* %prod_val13, align 4
  %i14 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i14, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body15

if.false:                                         ; preds = %loop.body
  %i33 = load i128, i128* %i, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %sub35 = sub i128 %i33, %k34
  %add36 = add i128 %sub35, 1
  store i128 %add36, i128* %a_idx, align 4
  br label %loop.body37

loop.body15:                                      ; preds = %loop.latch, %if.true
  %prod_val16 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val16, i128 0, i128 %i17
  %prod_val18 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx19 = load i128, i128* %a_idx, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx19
  %a21 = load i128, i128* %array_getter20, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i22 = load i128, i128* %i, align 4
  %a_idx23 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i22, %a_idx23
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b25 = load i128, i128* %array_getter24, align 4
  %mul = mul i128 %a21, %b25
  %add = add i128 %prod_val18, %mul
  %ptr_getter26 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i27 = load i128, i128* %i, align 4
  %prod_val28 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter26, i128 0, i128 %i27
  store i128 %add, i128* %prod_val28, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body15
  %a_idx29 = load i128, i128* %a_idx, align 4
  %add30 = add i128 %a_idx29, 1
  store i128 %add30, i128* %a_idx, align 4
  %a_idx31 = load i128, i128* %a_idx, align 4
  %i32 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx31, %i32
  br i1 %sle, label %loop.body15, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body37:                                      ; preds = %loop.latch57, %if.false
  %prod_val38 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i39 = load i128, i128* %i, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val38, i128 0, i128 %i39
  %prod_val41 = load i128, i128* %array_getter40, align 4
  %a42 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx43 = load i128, i128* %a_idx, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %a42, i128 0, i128 %a_idx43
  %a45 = load i128, i128* %array_getter44, align 4
  %b46 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i47 = load i128, i128* %i, align 4
  %a_idx48 = load i128, i128* %a_idx, align 4
  %sub49 = sub i128 %i47, %a_idx48
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %b46, i128 0, i128 %sub49
  %b51 = load i128, i128* %array_getter50, align 4
  %mul52 = mul i128 %a45, %b51
  %add53 = add i128 %prod_val41, %mul52
  %ptr_getter54 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i55 = load i128, i128* %i, align 4
  %prod_val56 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter54, i128 0, i128 %i55
  store i128 %add53, i128* %prod_val56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body37
  %a_idx58 = load i128, i128* %a_idx, align 4
  %add59 = add i128 %a_idx58, 1
  store i128 %add59, i128* %a_idx, align 4
  %a_idx60 = load i128, i128* %a_idx, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %slt62 = icmp slt i128 %a_idx60, %k61
  br i1 %slt62, label %loop.body37, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %if.exit

if.exit:                                          ; preds = %loop.exit63, %loop.exit
  %prod_val64 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val64, i128 0, i128 %i65
  %prod_val67 = load i128, i128* %array_getter66, align 4
  %ptr_getter68 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i69 = load i128, i128* %i, align 4
  %out70 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter68, i128 0, i128 %i69
  store i128 %prod_val67, i128* %out70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %if.exit
  %i72 = load i128, i128* %i, align 4
  %add73 = add i128 %i72, 1
  store i128 %add73, i128* %i, align 4
  %i74 = load i128, i128* %i, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %mul76 = mul i128 2, %k75
  %sub77 = sub i128 %mul76, 1
  %slt78 = icmp slt i128 %i74, %sub77
  br i1 %slt78, label %loop.body, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch71
  %k80 = load i128, i128* %k.bind, align 4
  %mul81 = mul i128 2, %k80
  %sub82 = sub i128 %mul81, 1
  store i128 %sub82, i128* %k2, align 4
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array83, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch100, %loop.exit79
  store i128 0, i128* %j, align 4
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch93, %loop.body84
  %i86 = load i128, i128* %i, align 4
  %j87 = load i128, i128* %j, align 4
  %pow88 = call i128 @fn_intrinsic_inline_powi(i128 %i86, i128 %j87)
  %ptr_getter89 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i90 = load i128, i128* %i, align 4
  %j91 = load i128, i128* %j, align 4
  %pow92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter89, i128 0, i128 %i90, i128 %j91
  store i128 %pow88, i128* %pow92, align 4
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body85
  %j94 = load i128, i128* %j, align 4
  %add95 = add i128 %j94, 1
  store i128 %add95, i128* %j, align 4
  %j96 = load i128, i128* %j, align 4
  %k297 = load i128, i128* %k2, align 4
  %slt98 = icmp slt i128 %j96, %k297
  br i1 %slt98, label %loop.body85, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch93
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.exit99
  %i101 = load i128, i128* %i, align 4
  %add102 = add i128 %i101, 1
  store i128 %add102, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k2104 = load i128, i128* %k2, align 4
  %slt105 = icmp slt i128 %i103, %k2104
  br i1 %slt105, label %loop.body84, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch100
  %uniform_array107 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array107, [256 x i128]** %a_poly, align 8
  %uniform_array108 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array108, [256 x i128]** %b_poly, align 8
  %uniform_array109 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array109, [256 x i128]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body110

loop.body110:                                     ; preds = %loop.latch192, %loop.exit106
  %ptr_getter111 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i112 = load i128, i128* %i, align 4
  %out_poly113 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter111, i128 0, i128 %i112
  store i128 0, i128* %out_poly113, align 4
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i115 = load i128, i128* %i, align 4
  %a_poly116 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 %i115
  store i128 0, i128* %a_poly116, align 4
  %ptr_getter117 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i118 = load i128, i128* %i, align 4
  %b_poly119 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter117, i128 0, i128 %i118
  store i128 0, i128* %b_poly119, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body120

loop.body120:                                     ; preds = %loop.latch139, %loop.body110
  %out_poly121 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i122 = load i128, i128* %i, align 4
  %array_getter123 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly121, i128 0, i128 %i122
  %out_poly124 = load i128, i128* %array_getter123, align 4
  %out125 = load [256 x i128]*, [256 x i128]** %out, align 8
  %j126 = load i128, i128* %j, align 4
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %out125, i128 0, i128 %j126
  %out128 = load i128, i128* %array_getter127, align 4
  %pow129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i130 = load i128, i128* %i, align 4
  %j131 = load i128, i128* %j, align 4
  %array_getter132 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow129, i128 0, i128 %i130, i128 %j131
  %pow133 = load i128, i128* %array_getter132, align 4
  %mul134 = mul i128 %out128, %pow133
  %add135 = add i128 %out_poly124, %mul134
  %ptr_getter136 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i137 = load i128, i128* %i, align 4
  %out_poly138 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter136, i128 0, i128 %i137
  store i128 %add135, i128* %out_poly138, align 4
  br label %loop.latch139

loop.latch139:                                    ; preds = %loop.body120
  %j140 = load i128, i128* %j, align 4
  %add141 = add i128 %j140, 1
  store i128 %add141, i128* %j, align 4
  %j142 = load i128, i128* %j, align 4
  %k143 = load i128, i128* %k.bind, align 4
  %mul144 = mul i128 2, %k143
  %sub145 = sub i128 %mul144, 1
  %slt146 = icmp slt i128 %j142, %sub145
  br i1 %slt146, label %loop.body120, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch139
  store i128 0, i128* %j, align 4
  br label %loop.body148

loop.body148:                                     ; preds = %loop.latch185, %loop.exit147
  %a_poly149 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly149, i128 0, i128 %i150
  %a_poly152 = load i128, i128* %array_getter151, align 4
  %a153 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %j154 = load i128, i128* %j, align 4
  %array_getter155 = getelementptr inbounds [256 x i128], [256 x i128]* %a153, i128 0, i128 %j154
  %a156 = load i128, i128* %array_getter155, align 4
  %pow157 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i158 = load i128, i128* %i, align 4
  %j159 = load i128, i128* %j, align 4
  %array_getter160 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow157, i128 0, i128 %i158, i128 %j159
  %pow161 = load i128, i128* %array_getter160, align 4
  %mul162 = mul i128 %a156, %pow161
  %add163 = add i128 %a_poly152, %mul162
  %ptr_getter164 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i165 = load i128, i128* %i, align 4
  %a_poly166 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter164, i128 0, i128 %i165
  store i128 %add163, i128* %a_poly166, align 4
  %b_poly167 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i168 = load i128, i128* %i, align 4
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly167, i128 0, i128 %i168
  %b_poly170 = load i128, i128* %array_getter169, align 4
  %b171 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %j172 = load i128, i128* %j, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %b171, i128 0, i128 %j172
  %b174 = load i128, i128* %array_getter173, align 4
  %pow175 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i176 = load i128, i128* %i, align 4
  %j177 = load i128, i128* %j, align 4
  %array_getter178 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow175, i128 0, i128 %i176, i128 %j177
  %pow179 = load i128, i128* %array_getter178, align 4
  %mul180 = mul i128 %b174, %pow179
  %add181 = add i128 %b_poly170, %mul180
  %ptr_getter182 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i183 = load i128, i128* %i, align 4
  %b_poly184 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter182, i128 0, i128 %i183
  store i128 %add181, i128* %b_poly184, align 4
  br label %loop.latch185

loop.latch185:                                    ; preds = %loop.body148
  %j186 = load i128, i128* %j, align 4
  %add187 = add i128 %j186, 1
  store i128 %add187, i128* %j, align 4
  %j188 = load i128, i128* %j, align 4
  %k189 = load i128, i128* %k.bind, align 4
  %slt190 = icmp slt i128 %j188, %k189
  br i1 %slt190, label %loop.body148, label %loop.exit191

loop.exit191:                                     ; preds = %loop.latch185
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.exit191
  %i193 = load i128, i128* %i, align 4
  %add194 = add i128 %i193, 1
  store i128 %add194, i128* %i, align 4
  %i195 = load i128, i128* %i, align 4
  %k196 = load i128, i128* %k.bind, align 4
  %mul197 = mul i128 2, %k196
  %sub198 = sub i128 %mul197, 1
  %slt199 = icmp slt i128 %i195, %sub198
  br i1 %slt199, label %loop.body110, label %loop.exit200

loop.exit200:                                     ; preds = %loop.latch192
  store i128 0, i128* %i, align 4
  br label %loop.body201

loop.body201:                                     ; preds = %loop.latch215, %loop.exit200
  %out_poly202 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i203 = load i128, i128* %i, align 4
  %array_getter204 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly202, i128 0, i128 %i203
  %out_poly205 = load i128, i128* %array_getter204, align 4
  %a_poly206 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i207 = load i128, i128* %i, align 4
  %array_getter208 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly206, i128 0, i128 %i207
  %a_poly209 = load i128, i128* %array_getter208, align 4
  %b_poly210 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i211 = load i128, i128* %i, align 4
  %array_getter212 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly210, i128 0, i128 %i211
  %b_poly213 = load i128, i128* %array_getter212, align 4
  %mul214 = mul i128 %a_poly209, %b_poly213
  call void @fn_intrinsic_add_constraint(i128 %out_poly205, i128 %mul214, i1* @constraint.7)
  br label %loop.latch215

loop.latch215:                                    ; preds = %loop.body201
  %i216 = load i128, i128* %i, align 4
  %add217 = add i128 %i216, 1
  store i128 %add217, i128* %i, align 4
  %i218 = load i128, i128* %i, align 4
  %k219 = load i128, i128* %k.bind, align 4
  %mul220 = mul i128 2, %k219
  %sub221 = sub i128 %mul220, 1
  %slt222 = icmp slt i128 %i218, %sub221
  br i1 %slt222, label %loop.body201, label %loop.exit223

loop.exit223:                                     ; preds = %loop.latch215
  br label %exit

exit:                                             ; preds = %loop.exit223
  %out224 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmultshortlong.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 5
  store [256 x i128]* %out224, [256 x i128]** %write_output_inner.bigmultshortlong.out, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong = alloca %struct_template_circuit_bigmultshortlong, align 8
  %write_arg_inner.bigmultshortlong.n = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultshortlong.n, align 4
  %write_arg_inner.bigmultshortlong.k = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultshortlong.k, align 4
  %write_arg_inner.bigmultshortlong.m_out = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmultshortlong.m_out, align 4
  ret %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %borrow = alloca i128, align 8
  store i128 0, i128* %borrow, align 4
  %temp = alloca [256 x i128]*, align 8
  %temp1 = alloca [256 x i128], align 8
  store [256 x i128]* %temp1, [256 x i128]** %temp, align 8
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %MAXL = alloca i128, align 8
  store i128 0, i128* %MAXL, align 4
  %X = alloca i128, align 8
  store i128 0, i128* %X, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i4
  %a5 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i6 = load i128, i128* %i, align 4
  %temp7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 %a5, i128* %temp7, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i8 = load i128, i128* %i, align 4
  %add = add i128 %i8, 1
  store i128 %add, i128* %i, align 4
  %i9 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i9, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k10 = load i128, i128* %k.bind, align 4
  store i128 %k10, i128* %i, align 4
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch15, %loop.exit
  %ptr_getter12 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i13 = load i128, i128* %i, align 4
  %temp14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter12, i128 0, i128 %i13
  store i128 0, i128* %temp14, align 4
  br label %loop.latch15

loop.latch15:                                     ; preds = %loop.body11
  %i16 = load i128, i128* %i, align 4
  %add17 = add i128 %i16, 1
  store i128 %add17, i128* %i, align 4
  %i18 = load i128, i128* %i, align 4
  %MAXL19 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i18, %MAXL19
  br i1 %sle, label %loop.body11, label %loop.exit20

loop.exit20:                                      ; preds = %loop.latch15
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch78, %loop.exit20
  %temp22 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %temp22, i128 0, i128 %i23
  %temp25 = load i128, i128* %array_getter24, align 4
  %sge = icmp sge i128 %temp25, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body21
  %temp26 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %temp26, i128 0, i128 %i27
  %temp29 = load i128, i128* %array_getter28, align 4
  %X30 = load i128, i128* %X, align 4
  %mod = srem i128 %temp29, %X30
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i32 = load i128, i128* %i, align 4
  %out33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 %mod, i128* %out33, align 4
  %temp34 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i35 = load i128, i128* %i, align 4
  %add36 = add i128 %i35, 1
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %temp34, i128 0, i128 %add36
  %temp38 = load i128, i128* %array_getter37, align 4
  %temp39 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %temp39, i128 0, i128 %i40
  %temp42 = load i128, i128* %array_getter41, align 4
  %X43 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp42, %X43
  %add44 = add i128 %temp38, %sdiv
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i46 = load i128, i128* %i, align 4
  %add47 = add i128 %i46, 1
  %temp48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %add47
  store i128 %add44, i128* %temp48, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body21
  %temp49 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %temp49, i128 0, i128 %i50
  %temp52 = load i128, i128* %array_getter51, align 4
  %neg = sub i128 0, %temp52
  %X53 = load i128, i128* %X, align 4
  %add54 = add i128 %neg, %X53
  %sub = sub i128 %add54, 1
  %X55 = load i128, i128* %X, align 4
  %sdiv56 = sdiv i128 %sub, %X55
  store i128 %sdiv56, i128* %borrow, align 4
  %temp57 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %temp57, i128 0, i128 %i58
  %temp60 = load i128, i128* %array_getter59, align 4
  %borrow61 = load i128, i128* %borrow, align 4
  %X62 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow61, %X62
  %add63 = add i128 %temp60, %mul
  %ptr_getter64 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i65 = load i128, i128* %i, align 4
  %out66 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter64, i128 0, i128 %i65
  store i128 %add63, i128* %out66, align 4
  %temp67 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i68 = load i128, i128* %i, align 4
  %add69 = add i128 %i68, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %temp67, i128 0, i128 %add69
  %temp71 = load i128, i128* %array_getter70, align 4
  %borrow72 = load i128, i128* %borrow, align 4
  %sub73 = sub i128 %temp71, %borrow72
  %ptr_getter74 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  %temp77 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter74, i128 0, i128 %add76
  store i128 %sub73, i128* %temp77, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch78

loop.latch78:                                     ; preds = %if.exit
  %i79 = load i128, i128* %i, align 4
  %add80 = add i128 %i79, 1
  store i128 %add80, i128* %i, align 4
  %i81 = load i128, i128* %i, align 4
  %MAXL82 = load i128, i128* %MAXL, align 4
  %slt83 = icmp slt i128 %i81, %MAXL82
  br i1 %slt83, label %loop.body21, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %temp87 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL88 = load i128, i128* %MAXL, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %temp87, i128 0, i128 %MAXL88
  %temp90 = load i128, i128* %array_getter89, align 4
  %sge91 = icmp sge i128 %temp90, 0
  br i1 %sge91, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.exit84
  %ptr_getter92 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL93 = load i128, i128* %MAXL, align 4
  %out94 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter92, i128 0, i128 %MAXL93
  store i128 0, i128* %out94, align 4
  %out95 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out95

if.false86:                                       ; preds = %loop.exit84
  br label %if.exit96

if.exit96:                                        ; preds = %if.false86
  store i128 0, i128* %i, align 4
  br label %loop.body97

loop.body97:                                      ; preds = %loop.latch105, %if.exit96
  %a98 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %a98, i128 0, i128 %i99
  %a101 = load i128, i128* %array_getter100, align 4
  %ptr_getter102 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i103 = load i128, i128* %i, align 4
  %temp104 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter102, i128 0, i128 %i103
  store i128 %a101, i128* %temp104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body97
  %i106 = load i128, i128* %i, align 4
  %add107 = add i128 %i106, 1
  store i128 %add107, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %k109 = load i128, i128* %k.bind, align 4
  %slt110 = icmp slt i128 %i108, %k109
  br i1 %slt110, label %loop.body97, label %loop.exit111

loop.exit111:                                     ; preds = %loop.latch105
  %k112 = load i128, i128* %k.bind, align 4
  store i128 %k112, i128* %i, align 4
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch117, %loop.exit111
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i115 = load i128, i128* %i, align 4
  %temp116 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 %i115
  store i128 0, i128* %temp116, align 4
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.body113
  %i118 = load i128, i128* %i, align 4
  %add119 = add i128 %i118, 1
  store i128 %add119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %MAXL121 = load i128, i128* %MAXL, align 4
  %sle122 = icmp sle i128 %i120, %MAXL121
  br i1 %sle122, label %loop.body113, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  store i128 0, i128* %i, align 4
  br label %loop.body124

loop.body124:                                     ; preds = %loop.latch193, %loop.exit123
  %temp127 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %temp127, i128 0, i128 %i128
  %temp130 = load i128, i128* %array_getter129, align 4
  %slt131 = icmp slt i128 %temp130, 0
  br i1 %slt131, label %if.true125, label %if.false126

if.true125:                                       ; preds = %loop.body124
  %temp132 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %temp132, i128 0, i128 %i133
  %temp135 = load i128, i128* %array_getter134, align 4
  %neg136 = sub i128 0, %temp135
  %X137 = load i128, i128* %X, align 4
  %sdiv138 = sdiv i128 %neg136, %X137
  store i128 %sdiv138, i128* %carry, align 4
  %temp139 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i140 = load i128, i128* %i, align 4
  %array_getter141 = getelementptr inbounds [256 x i128], [256 x i128]* %temp139, i128 0, i128 %i140
  %temp142 = load i128, i128* %array_getter141, align 4
  %carry143 = load i128, i128* %carry, align 4
  %X144 = load i128, i128* %X, align 4
  %mul145 = mul i128 %carry143, %X144
  %add146 = add i128 %temp142, %mul145
  %ptr_getter147 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i148 = load i128, i128* %i, align 4
  %out149 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter147, i128 0, i128 %i148
  store i128 %add146, i128* %out149, align 4
  %temp150 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i151 = load i128, i128* %i, align 4
  %add152 = add i128 %i151, 1
  %array_getter153 = getelementptr inbounds [256 x i128], [256 x i128]* %temp150, i128 0, i128 %add152
  %temp154 = load i128, i128* %array_getter153, align 4
  %carry155 = load i128, i128* %carry, align 4
  %sub156 = sub i128 %temp154, %carry155
  %ptr_getter157 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i158 = load i128, i128* %i, align 4
  %add159 = add i128 %i158, 1
  %temp160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter157, i128 0, i128 %add159
  store i128 %sub156, i128* %temp160, align 4
  br label %if.exit192

if.false126:                                      ; preds = %loop.body124
  %temp161 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %temp161, i128 0, i128 %i162
  %temp164 = load i128, i128* %array_getter163, align 4
  %X165 = load i128, i128* %X, align 4
  %add166 = add i128 %temp164, %X165
  %sub167 = sub i128 %add166, 1
  %X168 = load i128, i128* %X, align 4
  %sdiv169 = sdiv i128 %sub167, %X168
  store i128 %sdiv169, i128* %borrow, align 4
  %temp170 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i171 = load i128, i128* %i, align 4
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %temp170, i128 0, i128 %i171
  %temp173 = load i128, i128* %array_getter172, align 4
  %borrow174 = load i128, i128* %borrow, align 4
  %X175 = load i128, i128* %X, align 4
  %mul176 = mul i128 %borrow174, %X175
  %sub177 = sub i128 %temp173, %mul176
  %ptr_getter178 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i179 = load i128, i128* %i, align 4
  %out180 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter178, i128 0, i128 %i179
  store i128 %sub177, i128* %out180, align 4
  %temp181 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i182 = load i128, i128* %i, align 4
  %add183 = add i128 %i182, 1
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %temp181, i128 0, i128 %add183
  %temp185 = load i128, i128* %array_getter184, align 4
  %borrow186 = load i128, i128* %borrow, align 4
  %add187 = add i128 %temp185, %borrow186
  %ptr_getter188 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i189 = load i128, i128* %i, align 4
  %add190 = add i128 %i189, 1
  %temp191 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter188, i128 0, i128 %add190
  store i128 %add187, i128* %temp191, align 4
  br label %if.exit192

if.exit192:                                       ; preds = %if.false126, %if.true125
  br label %loop.latch193

loop.latch193:                                    ; preds = %if.exit192
  %i194 = load i128, i128* %i, align 4
  %add195 = add i128 %i194, 1
  store i128 %add195, i128* %i, align 4
  %i196 = load i128, i128* %i, align 4
  %MAXL197 = load i128, i128* %MAXL, align 4
  %slt198 = icmp slt i128 %i196, %MAXL197
  br i1 %slt198, label %loop.body124, label %loop.exit199

loop.exit199:                                     ; preds = %loop.latch193
  %ptr_getter200 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL201 = load i128, i128* %MAXL, align 4
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter200, i128 0, i128 %MAXL201
  store i128 1, i128* %out202, align 4
  %out203 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out203
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %read_input_inner.iszero.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.iszero.in, i128* %in.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %inv = alloca i128, align 8
  store i128 0, i128* %inv, align 4
  %in = load i128, i128* %in.bind, align 4
  %ne = icmp ne i128 %in, 0
  %in1 = load i128, i128* %in.bind, align 4
  %sdiv = sdiv i128 1, %in1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %ne, i128 %sdiv, i128 0)
  store i128 %inline_switch, i128* %inv, align 4
  %in2 = load i128, i128* %in.bind, align 4
  %neg = sub i128 0, %in2
  %inv3 = load i128, i128* %inv, align 4
  %mul = mul i128 %neg, %inv3
  %add = add i128 %mul, 1
  %out4 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out4, i128 %add, i1* @constraint.8)
  store i128 %add, i128* %out, align 4
  %in5 = load i128, i128* %in.bind, align 4
  %out6 = load i128, i128* %out, align 4
  %mul7 = mul i128 %in5, %out6
  call void @fn_intrinsic_add_constraint(i128 %mul7, i128 0, i1* @constraint.9)
  br label %exit

exit:                                             ; preds = %entry
  %out8 = load i128, i128* %out, align 4
  %write_output_inner.iszero.out = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 1
  store i128 %out8, i128* %write_output_inner.iszero.out, align 4
  ret void
}

define %struct_template_circuit_iszero* @fn_template_build_iszero() {
entry:
  %struct_template_circuit_iszero = alloca %struct_template_circuit_iszero, align 8
  ret %struct_template_circuit_iszero* %struct_template_circuit_iszero
}

define void @fn_template_init_checkcarrytozero(%struct_template_circuit_checkcarrytozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 0
  %read_arg_inner.checkcarrytozero.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrytozero.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 1
  %read_arg_inner.checkcarrytozero.m = load i128, i128* %struct_getter1, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrytozero.m, i128* %m.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 2
  %read_arg_inner.checkcarrytozero.k = load i128, i128* %struct_getter2, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrytozero.k, i128* %k.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 3
  %read_input_inner.checkcarrytozero.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.checkcarrytozero.in, [256 x i128]** %in.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %carryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %carryRangeChecks4 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks4, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry5 = alloca [256 x i128], align 8
  store [256 x i128]* %carry5, [256 x i128]** %carry, align 8
  %EPSILON = alloca i128, align 8
  store i128 0, i128* %EPSILON, align 4
  store i128 1, i128* %EPSILON, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %m = load i128, i128* %m.bind, align 4
  %EPSILON6 = load i128, i128* %EPSILON, align 4
  %add = add i128 %m, %EPSILON6
  %n = load i128, i128* %n.bind, align 4
  %sub = sub i128 %add, %n
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %sub)
  %ptr_getter = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i7 = load i128, i128* %i, align 4
  %carryRangeChecks8 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i7
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %carryRangeChecks8, align 8
  %i9 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i9, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i10
  %in11 = load i128, i128* %array_getter, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n12
  %sdiv = sdiv i128 %in11, %lshift
  %ptr_getter13 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i14 = load i128, i128* %i, align 4
  %carry15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter13, i128 0, i128 %i14
  store i128 %sdiv, i128* %carry15, align 4
  %in16 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %in16, i128 0, i128 %i17
  %in19 = load i128, i128* %array_getter18, align 4
  %carry20 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %carry20, i128 0, i128 %i21
  %carry23 = load i128, i128* %array_getter22, align 4
  %n24 = load i128, i128* %n.bind, align 4
  %lshift25 = shl i128 1, %n24
  %mul = mul i128 %carry23, %lshift25
  call void @fn_intrinsic_add_constraint(i128 %in19, i128 %mul, i1* @constraint.10)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in26 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %in26, i128 0, i128 %i27
  %in29 = load i128, i128* %array_getter28, align 4
  %carry30 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i31 = load i128, i128* %i, align 4
  %sub32 = sub i128 %i31, 1
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %carry30, i128 0, i128 %sub32
  %carry34 = load i128, i128* %array_getter33, align 4
  %add35 = add i128 %in29, %carry34
  %n36 = load i128, i128* %n.bind, align 4
  %lshift37 = shl i128 1, %n36
  %sdiv38 = sdiv i128 %add35, %lshift37
  %ptr_getter39 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i40 = load i128, i128* %i, align 4
  %carry41 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter39, i128 0, i128 %i40
  store i128 %sdiv38, i128* %carry41, align 4
  %in42 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %in42, i128 0, i128 %i43
  %in45 = load i128, i128* %array_getter44, align 4
  %carry46 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i47 = load i128, i128* %i, align 4
  %sub48 = sub i128 %i47, 1
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %carry46, i128 0, i128 %sub48
  %carry50 = load i128, i128* %array_getter49, align 4
  %add51 = add i128 %in45, %carry50
  %carry52 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %carry52, i128 0, i128 %i53
  %carry55 = load i128, i128* %array_getter54, align 4
  %n56 = load i128, i128* %n.bind, align 4
  %lshift57 = shl i128 1, %n56
  %mul58 = mul i128 %carry55, %lshift57
  call void @fn_intrinsic_add_constraint(i128 %add51, i128 %mul58, i1* @constraint.11)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry59 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %carry59, i128 0, i128 %i60
  %carry62 = load i128, i128* %array_getter61, align 4
  %m63 = load i128, i128* %m.bind, align 4
  %EPSILON64 = load i128, i128* %EPSILON, align 4
  %add65 = add i128 %m63, %EPSILON64
  %n66 = load i128, i128* %n.bind, align 4
  %sub67 = sub i128 %add65, %n66
  %sub68 = sub i128 %sub67, 1
  %lshift69 = shl i128 1, %sub68
  %add70 = add i128 %carry62, %lshift69
  %carryRangeChecks71 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks71, i128 0, i128 %i72
  %carryRangeChecks74 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks74, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add70, i1* @constraint.12)
  %ptr_getter76 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i77 = load i128, i128* %i, align 4
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter76, i128 0, i128 %i77
  %carryRangeChecks79 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter78, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks79, i32 0, i32 1
  store i128 %add70, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  store i128 %add81, i128* %i, align 4
  %i82 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %sub83 = sub i128 %k, 1
  %slt = icmp slt i128 %i82, %sub83
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in84 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %k85 = load i128, i128* %k.bind, align 4
  %sub86 = sub i128 %k85, 1
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %in84, i128 0, i128 %sub86
  %in88 = load i128, i128* %array_getter87, align 4
  %carry89 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k90 = load i128, i128* %k.bind, align 4
  %sub91 = sub i128 %k90, 2
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %carry89, i128 0, i128 %sub91
  %carry93 = load i128, i128* %array_getter92, align 4
  %add94 = add i128 %in88, %carry93
  call void @fn_intrinsic_add_constraint(i128 %add94, i128 0, i1* @constraint.13)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_checkcarrytozero = alloca %struct_template_circuit_checkcarrytozero, align 8
  %write_arg_inner.checkcarrytozero.n = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.checkcarrytozero.n, align 4
  %write_arg_inner.checkcarrytozero.m = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.checkcarrytozero.m, align 4
  %write_arg_inner.checkcarrytozero.k = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.checkcarrytozero.k, align 4
  ret %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca i128, align 8
  store i128 %2, i128* %a.bind, align 4
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %temp = alloca i128, align 8
  store i128 0, i128* %temp, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i2 = load i128, i128* %i, align 4
  %out3 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i2
  store i128 0, i128* %out3, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i4 = load i128, i128* %i, align 4
  %add = add i128 %i4, 1
  store i128 %add, i128* %i, align 4
  %i5 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i5, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch31, %loop.exit
  %out7 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out7, i128 0, i128 %i8
  %out9 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i10
  %b12 = load i128, i128* %array_getter11, align 4
  %mul = mul i128 %a, %b12
  %add13 = add i128 %out9, %mul
  store i128 %add13, i128* %temp, align 4
  %temp14 = load i128, i128* %temp, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp14, %lshift
  %ptr_getter15 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i16 = load i128, i128* %i, align 4
  %out17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter15, i128 0, i128 %i16
  store i128 %mod, i128* %out17, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 %add20
  %out22 = load i128, i128* %array_getter21, align 4
  %temp23 = load i128, i128* %temp, align 4
  %n24 = load i128, i128* %n.bind, align 4
  %lshift25 = shl i128 1, %n24
  %sdiv = sdiv i128 %temp23, %lshift25
  %add26 = add i128 %out22, %sdiv
  %ptr_getter27 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i28 = load i128, i128* %i, align 4
  %add29 = add i128 %i28, 1
  %out30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter27, i128 0, i128 %add29
  store i128 %add26, i128* %out30, align 4
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.body6
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt35 = icmp slt i128 %i34, %k
  br i1 %slt35, label %loop.body6, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch31
  %out37 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out37
}

define void @fn_template_init_modsumthree(%struct_template_circuit_modsumthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 0
  %read_arg_inner.modsumthree.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modsumthree.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 1
  %read_input_inner.modsumthree.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumthree.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 2
  %read_input_inner.modsumthree.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumthree.b, i128* %b.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 3
  %read_input_inner.modsumthree.c = load i128, i128* %struct_getter3, align 4
  %c.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumthree.c, i128* %c.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to i128*
  store i128 0, i128* %carry, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sum = bitcast i8* %malloccall4 to i128*
  store i128 0, i128* %sum, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add5 = add i128 %a, %b
  %c = load i128, i128* %c.bind, align 4
  %add6 = add i128 %add5, %c
  %n2b7 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b7, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add6, i1* @constraint.14)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add6, i128* %write_input_outter.num2bits.in, align 4
  %n2b9 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b9, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %n11 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n11
  %n2b12 = load i128, i128* %array_getter, align 4
  %n2b13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b13, i32 0, i32 2
  %read_output_outter.num2bits.out15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %n16 = load i128, i128* %n.bind, align 4
  %add17 = add i128 %n16, 1
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out15, i128 0, i128 %add17
  %n2b19 = load i128, i128* %array_getter18, align 4
  %mul = mul i128 2, %n2b19
  %add20 = add i128 %n2b12, %mul
  %carry21 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry21, i128 %add20, i1* @constraint.15)
  store i128 %add20, i128* %carry, align 4
  %a22 = load i128, i128* %a.bind, align 4
  %b23 = load i128, i128* %b.bind, align 4
  %add24 = add i128 %a22, %b23
  %c25 = load i128, i128* %c.bind, align 4
  %add26 = add i128 %add24, %c25
  %carry27 = load i128, i128* %carry, align 4
  %n28 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n28
  %mul29 = mul i128 %carry27, %lshift
  %sub = sub i128 %add26, %mul29
  %sum30 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum30, i128 %sub, i1* @constraint.16)
  store i128 %sub, i128* %sum, align 4
  br label %exit

exit:                                             ; preds = %entry
  %sum31 = load i128, i128* %sum, align 4
  %write_output_inner.modsumthree.sum = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %sum31, i128* %write_output_inner.modsumthree.sum, align 4
  %carry32 = load i128, i128* %carry, align 4
  %write_output_inner.modsumthree.carry = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %carry32, i128* %write_output_inner.modsumthree.carry, align 4
  ret void
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
  %struct_template_circuit_modsumthree = alloca %struct_template_circuit_modsumthree, align 8
  %write_arg_inner.modsumthree.n = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsumthree.n, align 4
  ret %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree
}

define void @fn_template_init_modsumfour(%struct_template_circuit_modsumfour* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 0
  %read_arg_inner.modsumfour.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modsumfour.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 1
  %read_input_inner.modsumfour.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumfour.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 2
  %read_input_inner.modsumfour.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumfour.b, i128* %b.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 3
  %read_input_inner.modsumfour.c = load i128, i128* %struct_getter3, align 4
  %c.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumfour.c, i128* %c.bind, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 4
  %read_input_inner.modsumfour.d = load i128, i128* %struct_getter4, align 4
  %d.bind = alloca i128, align 8
  store i128 %read_input_inner.modsumfour.d, i128* %d.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to i128*
  store i128 0, i128* %carry, align 4
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sum = bitcast i8* %malloccall5 to i128*
  store i128 0, i128* %sum, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add6 = add i128 %a, %b
  %c = load i128, i128* %c.bind, align 4
  %add7 = add i128 %add6, %c
  %d = load i128, i128* %d.bind, align 4
  %add8 = add i128 %add7, %d
  %n2b9 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b9, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add8, i1* @constraint.17)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add8, i128* %write_input_outter.num2bits.in, align 4
  %n2b11 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b11, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %n13 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n13
  %n2b14 = load i128, i128* %array_getter, align 4
  %n2b15 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b15, i32 0, i32 2
  %read_output_outter.num2bits.out17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %n18 = load i128, i128* %n.bind, align 4
  %add19 = add i128 %n18, 1
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out17, i128 0, i128 %add19
  %n2b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 2, %n2b21
  %add22 = add i128 %n2b14, %mul
  %carry23 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry23, i128 %add22, i1* @constraint.18)
  store i128 %add22, i128* %carry, align 4
  %a24 = load i128, i128* %a.bind, align 4
  %b25 = load i128, i128* %b.bind, align 4
  %add26 = add i128 %a24, %b25
  %c27 = load i128, i128* %c.bind, align 4
  %add28 = add i128 %add26, %c27
  %d29 = load i128, i128* %d.bind, align 4
  %add30 = add i128 %add28, %d29
  %carry31 = load i128, i128* %carry, align 4
  %n32 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n32
  %mul33 = mul i128 %carry31, %lshift
  %sub = sub i128 %add30, %mul33
  %sum34 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum34, i128 %sub, i1* @constraint.19)
  store i128 %sub, i128* %sum, align 4
  br label %exit

exit:                                             ; preds = %entry
  %sum35 = load i128, i128* %sum, align 4
  %write_output_inner.modsumfour.sum = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %sum35, i128* %write_output_inner.modsumfour.sum, align 4
  %carry36 = load i128, i128* %carry, align 4
  %write_output_inner.modsumfour.carry = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %carry36, i128* %write_output_inner.modsumfour.carry, align 4
  ret void
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
  %struct_template_circuit_modsumfour = alloca %struct_template_circuit_modsumfour, align 8
  %write_arg_inner.modsumfour.n = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsumfour.n, align 4
  ret %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour
}

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 0
  %read_input_inner.nand.a = load i128, i128* %struct_getter, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.nand.a, i128* %a.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 1
  %read_input_inner.nand.b = load i128, i128* %struct_getter1, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.nand.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  %sub = sub i128 1, %mul
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %sub, i1* @constraint.20)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out3 = load i128, i128* %out, align 4
  %write_output_inner.nand.out = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %out3, i128* %write_output_inner.nand.out, align 4
  ret void
}

define %struct_template_circuit_nand* @fn_template_build_nand() {
entry:
  %struct_template_circuit_nand = alloca %struct_template_circuit_nand, align 8
  ret %struct_template_circuit_nand* %struct_template_circuit_nand
}

define i128 @min(i128 %0, i128 %1) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %b.bind = alloca i128, align 8
  store i128 %1, i128* %b.bind, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %slt = icmp slt i128 %a, %b
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %a.bind, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %b.bind, align 4
  ret i128 %b2
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %c.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %c.bind, align 8
  %d.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %5, [256 x i128]** %d.bind, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i5
  %b7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %a4, %b7
  %c = load [256 x i128]*, [256 x i128]** %c.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i8
  %c10 = load i128, i128* %array_getter9, align 4
  %add11 = add i128 %add, %c10
  %d = load [256 x i128]*, [256 x i128]** %d.bind, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i12
  %d14 = load i128, i128* %array_getter13, align 4
  %add15 = add i128 %add11, %d14
  %carry16 = load i128, i128* %carry, align 4
  %add17 = add i128 %add15, %carry16
  %n = load i128, i128* %n.bind, align 4
  %n18 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add17, i128 %n, i128 %n18)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 0
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i22 = load i128, i128* %i, align 4
  %sum23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i22
  store i128 %sumAndCarry21, i128* %sum23, align 4
  %sumAndCarry24 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry24, i128 0, i128 1
  %sumAndCarry26 = load i128, i128* %array_getter25, align 4
  store i128 %sumAndCarry26, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i29, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry30 = load i128, i128* %carry, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k32 = load i128, i128* %k.bind, align 4
  %sum33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %k32
  store i128 %carry30, i128* %sum33, align 4
  %sum34 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum34
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %read_input_inner.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.isequal.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %isz5 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz5, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %sub, i1* @constraint.21)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %write_input_outter.iszero.in, align 4
  %isz7 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz7, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter8, align 4
  %out9 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %read_output_outter.iszero.out, i1* @constraint.22)
  store i128 %read_output_outter.iszero.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out10 = load i128, i128* %out, align 4
  %write_output_inner.isequal.out = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 1
  store i128 %out10, i128* %write_output_inner.isequal.out, align 4
  ret void
}

define %struct_template_circuit_isequal* @fn_template_build_isequal() {
entry:
  %struct_template_circuit_isequal = alloca %struct_template_circuit_isequal, align 8
  ret %struct_template_circuit_isequal* %struct_template_circuit_isequal
}

define i128 @nbits(i128 %0) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %n = alloca i128, align 8
  store i128 0, i128* %n, align 4
  %r = alloca i128, align 8
  store i128 0, i128* %r, align 4
  store i128 1, i128* %n, align 4
  store i128 0, i128* %r, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %r1 = load i128, i128* %r, align 4
  %add = add i128 %r1, 1
  store i128 %add, i128* %r, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %n2 = load i128, i128* %n, align 4
  %mul = mul i128 %n2, 2
  store i128 %mul, i128* %n, align 4
  %n3 = load i128, i128* %n, align 4
  %sub = sub i128 %n3, 1
  %a = load i128, i128* %a.bind, align 4
  %slt = icmp slt i128 %sub, %a
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %r4 = load i128, i128* %r, align 4
  ret i128 %r4
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %XI0.bind = alloca i128, align 8
  store i128 %2, i128* %XI0.bind, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %XI0 = load i128, i128* %XI0.bind, align 4
  %mul = mul i128 %a3, %XI0
  %a4 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a4, i128 0, i128 1, i128 %i5
  %a7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %mul, %a7
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0, i128 %i8
  store i128 %sub, i128* %out9, align 4
  %a10 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a10, i128 0, i128 0, i128 %i11
  %a13 = load i128, i128* %array_getter12, align 4
  %a14 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a14, i128 0, i128 1, i128 %i15
  %a17 = load i128, i128* %array_getter16, align 4
  %XI018 = load i128, i128* %XI0.bind, align 4
  %mul19 = mul i128 %a17, %XI018
  %add = add i128 %a13, %mul19
  %ptr_getter20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i21 = load i128, i128* %i, align 4
  %out22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter20, i128 0, i128 1, i128 %i21
  store i128 %add, i128* %out22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i23 = load i128, i128* %i, align 4
  %add24 = add i128 %i23, 1
  store i128 %add24, i128* %i, align 4
  %i25 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i25, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out26 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out26
}

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %in.bind = alloca i128, align 8
  store i128 %0, i128* %in.bind, align 4
  %n.bind = alloca i128, align 8
  store i128 %1, i128* %n.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %3, i128* %k.bind, align 4
  %var_inline_array = alloca [3 x i128], align 8
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %in2 = load i128, i128* %in.bind, align 4
  %n3 = load i128, i128* %n.bind, align 4
  %lshift4 = shl i128 1, %n3
  %sdiv = sdiv i128 %in2, %lshift4
  %m = load i128, i128* %m.bind, align 4
  %lshift5 = shl i128 1, %m
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %in8 = load i128, i128* %in.bind, align 4
  %n9 = load i128, i128* %n.bind, align 4
  %m10 = load i128, i128* %m.bind, align 4
  %add = add i128 %n9, %m10
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %in8, %lshift11
  %k = load i128, i128* %k.bind, align 4
  %lshift13 = shl i128 1, %k
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %b.bind = alloca i128, align 8
  store i128 %1, i128* %b.bind, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %sgt = icmp sgt i128 %a, %b
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %a1 = load i128, i128* %a.bind, align 4
  ret i128 %a1

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %b2 = load i128, i128* %b.bind, align 4
  ret i128 %b2
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128], align 8
  store [256 x i128]* %out1, [256 x i128]** %out, align 8
  %a_idx = alloca i128, align 8
  store i128 0, i128* %a_idx, align 4
  %split = alloca [256 x [256 x i128]]*, align 8
  %split2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split2, [256 x [256 x i128]]** %split, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry3 = alloca [256 x i128], align 8
  store [256 x i128]* %carry3, [256 x i128]** %carry, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val4 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val4, [256 x i128]** %prod_val, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry5 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry5, [256 x i128]** %sumAndCarry, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch58, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i6 = load i128, i128* %i, align 4
  %prod_val7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i6
  store i128 0, i128* %prod_val7, align 4
  %i8 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i8, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body9

if.false:                                         ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %k28 = load i128, i128* %k.bind, align 4
  %sub29 = sub i128 %i27, %k28
  %add30 = add i128 %sub29, 1
  store i128 %add30, i128* %a_idx, align 4
  br label %loop.body31

loop.body9:                                       ; preds = %loop.latch, %if.true
  %prod_val10 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val10, i128 0, i128 %i11
  %prod_val12 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx13 = load i128, i128* %a_idx, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx13
  %a15 = load i128, i128* %array_getter14, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i16 = load i128, i128* %i, align 4
  %a_idx17 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i16, %a_idx17
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b19 = load i128, i128* %array_getter18, align 4
  %mul = mul i128 %a15, %b19
  %add = add i128 %prod_val12, %mul
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i21 = load i128, i128* %i, align 4
  %prod_val22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i21
  store i128 %add, i128* %prod_val22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body9
  %a_idx23 = load i128, i128* %a_idx, align 4
  %add24 = add i128 %a_idx23, 1
  store i128 %add24, i128* %a_idx, align 4
  %a_idx25 = load i128, i128* %a_idx, align 4
  %i26 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx25, %i26
  br i1 %sle, label %loop.body9, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body31:                                      ; preds = %loop.latch51, %if.false
  %prod_val32 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i33 = load i128, i128* %i, align 4
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val32, i128 0, i128 %i33
  %prod_val35 = load i128, i128* %array_getter34, align 4
  %a36 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx37 = load i128, i128* %a_idx, align 4
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %a36, i128 0, i128 %a_idx37
  %a39 = load i128, i128* %array_getter38, align 4
  %b40 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i41 = load i128, i128* %i, align 4
  %a_idx42 = load i128, i128* %a_idx, align 4
  %sub43 = sub i128 %i41, %a_idx42
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %b40, i128 0, i128 %sub43
  %b45 = load i128, i128* %array_getter44, align 4
  %mul46 = mul i128 %a39, %b45
  %add47 = add i128 %prod_val35, %mul46
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i49 = load i128, i128* %i, align 4
  %prod_val50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 %i49
  store i128 %add47, i128* %prod_val50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body31
  %a_idx52 = load i128, i128* %a_idx, align 4
  %add53 = add i128 %a_idx52, 1
  store i128 %add53, i128* %a_idx, align 4
  %a_idx54 = load i128, i128* %a_idx, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %slt56 = icmp slt i128 %a_idx54, %k55
  br i1 %slt56, label %loop.body31, label %loop.exit57

loop.exit57:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit57, %loop.exit
  br label %loop.latch58

loop.latch58:                                     ; preds = %if.exit
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %mul63 = mul i128 2, %k62
  %sub64 = sub i128 %mul63, 1
  %slt65 = icmp slt i128 %i61, %sub64
  br i1 %slt65, label %loop.body, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch58
  %uniform_array67 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array67, [256 x i128]** %out, align 8
  %uniform_array68 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array68, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch79, %loop.exit66
  %prod_val70 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val70, i128 0, i128 %i71
  %prod_val73 = load i128, i128* %array_getter72, align 4
  %n = load i128, i128* %n.bind, align 4
  %n74 = load i128, i128* %n.bind, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val73, i128 %n, i128 %n74, i128 %n75)
  %ptr_getter76 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i77 = load i128, i128* %i, align 4
  %split78 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter76, i128 0, i128 %i77
  %4 = bitcast [256 x i128]* %split78 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body69
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  store i128 %add81, i128* %i, align 4
  %i82 = load i128, i128* %i, align 4
  %k83 = load i128, i128* %k.bind, align 4
  %mul84 = mul i128 2, %k83
  %sub85 = sub i128 %mul84, 1
  %slt86 = icmp slt i128 %i82, %sub85
  br i1 %slt86, label %loop.body69, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch79
  %uniform_array88 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array88, [256 x i128]** %carry, align 8
  %ptr_getter89 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter89, i128 0, i128 0
  store i128 0, i128* %carry90, align 4
  %split91 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split91, i128 0, i128 0, i128 0
  %split93 = load i128, i128* %array_getter92, align 4
  %ptr_getter94 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out95 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter94, i128 0, i128 0
  store i128 %split93, i128* %out95, align 4
  %k98 = load i128, i128* %k.bind, align 4
  %mul99 = mul i128 2, %k98
  %sub100 = sub i128 %mul99, 1
  %sgt = icmp sgt i128 %sub100, 1
  br i1 %sgt, label %if.true96, label %if.false97

if.true96:                                        ; preds = %loop.exit87
  %split101 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split101, i128 0, i128 0, i128 1
  %split103 = load i128, i128* %array_getter102, align 4
  %split104 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter105 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split104, i128 0, i128 1, i128 0
  %split106 = load i128, i128* %array_getter105, align 4
  %add107 = add i128 %split103, %split106
  %n108 = load i128, i128* %n.bind, align 4
  %n109 = load i128, i128* %n.bind, align 4
  %call110 = call [2 x i128]* @SplitFn(i128 %add107, i128 %n108, i128 %n109)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry111 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry111, i128 0, i128 0
  %sumAndCarry113 = load i128, i128* %array_getter112, align 4
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out115 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 1
  store i128 %sumAndCarry113, i128* %out115, align 4
  %sumAndCarry116 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry116, i128 0, i128 1
  %sumAndCarry118 = load i128, i128* %array_getter117, align 4
  %ptr_getter119 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter119, i128 0, i128 1
  store i128 %sumAndCarry118, i128* %carry120, align 4
  br label %if.exit121

if.false97:                                       ; preds = %loop.exit87
  br label %if.exit121

if.exit121:                                       ; preds = %if.false97, %if.true96
  %k124 = load i128, i128* %k.bind, align 4
  %mul125 = mul i128 2, %k124
  %sub126 = sub i128 %mul125, 1
  %sgt127 = icmp sgt i128 %sub126, 2
  br i1 %sgt127, label %if.true122, label %if.false123

if.true122:                                       ; preds = %if.exit121
  store i128 2, i128* %i, align 4
  br label %loop.body128

if.false123:                                      ; preds = %if.exit121
  br label %if.exit201

loop.body128:                                     ; preds = %loop.latch167, %if.true122
  %split129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i130 = load i128, i128* %i, align 4
  %array_getter131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split129, i128 0, i128 %i130, i128 0
  %split132 = load i128, i128* %array_getter131, align 4
  %split133 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i134 = load i128, i128* %i, align 4
  %sub135 = sub i128 %i134, 1
  %array_getter136 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split133, i128 0, i128 %sub135, i128 1
  %split137 = load i128, i128* %array_getter136, align 4
  %add138 = add i128 %split132, %split137
  %split139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i140 = load i128, i128* %i, align 4
  %sub141 = sub i128 %i140, 2
  %array_getter142 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split139, i128 0, i128 %sub141, i128 2
  %split143 = load i128, i128* %array_getter142, align 4
  %add144 = add i128 %add138, %split143
  %carry145 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i146 = load i128, i128* %i, align 4
  %sub147 = sub i128 %i146, 1
  %array_getter148 = getelementptr inbounds [256 x i128], [256 x i128]* %carry145, i128 0, i128 %sub147
  %carry149 = load i128, i128* %array_getter148, align 4
  %add150 = add i128 %add144, %carry149
  %n151 = load i128, i128* %n.bind, align 4
  %n152 = load i128, i128* %n.bind, align 4
  %call153 = call [2 x i128]* @SplitFn(i128 %add150, i128 %n151, i128 %n152)
  %memcpy_ptr154 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr154 to i8*
  %9 = bitcast [2 x i128]* %call153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry155 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry155, i128 0, i128 0
  %sumAndCarry157 = load i128, i128* %array_getter156, align 4
  %ptr_getter158 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i159 = load i128, i128* %i, align 4
  %out160 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter158, i128 0, i128 %i159
  store i128 %sumAndCarry157, i128* %out160, align 4
  %sumAndCarry161 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry161, i128 0, i128 1
  %sumAndCarry163 = load i128, i128* %array_getter162, align 4
  %ptr_getter164 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i165 = load i128, i128* %i, align 4
  %carry166 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter164, i128 0, i128 %i165
  store i128 %sumAndCarry163, i128* %carry166, align 4
  br label %loop.latch167

loop.latch167:                                    ; preds = %loop.body128
  %i168 = load i128, i128* %i, align 4
  %add169 = add i128 %i168, 1
  store i128 %add169, i128* %i, align 4
  %i170 = load i128, i128* %i, align 4
  %k171 = load i128, i128* %k.bind, align 4
  %mul172 = mul i128 2, %k171
  %sub173 = sub i128 %mul172, 1
  %slt174 = icmp slt i128 %i170, %sub173
  br i1 %slt174, label %loop.body128, label %loop.exit175

loop.exit175:                                     ; preds = %loop.latch167
  %split176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k177 = load i128, i128* %k.bind, align 4
  %mul178 = mul i128 2, %k177
  %sub179 = sub i128 %mul178, 2
  %array_getter180 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split176, i128 0, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %split182 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k183 = load i128, i128* %k.bind, align 4
  %mul184 = mul i128 2, %k183
  %sub185 = sub i128 %mul184, 3
  %array_getter186 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split182, i128 0, i128 %sub185, i128 2
  %split187 = load i128, i128* %array_getter186, align 4
  %add188 = add i128 %split181, %split187
  %carry189 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k190 = load i128, i128* %k.bind, align 4
  %mul191 = mul i128 2, %k190
  %sub192 = sub i128 %mul191, 2
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %carry189, i128 0, i128 %sub192
  %carry194 = load i128, i128* %array_getter193, align 4
  %add195 = add i128 %add188, %carry194
  %ptr_getter196 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k197 = load i128, i128* %k.bind, align 4
  %mul198 = mul i128 2, %k197
  %sub199 = sub i128 %mul198, 1
  %out200 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter196, i128 0, i128 %sub199
  store i128 %add195, i128* %out200, align 4
  br label %if.exit201

if.exit201:                                       ; preds = %if.false123, %loop.exit175
  %out202 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out202
}

define void @fn_template_init_nor(%struct_template_circuit_nor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 0
  %read_input_inner.nor.a = load i128, i128* %struct_getter, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.nor.a, i128* %a.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 1
  %read_input_inner.nor.b = load i128, i128* %struct_getter1, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.nor.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  %add = add i128 %mul, 1
  %a2 = load i128, i128* %a.bind, align 4
  %sub = sub i128 %add, %a2
  %b3 = load i128, i128* %b.bind, align 4
  %sub4 = sub i128 %sub, %b3
  %out5 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %sub4, i1* @constraint.23)
  store i128 %sub4, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out6 = load i128, i128* %out, align 4
  %write_output_inner.nor.out = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %out6, i128* %write_output_inner.nor.out, align 4
  ret void
}

define %struct_template_circuit_nor* @fn_template_build_nor() {
entry:
  %struct_template_circuit_nor = alloca %struct_template_circuit_nor, align 8
  ret %struct_template_circuit_nor* %struct_template_circuit_nor
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i3
  %a4 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i5
  %b7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %a4, %b7
  %carry8 = load i128, i128* %carry, align 4
  %add9 = add i128 %add, %carry8
  %n = load i128, i128* %n.bind, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add9, i128 %n, i128 %n10)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry11 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry11, i128 0, i128 0
  %sumAndCarry13 = load i128, i128* %array_getter12, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i14 = load i128, i128* %i, align 4
  %sum15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 %sumAndCarry13, i128* %sum15, align 4
  %sumAndCarry16 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry16, i128 0, i128 1
  %sumAndCarry18 = load i128, i128* %array_getter17, align 4
  store i128 %sumAndCarry18, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i21, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry22 = load i128, i128* %carry, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k24 = load i128, i128* %k.bind, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 %k24
  store i128 %carry22, i128* %sum25, align 4
  %sum26 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum26
}

define void @fn_template_init_bigmultshortlongunequal(%struct_template_circuit_bigmultshortlongunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 0
  %read_arg_inner.bigmultshortlongunequal.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlongunequal.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 1
  %read_arg_inner.bigmultshortlongunequal.ka = load i128, i128* %struct_getter1, align 4
  %ka.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlongunequal.ka, i128* %ka.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 2
  %read_arg_inner.bigmultshortlongunequal.kb = load i128, i128* %struct_getter2, align 4
  %kb.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlongunequal.kb, i128* %kb.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 3
  %read_arg_inner.bigmultshortlongunequal.m_out = load i128, i128* %struct_getter3, align 4
  %m_out.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultshortlongunequal.m_out, i128* %m_out.bind, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 4
  %read_input_inner.bigmultshortlongunequal.a = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultshortlongunequal.a, [256 x i128]** %a.bind, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 5
  %read_input_inner.bigmultshortlongunequal.b = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultshortlongunequal.b, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %k2 = alloca i128, align 8
  store i128 0, i128* %k2, align 4
  %pow = alloca [256 x [256 x i128]]*, align 8
  %pow6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %pow6, [256 x [256 x i128]]** %pow, align 8
  %b_poly = alloca [256 x i128]*, align 8
  %b_poly7 = alloca [256 x i128], align 8
  store [256 x i128]* %b_poly7, [256 x i128]** %b_poly, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %prod_val8 = alloca [256 x i128], align 8
  store [256 x i128]* %prod_val8, [256 x i128]** %prod_val, align 8
  %out_poly = alloca [256 x i128]*, align 8
  %out_poly9 = alloca [256 x i128], align 8
  store [256 x i128]* %out_poly9, [256 x i128]** %out_poly, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out11 = bitcast i8* %malloccall10 to [256 x i128]*
  store [256 x i128]* %out11, [256 x i128]** %out, align 8
  %a_poly = alloca [256 x i128]*, align 8
  %a_poly12 = alloca [256 x i128], align 8
  store [256 x i128]* %a_poly12, [256 x i128]** %a_poly, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i13 = load i128, i128* %i, align 4
  %prod_val14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 0, i128* %prod_val14, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i15 = load i128, i128* %i, align 4
  %add = add i128 %i15, 1
  store i128 %add, i128* %i, align 4
  %i16 = load i128, i128* %i, align 4
  %ka = load i128, i128* %ka.bind, align 4
  %kb = load i128, i128* %kb.bind, align 4
  %add17 = add i128 %ka, %kb
  %sub = sub i128 %add17, 1
  %slt = icmp slt i128 %i16, %sub
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch44, %loop.exit
  store i128 0, i128* %j, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch37, %loop.body18
  %prod_val20 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i21 = load i128, i128* %i, align 4
  %j22 = load i128, i128* %j, align 4
  %add23 = add i128 %i21, %j22
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val20, i128 0, i128 %add23
  %prod_val24 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i25
  %a27 = load i128, i128* %array_getter26, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %j28 = load i128, i128* %j, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %j28
  %b30 = load i128, i128* %array_getter29, align 4
  %mul = mul i128 %a27, %b30
  %add31 = add i128 %prod_val24, %mul
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i33 = load i128, i128* %i, align 4
  %j34 = load i128, i128* %j, align 4
  %add35 = add i128 %i33, %j34
  %prod_val36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %add35
  store i128 %add31, i128* %prod_val36, align 4
  br label %loop.latch37

loop.latch37:                                     ; preds = %loop.body19
  %j38 = load i128, i128* %j, align 4
  %add39 = add i128 %j38, 1
  store i128 %add39, i128* %j, align 4
  %j40 = load i128, i128* %j, align 4
  %kb41 = load i128, i128* %kb.bind, align 4
  %slt42 = icmp slt i128 %j40, %kb41
  br i1 %slt42, label %loop.body19, label %loop.exit43

loop.exit43:                                      ; preds = %loop.latch37
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.exit43
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %ka48 = load i128, i128* %ka.bind, align 4
  %slt49 = icmp slt i128 %i47, %ka48
  br i1 %slt49, label %loop.body18, label %loop.exit50

loop.exit50:                                      ; preds = %loop.latch44
  store i128 0, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch59, %loop.exit50
  %prod_val52 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val52, i128 0, i128 %i53
  %prod_val55 = load i128, i128* %array_getter54, align 4
  %ptr_getter56 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i57 = load i128, i128* %i, align 4
  %out58 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter56, i128 0, i128 %i57
  store i128 %prod_val55, i128* %out58, align 4
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body51
  %i60 = load i128, i128* %i, align 4
  %add61 = add i128 %i60, 1
  store i128 %add61, i128* %i, align 4
  %i62 = load i128, i128* %i, align 4
  %ka63 = load i128, i128* %ka.bind, align 4
  %kb64 = load i128, i128* %kb.bind, align 4
  %add65 = add i128 %ka63, %kb64
  %sub66 = sub i128 %add65, 1
  %slt67 = icmp slt i128 %i62, %sub66
  br i1 %slt67, label %loop.body51, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch59
  %ka69 = load i128, i128* %ka.bind, align 4
  %kb70 = load i128, i128* %kb.bind, align 4
  %add71 = add i128 %ka69, %kb70
  %sub72 = sub i128 %add71, 1
  store i128 %sub72, i128* %k2, align 4
  %uniform_array73 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array73, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body74

loop.body74:                                      ; preds = %loop.latch90, %loop.exit68
  store i128 0, i128* %j, align 4
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch83, %loop.body74
  %i76 = load i128, i128* %i, align 4
  %j77 = load i128, i128* %j, align 4
  %pow78 = call i128 @fn_intrinsic_inline_powi(i128 %i76, i128 %j77)
  %ptr_getter79 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i80 = load i128, i128* %i, align 4
  %j81 = load i128, i128* %j, align 4
  %pow82 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter79, i128 0, i128 %i80, i128 %j81
  store i128 %pow78, i128* %pow82, align 4
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.body75
  %j84 = load i128, i128* %j, align 4
  %add85 = add i128 %j84, 1
  store i128 %add85, i128* %j, align 4
  %j86 = load i128, i128* %j, align 4
  %k287 = load i128, i128* %k2, align 4
  %slt88 = icmp slt i128 %j86, %k287
  br i1 %slt88, label %loop.body75, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  br label %loop.latch90

loop.latch90:                                     ; preds = %loop.exit89
  %i91 = load i128, i128* %i, align 4
  %add92 = add i128 %i91, 1
  store i128 %add92, i128* %i, align 4
  %i93 = load i128, i128* %i, align 4
  %k294 = load i128, i128* %k2, align 4
  %slt95 = icmp slt i128 %i93, %k294
  br i1 %slt95, label %loop.body74, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch90
  %uniform_array97 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array97, [256 x i128]** %a_poly, align 8
  %uniform_array98 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array98, [256 x i128]** %b_poly, align 8
  %uniform_array99 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array99, [256 x i128]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body100

loop.body100:                                     ; preds = %loop.latch191, %loop.exit96
  %ptr_getter101 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i102 = load i128, i128* %i, align 4
  %out_poly103 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter101, i128 0, i128 %i102
  store i128 0, i128* %out_poly103, align 4
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i105 = load i128, i128* %i, align 4
  %a_poly106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i105
  store i128 0, i128* %a_poly106, align 4
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i108 = load i128, i128* %i, align 4
  %b_poly109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %i108
  store i128 0, i128* %b_poly109, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body110

loop.body110:                                     ; preds = %loop.latch129, %loop.body100
  %out_poly111 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i112 = load i128, i128* %i, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly111, i128 0, i128 %i112
  %out_poly114 = load i128, i128* %array_getter113, align 4
  %out115 = load [256 x i128]*, [256 x i128]** %out, align 8
  %j116 = load i128, i128* %j, align 4
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %out115, i128 0, i128 %j116
  %out118 = load i128, i128* %array_getter117, align 4
  %pow119 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i120 = load i128, i128* %i, align 4
  %j121 = load i128, i128* %j, align 4
  %array_getter122 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow119, i128 0, i128 %i120, i128 %j121
  %pow123 = load i128, i128* %array_getter122, align 4
  %mul124 = mul i128 %out118, %pow123
  %add125 = add i128 %out_poly114, %mul124
  %ptr_getter126 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i127 = load i128, i128* %i, align 4
  %out_poly128 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter126, i128 0, i128 %i127
  store i128 %add125, i128* %out_poly128, align 4
  br label %loop.latch129

loop.latch129:                                    ; preds = %loop.body110
  %j130 = load i128, i128* %j, align 4
  %add131 = add i128 %j130, 1
  store i128 %add131, i128* %j, align 4
  %j132 = load i128, i128* %j, align 4
  %ka133 = load i128, i128* %ka.bind, align 4
  %kb134 = load i128, i128* %kb.bind, align 4
  %add135 = add i128 %ka133, %kb134
  %sub136 = sub i128 %add135, 1
  %slt137 = icmp slt i128 %j132, %sub136
  br i1 %slt137, label %loop.body110, label %loop.exit138

loop.exit138:                                     ; preds = %loop.latch129
  store i128 0, i128* %j, align 4
  br label %loop.body139

loop.body139:                                     ; preds = %loop.latch158, %loop.exit138
  %a_poly140 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i141 = load i128, i128* %i, align 4
  %array_getter142 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly140, i128 0, i128 %i141
  %a_poly143 = load i128, i128* %array_getter142, align 4
  %a144 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %j145 = load i128, i128* %j, align 4
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %a144, i128 0, i128 %j145
  %a147 = load i128, i128* %array_getter146, align 4
  %pow148 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i149 = load i128, i128* %i, align 4
  %j150 = load i128, i128* %j, align 4
  %array_getter151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow148, i128 0, i128 %i149, i128 %j150
  %pow152 = load i128, i128* %array_getter151, align 4
  %mul153 = mul i128 %a147, %pow152
  %add154 = add i128 %a_poly143, %mul153
  %ptr_getter155 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i156 = load i128, i128* %i, align 4
  %a_poly157 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter155, i128 0, i128 %i156
  store i128 %add154, i128* %a_poly157, align 4
  br label %loop.latch158

loop.latch158:                                    ; preds = %loop.body139
  %j159 = load i128, i128* %j, align 4
  %add160 = add i128 %j159, 1
  store i128 %add160, i128* %j, align 4
  %j161 = load i128, i128* %j, align 4
  %ka162 = load i128, i128* %ka.bind, align 4
  %slt163 = icmp slt i128 %j161, %ka162
  br i1 %slt163, label %loop.body139, label %loop.exit164

loop.exit164:                                     ; preds = %loop.latch158
  store i128 0, i128* %j, align 4
  br label %loop.body165

loop.body165:                                     ; preds = %loop.latch184, %loop.exit164
  %b_poly166 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i167 = load i128, i128* %i, align 4
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly166, i128 0, i128 %i167
  %b_poly169 = load i128, i128* %array_getter168, align 4
  %b170 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %j171 = load i128, i128* %j, align 4
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %b170, i128 0, i128 %j171
  %b173 = load i128, i128* %array_getter172, align 4
  %pow174 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i175 = load i128, i128* %i, align 4
  %j176 = load i128, i128* %j, align 4
  %array_getter177 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow174, i128 0, i128 %i175, i128 %j176
  %pow178 = load i128, i128* %array_getter177, align 4
  %mul179 = mul i128 %b173, %pow178
  %add180 = add i128 %b_poly169, %mul179
  %ptr_getter181 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i182 = load i128, i128* %i, align 4
  %b_poly183 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter181, i128 0, i128 %i182
  store i128 %add180, i128* %b_poly183, align 4
  br label %loop.latch184

loop.latch184:                                    ; preds = %loop.body165
  %j185 = load i128, i128* %j, align 4
  %add186 = add i128 %j185, 1
  store i128 %add186, i128* %j, align 4
  %j187 = load i128, i128* %j, align 4
  %kb188 = load i128, i128* %kb.bind, align 4
  %slt189 = icmp slt i128 %j187, %kb188
  br i1 %slt189, label %loop.body165, label %loop.exit190

loop.exit190:                                     ; preds = %loop.latch184
  br label %loop.latch191

loop.latch191:                                    ; preds = %loop.exit190
  %i192 = load i128, i128* %i, align 4
  %add193 = add i128 %i192, 1
  store i128 %add193, i128* %i, align 4
  %i194 = load i128, i128* %i, align 4
  %ka195 = load i128, i128* %ka.bind, align 4
  %kb196 = load i128, i128* %kb.bind, align 4
  %add197 = add i128 %ka195, %kb196
  %sub198 = sub i128 %add197, 1
  %slt199 = icmp slt i128 %i194, %sub198
  br i1 %slt199, label %loop.body100, label %loop.exit200

loop.exit200:                                     ; preds = %loop.latch191
  store i128 0, i128* %i, align 4
  br label %loop.body201

loop.body201:                                     ; preds = %loop.latch215, %loop.exit200
  %out_poly202 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i203 = load i128, i128* %i, align 4
  %array_getter204 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly202, i128 0, i128 %i203
  %out_poly205 = load i128, i128* %array_getter204, align 4
  %a_poly206 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i207 = load i128, i128* %i, align 4
  %array_getter208 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly206, i128 0, i128 %i207
  %a_poly209 = load i128, i128* %array_getter208, align 4
  %b_poly210 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i211 = load i128, i128* %i, align 4
  %array_getter212 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly210, i128 0, i128 %i211
  %b_poly213 = load i128, i128* %array_getter212, align 4
  %mul214 = mul i128 %a_poly209, %b_poly213
  call void @fn_intrinsic_add_constraint(i128 %out_poly205, i128 %mul214, i1* @constraint.24)
  br label %loop.latch215

loop.latch215:                                    ; preds = %loop.body201
  %i216 = load i128, i128* %i, align 4
  %add217 = add i128 %i216, 1
  store i128 %add217, i128* %i, align 4
  %i218 = load i128, i128* %i, align 4
  %ka219 = load i128, i128* %ka.bind, align 4
  %kb220 = load i128, i128* %kb.bind, align 4
  %add221 = add i128 %ka219, %kb220
  %sub222 = sub i128 %add221, 1
  %slt223 = icmp slt i128 %i218, %sub222
  br i1 %slt223, label %loop.body201, label %loop.exit224

loop.exit224:                                     ; preds = %loop.latch215
  br label %exit

exit:                                             ; preds = %loop.exit224
  %out225 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmultshortlongunequal.out = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 6
  store [256 x i128]* %out225, [256 x i128]** %write_output_inner.bigmultshortlongunequal.out, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %struct_template_circuit_bigmultshortlongunequal = alloca %struct_template_circuit_bigmultshortlongunequal, align 8
  %write_arg_inner.bigmultshortlongunequal.n = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultshortlongunequal.n, align 4
  %write_arg_inner.bigmultshortlongunequal.ka = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultshortlongunequal.ka, align 4
  %write_arg_inner.bigmultshortlongunequal.kb = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmultshortlongunequal.kb, align 4
  %write_arg_inner.bigmultshortlongunequal.m_out = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 3
  store i128 %3, i128* %write_arg_inner.bigmultshortlongunequal.m_out, align 4
  ret %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %read_arg_inner.num2bitsneg.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.num2bitsneg.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %read_input_inner.num2bitsneg.in = load i128, i128* %struct_getter1, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.num2bitsneg.in, i128* %in.bind, align 4
  %neg = alloca i128, align 8
  store i128 0, i128* %neg, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out3 = bitcast i8* %malloccall2 to [256 x i128]*
  store [256 x i128]* %out3, [256 x i128]** %out, align 8
  %lc1 = alloca i128, align 8
  store i128 0, i128* %lc1, align 4
  %isZero = alloca %struct_template_circuit_iszero*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %lc1, align 4
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZero, align 8
  %n = load i128, i128* %n.bind, align 4
  %eq = icmp eq i128 %n, 0
  %n4 = load i128, i128* %n.bind, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n4)
  %in = load i128, i128* %in.bind, align 4
  %sub = sub i128 %pow, %in
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 0, i128 %sub)
  store i128 %inline_switch, i128* %neg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %neg5 = load i128, i128* %neg, align 4
  %i6 = load i128, i128* %i, align 4
  %rshift = lshr i128 %neg5, %i6
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i7 = load i128, i128* %i, align 4
  %out8 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i7
  store i128 %and, i128* %out8, align 4
  %out9 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out9, i128 0, i128 %i10
  %out11 = load i128, i128* %array_getter, align 4
  %out12 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %out12, i128 0, i128 %i13
  %out15 = load i128, i128* %array_getter14, align 4
  %sub16 = sub i128 %out15, 1
  %mul = mul i128 %out11, %sub16
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.25)
  %lc117 = load i128, i128* %lc1, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 %i19
  %out21 = load i128, i128* %array_getter20, align 4
  %i22 = load i128, i128* %i, align 4
  %pow23 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %i22)
  %mul24 = mul i128 %out21, %pow23
  %add = add i128 %lc117, %mul24
  store i128 %add, i128* %lc1, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i25 = load i128, i128* %i, align 4
  %add26 = add i128 %i25, 1
  store i128 %add26, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %n28 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i27, %n28
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in29 = load i128, i128* %in.bind, align 4
  %isZero30 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero30, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %in29, i1* @constraint.26)
  %ptr_getter32 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter32, i32 0, i32 0
  store i128 %in29, i128* %write_input_outter.iszero.in, align 4
  %lc133 = load i128, i128* %lc1, align 4
  %isZero34 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero34, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter35, align 4
  %n36 = load i128, i128* %n.bind, align 4
  %pow37 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n36)
  %mul38 = mul i128 %read_output_outter.iszero.out, %pow37
  %add39 = add i128 %lc133, %mul38
  %n40 = load i128, i128* %n.bind, align 4
  %pow41 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n40)
  %in42 = load i128, i128* %in.bind, align 4
  %sub43 = sub i128 %pow41, %in42
  call void @fn_intrinsic_add_constraint(i128 %add39, i128 %sub43, i1* @constraint.27)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out44 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.num2bitsneg.out = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [256 x i128]* %out44, [256 x i128]** %write_output_inner.num2bitsneg.out, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %write_arg_inner.num2bitsneg.n = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.num2bitsneg.n, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %read_input_inner.and.a = load i128, i128* %struct_getter, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.and.a, i128* %a.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 1
  %read_input_inner.and.b = load i128, i128* %struct_getter1, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.and.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %mul, i1* @constraint.28)
  store i128 %mul, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out3 = load i128, i128* %out, align 4
  %write_output_inner.and.out = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %out3, i128* %write_output_inner.and.out, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and() {
entry:
  %struct_template_circuit_and = alloca %struct_template_circuit_and, align 8
  ret %struct_template_circuit_and* %struct_template_circuit_and
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %read_arg_inner.lessthan.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.lessthan.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %read_input_inner.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.lessthan.in, [256 x i128]** %in.bind, align 8
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %n3 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n3
  %add4 = add i128 %in2, %lshift
  %in5 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %in5, i128 0, i128 1
  %in7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %add4, %in7
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %sub, i1* @constraint.29)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %sub, i128* %write_input_outter.num2bits.in, align 4
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %n12 = load i128, i128* %n.bind, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n12
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  %out16 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out16, i128 %sub15, i1* @constraint.30)
  store i128 %sub15, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out17 = load i128, i128* %out, align 4
  %write_output_inner.lessthan.out = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 2
  store i128 %out17, i128* %write_output_inner.lessthan.out, align 4
  ret void
}

define %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %0) {
entry:
  %struct_template_circuit_lessthan = alloca %struct_template_circuit_lessthan, align 8
  %write_arg_inner.lessthan.n = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %struct_template_circuit_lessthan, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.lessthan.n, align 4
  ret %struct_template_circuit_lessthan* %struct_template_circuit_lessthan
}

define i128 @log_ceil(i128 %0) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %n_temp = alloca i128, align 8
  store i128 0, i128* %n_temp, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  store i128 %n, i128* %n_temp, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n_temp1 = load i128, i128* %n_temp, align 4
  %eq = icmp eq i128 %n_temp1, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %i2 = load i128, i128* %i, align 4
  ret i128 %i2

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %n_temp3 = load i128, i128* %n_temp, align 4
  %sdiv = sdiv i128 %n_temp3, 2
  store i128 %sdiv, i128* %n_temp, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i4 = load i128, i128* %i, align 4
  %add = add i128 %i4, 1
  store i128 %add, i128* %i, align 4
  %i5 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i5, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define void @fn_template_init_bigiszero(%struct_template_circuit_bigiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 0
  %read_arg_inner.bigiszero.k = load i128, i128* %struct_getter, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigiszero.k, i128* %k.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 1
  %read_input_inner.bigiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigiszero.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %isZeros = alloca [256 x %struct_template_circuit_iszero*]*, align 8
  %isZeros2 = alloca [256 x %struct_template_circuit_iszero*], align 8
  store [256 x %struct_template_circuit_iszero*]* %isZeros2, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %total = alloca i128, align 8
  store i128 0, i128* %total, align 4
  %checkZero = alloca %struct_template_circuit_iszero*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  store i128 %k, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %ptr_getter = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i3 = load i128, i128* %i, align 4
  %isZeros4 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter, i128 0, i128 %i3
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZeros4, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i5
  %in6 = load i128, i128* %array_getter, align 4
  %isZeros7 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros7, i128 0, i128 %i8
  %isZeros10 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter9, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros10, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %in6, i1* @constraint.31)
  %ptr_getter12 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter12, i128 0, i128 %i13
  %isZeros15 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter14, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros15, i32 0, i32 0
  store i128 %in6, i128* %write_input_outter.iszero.in, align 4
  %total16 = load i128, i128* %total, align 4
  %isZeros17 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros17, i128 0, i128 %i18
  %isZeros20 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter19, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros20, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter21, align 4
  %sub = sub i128 %total16, %read_output_outter.iszero.out
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %add = add i128 %i22, 1
  store i128 %add, i128* %i, align 4
  %i23 = load i128, i128* %i, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i23, %k24
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call25 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call25, %struct_template_circuit_iszero** %checkZero, align 8
  %total26 = load i128, i128* %total, align 4
  %checkZero27 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero27, i32 0, i32 0
  %read_input_outter.iszero.in29 = load i128, i128* %struct_getter28, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in29, i128 %total26, i1* @constraint.32)
  %ptr_getter30 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %write_input_outter.iszero.in31 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter30, i32 0, i32 0
  store i128 %total26, i128* %write_input_outter.iszero.in31, align 4
  %checkZero32 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero32, i32 0, i32 1
  %read_output_outter.iszero.out34 = load i128, i128* %struct_getter33, align 4
  %out35 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out35, i128 %read_output_outter.iszero.out34, i1* @constraint.33)
  store i128 %read_output_outter.iszero.out34, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out36 = load i128, i128* %out, align 4
  %write_output_inner.bigiszero.out = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %out36, i128* %write_output_inner.bigiszero.out, align 4
  ret void
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
  %struct_template_circuit_bigiszero = alloca %struct_template_circuit_bigiszero, align 8
  %write_arg_inner.bigiszero.k = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigiszero.k, align 4
  ret %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero
}

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %read_arg_inner.greaterthan.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.greaterthan.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %read_input_inner.greaterthan.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.greaterthan.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.34)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %in12, i1* @constraint.35)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %read_input_outter.lessthan.in20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.36)
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out25 = load i128, i128* %out, align 4
  %write_output_inner.greaterthan.out = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 2
  store i128 %out25, i128* %write_output_inner.greaterthan.out, align 4
  ret void
}

define %struct_template_circuit_greaterthan* @fn_template_build_greaterthan(i128 %0) {
entry:
  %struct_template_circuit_greaterthan = alloca %struct_template_circuit_greaterthan, align 8
  %write_arg_inner.greaterthan.n = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.greaterthan.n, align 4
  ret %struct_template_circuit_greaterthan* %struct_template_circuit_greaterthan
}

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %read_arg_inner.bits2num.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bits2num.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %read_input_inner.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bits2num.in, [256 x i128]** %in.bind, align 8
  %lc1 = alloca i128, align 8
  store i128 0, i128* %lc1, align 4
  %e2 = alloca i128, align 8
  store i128 0, i128* %e2, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc12 = load i128, i128* %lc1, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i3
  %in4 = load i128, i128* %array_getter, align 4
  %e25 = load i128, i128* %e2, align 4
  %mul = mul i128 %in4, %e25
  %add = add i128 %lc12, %mul
  store i128 %add, i128* %lc1, align 4
  %e26 = load i128, i128* %e2, align 4
  %e27 = load i128, i128* %e2, align 4
  %add8 = add i128 %e26, %e27
  store i128 %add8, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i9 = load i128, i128* %i, align 4
  %add10 = add i128 %i9, 1
  store i128 %add10, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i11, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc112 = load i128, i128* %lc1, align 4
  %out13 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out13, i128 %lc112, i1* @constraint.37)
  store i128 %lc112, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out14 = load i128, i128* %out, align 4
  %write_output_inner.bits2num.out = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %out14, i128* %write_output_inner.bits2num.out, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %write_arg_inner.bits2num.n = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bits2num.n, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
}

define void @fn_template_init_split(%struct_template_circuit_split* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 0
  %read_arg_inner.split.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.split.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 1
  %read_arg_inner.split.m = load i128, i128* %struct_getter1, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.split.m, i128* %m.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 2
  %read_input_inner.split.in = load i128, i128* %struct_getter2, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.split.in, i128* %in.bind, align 4
  %n2b_small = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %big = bitcast i8* %malloccall to i128*
  store i128 0, i128* %big, align 4
  %n2b_big = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %small = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %small, align 4
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  store i128 %mod, i128* %small, align 4
  %in4 = load i128, i128* %in.bind, align 4
  %n5 = load i128, i128* %n.bind, align 4
  %lshift6 = shl i128 1, %n5
  %sdiv = sdiv i128 %in4, %lshift6
  store i128 %sdiv, i128* %big, align 4
  %n7 = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n7)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b_small, align 8
  %small8 = load i128, i128* %small, align 4
  %n2b_small9 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small9, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %small8, i1* @constraint.38)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %small8, i128* %write_input_outter.num2bits.in, align 4
  %m = load i128, i128* %m.bind, align 4
  %call11 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m)
  store %struct_template_circuit_num2bits* %call11, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big12 = load i128, i128* %big, align 4
  %n2b_big13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big13, i32 0, i32 1
  %read_input_outter.num2bits.in15 = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in15, i128 %big12, i1* @constraint.39)
  %ptr_getter16 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %write_input_outter.num2bits.in17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter16, i32 0, i32 1
  store i128 %big12, i128* %write_input_outter.num2bits.in17, align 4
  %in18 = load i128, i128* %in.bind, align 4
  %small19 = load i128, i128* %small, align 4
  %big20 = load i128, i128* %big, align 4
  %n21 = load i128, i128* %n.bind, align 4
  %lshift22 = shl i128 1, %n21
  %mul = mul i128 %big20, %lshift22
  %add = add i128 %small19, %mul
  call void @fn_intrinsic_add_constraint(i128 %in18, i128 %add, i1* @constraint.40)
  br label %exit

exit:                                             ; preds = %entry
  %small23 = load i128, i128* %small, align 4
  %write_output_inner.split.small = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %small23, i128* %write_output_inner.split.small, align 4
  %big24 = load i128, i128* %big, align 4
  %write_output_inner.split.big = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %big24, i128* %write_output_inner.split.big, align 4
  ret void
}

define %struct_template_circuit_split* @fn_template_build_split(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_split = alloca %struct_template_circuit_split, align 8
  %write_arg_inner.split.n = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.split.n, align 4
  %write_arg_inner.split.m = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.split.m, align 4
  ret %struct_template_circuit_split* %struct_template_circuit_split
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %read_arg_inner.binsum.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.binsum.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %read_arg_inner.binsum.ops = load i128, i128* %struct_getter1, align 4
  %ops.bind = alloca i128, align 8
  store i128 %read_arg_inner.binsum.ops, i128* %ops.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %read_input_inner.binsum.in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter2, align 8
  %in.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.binsum.in, [256 x [256 x i128]]** %in.bind, align 8
  %k = alloca i128, align 8
  store i128 0, i128* %k, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %nout = alloca i128, align 8
  store i128 0, i128* %nout, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out4 = bitcast i8* %malloccall3 to [256 x i128]*
  store [256 x i128]* %out4, [256 x i128]** %out, align 8
  %e2 = alloca i128, align 8
  store i128 0, i128* %e2, align 4
  %lout = alloca i128, align 8
  store i128 0, i128* %lout, align 4
  %lin = alloca i128, align 8
  store i128 0, i128* %lin, align 4
  %n = load i128, i128* %n.bind, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n)
  %sub = sub i128 %pow, 1
  %ops = load i128, i128* %ops.bind, align 4
  %mul = mul i128 %sub, %ops
  %call = call i128 @nbits(i128 %mul)
  store i128 %call, i128* %nout, align 4
  store i128 0, i128* %lin, align 4
  store i128 0, i128* %lout, align 4
  store i128 0, i128* %k, align 4
  store i128 0, i128* %j, align 4
  store i128 0, i128* %e2, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch19, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body5

loop.body5:                                       ; preds = %loop.latch, %loop.body
  %lin6 = load i128, i128* %lin, align 4
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %j7 = load i128, i128* %j, align 4
  %k8 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %j7, i128 %k8
  %in9 = load i128, i128* %array_getter, align 4
  %e210 = load i128, i128* %e2, align 4
  %mul11 = mul i128 %in9, %e210
  %add = add i128 %lin6, %mul11
  store i128 %add, i128* %lin, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body5
  %j12 = load i128, i128* %j, align 4
  %add13 = add i128 %j12, 1
  store i128 %add13, i128* %j, align 4
  %j14 = load i128, i128* %j, align 4
  %ops15 = load i128, i128* %ops.bind, align 4
  %slt = icmp slt i128 %j14, %ops15
  br i1 %slt, label %loop.body5, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %e216 = load i128, i128* %e2, align 4
  %e217 = load i128, i128* %e2, align 4
  %add18 = add i128 %e216, %e217
  store i128 %add18, i128* %e2, align 4
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.exit
  %k20 = load i128, i128* %k, align 4
  %add21 = add i128 %k20, 1
  store i128 %add21, i128* %k, align 4
  %k22 = load i128, i128* %k, align 4
  %n23 = load i128, i128* %n.bind, align 4
  %slt24 = icmp slt i128 %k22, %n23
  br i1 %slt24, label %loop.body, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch19
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch52, %loop.exit25
  %lin27 = load i128, i128* %lin, align 4
  %k28 = load i128, i128* %k, align 4
  %rshift = lshr i128 %lin27, %k28
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %k29 = load i128, i128* %k, align 4
  %out30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %k29
  store i128 %and, i128* %out30, align 4
  %out31 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k32 = load i128, i128* %k, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %out31, i128 0, i128 %k32
  %out34 = load i128, i128* %array_getter33, align 4
  %out35 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k36 = load i128, i128* %k, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %out35, i128 0, i128 %k36
  %out38 = load i128, i128* %array_getter37, align 4
  %sub39 = sub i128 %out38, 1
  %mul40 = mul i128 %out34, %sub39
  call void @fn_intrinsic_add_constraint(i128 %mul40, i128 0, i1* @constraint.41)
  %lout41 = load i128, i128* %lout, align 4
  %out42 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k43 = load i128, i128* %k, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %out42, i128 0, i128 %k43
  %out45 = load i128, i128* %array_getter44, align 4
  %e246 = load i128, i128* %e2, align 4
  %mul47 = mul i128 %out45, %e246
  %add48 = add i128 %lout41, %mul47
  store i128 %add48, i128* %lout, align 4
  %e249 = load i128, i128* %e2, align 4
  %e250 = load i128, i128* %e2, align 4
  %add51 = add i128 %e249, %e250
  store i128 %add51, i128* %e2, align 4
  br label %loop.latch52

loop.latch52:                                     ; preds = %loop.body26
  %k53 = load i128, i128* %k, align 4
  %add54 = add i128 %k53, 1
  store i128 %add54, i128* %k, align 4
  %k55 = load i128, i128* %k, align 4
  %nout56 = load i128, i128* %nout, align 4
  %slt57 = icmp slt i128 %k55, %nout56
  br i1 %slt57, label %loop.body26, label %loop.exit58

loop.exit58:                                      ; preds = %loop.latch52
  %lin59 = load i128, i128* %lin, align 4
  %lout60 = load i128, i128* %lout, align 4
  call void @fn_intrinsic_add_constraint(i128 %lin59, i128 %lout60, i1* @constraint.42)
  br label %exit

exit:                                             ; preds = %loop.exit58
  %out61 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.binsum.out = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [256 x i128]* %out61, [256 x i128]** %write_output_inner.binsum.out, align 8
  ret void
}

define %struct_template_circuit_binsum* @fn_template_build_binsum(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_binsum = alloca %struct_template_circuit_binsum, align 8
  %write_arg_inner.binsum.n = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.binsum.n, align 4
  %write_arg_inner.binsum.ops = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %struct_template_circuit_binsum, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.binsum.ops, align 4
  ret %struct_template_circuit_binsum* %struct_template_circuit_binsum
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %read_arg_inner.compconstant.ct = load i128, i128* %struct_getter, align 4
  %ct.bind = alloca i128, align 8
  store i128 %read_arg_inner.compconstant.ct, i128* %ct.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %read_input_inner.compconstant.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.compconstant.in, [256 x i128]** %in.bind, align 8
  %smsb = alloca i128, align 8
  store i128 0, i128* %smsb, align 4
  %a = alloca i128, align 8
  store i128 0, i128* %a, align 4
  %e = alloca i128, align 8
  store i128 0, i128* %e, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %cmsb = alloca i128, align 8
  store i128 0, i128* %cmsb, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %clsb = alloca i128, align 8
  store i128 0, i128* %clsb, align 4
  %sum = alloca i128, align 8
  store i128 0, i128* %sum, align 4
  %slsb = alloca i128, align 8
  store i128 0, i128* %slsb, align 4
  %b = alloca i128, align 8
  store i128 0, i128* %b, align 4
  %num2bits = alloca %struct_template_circuit_num2bits*, align 8
  %sout = alloca i128, align 8
  store i128 0, i128* %sout, align 4
  %parts = alloca [256 x i128]*, align 8
  %parts2 = alloca [256 x i128], align 8
  store [256 x i128]* %parts2, [256 x i128]** %parts, align 8
  store i128 0, i128* %clsb, align 4
  store i128 0, i128* %cmsb, align 4
  store i128 0, i128* %slsb, align 4
  store i128 0, i128* %smsb, align 4
  store i128 0, i128* %sum, align 4
  store i128 poison, i128* %b, align 4
  store i128 1, i128* %a, align 4
  store i128 1, i128* %e, align 4
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ct = load i128, i128* %ct.bind, align 4
  %i3 = load i128, i128* %i, align 4
  %mul = mul i128 %i3, 2
  %rshift = lshr i128 %ct, %mul
  %and = and i128 %rshift, 1
  store i128 %and, i128* %clsb, align 4
  %ct4 = load i128, i128* %ct.bind, align 4
  %i5 = load i128, i128* %i, align 4
  %mul6 = mul i128 %i5, 2
  %add = add i128 %mul6, 1
  %rshift7 = lshr i128 %ct4, %add
  %and8 = and i128 %rshift7, 1
  store i128 %and8, i128* %cmsb, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %mul10 = mul i128 %i9, 2
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %mul10
  %in11 = load i128, i128* %array_getter, align 4
  store i128 %in11, i128* %slsb, align 4
  %in12 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %mul14 = mul i128 %i13, 2
  %add15 = add i128 %mul14, 1
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %in12, i128 0, i128 %add15
  %in17 = load i128, i128* %array_getter16, align 4
  store i128 %in17, i128* %smsb, align 4
  %cmsb18 = load i128, i128* %cmsb, align 4
  %eq = icmp eq i128 %cmsb18, 0
  %clsb19 = load i128, i128* %clsb, align 4
  %eq20 = icmp eq i128 %clsb19, 0
  %and21 = and i1 %eq, %eq20
  br i1 %and21, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %b22 = load i128, i128* %b, align 4
  %neg = sub i128 0, %b22
  %smsb23 = load i128, i128* %smsb, align 4
  %mul24 = mul i128 %neg, %smsb23
  %slsb25 = load i128, i128* %slsb, align 4
  %mul26 = mul i128 %mul24, %slsb25
  %b27 = load i128, i128* %b, align 4
  %smsb28 = load i128, i128* %smsb, align 4
  %mul29 = mul i128 %b27, %smsb28
  %add30 = add i128 %mul26, %mul29
  %b31 = load i128, i128* %b, align 4
  %slsb32 = load i128, i128* %slsb, align 4
  %mul33 = mul i128 %b31, %slsb32
  %add34 = add i128 %add30, %mul33
  %parts35 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %parts35, i128 0, i128 %i36
  %parts38 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts38, i128 %add34, i1* @constraint.43)
  %ptr_getter = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i39 = load i128, i128* %i, align 4
  %parts40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i39
  store i128 %add34, i128* %parts40, align 4
  br label %if.exit114

if.false:                                         ; preds = %loop.body
  %cmsb43 = load i128, i128* %cmsb, align 4
  %eq44 = icmp eq i128 %cmsb43, 0
  %clsb45 = load i128, i128* %clsb, align 4
  %eq46 = icmp eq i128 %clsb45, 1
  %and47 = and i1 %eq44, %eq46
  br i1 %and47, label %if.true41, label %if.false42

if.true41:                                        ; preds = %if.false
  %a48 = load i128, i128* %a, align 4
  %smsb49 = load i128, i128* %smsb, align 4
  %mul50 = mul i128 %a48, %smsb49
  %slsb51 = load i128, i128* %slsb, align 4
  %mul52 = mul i128 %mul50, %slsb51
  %a53 = load i128, i128* %a, align 4
  %slsb54 = load i128, i128* %slsb, align 4
  %mul55 = mul i128 %a53, %slsb54
  %sub = sub i128 %mul52, %mul55
  %b56 = load i128, i128* %b, align 4
  %smsb57 = load i128, i128* %smsb, align 4
  %mul58 = mul i128 %b56, %smsb57
  %add59 = add i128 %sub, %mul58
  %a60 = load i128, i128* %a, align 4
  %smsb61 = load i128, i128* %smsb, align 4
  %mul62 = mul i128 %a60, %smsb61
  %sub63 = sub i128 %add59, %mul62
  %a64 = load i128, i128* %a, align 4
  %add65 = add i128 %sub63, %a64
  %parts66 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i67 = load i128, i128* %i, align 4
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %parts66, i128 0, i128 %i67
  %parts69 = load i128, i128* %array_getter68, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts69, i128 %add65, i1* @constraint.44)
  %ptr_getter70 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i71 = load i128, i128* %i, align 4
  %parts72 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter70, i128 0, i128 %i71
  store i128 %add65, i128* %parts72, align 4
  br label %if.exit113

if.false42:                                       ; preds = %if.false
  %cmsb75 = load i128, i128* %cmsb, align 4
  %eq76 = icmp eq i128 %cmsb75, 1
  %clsb77 = load i128, i128* %clsb, align 4
  %eq78 = icmp eq i128 %clsb77, 0
  %and79 = and i1 %eq76, %eq78
  br i1 %and79, label %if.true73, label %if.false74

if.true73:                                        ; preds = %if.false42
  %b80 = load i128, i128* %b, align 4
  %smsb81 = load i128, i128* %smsb, align 4
  %mul82 = mul i128 %b80, %smsb81
  %slsb83 = load i128, i128* %slsb, align 4
  %mul84 = mul i128 %mul82, %slsb83
  %a85 = load i128, i128* %a, align 4
  %smsb86 = load i128, i128* %smsb, align 4
  %mul87 = mul i128 %a85, %smsb86
  %sub88 = sub i128 %mul84, %mul87
  %a89 = load i128, i128* %a, align 4
  %add90 = add i128 %sub88, %a89
  %parts91 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %parts91, i128 0, i128 %i92
  %parts94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts94, i128 %add90, i1* @constraint.45)
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i96 = load i128, i128* %i, align 4
  %parts97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %i96
  store i128 %add90, i128* %parts97, align 4
  br label %if.exit

if.false74:                                       ; preds = %if.false42
  %a98 = load i128, i128* %a, align 4
  %neg99 = sub i128 0, %a98
  %smsb100 = load i128, i128* %smsb, align 4
  %mul101 = mul i128 %neg99, %smsb100
  %slsb102 = load i128, i128* %slsb, align 4
  %mul103 = mul i128 %mul101, %slsb102
  %a104 = load i128, i128* %a, align 4
  %add105 = add i128 %mul103, %a104
  %parts106 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i107 = load i128, i128* %i, align 4
  %array_getter108 = getelementptr inbounds [256 x i128], [256 x i128]* %parts106, i128 0, i128 %i107
  %parts109 = load i128, i128* %array_getter108, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts109, i128 %add105, i1* @constraint.46)
  %ptr_getter110 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i111 = load i128, i128* %i, align 4
  %parts112 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter110, i128 0, i128 %i111
  store i128 %add105, i128* %parts112, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false74, %if.true73
  br label %if.exit113

if.exit113:                                       ; preds = %if.exit, %if.true41
  br label %if.exit114

if.exit114:                                       ; preds = %if.exit113, %if.true
  %sum115 = load i128, i128* %sum, align 4
  %parts116 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [256 x i128], [256 x i128]* %parts116, i128 0, i128 %i117
  %parts119 = load i128, i128* %array_getter118, align 4
  %add120 = add i128 %sum115, %parts119
  store i128 %add120, i128* %sum, align 4
  %b121 = load i128, i128* %b, align 4
  %e122 = load i128, i128* %e, align 4
  %sub123 = sub i128 %b121, %e122
  store i128 %sub123, i128* %b, align 4
  %a124 = load i128, i128* %a, align 4
  %e125 = load i128, i128* %e, align 4
  %add126 = add i128 %a124, %e125
  store i128 %add126, i128* %a, align 4
  %e127 = load i128, i128* %e, align 4
  %mul128 = mul i128 %e127, 2
  store i128 %mul128, i128* %e, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit114
  %i129 = load i128, i128* %i, align 4
  %add130 = add i128 %i129, 1
  store i128 %add130, i128* %i, align 4
  %i131 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i131, 127
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum132 = load i128, i128* %sum, align 4
  %sout133 = load i128, i128* %sout, align 4
  call void @fn_intrinsic_add_constraint(i128 %sout133, i128 %sum132, i1* @constraint.47)
  store i128 %sum132, i128* %sout, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %num2bits, align 8
  %sout134 = load i128, i128* %sout, align 4
  %num2bits135 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits135, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter136, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %sout134, i1* @constraint.48)
  %ptr_getter137 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter137, i32 0, i32 1
  store i128 %sout134, i128* %write_input_outter.num2bits.in, align 4
  %num2bits138 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits138, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %array_getter140 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 127
  %num2bits141 = load i128, i128* %array_getter140, align 4
  %out142 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out142, i128 %num2bits141, i1* @constraint.49)
  store i128 %num2bits141, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out143 = load i128, i128* %out, align 4
  %write_output_inner.compconstant.out = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store i128 %out143, i128* %write_output_inner.compconstant.out, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %write_arg_inner.compconstant.ct = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.compconstant.ct, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
}

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %sgn0 = alloca i128, align 8
  store i128 0, i128* %sgn0, align 4
  %sgn1 = alloca i128, align 8
  store i128 0, i128* %sgn1, align 4
  %z = alloca i128, align 8
  store i128 0, i128* %z, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  store i128 %mod, i128* %sgn0, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a2, i128 0, i128 1, i128 0
  %a4 = load i128, i128* %array_getter3, align 4
  %mod5 = srem i128 %a4, 2
  store i128 %mod5, i128* %sgn1, align 4
  %k = load i128, i128* %k.bind, align 4
  %a6 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a6, i128 0, i128 0
  %a8 = load [256 x i128], [256 x i128]* %array_getter7, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %k, [256 x i128]* %spice_inline_array)
  store i128 %call, i128* %z, align 4
  %sgn09 = load i128, i128* %sgn0, align 4
  %z10 = load i128, i128* %z, align 4
  %sgn111 = load i128, i128* %sgn1, align 4
  %and = and i128 %z10, %sgn111
  %or = or i128 %sgn09, %and
  ret i128 %or
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %read_arg_inner.lesseqthan.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.lesseqthan.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %read_input_inner.lesseqthan.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.lesseqthan.in, [256 x i128]** %in.bind, align 8
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.50)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.51)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %read_input_outter.lessthan.in20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.52)
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out25 = load i128, i128* %out, align 4
  %write_output_inner.lesseqthan.out = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 2
  store i128 %out25, i128* %write_output_inner.lesseqthan.out, align 4
  ret void
}

define %struct_template_circuit_lesseqthan* @fn_template_build_lesseqthan(i128 %0) {
entry:
  %struct_template_circuit_lesseqthan = alloca %struct_template_circuit_lesseqthan, align 8
  %write_arg_inner.lesseqthan.n = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.lesseqthan.n, align 4
  ret %struct_template_circuit_lesseqthan* %struct_template_circuit_lesseqthan
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %read_input_inner.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.aliascheck.in, [256 x i128]** %in.bind, align 8
  %compConstant = alloca %struct_template_circuit_compconstant*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  store %struct_template_circuit_compconstant* %call, %struct_template_circuit_compconstant** %compConstant, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i1
  %in2 = load i128, i128* %array_getter, align 4
  %compConstant3 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant3, i32 0, i32 1
  %read_input_outter.compconstant.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.compconstant.in, i128 0, i128 %i5
  %compConstant7 = load i128, i128* %array_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant7, i128 %in2, i1* @constraint.53)
  %ptr_getter = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter, i32 0, i32 1
  %read_input_outter.compconstant.in9 = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %i10 = load i128, i128* %i, align 4
  %compConstant11 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.compconstant.in9, i128 0, i128 %i10
  store i128 %in2, i128* %compConstant11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i12 = load i128, i128* %i, align 4
  %add = add i128 %i12, 1
  store i128 %add, i128* %i, align 4
  %i13 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i13, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %compConstant14 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant14, i32 0, i32 2
  %read_output_outter.compconstant.out = load i128, i128* %struct_getter15, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.compconstant.out, i128 0, i1* @constraint.54)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_modprod(%struct_template_circuit_modprod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 0
  %read_arg_inner.modprod.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modprod.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 1
  %read_input_inner.modprod.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modprod.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 2
  %read_input_inner.modprod.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modprod.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to i128*
  store i128 0, i128* %carry, align 4
  %b2n2 = alloca %struct_template_circuit_bits2num*, align 8
  %b2n1 = alloca %struct_template_circuit_bits2num*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %prod = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %prod, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %n = load i128, i128* %n.bind, align 4
  %mul = mul i128 2, %n
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %mul)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul4 = mul i128 %a, %b
  %n2b5 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b5, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %mul4, i1* @constraint.55)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %mul4, i128* %write_input_outter.num2bits.in, align 4
  %n7 = load i128, i128* %n.bind, align 4
  %call8 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n7)
  store %struct_template_circuit_bits2num* %call8, %struct_template_circuit_bits2num** %b2n1, align 8
  %n9 = load i128, i128* %n.bind, align 4
  %call10 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n9)
  store %struct_template_circuit_bits2num* %call10, %struct_template_circuit_bits2num** %b2n2, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b11 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b11, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %i13
  %n2b14 = load i128, i128* %array_getter, align 4
  %b2n115 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n115, i32 0, i32 1
  %read_input_outter.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in, i128 0, i128 %i17
  %b2n119 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n119, i128 %n2b14, i1* @constraint.56)
  %ptr_getter20 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter20, i32 0, i32 1
  %read_input_outter.bits2num.in22 = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %i23 = load i128, i128* %i, align 4
  %b2n124 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in22, i128 0, i128 %i23
  store i128 %n2b14, i128* %b2n124, align 4
  %n2b25 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b25, i32 0, i32 2
  %read_output_outter.num2bits.out27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i28 = load i128, i128* %i, align 4
  %n29 = load i128, i128* %n.bind, align 4
  %add = add i128 %i28, %n29
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out27, i128 0, i128 %add
  %n2b31 = load i128, i128* %array_getter30, align 4
  %b2n232 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n232, i32 0, i32 1
  %read_input_outter.bits2num.in34 = load [256 x i128]*, [256 x i128]** %struct_getter33, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in34, i128 0, i128 %i35
  %b2n237 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n237, i128 %n2b31, i1* @constraint.57)
  %ptr_getter38 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter38, i32 0, i32 1
  %read_input_outter.bits2num.in40 = load [256 x i128]*, [256 x i128]** %struct_getter39, align 8
  %i41 = load i128, i128* %i, align 4
  %b2n242 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in40, i128 0, i128 %i41
  store i128 %n2b31, i128* %b2n242, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i43 = load i128, i128* %i, align 4
  %add44 = add i128 %i43, 1
  store i128 %add44, i128* %i, align 4
  %i45 = load i128, i128* %i, align 4
  %n46 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i45, %n46
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n147 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n147, i32 0, i32 2
  %read_output_outter.bits2num.out = load i128, i128* %struct_getter48, align 4
  %prod49 = load i128, i128* %prod, align 4
  call void @fn_intrinsic_add_constraint(i128 %prod49, i128 %read_output_outter.bits2num.out, i1* @constraint.58)
  store i128 %read_output_outter.bits2num.out, i128* %prod, align 4
  %b2n250 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n250, i32 0, i32 2
  %read_output_outter.bits2num.out52 = load i128, i128* %struct_getter51, align 4
  %carry53 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry53, i128 %read_output_outter.bits2num.out52, i1* @constraint.59)
  store i128 %read_output_outter.bits2num.out52, i128* %carry, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %prod54 = load i128, i128* %prod, align 4
  %write_output_inner.modprod.prod = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %prod54, i128* %write_output_inner.modprod.prod, align 4
  %carry55 = load i128, i128* %carry, align 4
  %write_output_inner.modprod.carry = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %carry55, i128* %write_output_inner.modprod.carry, align 4
  ret void
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
  %struct_template_circuit_modprod = alloca %struct_template_circuit_modprod, align 8
  %write_arg_inner.modprod.n = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %struct_template_circuit_modprod, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modprod.n, align 4
  ret %struct_template_circuit_modprod* %struct_template_circuit_modprod
}

define void @fn_template_init_modsum(%struct_template_circuit_modsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 0
  %read_arg_inner.modsum.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modsum.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 1
  %read_input_inner.modsum.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modsum.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 2
  %read_input_inner.modsum.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modsum.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to i128*
  store i128 0, i128* %carry, align 4
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sum = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %sum, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add4 = add i128 %a, %b
  %n2b5 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b5, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add4, i1* @constraint.60)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add4, i128* %write_input_outter.num2bits.in, align 4
  %n2b7 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b7, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %n9 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n9
  %n2b10 = load i128, i128* %array_getter, align 4
  %carry11 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry11, i128 %n2b10, i1* @constraint.61)
  store i128 %n2b10, i128* %carry, align 4
  %a12 = load i128, i128* %a.bind, align 4
  %b13 = load i128, i128* %b.bind, align 4
  %add14 = add i128 %a12, %b13
  %carry15 = load i128, i128* %carry, align 4
  %n16 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n16
  %mul = mul i128 %carry15, %lshift
  %sub = sub i128 %add14, %mul
  %sum17 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum17, i128 %sub, i1* @constraint.62)
  store i128 %sub, i128* %sum, align 4
  br label %exit

exit:                                             ; preds = %entry
  %sum18 = load i128, i128* %sum, align 4
  %write_output_inner.modsum.sum = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %sum18, i128* %write_output_inner.modsum.sum, align 4
  %carry19 = load i128, i128* %carry, align 4
  %write_output_inner.modsum.carry = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %carry19, i128* %write_output_inner.modsum.carry, align 4
  ret void
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
  %struct_template_circuit_modsum = alloca %struct_template_circuit_modsum, align 8
  %write_arg_inner.modsum.n = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %struct_template_circuit_modsum, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsum.n, align 4
  ret %struct_template_circuit_modsum* %struct_template_circuit_modsum
}

define void @fn_template_init_multiand(%struct_template_circuit_multiand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 0
  %read_arg_inner.multiand.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.multiand.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 1
  %read_input_inner.multiand.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.multiand.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %n2 = alloca i128, align 8
  store i128 0, i128* %n2, align 4
  %n1 = alloca i128, align 8
  store i128 0, i128* %n1, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %and2 = alloca %struct_template_circuit_and*, align 8
  %and1 = alloca %struct_template_circuit_and*, align 8
  %ands = alloca [256 x %struct_template_circuit_multiand*]*, align 8
  %ands2 = alloca [256 x %struct_template_circuit_multiand*], align 8
  store [256 x %struct_template_circuit_multiand*]* %ands2, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %n = load i128, i128* %n.bind, align 4
  %eq = icmp eq i128 %n, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in3 = load i128, i128* %array_getter, align 4
  %out4 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out4, i128 %in3, i1* @constraint.63)
  store i128 %in3, i128* %out, align 4
  br label %if.exit114

if.false:                                         ; preds = %entry
  %n7 = load i128, i128* %n.bind, align 4
  %eq8 = icmp eq i128 %n7, 2
  br i1 %eq8, label %if.true5, label %if.false6

if.true5:                                         ; preds = %if.false
  %call = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call, %struct_template_circuit_and** %and1, align 8
  %in9 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %in9, i128 0, i128 0
  %in11 = load i128, i128* %array_getter10, align 4
  %and112 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and112, i32 0, i32 0
  %read_input_outter.and.a = load i128, i128* %struct_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a, i128 %in11, i1* @constraint.64)
  %ptr_getter = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %write_input_outter.and.a = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter, i32 0, i32 0
  store i128 %in11, i128* %write_input_outter.and.a, align 4
  %in14 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %in14, i128 0, i128 1
  %in16 = load i128, i128* %array_getter15, align 4
  %and117 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and117, i32 0, i32 1
  %read_input_outter.and.b = load i128, i128* %struct_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b, i128 %in16, i1* @constraint.65)
  %ptr_getter19 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %write_input_outter.and.b = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter19, i32 0, i32 1
  store i128 %in16, i128* %write_input_outter.and.b, align 4
  %and120 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and120, i32 0, i32 2
  %read_output_outter.and.out = load i128, i128* %struct_getter21, align 4
  %out22 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out22, i128 %read_output_outter.and.out, i1* @constraint.66)
  store i128 %read_output_outter.and.out, i128* %out, align 4
  br label %if.exit

if.false6:                                        ; preds = %if.false
  %call23 = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call23, %struct_template_circuit_and** %and2, align 8
  %n24 = load i128, i128* %n.bind, align 4
  %sdiv = sdiv i128 %n24, 2
  store i128 %sdiv, i128* %n1, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %n26 = load i128, i128* %n.bind, align 4
  %sdiv27 = sdiv i128 %n26, 2
  %sub = sub i128 %n25, %sdiv27
  store i128 %sub, i128* %n2, align 4
  %n128 = load i128, i128* %n1, align 4
  %call29 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n128)
  %ptr_getter30 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands31 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter30, i128 0, i128 0
  store %struct_template_circuit_multiand* %call29, %struct_template_circuit_multiand** %ands31, align 8
  %n232 = load i128, i128* %n2, align 4
  %call33 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n232)
  %ptr_getter34 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands35 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter34, i128 0, i128 1
  store %struct_template_circuit_multiand* %call33, %struct_template_circuit_multiand** %ands35, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false6
  %in36 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i37 = load i128, i128* %i, align 4
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %in36, i128 0, i128 %i37
  %in39 = load i128, i128* %array_getter38, align 4
  %ands40 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter41 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands40, i128 0, i128 0
  %ands42 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter41, align 8
  %ptr_cast = bitcast %struct_template_circuit_multiand* %ands42 to %struct_template_circuit_multiand*
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast, i32 0, i32 1
  %read_input_outter.multiand.in = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in, i128 0, i128 %i44
  %ands46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands46, i128 %in39, i1* @constraint.67)
  %ptr_getter47 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter47, i128 0, i128 0
  %ands49 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter48, align 8
  %ptr_cast50 = bitcast %struct_template_circuit_multiand* %ands49 to %struct_template_circuit_multiand*
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast50, i32 0, i32 1
  %read_input_outter.multiand.in52 = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %ands54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in52, i128 0, i128 %i53
  store i128 %in39, i128* %ands54, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i55 = load i128, i128* %i, align 4
  %add = add i128 %i55, 1
  store i128 %add, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %n157 = load i128, i128* %n1, align 4
  %slt = icmp slt i128 %i56, %n157
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body58

loop.body58:                                      ; preds = %loop.latch82, %loop.exit
  %in59 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %n160 = load i128, i128* %n1, align 4
  %i61 = load i128, i128* %i, align 4
  %add62 = add i128 %n160, %i61
  %array_getter63 = getelementptr inbounds [256 x i128], [256 x i128]* %in59, i128 0, i128 %add62
  %in64 = load i128, i128* %array_getter63, align 4
  %ands65 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter66 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands65, i128 0, i128 1
  %ands67 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter66, align 8
  %ptr_cast68 = bitcast %struct_template_circuit_multiand* %ands67 to %struct_template_circuit_multiand*
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast68, i32 0, i32 1
  %read_input_outter.multiand.in70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in70, i128 0, i128 %i71
  %ands73 = load i128, i128* %array_getter72, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands73, i128 %in64, i1* @constraint.68)
  %ptr_getter74 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter75 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter74, i128 0, i128 1
  %ands76 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter75, align 8
  %ptr_cast77 = bitcast %struct_template_circuit_multiand* %ands76 to %struct_template_circuit_multiand*
  %struct_getter78 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast77, i32 0, i32 1
  %read_input_outter.multiand.in79 = load [256 x i128]*, [256 x i128]** %struct_getter78, align 8
  %i80 = load i128, i128* %i, align 4
  %ands81 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in79, i128 0, i128 %i80
  store i128 %in64, i128* %ands81, align 4
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.body58
  %i83 = load i128, i128* %i, align 4
  %add84 = add i128 %i83, 1
  store i128 %add84, i128* %i, align 4
  %i85 = load i128, i128* %i, align 4
  %n286 = load i128, i128* %n2, align 4
  %slt87 = icmp slt i128 %i85, %n286
  br i1 %slt87, label %loop.body58, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch82
  %ands89 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter90 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands89, i128 0, i128 0
  %ands91 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter90, align 8
  %ptr_cast92 = bitcast %struct_template_circuit_multiand* %ands91 to %struct_template_circuit_multiand*
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast92, i32 0, i32 2
  %read_output_outter.multiand.out = load i128, i128* %struct_getter93, align 4
  %and294 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and294, i32 0, i32 0
  %read_input_outter.and.a96 = load i128, i128* %struct_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a96, i128 %read_output_outter.multiand.out, i1* @constraint.69)
  %ptr_getter97 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %write_input_outter.and.a98 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter97, i32 0, i32 0
  store i128 %read_output_outter.multiand.out, i128* %write_input_outter.and.a98, align 4
  %ands99 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter100 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands99, i128 0, i128 1
  %ands101 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter100, align 8
  %ptr_cast102 = bitcast %struct_template_circuit_multiand* %ands101 to %struct_template_circuit_multiand*
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast102, i32 0, i32 2
  %read_output_outter.multiand.out104 = load i128, i128* %struct_getter103, align 4
  %and2105 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2105, i32 0, i32 1
  %read_input_outter.and.b107 = load i128, i128* %struct_getter106, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b107, i128 %read_output_outter.multiand.out104, i1* @constraint.70)
  %ptr_getter108 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %write_input_outter.and.b109 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter108, i32 0, i32 1
  store i128 %read_output_outter.multiand.out104, i128* %write_input_outter.and.b109, align 4
  %and2110 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2110, i32 0, i32 2
  %read_output_outter.and.out112 = load i128, i128* %struct_getter111, align 4
  %out113 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out113, i128 %read_output_outter.and.out112, i1* @constraint.71)
  store i128 %read_output_outter.and.out112, i128* %out, align 4
  br label %if.exit

if.exit:                                          ; preds = %loop.exit88, %if.true5
  br label %if.exit114

if.exit114:                                       ; preds = %if.exit, %if.true
  br label %exit

exit:                                             ; preds = %if.exit114
  %out115 = load i128, i128* %out, align 4
  %write_output_inner.multiand.out = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %out115, i128* %write_output_inner.multiand.out, align 4
  ret void
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
  %struct_template_circuit_multiand = alloca %struct_template_circuit_multiand, align 8
  %write_arg_inner.multiand.n = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %struct_template_circuit_multiand, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.multiand.n, align 4
  ret %struct_template_circuit_multiand* %struct_template_circuit_multiand
}

define void @fn_template_init_splitthree(%struct_template_circuit_splitthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 0
  %read_arg_inner.splitthree.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.splitthree.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 1
  %read_arg_inner.splitthree.m = load i128, i128* %struct_getter1, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.splitthree.m, i128* %m.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 2
  %read_arg_inner.splitthree.k = load i128, i128* %struct_getter2, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.splitthree.k, i128* %k.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 3
  %read_input_inner.splitthree.in = load i128, i128* %struct_getter3, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.splitthree.in, i128* %in.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %medium = bitcast i8* %malloccall to i128*
  store i128 0, i128* %medium, align 4
  %n2b_small = alloca %struct_template_circuit_num2bits*, align 8
  %n2b_medium = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %small = bitcast i8* %malloccall4 to i128*
  store i128 0, i128* %small, align 4
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %big = bitcast i8* %malloccall5 to i128*
  store i128 0, i128* %big, align 4
  %n2b_big = alloca %struct_template_circuit_num2bits*, align 8
  %in = load i128, i128* %in.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %in, %lshift
  store i128 %mod, i128* %small, align 4
  %in6 = load i128, i128* %in.bind, align 4
  %n7 = load i128, i128* %n.bind, align 4
  %lshift8 = shl i128 1, %n7
  %sdiv = sdiv i128 %in6, %lshift8
  %m = load i128, i128* %m.bind, align 4
  %lshift9 = shl i128 1, %m
  %mod10 = srem i128 %sdiv, %lshift9
  store i128 %mod10, i128* %medium, align 4
  %in11 = load i128, i128* %in.bind, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %m13 = load i128, i128* %m.bind, align 4
  %add = add i128 %n12, %m13
  %lshift14 = shl i128 1, %add
  %sdiv15 = sdiv i128 %in11, %lshift14
  store i128 %sdiv15, i128* %big, align 4
  %n16 = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n16)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b_small, align 8
  %small17 = load i128, i128* %small, align 4
  %n2b_small18 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small18, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %small17, i1* @constraint.72)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %small17, i128* %write_input_outter.num2bits.in, align 4
  %m20 = load i128, i128* %m.bind, align 4
  %call21 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m20)
  store %struct_template_circuit_num2bits* %call21, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %medium22 = load i128, i128* %medium, align 4
  %n2b_medium23 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_medium23, i32 0, i32 1
  %read_input_outter.num2bits.in25 = load i128, i128* %struct_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in25, i128 %medium22, i1* @constraint.73)
  %ptr_getter26 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %write_input_outter.num2bits.in27 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter26, i32 0, i32 1
  store i128 %medium22, i128* %write_input_outter.num2bits.in27, align 4
  %k = load i128, i128* %k.bind, align 4
  %call28 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %k)
  store %struct_template_circuit_num2bits* %call28, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big29 = load i128, i128* %big, align 4
  %n2b_big30 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big30, i32 0, i32 1
  %read_input_outter.num2bits.in32 = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in32, i128 %big29, i1* @constraint.74)
  %ptr_getter33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %write_input_outter.num2bits.in34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter33, i32 0, i32 1
  store i128 %big29, i128* %write_input_outter.num2bits.in34, align 4
  %in35 = load i128, i128* %in.bind, align 4
  %small36 = load i128, i128* %small, align 4
  %medium37 = load i128, i128* %medium, align 4
  %n38 = load i128, i128* %n.bind, align 4
  %lshift39 = shl i128 1, %n38
  %mul = mul i128 %medium37, %lshift39
  %add40 = add i128 %small36, %mul
  %big41 = load i128, i128* %big, align 4
  %n42 = load i128, i128* %n.bind, align 4
  %m43 = load i128, i128* %m.bind, align 4
  %add44 = add i128 %n42, %m43
  %lshift45 = shl i128 1, %add44
  %mul46 = mul i128 %big41, %lshift45
  %add47 = add i128 %add40, %mul46
  call void @fn_intrinsic_add_constraint(i128 %in35, i128 %add47, i1* @constraint.75)
  br label %exit

exit:                                             ; preds = %entry
  %small48 = load i128, i128* %small, align 4
  %write_output_inner.splitthree.small = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %small48, i128* %write_output_inner.splitthree.small, align 4
  %medium49 = load i128, i128* %medium, align 4
  %write_output_inner.splitthree.medium = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %medium49, i128* %write_output_inner.splitthree.medium, align 4
  %big50 = load i128, i128* %big, align 4
  %write_output_inner.splitthree.big = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %big50, i128* %write_output_inner.splitthree.big, align 4
  ret void
}

define %struct_template_circuit_splitthree* @fn_template_build_splitthree(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_splitthree = alloca %struct_template_circuit_splitthree, align 8
  %write_arg_inner.splitthree.n = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.splitthree.n, align 4
  %write_arg_inner.splitthree.m = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.splitthree.m, align 4
  %write_arg_inner.splitthree.k = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.splitthree.k, align 4
  ret %struct_template_circuit_splitthree* %struct_template_circuit_splitthree
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %read_input_inner.bits2num_strict.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bits2num_strict.in, [256 x i128]** %in.bind, align 8
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %b2n = alloca %struct_template_circuit_bits2num*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call1 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  store %struct_template_circuit_bits2num* %call1, %struct_template_circuit_bits2num** %b2n, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i2
  %in3 = load i128, i128* %array_getter, align 4
  %b2n4 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n4, i32 0, i32 1
  %read_input_outter.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in, i128 0, i128 %i6
  %b2n8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n8, i128 %in3, i1* @constraint.76)
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 1
  %read_input_outter.bits2num.in10 = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %i11 = load i128, i128* %i, align 4
  %b2n12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in10, i128 0, i128 %i11
  store i128 %in3, i128* %b2n12, align 4
  %in13 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %in13, i128 0, i128 %i14
  %in16 = load i128, i128* %array_getter15, align 4
  %aliasCheck17 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck17, i32 0, i32 0
  %read_input_outter.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in, i128 0, i128 %i19
  %aliasCheck21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck21, i128 %in16, i1* @constraint.77)
  %ptr_getter22 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter22, i32 0, i32 0
  %read_input_outter.aliascheck.in24 = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i25 = load i128, i128* %i, align 4
  %aliasCheck26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in24, i128 0, i128 %i25
  store i128 %in16, i128* %aliasCheck26, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i27 = load i128, i128* %i, align 4
  %add = add i128 %i27, 1
  store i128 %add, i128* %i, align 4
  %i28 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i28, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n29 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n29, i32 0, i32 2
  %read_output_outter.bits2num.out = load i128, i128* %struct_getter30, align 4
  %out31 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out31, i128 %read_output_outter.bits2num.out, i1* @constraint.78)
  store i128 %read_output_outter.bits2num.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out32 = load i128, i128* %out, align 4
  %write_output_inner.bits2num_strict.out = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %out32, i128* %write_output_inner.bits2num_strict.out, align 4
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
  %read_input_inner.forceequalifenabled.enabled = load i128, i128* %struct_getter, align 4
  %enabled.bind = alloca i128, align 8
  store i128 %read_input_inner.forceequalifenabled.enabled, i128* %enabled.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %read_input_inner.forceequalifenabled.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.forceequalifenabled.in, [256 x i128]** %in.bind, align 8
  %isz = alloca %struct_template_circuit_iszero*, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %in3, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %isz6 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz6, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %sub, i1* @constraint.79)
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %write_input_outter.iszero.in, align 4
  %isz8 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz8, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %read_output_outter.iszero.out
  %enabled = load i128, i128* %enabled.bind, align 4
  %mul = mul i128 %sub10, %enabled
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.80)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define void @fn_template_init_checkcarrymodp(%struct_template_circuit_checkcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 0
  %read_arg_inner.checkcarrymodp.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrymodp.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 1
  %read_arg_inner.checkcarrymodp.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrymodp.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 2
  %read_arg_inner.checkcarrymodp.m = load i128, i128* %struct_getter2, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrymodp.m, i128* %m.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 3
  %read_arg_inner.checkcarrymodp.overflow = load i128, i128* %struct_getter3, align 4
  %overflow.bind = alloca i128, align 8
  store i128 %read_arg_inner.checkcarrymodp.overflow, i128* %overflow.bind, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 4
  %read_arg_inner.checkcarrymodp.p = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.checkcarrymodp.p, [256 x i128]** %p.bind, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 5
  %read_input_inner.checkcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.checkcarrymodp.in, [256 x i128]** %in.bind, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 6
  %read_input_inner.checkcarrymodp.x = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %X.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.checkcarrymodp.x, [256 x i128]** %X.bind, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 7
  %read_input_inner.checkcarrymodp.y = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %Y.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.checkcarrymodp.y, [256 x i128]** %Y.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %pX = alloca %struct_template_circuit_bigmultshortlongunequal*, align 8
  %carry_check = alloca %struct_template_circuit_checkcarrytozero*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %overflow = load i128, i128* %overflow.bind, align 4
  %call = call %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %n, i128 %k, i128 %m, i128 %overflow)
  store %struct_template_circuit_bigmultshortlongunequal* %call, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i8
  %p9 = load i128, i128* %array_getter, align 4
  %pX10 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX10, i32 0, i32 4
  %read_input_outter.bigmultshortlongunequal.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.a, i128 0, i128 %i12
  %pX14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX14, i128 %p9, i1* @constraint.81)
  %ptr_getter = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %ptr_getter, i32 0, i32 4
  %read_input_outter.bigmultshortlongunequal.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %pX18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.a16, i128 0, i128 %i17
  store i128 %p9, i128* %pX18, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add = add i128 %i19, 1
  store i128 %add, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %k21 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i20, %k21
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body22

loop.body22:                                      ; preds = %loop.latch36, %loop.exit
  %X = load [256 x i128]*, [256 x i128]** %X.bind, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i23
  %X25 = load i128, i128* %array_getter24, align 4
  %pX26 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX26, i32 0, i32 5
  %read_input_outter.bigmultshortlongunequal.b = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.b, i128 0, i128 %i28
  %pX30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX30, i128 %X25, i1* @constraint.82)
  %ptr_getter31 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %ptr_getter31, i32 0, i32 5
  %read_input_outter.bigmultshortlongunequal.b33 = load [256 x i128]*, [256 x i128]** %struct_getter32, align 8
  %i34 = load i128, i128* %i, align 4
  %pX35 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.b33, i128 0, i128 %i34
  store i128 %X25, i128* %pX35, align 4
  br label %loop.latch36

loop.latch36:                                     ; preds = %loop.body22
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %m40 = load i128, i128* %m.bind, align 4
  %slt41 = icmp slt i128 %i39, %m40
  br i1 %slt41, label %loop.body22, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch36
  %n43 = load i128, i128* %n.bind, align 4
  %overflow44 = load i128, i128* %overflow.bind, align 4
  %add45 = add i128 %overflow44, 1
  %k46 = load i128, i128* %k.bind, align 4
  %m47 = load i128, i128* %m.bind, align 4
  %add48 = add i128 %k46, %m47
  %sub = sub i128 %add48, 1
  %call49 = call %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %n43, i128 %add45, i128 %sub)
  store %struct_template_circuit_checkcarrytozero* %call49, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch74, %loop.exit42
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i51
  %in53 = load i128, i128* %array_getter52, align 4
  %pX54 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX54, i32 0, i32 6
  %read_output_outter.bigmultshortlongunequal.out = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlongunequal.out, i128 0, i128 %i56
  %pX58 = load i128, i128* %array_getter57, align 4
  %sub59 = sub i128 %in53, %pX58
  %Y = load [256 x i128]*, [256 x i128]** %Y.bind, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %Y, i128 0, i128 %i60
  %Y62 = load i128, i128* %array_getter61, align 4
  %sub63 = sub i128 %sub59, %Y62
  %carry_check64 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %carry_check64, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in, i128 0, i128 %i66
  %carry_check68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check68, i128 %sub63, i1* @constraint.83)
  %ptr_getter69 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %ptr_getter69, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in71 = load [256 x i128]*, [256 x i128]** %struct_getter70, align 8
  %i72 = load i128, i128* %i, align 4
  %carry_check73 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in71, i128 0, i128 %i72
  store i128 %sub63, i128* %carry_check73, align 4
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body50
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %slt79 = icmp slt i128 %i77, %k78
  br i1 %slt79, label %loop.body50, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch74
  %k81 = load i128, i128* %k.bind, align 4
  store i128 %k81, i128* %i, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch100, %loop.exit80
  %pX83 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX83, i32 0, i32 6
  %read_output_outter.bigmultshortlongunequal.out85 = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %i86 = load i128, i128* %i, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlongunequal.out85, i128 0, i128 %i86
  %pX88 = load i128, i128* %array_getter87, align 4
  %neg = sub i128 0, %pX88
  %carry_check89 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %carry_check89, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in91 = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in91, i128 0, i128 %i92
  %carry_check94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check94, i128 %neg, i1* @constraint.84)
  %ptr_getter95 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %ptr_getter95, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in97 = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %i98 = load i128, i128* %i, align 4
  %carry_check99 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in97, i128 0, i128 %i98
  store i128 %neg, i128* %carry_check99, align 4
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body82
  %i101 = load i128, i128* %i, align 4
  %add102 = add i128 %i101, 1
  store i128 %add102, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %m105 = load i128, i128* %m.bind, align 4
  %add106 = add i128 %k104, %m105
  %sub107 = sub i128 %add106, 1
  %slt108 = icmp slt i128 %i103, %sub107
  br i1 %slt108, label %loop.body82, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch100
  br label %exit

exit:                                             ; preds = %loop.exit109
  ret void
}

define %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
  %struct_template_circuit_checkcarrymodp = alloca %struct_template_circuit_checkcarrymodp, align 8
  %write_arg_inner.checkcarrymodp.n = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.checkcarrymodp.n, align 4
  %write_arg_inner.checkcarrymodp.k = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.checkcarrymodp.k, align 4
  %write_arg_inner.checkcarrymodp.m = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.checkcarrymodp.m, align 4
  %write_arg_inner.checkcarrymodp.overflow = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 3
  store i128 %3, i128* %write_arg_inner.checkcarrymodp.overflow, align 4
  %write_arg_inner.checkcarrymodp.p = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 4
  store [256 x i128]* %4, [256 x i128]** %write_arg_inner.checkcarrymodp.p, align 8
  ret %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %l.bind = alloca i128, align 8
  store i128 %2, i128* %l.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %4, [256 x [256 x i128]]** %b.bind, align 8
  %carry = alloca [256 x [256 x i128]]*, align 8
  %carry1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %carry1, [256 x [256 x i128]]** %carry, align 8
  %i1 = alloca i128, align 8
  store i128 0, i128* %i1, align 4
  %j1 = alloca i128, align 8
  store i128 0, i128* %j1, align 4
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %prod_val2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %prod_val2, [256 x [256 x i128]]** %prod_val, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out3, [256 x [256 x i128]]** %out, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sumAndCarry4, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %split5 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %split5, [256 x [256 x [256 x i128]]]** %split, align 8
  %j2 = alloca i128, align 8
  store i128 0, i128* %j2, align 4
  %i2 = alloca i128, align 8
  store i128 0, i128* %i2, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch12, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j7 = load i128, i128* %j, align 4
  %i8 = load i128, i128* %i, align 4
  %prod_val9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j7, i128 %i8
  store i128 0, i128* %prod_val9, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %j10 = load i128, i128* %j, align 4
  %add = add i128 %j10, 1
  store i128 %add, i128* %j, align 4
  %j11 = load i128, i128* %j, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j11, %sub
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch12

loop.latch12:                                     ; preds = %loop.exit
  %i13 = load i128, i128* %i, align 4
  %add14 = add i128 %i13, 1
  store i128 %add14, i128* %i, align 4
  %i15 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul16 = mul i128 2, %k
  %sub17 = sub i128 %mul16, 1
  %slt18 = icmp slt i128 %i15, %sub17
  br i1 %slt18, label %loop.body, label %loop.exit19

loop.exit19:                                      ; preds = %loop.latch12
  store i128 0, i128* %i1, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch71, %loop.exit19
  store i128 0, i128* %i2, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch64, %loop.body20
  store i128 0, i128* %j1, align 4
  br label %loop.body22

loop.body22:                                      ; preds = %loop.latch57, %loop.body21
  store i128 0, i128* %j2, align 4
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch50, %loop.body22
  %prod_val24 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j125 = load i128, i128* %j1, align 4
  %j226 = load i128, i128* %j2, align 4
  %add27 = add i128 %j125, %j226
  %i128 = load i128, i128* %i1, align 4
  %i229 = load i128, i128* %i2, align 4
  %add30 = add i128 %i128, %i229
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val24, i128 0, i128 %add27, i128 %add30
  %prod_val31 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %j132 = load i128, i128* %j1, align 4
  %i133 = load i128, i128* %i1, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j132, i128 %i133
  %a35 = load i128, i128* %array_getter34, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j236 = load i128, i128* %j2, align 4
  %i237 = load i128, i128* %i2, align 4
  %array_getter38 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j236, i128 %i237
  %b39 = load i128, i128* %array_getter38, align 4
  %mul40 = mul i128 %a35, %b39
  %add41 = add i128 %prod_val31, %mul40
  %ptr_getter42 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j143 = load i128, i128* %j1, align 4
  %j244 = load i128, i128* %j2, align 4
  %add45 = add i128 %j143, %j244
  %i146 = load i128, i128* %i1, align 4
  %i247 = load i128, i128* %i2, align 4
  %add48 = add i128 %i146, %i247
  %prod_val49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter42, i128 0, i128 %add45, i128 %add48
  store i128 %add41, i128* %prod_val49, align 4
  br label %loop.latch50

loop.latch50:                                     ; preds = %loop.body23
  %j251 = load i128, i128* %j2, align 4
  %add52 = add i128 %j251, 1
  store i128 %add52, i128* %j2, align 4
  %j253 = load i128, i128* %j2, align 4
  %l54 = load i128, i128* %l.bind, align 4
  %slt55 = icmp slt i128 %j253, %l54
  br i1 %slt55, label %loop.body23, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch50
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.exit56
  %j158 = load i128, i128* %j1, align 4
  %add59 = add i128 %j158, 1
  store i128 %add59, i128* %j1, align 4
  %j160 = load i128, i128* %j1, align 4
  %l61 = load i128, i128* %l.bind, align 4
  %slt62 = icmp slt i128 %j160, %l61
  br i1 %slt62, label %loop.body22, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %i265 = load i128, i128* %i2, align 4
  %add66 = add i128 %i265, 1
  store i128 %add66, i128* %i2, align 4
  %i267 = load i128, i128* %i2, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %slt69 = icmp slt i128 %i267, %k68
  br i1 %slt69, label %loop.body21, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %i172 = load i128, i128* %i1, align 4
  %add73 = add i128 %i172, 1
  store i128 %add73, i128* %i1, align 4
  %i174 = load i128, i128* %i1, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %slt76 = icmp slt i128 %i174, %k75
  br i1 %slt76, label %loop.body20, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  %uniform_array78 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array78, [256 x [256 x i128]]** %out, align 8
  %uniform_array79 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array79, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch102, %loop.exit77
  store i128 0, i128* %i, align 4
  br label %loop.body81

loop.body81:                                      ; preds = %loop.latch93, %loop.body80
  %prod_val82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j83 = load i128, i128* %j, align 4
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val82, i128 0, i128 %j83, i128 %i84
  %prod_val86 = load i128, i128* %array_getter85, align 4
  %n = load i128, i128* %n.bind, align 4
  %n87 = load i128, i128* %n.bind, align 4
  %n88 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val86, i128 %n, i128 %n87, i128 %n88)
  %ptr_getter89 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j90 = load i128, i128* %j, align 4
  %i91 = load i128, i128* %i, align 4
  %split92 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter89, i128 0, i128 %j90, i128 %i91
  %5 = bitcast [256 x i128]* %split92 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body81
  %i94 = load i128, i128* %i, align 4
  %add95 = add i128 %i94, 1
  store i128 %add95, i128* %i, align 4
  %i96 = load i128, i128* %i, align 4
  %k97 = load i128, i128* %k.bind, align 4
  %mul98 = mul i128 2, %k97
  %sub99 = sub i128 %mul98, 1
  %slt100 = icmp slt i128 %i96, %sub99
  br i1 %slt100, label %loop.body81, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch93
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.exit101
  %j103 = load i128, i128* %j, align 4
  %add104 = add i128 %j103, 1
  store i128 %add104, i128* %j, align 4
  %j105 = load i128, i128* %j, align 4
  %l106 = load i128, i128* %l.bind, align 4
  %mul107 = mul i128 2, %l106
  %sub108 = sub i128 %mul107, 1
  %slt109 = icmp slt i128 %j105, %sub108
  br i1 %slt109, label %loop.body80, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch102
  %uniform_array111 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array111, [256 x [256 x i128]]** %carry, align 8
  %uniform_array112 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array112, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch251, %loop.exit110
  %ptr_getter114 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j115 = load i128, i128* %j, align 4
  %carry116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter114, i128 0, i128 %j115, i128 0
  store i128 0, i128* %carry116, align 4
  %split117 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j118 = load i128, i128* %j, align 4
  %array_getter119 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split117, i128 0, i128 %j118, i128 0, i128 0
  %split120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j122 = load i128, i128* %j, align 4
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter121, i128 0, i128 %j122, i128 0
  store i128 %split120, i128* %out123, align 4
  %k124 = load i128, i128* %k.bind, align 4
  %mul125 = mul i128 2, %k124
  %sub126 = sub i128 %mul125, 1
  %sgt = icmp sgt i128 %sub126, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body113
  %split127 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j128 = load i128, i128* %j, align 4
  %array_getter129 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split127, i128 0, i128 %j128, i128 0, i128 1
  %split130 = load i128, i128* %array_getter129, align 4
  %split131 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j133 = load i128, i128* %j, align 4
  %array_getter134 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split131, i128 0, i128 %j133, i128 1, i128 0
  %split135 = load i128, i128* %array_getter134, align 4
  %add136 = add i128 %split130, %split135
  %n137 = load i128, i128* %n.bind, align 4
  %n138 = load i128, i128* %n.bind, align 4
  %call139 = call [2 x i128]* @SplitFn(i128 %add136, i128 %n137, i128 %n138)
  %ptr_getter140 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j141 = load i128, i128* %j, align 4
  %sumAndCarry142 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter140, i128 0, i128 %j141
  %7 = bitcast [256 x i128]* %sumAndCarry142 to i8*
  %8 = bitcast [2 x i128]* %call139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry143 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j144 = load i128, i128* %j, align 4
  %array_getter145 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry143, i128 0, i128 %j144, i128 0
  %sumAndCarry146 = load i128, i128* %array_getter145, align 4
  %ptr_getter147 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j148 = load i128, i128* %j, align 4
  %out149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter147, i128 0, i128 %j148, i128 1
  store i128 %sumAndCarry146, i128* %out149, align 4
  %sumAndCarry150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j151 = load i128, i128* %j, align 4
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry150, i128 0, i128 %j151, i128 1
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %ptr_getter154 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j155 = load i128, i128* %j, align 4
  %carry156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter154, i128 0, i128 %j155, i128 1
  store i128 %sumAndCarry153, i128* %carry156, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body113
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k159 = load i128, i128* %k.bind, align 4
  %mul160 = mul i128 2, %k159
  %sub161 = sub i128 %mul160, 1
  %sgt162 = icmp sgt i128 %sub161, 2
  br i1 %sgt162, label %if.true157, label %if.false158

if.true157:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body163

if.false158:                                      ; preds = %if.exit
  br label %if.exit250

loop.body163:                                     ; preds = %loop.latch212, %if.true157
  %split164 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j165 = load i128, i128* %j, align 4
  %i166 = load i128, i128* %i, align 4
  %array_getter167 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split164, i128 0, i128 %j165, i128 %i166, i128 0
  %split168 = load i128, i128* %array_getter167, align 4
  %split169 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j170 = load i128, i128* %j, align 4
  %i171 = load i128, i128* %i, align 4
  %sub172 = sub i128 %i171, 1
  %array_getter173 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split169, i128 0, i128 %j170, i128 %sub172, i128 1
  %split174 = load i128, i128* %array_getter173, align 4
  %add175 = add i128 %split168, %split174
  %split176 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j177 = load i128, i128* %j, align 4
  %i178 = load i128, i128* %i, align 4
  %sub179 = sub i128 %i178, 2
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split176, i128 0, i128 %j177, i128 %sub179, i128 2
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %add175, %split181
  %carry183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j184 = load i128, i128* %j, align 4
  %i185 = load i128, i128* %i, align 4
  %sub186 = sub i128 %i185, 1
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry183, i128 0, i128 %j184, i128 %sub186
  %carry188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %carry188
  %n190 = load i128, i128* %n.bind, align 4
  %n191 = load i128, i128* %n.bind, align 4
  %call192 = call [2 x i128]* @SplitFn(i128 %add189, i128 %n190, i128 %n191)
  %ptr_getter193 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j194 = load i128, i128* %j, align 4
  %sumAndCarry195 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter193, i128 0, i128 %j194
  %9 = bitcast [256 x i128]* %sumAndCarry195 to i8*
  %10 = bitcast [2 x i128]* %call192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j197 = load i128, i128* %j, align 4
  %array_getter198 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry196, i128 0, i128 %j197, i128 0
  %sumAndCarry199 = load i128, i128* %array_getter198, align 4
  %ptr_getter200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j201 = load i128, i128* %j, align 4
  %i202 = load i128, i128* %i, align 4
  %out203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter200, i128 0, i128 %j201, i128 %i202
  store i128 %sumAndCarry199, i128* %out203, align 4
  %sumAndCarry204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j205 = load i128, i128* %j, align 4
  %array_getter206 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry204, i128 0, i128 %j205, i128 1
  %sumAndCarry207 = load i128, i128* %array_getter206, align 4
  %ptr_getter208 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j209 = load i128, i128* %j, align 4
  %i210 = load i128, i128* %i, align 4
  %carry211 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter208, i128 0, i128 %j209, i128 %i210
  store i128 %sumAndCarry207, i128* %carry211, align 4
  br label %loop.latch212

loop.latch212:                                    ; preds = %loop.body163
  %i213 = load i128, i128* %i, align 4
  %add214 = add i128 %i213, 1
  store i128 %add214, i128* %i, align 4
  %i215 = load i128, i128* %i, align 4
  %k216 = load i128, i128* %k.bind, align 4
  %mul217 = mul i128 2, %k216
  %sub218 = sub i128 %mul217, 1
  %slt219 = icmp slt i128 %i215, %sub218
  br i1 %slt219, label %loop.body163, label %loop.exit220

loop.exit220:                                     ; preds = %loop.latch212
  %split221 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j222 = load i128, i128* %j, align 4
  %k223 = load i128, i128* %k.bind, align 4
  %mul224 = mul i128 2, %k223
  %sub225 = sub i128 %mul224, 2
  %array_getter226 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split221, i128 0, i128 %j222, i128 %sub225, i128 1
  %split227 = load i128, i128* %array_getter226, align 4
  %split228 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j229 = load i128, i128* %j, align 4
  %k230 = load i128, i128* %k.bind, align 4
  %mul231 = mul i128 2, %k230
  %sub232 = sub i128 %mul231, 3
  %array_getter233 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split228, i128 0, i128 %j229, i128 %sub232, i128 2
  %split234 = load i128, i128* %array_getter233, align 4
  %add235 = add i128 %split227, %split234
  %carry236 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j237 = load i128, i128* %j, align 4
  %k238 = load i128, i128* %k.bind, align 4
  %mul239 = mul i128 2, %k238
  %sub240 = sub i128 %mul239, 2
  %array_getter241 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry236, i128 0, i128 %j237, i128 %sub240
  %carry242 = load i128, i128* %array_getter241, align 4
  %add243 = add i128 %add235, %carry242
  %ptr_getter244 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j245 = load i128, i128* %j, align 4
  %k246 = load i128, i128* %k.bind, align 4
  %mul247 = mul i128 2, %k246
  %sub248 = sub i128 %mul247, 1
  %out249 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter244, i128 0, i128 %j245, i128 %sub248
  store i128 %add243, i128* %out249, align 4
  br label %if.exit250

if.exit250:                                       ; preds = %if.false158, %loop.exit220
  br label %loop.latch251

loop.latch251:                                    ; preds = %if.exit250
  %j252 = load i128, i128* %j, align 4
  %add253 = add i128 %j252, 1
  store i128 %add253, i128* %j, align 4
  %j254 = load i128, i128* %j, align 4
  %l255 = load i128, i128* %l.bind, align 4
  %mul256 = mul i128 2, %l255
  %sub257 = sub i128 %mul256, 1
  %slt258 = icmp slt i128 %j254, %sub257
  br i1 %slt258, label %loop.body113, label %loop.exit259

loop.exit259:                                     ; preds = %loop.latch251
  %out260 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out260
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %read_arg_inner.greatereqthan.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.greatereqthan.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %read_input_inner.greatereqthan.in = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.greatereqthan.in, [256 x i128]** %in.bind, align 8
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %lt3 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt3, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.85)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.86)
  %ptr_getter18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter18, i32 0, i32 1
  %read_input_outter.lessthan.in20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.87)
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out25 = load i128, i128* %out, align 4
  %write_output_inner.greatereqthan.out = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 2
  store i128 %out25, i128* %write_output_inner.greatereqthan.out, align 4
  ret void
}

define %struct_template_circuit_greatereqthan* @fn_template_build_greatereqthan(i128 %0) {
entry:
  %struct_template_circuit_greatereqthan = alloca %struct_template_circuit_greatereqthan, align 8
  %write_arg_inner.greatereqthan.n = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.greatereqthan.n, align 4
  ret %struct_template_circuit_greatereqthan* %struct_template_circuit_greatereqthan
}

define void @fn_template_init_bigisequal(%struct_template_circuit_bigisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 0
  %read_arg_inner.bigisequal.k = load i128, i128* %struct_getter, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigisequal.k, i128* %k.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 1
  %read_input_inner.bigisequal.a = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigisequal.a, [256 x i128]** %a.bind, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 2
  %read_input_inner.bigisequal.b = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigisequal.b, [256 x i128]** %b.bind, align 8
  %total = alloca i128, align 8
  store i128 0, i128* %total, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %checkZero = alloca %struct_template_circuit_iszero*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %isEquals = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %isEquals3 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %isEquals3, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %k = load i128, i128* %k.bind, align 4
  store i128 %k, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i4 = load i128, i128* %i, align 4
  %isEquals5 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter, i128 0, i128 %i4
  store %struct_template_circuit_isequal* %call, %struct_template_circuit_isequal** %isEquals5, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i6
  %a7 = load i128, i128* %array_getter, align 4
  %isEquals8 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals8, i128 0, i128 %i9
  %isEquals11 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter10, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals11, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  %isEquals14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals14, i128 %a7, i1* @constraint.88)
  %ptr_getter15 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter15, i128 0, i128 %i16
  %isEquals18 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter17, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals18, i32 0, i32 0
  %read_input_outter.isequal.in20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %isEquals21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in20, i128 0, i128 0
  store i128 %a7, i128* %isEquals21, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i22
  %b24 = load i128, i128* %array_getter23, align 4
  %isEquals25 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals25, i128 0, i128 %i26
  %isEquals28 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals28, i32 0, i32 0
  %read_input_outter.isequal.in30 = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in30, i128 0, i128 1
  %isEquals32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals32, i128 %b24, i1* @constraint.89)
  %ptr_getter33 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter33, i128 0, i128 %i34
  %isEquals36 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter35, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals36, i32 0, i32 0
  %read_input_outter.isequal.in38 = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %isEquals39 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in38, i128 0, i128 1
  store i128 %b24, i128* %isEquals39, align 4
  %total40 = load i128, i128* %total, align 4
  %isEquals41 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals41, i128 0, i128 %i42
  %isEquals44 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter43, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals44, i32 0, i32 1
  %read_output_outter.isequal.out = load i128, i128* %struct_getter45, align 4
  %sub = sub i128 %total40, %read_output_outter.isequal.out
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i46 = load i128, i128* %i, align 4
  %add = add i128 %i46, 1
  store i128 %add, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %k48 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i47, %k48
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call49 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call49, %struct_template_circuit_iszero** %checkZero, align 8
  %total50 = load i128, i128* %total, align 4
  %checkZero51 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero51, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %total50, i1* @constraint.90)
  %ptr_getter53 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter53, i32 0, i32 0
  store i128 %total50, i128* %write_input_outter.iszero.in, align 4
  %checkZero54 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero54, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter55, align 4
  %out56 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out56, i128 %read_output_outter.iszero.out, i1* @constraint.91)
  store i128 %read_output_outter.iszero.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out57 = load i128, i128* %out, align 4
  %write_output_inner.bigisequal.out = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %out57, i128* %write_output_inner.bigisequal.out, align 4
  ret void
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
  %struct_template_circuit_bigisequal = alloca %struct_template_circuit_bigisequal, align 8
  %write_arg_inner.bigisequal.k = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigisequal.k, align 4
  ret %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal
}

define void @fn_template_init_modsub(%struct_template_circuit_modsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 0
  %read_arg_inner.modsub.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modsub.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 1
  %read_input_inner.modsub.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modsub.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 2
  %read_input_inner.modsub.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modsub.b, i128* %b.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %borrow = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %borrow, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a = load i128, i128* %a.bind, align 4
  %lt4 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt4, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %a, i1* @constraint.92)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in8, i128 0, i128 0
  store i128 %a, i128* %lt9, align 4
  %b = load i128, i128* %b.bind, align 4
  %lt10 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt10, i32 0, i32 1
  %read_input_outter.lessthan.in12 = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in12, i128 0, i128 1
  %lt14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt14, i128 %b, i1* @constraint.93)
  %ptr_getter15 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter15, i32 0, i32 1
  %read_input_outter.lessthan.in17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in17, i128 0, i128 1
  store i128 %b, i128* %lt18, align 4
  %lt19 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt19, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter20, align 4
  %borrow21 = load i128, i128* %borrow, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow21, i128 %read_output_outter.lessthan.out, i1* @constraint.94)
  store i128 %read_output_outter.lessthan.out, i128* %borrow, align 4
  %borrow22 = load i128, i128* %borrow, align 4
  %n23 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n23
  %mul = mul i128 %borrow22, %lshift
  %a24 = load i128, i128* %a.bind, align 4
  %add = add i128 %mul, %a24
  %b25 = load i128, i128* %b.bind, align 4
  %sub = sub i128 %add, %b25
  %out26 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out26, i128 %sub, i1* @constraint.95)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out27 = load i128, i128* %out, align 4
  %write_output_inner.modsub.out = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %out27, i128* %write_output_inner.modsub.out, align 4
  %borrow28 = load i128, i128* %borrow, align 4
  %write_output_inner.modsub.borrow = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %borrow28, i128* %write_output_inner.modsub.borrow, align 4
  ret void
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
  %struct_template_circuit_modsub = alloca %struct_template_circuit_modsub, align 8
  %write_arg_inner.modsub.n = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %struct_template_circuit_modsub, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsub.n, align 4
  ret %struct_template_circuit_modsub* %struct_template_circuit_modsub
}

define void @fn_template_init_biglessthan(%struct_template_circuit_biglessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 0
  %read_arg_inner.biglessthan.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.biglessthan.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 1
  %read_arg_inner.biglessthan.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.biglessthan.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 2
  %read_input_inner.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.biglessthan.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 3
  %read_input_inner.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.biglessthan.b, [256 x i128]** %b.bind, align 8
  %lt = alloca [256 x %struct_template_circuit_lessthan*]*, align 8
  %lt4 = alloca [256 x %struct_template_circuit_lessthan*], align 8
  store [256 x %struct_template_circuit_lessthan*]* %lt4, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %ands5 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %ands5, [256 x %struct_template_circuit_and*]** %ands, align 8
  %eq_ands = alloca [256 x %struct_template_circuit_and*]*, align 8
  %eq_ands6 = alloca [256 x %struct_template_circuit_and*], align 8
  store [256 x %struct_template_circuit_and*]* %eq_ands6, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %eq = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %eq7 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %eq7, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %ors = alloca [256 x %struct_template_circuit_or*]*, align 8
  %ors8 = alloca [256 x %struct_template_circuit_or*], align 8
  store [256 x %struct_template_circuit_or*]* %ors8, [256 x %struct_template_circuit_or*]** %ors, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  %ptr_getter = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i9 = load i128, i128* %i, align 4
  %lt10 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter, i128 0, i128 %i9
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt10, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %lt13 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt13, i128 0, i128 %i14
  %lt16 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter15, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt16, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt19, i128 %a12, i1* @constraint.96)
  %ptr_getter20 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter20, i128 0, i128 %i21
  %lt23 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt23, i32 0, i32 1
  %read_input_outter.lessthan.in25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %lt26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in25, i128 0, i128 0
  store i128 %a12, i128* %lt26, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i27
  %b29 = load i128, i128* %array_getter28, align 4
  %lt30 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt30, i128 0, i128 %i31
  %lt33 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt33, i32 0, i32 1
  %read_input_outter.lessthan.in35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in35, i128 0, i128 1
  %lt37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt37, i128 %b29, i1* @constraint.97)
  %ptr_getter38 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i39 = load i128, i128* %i, align 4
  %array_getter40 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter38, i128 0, i128 %i39
  %lt41 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter40, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt41, i32 0, i32 1
  %read_input_outter.lessthan.in43 = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %lt44 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in43, i128 0, i128 1
  store i128 %b29, i128* %lt44, align 4
  %call45 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter46 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i47 = load i128, i128* %i, align 4
  %eq48 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter46, i128 0, i128 %i47
  store %struct_template_circuit_isequal* %call45, %struct_template_circuit_isequal** %eq48, align 8
  %a49 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %a49, i128 0, i128 %i50
  %a52 = load i128, i128* %array_getter51, align 4
  %eq53 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq53, i128 0, i128 %i54
  %eq56 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter55, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq56, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter57, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  %eq59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq59, i128 %a52, i1* @constraint.98)
  %ptr_getter60 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter60, i128 0, i128 %i61
  %eq63 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter62, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq63, i32 0, i32 0
  %read_input_outter.isequal.in65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %eq66 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in65, i128 0, i128 0
  store i128 %a52, i128* %eq66, align 4
  %b67 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i68 = load i128, i128* %i, align 4
  %array_getter69 = getelementptr inbounds [256 x i128], [256 x i128]* %b67, i128 0, i128 %i68
  %b70 = load i128, i128* %array_getter69, align 4
  %eq71 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq71, i128 0, i128 %i72
  %eq74 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq74, i32 0, i32 0
  %read_input_outter.isequal.in76 = load [256 x i128]*, [256 x i128]** %struct_getter75, align 8
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in76, i128 0, i128 1
  %eq78 = load i128, i128* %array_getter77, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq78, i128 %b70, i1* @constraint.99)
  %ptr_getter79 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i80 = load i128, i128* %i, align 4
  %array_getter81 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter79, i128 0, i128 %i80
  %eq82 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter81, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq82, i32 0, i32 0
  %read_input_outter.isequal.in84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %eq85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in84, i128 0, i128 1
  store i128 %b70, i128* %eq85, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i86 = load i128, i128* %i, align 4
  %add = add i128 %i86, 1
  store i128 %add, i128* %i, align 4
  %i87 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i87, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k88 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k88, 2
  store i128 %sub, i128* %i, align 4
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch306, %loop.exit
  %call90 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter91 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i92 = load i128, i128* %i, align 4
  %ands93 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter91, i128 0, i128 %i92
  store %struct_template_circuit_and* %call90, %struct_template_circuit_and** %ands93, align 8
  %call94 = call %struct_template_circuit_and* @fn_template_build_and()
  %ptr_getter95 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i96 = load i128, i128* %i, align 4
  %eq_ands97 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter95, i128 0, i128 %i96
  store %struct_template_circuit_and* %call94, %struct_template_circuit_and** %eq_ands97, align 8
  %call98 = call %struct_template_circuit_or* @fn_template_build_or()
  %ptr_getter99 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i100 = load i128, i128* %i, align 4
  %ors101 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter99, i128 0, i128 %i100
  store %struct_template_circuit_or* %call98, %struct_template_circuit_or** %ors101, align 8
  %i102 = load i128, i128* %i, align 4
  %k103 = load i128, i128* %k.bind, align 4
  %sub104 = sub i128 %k103, 2
  %eq105 = icmp eq i128 %i102, %sub104
  br i1 %eq105, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body89
  %eq106 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k107 = load i128, i128* %k.bind, align 4
  %sub108 = sub i128 %k107, 1
  %array_getter109 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq106, i128 0, i128 %sub108
  %eq110 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter109, align 8
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq110, i32 0, i32 1
  %read_output_outter.isequal.out = load i128, i128* %struct_getter111, align 4
  %ands112 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i113 = load i128, i128* %i, align 4
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands112, i128 0, i128 %i113
  %ands115 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter114, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands115, i32 0, i32 0
  %read_input_outter.and.a = load i128, i128* %struct_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a, i128 %read_output_outter.isequal.out, i1* @constraint.100)
  %ptr_getter117 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i118 = load i128, i128* %i, align 4
  %array_getter119 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter117, i128 0, i128 %i118
  %ands120 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter119, align 8
  %write_input_outter.and.a = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands120, i32 0, i32 0
  store i128 %read_output_outter.isequal.out, i128* %write_input_outter.and.a, align 4
  %lt121 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k122 = load i128, i128* %k.bind, align 4
  %sub123 = sub i128 %k122, 2
  %array_getter124 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt121, i128 0, i128 %sub123
  %lt125 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt125, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter126, align 4
  %ands127 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands127, i128 0, i128 %i128
  %ands130 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter129, align 8
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands130, i32 0, i32 1
  %read_input_outter.and.b = load i128, i128* %struct_getter131, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b, i128 %read_output_outter.lessthan.out, i1* @constraint.101)
  %ptr_getter132 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter132, i128 0, i128 %i133
  %ands135 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter134, align 8
  %write_input_outter.and.b = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands135, i32 0, i32 1
  store i128 %read_output_outter.lessthan.out, i128* %write_input_outter.and.b, align 4
  %eq136 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k137 = load i128, i128* %k.bind, align 4
  %sub138 = sub i128 %k137, 1
  %array_getter139 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq136, i128 0, i128 %sub138
  %eq140 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter139, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq140, i32 0, i32 1
  %read_output_outter.isequal.out142 = load i128, i128* %struct_getter141, align 4
  %eq_ands143 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i144 = load i128, i128* %i, align 4
  %array_getter145 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands143, i128 0, i128 %i144
  %eq_ands146 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter145, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands146, i32 0, i32 0
  %read_input_outter.and.a148 = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a148, i128 %read_output_outter.isequal.out142, i1* @constraint.102)
  %ptr_getter149 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter149, i128 0, i128 %i150
  %eq_ands152 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter151, align 8
  %write_input_outter.and.a153 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands152, i32 0, i32 0
  store i128 %read_output_outter.isequal.out142, i128* %write_input_outter.and.a153, align 4
  %eq154 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k155 = load i128, i128* %k.bind, align 4
  %sub156 = sub i128 %k155, 2
  %array_getter157 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq154, i128 0, i128 %sub156
  %eq158 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter157, align 8
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq158, i32 0, i32 1
  %read_output_outter.isequal.out160 = load i128, i128* %struct_getter159, align 4
  %eq_ands161 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands161, i128 0, i128 %i162
  %eq_ands164 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter163, align 8
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands164, i32 0, i32 1
  %read_input_outter.and.b166 = load i128, i128* %struct_getter165, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b166, i128 %read_output_outter.isequal.out160, i1* @constraint.103)
  %ptr_getter167 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i168 = load i128, i128* %i, align 4
  %array_getter169 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter167, i128 0, i128 %i168
  %eq_ands170 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter169, align 8
  %write_input_outter.and.b171 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands170, i32 0, i32 1
  store i128 %read_output_outter.isequal.out160, i128* %write_input_outter.and.b171, align 4
  %lt172 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k173 = load i128, i128* %k.bind, align 4
  %sub174 = sub i128 %k173, 1
  %array_getter175 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt172, i128 0, i128 %sub174
  %lt176 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter175, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt176, i32 0, i32 2
  %read_output_outter.lessthan.out178 = load i128, i128* %struct_getter177, align 4
  %ors179 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors179, i128 0, i128 %i180
  %ors182 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter181, align 8
  %struct_getter183 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors182, i32 0, i32 0
  %read_input_outter.or.a = load i128, i128* %struct_getter183, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.a, i128 %read_output_outter.lessthan.out178, i1* @constraint.104)
  %ptr_getter184 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i185 = load i128, i128* %i, align 4
  %array_getter186 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter184, i128 0, i128 %i185
  %ors187 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter186, align 8
  %write_input_outter.or.a = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors187, i32 0, i32 0
  store i128 %read_output_outter.lessthan.out178, i128* %write_input_outter.or.a, align 4
  %ands188 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands188, i128 0, i128 %i189
  %ands191 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter190, align 8
  %struct_getter192 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands191, i32 0, i32 2
  %read_output_outter.and.out = load i128, i128* %struct_getter192, align 4
  %ors193 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i194 = load i128, i128* %i, align 4
  %array_getter195 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors193, i128 0, i128 %i194
  %ors196 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter195, align 8
  %struct_getter197 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors196, i32 0, i32 1
  %read_input_outter.or.b = load i128, i128* %struct_getter197, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.b, i128 %read_output_outter.and.out, i1* @constraint.105)
  %ptr_getter198 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i199 = load i128, i128* %i, align 4
  %array_getter200 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter198, i128 0, i128 %i199
  %ors201 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter200, align 8
  %write_input_outter.or.b = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors201, i32 0, i32 1
  store i128 %read_output_outter.and.out, i128* %write_input_outter.or.b, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body89
  %eq_ands202 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i203 = load i128, i128* %i, align 4
  %add204 = add i128 %i203, 1
  %array_getter205 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands202, i128 0, i128 %add204
  %eq_ands206 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter205, align 8
  %struct_getter207 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands206, i32 0, i32 2
  %read_output_outter.and.out208 = load i128, i128* %struct_getter207, align 4
  %ands209 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i210 = load i128, i128* %i, align 4
  %array_getter211 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands209, i128 0, i128 %i210
  %ands212 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter211, align 8
  %struct_getter213 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands212, i32 0, i32 0
  %read_input_outter.and.a214 = load i128, i128* %struct_getter213, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a214, i128 %read_output_outter.and.out208, i1* @constraint.106)
  %ptr_getter215 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i216 = load i128, i128* %i, align 4
  %array_getter217 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter215, i128 0, i128 %i216
  %ands218 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter217, align 8
  %write_input_outter.and.a219 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands218, i32 0, i32 0
  store i128 %read_output_outter.and.out208, i128* %write_input_outter.and.a219, align 4
  %lt220 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i221 = load i128, i128* %i, align 4
  %array_getter222 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt220, i128 0, i128 %i221
  %lt223 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter222, align 8
  %struct_getter224 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt223, i32 0, i32 2
  %read_output_outter.lessthan.out225 = load i128, i128* %struct_getter224, align 4
  %ands226 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands226, i128 0, i128 %i227
  %ands229 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter228, align 8
  %struct_getter230 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands229, i32 0, i32 1
  %read_input_outter.and.b231 = load i128, i128* %struct_getter230, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b231, i128 %read_output_outter.lessthan.out225, i1* @constraint.107)
  %ptr_getter232 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i233 = load i128, i128* %i, align 4
  %array_getter234 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter232, i128 0, i128 %i233
  %ands235 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter234, align 8
  %write_input_outter.and.b236 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands235, i32 0, i32 1
  store i128 %read_output_outter.lessthan.out225, i128* %write_input_outter.and.b236, align 4
  %eq_ands237 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i238 = load i128, i128* %i, align 4
  %add239 = add i128 %i238, 1
  %array_getter240 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands237, i128 0, i128 %add239
  %eq_ands241 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter240, align 8
  %struct_getter242 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands241, i32 0, i32 2
  %read_output_outter.and.out243 = load i128, i128* %struct_getter242, align 4
  %eq_ands244 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i245 = load i128, i128* %i, align 4
  %array_getter246 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands244, i128 0, i128 %i245
  %eq_ands247 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter246, align 8
  %struct_getter248 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands247, i32 0, i32 0
  %read_input_outter.and.a249 = load i128, i128* %struct_getter248, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a249, i128 %read_output_outter.and.out243, i1* @constraint.108)
  %ptr_getter250 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i251 = load i128, i128* %i, align 4
  %array_getter252 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter250, i128 0, i128 %i251
  %eq_ands253 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter252, align 8
  %write_input_outter.and.a254 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands253, i32 0, i32 0
  store i128 %read_output_outter.and.out243, i128* %write_input_outter.and.a254, align 4
  %eq255 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i256 = load i128, i128* %i, align 4
  %array_getter257 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq255, i128 0, i128 %i256
  %eq258 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter257, align 8
  %struct_getter259 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq258, i32 0, i32 1
  %read_output_outter.isequal.out260 = load i128, i128* %struct_getter259, align 4
  %eq_ands261 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i262 = load i128, i128* %i, align 4
  %array_getter263 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands261, i128 0, i128 %i262
  %eq_ands264 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter263, align 8
  %struct_getter265 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands264, i32 0, i32 1
  %read_input_outter.and.b266 = load i128, i128* %struct_getter265, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b266, i128 %read_output_outter.isequal.out260, i1* @constraint.109)
  %ptr_getter267 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i268 = load i128, i128* %i, align 4
  %array_getter269 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter267, i128 0, i128 %i268
  %eq_ands270 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter269, align 8
  %write_input_outter.and.b271 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands270, i32 0, i32 1
  store i128 %read_output_outter.isequal.out260, i128* %write_input_outter.and.b271, align 4
  %ors272 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i273 = load i128, i128* %i, align 4
  %add274 = add i128 %i273, 1
  %array_getter275 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors272, i128 0, i128 %add274
  %ors276 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter275, align 8
  %struct_getter277 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors276, i32 0, i32 2
  %read_output_outter.or.out = load i128, i128* %struct_getter277, align 4
  %ors278 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i279 = load i128, i128* %i, align 4
  %array_getter280 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors278, i128 0, i128 %i279
  %ors281 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter280, align 8
  %struct_getter282 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors281, i32 0, i32 0
  %read_input_outter.or.a283 = load i128, i128* %struct_getter282, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.a283, i128 %read_output_outter.or.out, i1* @constraint.110)
  %ptr_getter284 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i285 = load i128, i128* %i, align 4
  %array_getter286 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter284, i128 0, i128 %i285
  %ors287 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter286, align 8
  %write_input_outter.or.a288 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors287, i32 0, i32 0
  store i128 %read_output_outter.or.out, i128* %write_input_outter.or.a288, align 4
  %ands289 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i290 = load i128, i128* %i, align 4
  %array_getter291 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands289, i128 0, i128 %i290
  %ands292 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands292, i32 0, i32 2
  %read_output_outter.and.out294 = load i128, i128* %struct_getter293, align 4
  %ors295 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i296 = load i128, i128* %i, align 4
  %array_getter297 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors295, i128 0, i128 %i296
  %ors298 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter297, align 8
  %struct_getter299 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors298, i32 0, i32 1
  %read_input_outter.or.b300 = load i128, i128* %struct_getter299, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.b300, i128 %read_output_outter.and.out294, i1* @constraint.111)
  %ptr_getter301 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i302 = load i128, i128* %i, align 4
  %array_getter303 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter301, i128 0, i128 %i302
  %ors304 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter303, align 8
  %write_input_outter.or.b305 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors304, i32 0, i32 1
  store i128 %read_output_outter.and.out294, i128* %write_input_outter.or.b305, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch306

loop.latch306:                                    ; preds = %if.exit
  %i307 = load i128, i128* %i, align 4
  %sub308 = sub i128 %i307, 1
  store i128 %sub308, i128* %i, align 4
  %i309 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i309, 0
  br i1 %sge, label %loop.body89, label %loop.exit310

loop.exit310:                                     ; preds = %loop.latch306
  %ors311 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %array_getter312 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors311, i128 0, i128 0
  %ors313 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter312, align 8
  %struct_getter314 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors313, i32 0, i32 2
  %read_output_outter.or.out315 = load i128, i128* %struct_getter314, align 4
  %out316 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out316, i128 %read_output_outter.or.out315, i1* @constraint.112)
  store i128 %read_output_outter.or.out315, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit310
  %out317 = load i128, i128* %out, align 4
  %write_output_inner.biglessthan.out = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %out317, i128* %write_output_inner.biglessthan.out, align 4
  ret void
}

define %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_biglessthan = alloca %struct_template_circuit_biglessthan, align 8
  %write_arg_inner.biglessthan.n = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.biglessthan.n, align 4
  %write_arg_inner.biglessthan.k = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.biglessthan.k, align 4
  ret %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %mult = alloca [256 x i128]*, align 8
  %mult1 = alloca [256 x i128], align 8
  store [256 x i128]* %mult1, [256 x i128]** %mult, align 8
  %qhat = alloca i128, align 8
  store i128 0, i128* %qhat, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a2 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a2, %lshift
  %a3 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k4 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k4, 1
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %a3, i128 0, i128 %sub
  %a6 = load i128, i128* %array_getter5, align 4
  %add = add i128 %mul, %a6
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k7 = load i128, i128* %k.bind, align 4
  %sub8 = sub i128 %k7, 1
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub8
  %b10 = load i128, i128* %array_getter9, align 4
  %sdiv = sdiv i128 %add, %b10
  store i128 %sdiv, i128* %qhat, align 4
  %qhat11 = load i128, i128* %qhat, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %lshift13 = shl i128 1, %n12
  %sub14 = sub i128 %lshift13, 1
  %sgt = icmp sgt i128 %qhat11, %sub14
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n15 = load i128, i128* %n.bind, align 4
  %lshift16 = shl i128 1, %n15
  %sub17 = sub i128 %lshift16, 1
  store i128 %sub17, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n18 = load i128, i128* %n.bind, align 4
  %k19 = load i128, i128* %k.bind, align 4
  %qhat20 = load i128, i128* %qhat, align 4
  %b21 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n18, i128 %k19, i128 %qhat20, [256 x i128]* %b21)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n24 = load i128, i128* %n.bind, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %add26 = add i128 %k25, 1
  %mult27 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a28 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call29 = call i128 @long_gt(i128 %n24, i128 %add26, [256 x i128]* %mult27, [256 x i128]* %a28)
  %eq = icmp eq i128 %call29, 1
  br i1 %eq, label %if.true22, label %if.false23

if.true22:                                        ; preds = %if.exit
  %n30 = load i128, i128* %n.bind, align 4
  %k31 = load i128, i128* %k.bind, align 4
  %add32 = add i128 %k31, 1
  %mult33 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b34 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call35 = call [256 x i128]* @long_sub(i128 %n30, i128 %add32, [256 x i128]* %mult33, [256 x i128]* %b34)
  store [256 x i128]* %call35, [256 x i128]** %mult, align 8
  %n38 = load i128, i128* %n.bind, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %add40 = add i128 %k39, 1
  %mult41 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a42 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call43 = call i128 @long_gt(i128 %n38, i128 %add40, [256 x i128]* %mult41, [256 x i128]* %a42)
  %eq44 = icmp eq i128 %call43, 1
  br i1 %eq44, label %if.true36, label %if.false37

if.false23:                                       ; preds = %if.exit
  %qhat49 = load i128, i128* %qhat, align 4
  ret i128 %qhat49

if.true36:                                        ; preds = %if.true22
  %qhat45 = load i128, i128* %qhat, align 4
  %sub46 = sub i128 %qhat45, 2
  ret i128 %sub46

if.false37:                                       ; preds = %if.true22
  %qhat47 = load i128, i128* %qhat, align 4
  %sub48 = sub i128 %qhat47, 1
  ret i128 %sub48
}

define void @fn_template_init_fpsgn0(%struct_template_circuit_fpsgn0* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 0
  %read_arg_inner.fpsgn0.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpsgn0.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 1
  %read_arg_inner.fpsgn0.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpsgn0.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 2
  %read_arg_inner.fpsgn0.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpsgn0.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 3
  %read_input_inner.fpsgn0.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpsgn0.in, [256 x i128]** %in.bind, align 8
  %r = alloca i128, align 8
  store i128 0, i128* %r, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %div = alloca i128, align 8
  store i128 0, i128* %div, align 4
  %q = alloca i128, align 8
  store i128 0, i128* %q, align 4
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i4
  %in5 = load i128, i128* %array_getter, align 4
  %lt6 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt6, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i8
  %lt10 = load i128, i128* %array_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt10, i128 %in5, i1* @constraint.113)
  %ptr_getter = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter, i32 0, i32 2
  %read_input_outter.biglessthan.a12 = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i13 = load i128, i128* %i, align 4
  %lt14 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a12, i128 0, i128 %i13
  store i128 %in5, i128* %lt14, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i15
  %p17 = load i128, i128* %array_getter16, align 4
  %lt18 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt18, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i20
  %lt22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt22, i128 %p17, i1* @constraint.114)
  %ptr_getter23 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter23, i32 0, i32 3
  %read_input_outter.biglessthan.b25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i26 = load i128, i128* %i, align 4
  %lt27 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b25, i128 0, i128 %i26
  store i128 %p17, i128* %lt27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i28 = load i128, i128* %i, align 4
  %add = add i128 %i28, 1
  store i128 %add, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k30 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i29, %k30
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt31 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt31, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.115)
  %in33 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %in33, i128 0, i128 0
  %in35 = load i128, i128* %array_getter34, align 4
  %mod = srem i128 %in35, 2
  store i128 %mod, i128* %r, align 4
  %in36 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %in36, i128 0, i128 0
  %in38 = load i128, i128* %array_getter37, align 4
  %r39 = load i128, i128* %r, align 4
  %sub = sub i128 %in38, %r39
  %sdiv = sdiv i128 %sub, 2
  store i128 %sdiv, i128* %q, align 4
  %r40 = load i128, i128* %r, align 4
  store i128 %r40, i128* %out, align 4
  %q41 = load i128, i128* %q, align 4
  store i128 %q41, i128* %div, align 4
  %out42 = load i128, i128* %out, align 4
  %out43 = load i128, i128* %out, align 4
  %sub44 = sub i128 1, %out43
  %mul = mul i128 %out42, %sub44
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.116)
  %in45 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %in45, i128 0, i128 0
  %in47 = load i128, i128* %array_getter46, align 4
  %div48 = load i128, i128* %div, align 4
  %mul49 = mul i128 2, %div48
  %out50 = load i128, i128* %out, align 4
  %add51 = add i128 %mul49, %out50
  call void @fn_intrinsic_add_constraint(i128 %in47, i128 %add51, i1* @constraint.117)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out52 = load i128, i128* %out, align 4
  %write_output_inner.fpsgn0.out = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %out52, i128* %write_output_inner.fpsgn0.out, align 4
  ret void
}

define %struct_template_circuit_fpsgn0* @fn_template_build_fpsgn0(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsgn0 = alloca %struct_template_circuit_fpsgn0, align 8
  %write_arg_inner.fpsgn0.n = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpsgn0.n, align 4
  %write_arg_inner.fpsgn0.k = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpsgn0.k, align 4
  %write_arg_inner.fpsgn0.p = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpsgn0.p, align 8
  ret %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0
}

define void @fn_template_init_bigadd(%struct_template_circuit_bigadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 0
  %read_arg_inner.bigadd.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigadd.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 1
  %read_arg_inner.bigadd.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigadd.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 2
  %read_input_inner.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigadd.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 3
  %read_input_inner.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigadd.b, [256 x i128]** %b.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out5 = bitcast i8* %malloccall4 to [256 x i128]*
  store [256 x i128]* %out5, [256 x i128]** %out, align 8
  %unit = alloca [256 x %struct_template_circuit_modsumthree*]*, align 8
  %unit6 = alloca [256 x %struct_template_circuit_modsumthree*], align 8
  store [256 x %struct_template_circuit_modsumthree*]* %unit6, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %unit0 = alloca %struct_template_circuit_modsum*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %n)
  store %struct_template_circuit_modsum* %call, %struct_template_circuit_modsum** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a7 = load i128, i128* %array_getter, align 4
  %unit08 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit08, i32 0, i32 1
  %read_input_outter.modsum.a = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsum.a, i128 %a7, i1* @constraint.118)
  %ptr_getter = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %write_input_outter.modsum.a = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter, i32 0, i32 1
  store i128 %a7, i128* %write_input_outter.modsum.a, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b11 = load i128, i128* %array_getter10, align 4
  %unit012 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit012, i32 0, i32 2
  %read_input_outter.modsum.b = load i128, i128* %struct_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsum.b, i128 %b11, i1* @constraint.119)
  %ptr_getter14 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %write_input_outter.modsum.b = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter14, i32 0, i32 2
  store i128 %b11, i128* %write_input_outter.modsum.b, align 4
  %unit015 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit015, i32 0, i32 3
  %read_output_outter.modsum.sum = load i128, i128* %struct_getter16, align 4
  %out17 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %out17, i128 0, i128 0
  %out19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %out19, i128 %read_output_outter.modsum.sum, i1* @constraint.120)
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 0
  store i128 %read_output_outter.modsum.sum, i128* %out21, align 4
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n22 = load i128, i128* %n.bind, align 4
  %call23 = call %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %n22)
  %ptr_getter24 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i25 = load i128, i128* %i, align 4
  %sub = sub i128 %i25, 1
  %unit26 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter24, i128 0, i128 %sub
  store %struct_template_circuit_modsumthree* %call23, %struct_template_circuit_modsumthree** %unit26, align 8
  %a27 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %a27, i128 0, i128 %i28
  %a30 = load i128, i128* %array_getter29, align 4
  %unit31 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i32 = load i128, i128* %i, align 4
  %sub33 = sub i128 %i32, 1
  %array_getter34 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit31, i128 0, i128 %sub33
  %unit35 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter34, align 8
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit35, i32 0, i32 1
  %read_input_outter.modsumthree.a = load i128, i128* %struct_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.a, i128 %a30, i1* @constraint.121)
  %ptr_getter37 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i38 = load i128, i128* %i, align 4
  %sub39 = sub i128 %i38, 1
  %array_getter40 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter37, i128 0, i128 %sub39
  %unit41 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter40, align 8
  %write_input_outter.modsumthree.a = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit41, i32 0, i32 1
  store i128 %a30, i128* %write_input_outter.modsumthree.a, align 4
  %b42 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %b42, i128 0, i128 %i43
  %b45 = load i128, i128* %array_getter44, align 4
  %unit46 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i47 = load i128, i128* %i, align 4
  %sub48 = sub i128 %i47, 1
  %array_getter49 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit46, i128 0, i128 %sub48
  %unit50 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter49, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit50, i32 0, i32 2
  %read_input_outter.modsumthree.b = load i128, i128* %struct_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.b, i128 %b45, i1* @constraint.122)
  %ptr_getter52 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i53 = load i128, i128* %i, align 4
  %sub54 = sub i128 %i53, 1
  %array_getter55 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter52, i128 0, i128 %sub54
  %unit56 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter55, align 8
  %write_input_outter.modsumthree.b = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit56, i32 0, i32 2
  store i128 %b45, i128* %write_input_outter.modsumthree.b, align 4
  %i57 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i57, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit058 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit058, i32 0, i32 4
  %read_output_outter.modsum.carry = load i128, i128* %struct_getter59, align 4
  %unit60 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i61 = load i128, i128* %i, align 4
  %sub62 = sub i128 %i61, 1
  %array_getter63 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit60, i128 0, i128 %sub62
  %unit64 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter63, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit64, i32 0, i32 3
  %read_input_outter.modsumthree.c = load i128, i128* %struct_getter65, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.c, i128 %read_output_outter.modsum.carry, i1* @constraint.123)
  %ptr_getter66 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i67 = load i128, i128* %i, align 4
  %sub68 = sub i128 %i67, 1
  %array_getter69 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter66, i128 0, i128 %sub68
  %unit70 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter69, align 8
  %write_input_outter.modsumthree.c = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit70, i32 0, i32 3
  store i128 %read_output_outter.modsum.carry, i128* %write_input_outter.modsumthree.c, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit71 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i72 = load i128, i128* %i, align 4
  %sub73 = sub i128 %i72, 2
  %array_getter74 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit71, i128 0, i128 %sub73
  %unit75 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter74, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit75, i32 0, i32 5
  %read_output_outter.modsumthree.carry = load i128, i128* %struct_getter76, align 4
  %unit77 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i78 = load i128, i128* %i, align 4
  %sub79 = sub i128 %i78, 1
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit77, i128 0, i128 %sub79
  %unit81 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit81, i32 0, i32 3
  %read_input_outter.modsumthree.c83 = load i128, i128* %struct_getter82, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.c83, i128 %read_output_outter.modsumthree.carry, i1* @constraint.124)
  %ptr_getter84 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i85 = load i128, i128* %i, align 4
  %sub86 = sub i128 %i85, 1
  %array_getter87 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter84, i128 0, i128 %sub86
  %unit88 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter87, align 8
  %write_input_outter.modsumthree.c89 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit88, i32 0, i32 3
  store i128 %read_output_outter.modsumthree.carry, i128* %write_input_outter.modsumthree.c89, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit90 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i91 = load i128, i128* %i, align 4
  %sub92 = sub i128 %i91, 1
  %array_getter93 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit90, i128 0, i128 %sub92
  %unit94 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter93, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit94, i32 0, i32 4
  %read_output_outter.modsumthree.sum = load i128, i128* %struct_getter95, align 4
  %out96 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %out96, i128 0, i128 %i97
  %out99 = load i128, i128* %array_getter98, align 4
  call void @fn_intrinsic_add_constraint(i128 %out99, i128 %read_output_outter.modsumthree.sum, i1* @constraint.125)
  %ptr_getter100 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i101 = load i128, i128* %i, align 4
  %out102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter100, i128 0, i128 %i101
  store i128 %read_output_outter.modsumthree.sum, i128* %out102, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i103 = load i128, i128* %i, align 4
  %add = add i128 %i103, 1
  store i128 %add, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i104, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit105 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %k106 = load i128, i128* %k.bind, align 4
  %sub107 = sub i128 %k106, 2
  %array_getter108 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit105, i128 0, i128 %sub107
  %unit109 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter108, align 8
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit109, i32 0, i32 5
  %read_output_outter.modsumthree.carry111 = load i128, i128* %struct_getter110, align 4
  %out112 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k113 = load i128, i128* %k.bind, align 4
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %out112, i128 0, i128 %k113
  %out115 = load i128, i128* %array_getter114, align 4
  call void @fn_intrinsic_add_constraint(i128 %out115, i128 %read_output_outter.modsumthree.carry111, i1* @constraint.126)
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k117 = load i128, i128* %k.bind, align 4
  %out118 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 %k117
  store i128 %read_output_outter.modsumthree.carry111, i128* %out118, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out119 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigadd.out = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 4
  store [256 x i128]* %out119, [256 x i128]** %write_output_inner.bigadd.out, align 8
  ret void
}

define %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigadd = alloca %struct_template_circuit_bigadd, align 8
  %write_arg_inner.bigadd.n = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigadd.n, align 4
  %write_arg_inner.bigadd.k = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigadd.k, align 4
  ret %struct_template_circuit_bigadd* %struct_template_circuit_bigadd
}

define void @fn_template_init_fpisequal(%struct_template_circuit_fpisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 0
  %read_arg_inner.fpisequal.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpisequal.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 1
  %read_arg_inner.fpisequal.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpisequal.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 2
  %read_arg_inner.fpisequal.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpisequal.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 3
  %read_input_inner.fpisequal.in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %in.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %read_input_inner.fpisequal.in, [256 x [256 x i128]]** %in.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %sum = alloca i128, align 8
  store i128 0, i128* %sum, align 4
  %isEqual = alloca [256 x %struct_template_circuit_isequal*]*, align 8
  %isEqual4 = alloca [256 x %struct_template_circuit_isequal*], align 8
  store [256 x %struct_template_circuit_isequal*]* %isEqual4, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %lt = alloca [256 x %struct_template_circuit_biglessthan*]*, align 8
  %lt5 = alloca [256 x %struct_template_circuit_biglessthan*], align 8
  store [256 x %struct_template_circuit_biglessthan*]* %lt5, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch55, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  %ptr_getter = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i6 = load i128, i128* %i, align 4
  %lt7 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter, i128 0, i128 %i6
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt7, align 8
  store i128 0, i128* %idx, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %idx10 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %i9, i128 %idx10
  %in11 = load i128, i128* %array_getter, align 4
  %lt12 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt12, i128 0, i128 %i13
  %lt15 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter14, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt15, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %idx17 = load i128, i128* %idx, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %idx17
  %lt19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt19, i128 %in11, i1* @constraint.127)
  %ptr_getter20 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter20, i128 0, i128 %i21
  %lt23 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter22, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt23, i32 0, i32 2
  %read_input_outter.biglessthan.a25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %idx26 = load i128, i128* %idx, align 4
  %lt27 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a25, i128 0, i128 %idx26
  store i128 %in11, i128* %lt27, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %idx28 = load i128, i128* %idx, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %idx28
  %p30 = load i128, i128* %array_getter29, align 4
  %lt31 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt31, i128 0, i128 %i32
  %lt34 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt34, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %idx36 = load i128, i128* %idx, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %idx36
  %lt38 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt38, i128 %p30, i1* @constraint.128)
  %ptr_getter39 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter39, i128 0, i128 %i40
  %lt42 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter41, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt42, i32 0, i32 3
  %read_input_outter.biglessthan.b44 = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %idx45 = load i128, i128* %idx, align 4
  %lt46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b44, i128 0, i128 %idx45
  store i128 %p30, i128* %lt46, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body8
  %idx47 = load i128, i128* %idx, align 4
  %add = add i128 %idx47, 1
  store i128 %add, i128* %idx, align 4
  %idx48 = load i128, i128* %idx, align 4
  %k49 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx48, %k49
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt50 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt50, i128 0, i128 %i51
  %lt53 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter52, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt53, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.129)
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.exit
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %i, align 4
  %i58 = load i128, i128* %i, align 4
  %slt59 = icmp slt i128 %i58, 2
  br i1 %slt59, label %loop.body, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  store i128 0, i128* %sum, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body61

loop.body61:                                      ; preds = %loop.latch110, %loop.exit60
  %call62 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter63 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i64 = load i128, i128* %i, align 4
  %isEqual65 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter63, i128 0, i128 %i64
  store %struct_template_circuit_isequal* %call62, %struct_template_circuit_isequal** %isEqual65, align 8
  %in66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i67 = load i128, i128* %i, align 4
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in66, i128 0, i128 0, i128 %i67
  %in69 = load i128, i128* %array_getter68, align 4
  %isEqual70 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual70, i128 0, i128 %i71
  %isEqual73 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter72, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual73, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter74, align 8
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  %isEqual76 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual76, i128 %in69, i1* @constraint.130)
  %ptr_getter77 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i78 = load i128, i128* %i, align 4
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter77, i128 0, i128 %i78
  %isEqual80 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter79, align 8
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual80, i32 0, i32 0
  %read_input_outter.isequal.in82 = load [256 x i128]*, [256 x i128]** %struct_getter81, align 8
  %isEqual83 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in82, i128 0, i128 0
  store i128 %in69, i128* %isEqual83, align 4
  %in84 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in84, i128 0, i128 1, i128 %i85
  %in87 = load i128, i128* %array_getter86, align 4
  %isEqual88 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual88, i128 0, i128 %i89
  %isEqual91 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter90, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual91, i32 0, i32 0
  %read_input_outter.isequal.in93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in93, i128 0, i128 1
  %isEqual95 = load i128, i128* %array_getter94, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual95, i128 %in87, i1* @constraint.131)
  %ptr_getter96 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter96, i128 0, i128 %i97
  %isEqual99 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter98, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual99, i32 0, i32 0
  %read_input_outter.isequal.in101 = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %isEqual102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in101, i128 0, i128 1
  store i128 %in87, i128* %isEqual102, align 4
  %sum103 = load i128, i128* %sum, align 4
  %isEqual104 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i105 = load i128, i128* %i, align 4
  %array_getter106 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual104, i128 0, i128 %i105
  %isEqual107 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter106, align 8
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual107, i32 0, i32 1
  %read_output_outter.isequal.out = load i128, i128* %struct_getter108, align 4
  %add109 = add i128 %sum103, %read_output_outter.isequal.out
  store i128 %add109, i128* %sum, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body61
  %i111 = load i128, i128* %i, align 4
  %add112 = add i128 %i111, 1
  store i128 %add112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %k114 = load i128, i128* %k.bind, align 4
  %slt115 = icmp slt i128 %i113, %k114
  br i1 %slt115, label %loop.body61, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  %call117 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter118 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k119 = load i128, i128* %k.bind, align 4
  %isEqual120 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter118, i128 0, i128 %k119
  store %struct_template_circuit_isequal* %call117, %struct_template_circuit_isequal** %isEqual120, align 8
  %sum121 = load i128, i128* %sum, align 4
  %isEqual122 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k123 = load i128, i128* %k.bind, align 4
  %array_getter124 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual122, i128 0, i128 %k123
  %isEqual125 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual125, i32 0, i32 0
  %read_input_outter.isequal.in127 = load [256 x i128]*, [256 x i128]** %struct_getter126, align 8
  %array_getter128 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in127, i128 0, i128 0
  %isEqual129 = load i128, i128* %array_getter128, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual129, i128 %sum121, i1* @constraint.132)
  %ptr_getter130 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k131 = load i128, i128* %k.bind, align 4
  %array_getter132 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter130, i128 0, i128 %k131
  %isEqual133 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter132, align 8
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual133, i32 0, i32 0
  %read_input_outter.isequal.in135 = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %isEqual136 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in135, i128 0, i128 0
  store i128 %sum121, i128* %isEqual136, align 4
  %k137 = load i128, i128* %k.bind, align 4
  %isEqual138 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k139 = load i128, i128* %k.bind, align 4
  %array_getter140 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual138, i128 0, i128 %k139
  %isEqual141 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter140, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual141, i32 0, i32 0
  %read_input_outter.isequal.in143 = load [256 x i128]*, [256 x i128]** %struct_getter142, align 8
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in143, i128 0, i128 1
  %isEqual145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual145, i128 %k137, i1* @constraint.133)
  %ptr_getter146 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k147 = load i128, i128* %k.bind, align 4
  %array_getter148 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter146, i128 0, i128 %k147
  %isEqual149 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter148, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual149, i32 0, i32 0
  %read_input_outter.isequal.in151 = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %isEqual152 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in151, i128 0, i128 1
  store i128 %k137, i128* %isEqual152, align 4
  %isEqual153 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k154 = load i128, i128* %k.bind, align 4
  %array_getter155 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual153, i128 0, i128 %k154
  %isEqual156 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter155, align 8
  %struct_getter157 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual156, i32 0, i32 1
  %read_output_outter.isequal.out158 = load i128, i128* %struct_getter157, align 4
  %out159 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out159, i128 %read_output_outter.isequal.out158, i1* @constraint.134)
  store i128 %read_output_outter.isequal.out158, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit116
  %out160 = load i128, i128* %out, align 4
  %write_output_inner.fpisequal.out = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %out160, i128* %write_output_inner.fpisequal.out, align 4
  ret void
}

define %struct_template_circuit_fpisequal* @fn_template_build_fpisequal(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpisequal = alloca %struct_template_circuit_fpisequal, align 8
  %write_arg_inner.fpisequal.n = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpisequal.n, align 4
  %write_arg_inner.fpisequal.k = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpisequal.k, align 4
  %write_arg_inner.fpisequal.p = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpisequal.p, align 8
  ret %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %ret = alloca i128, align 8
  store i128 0, i128* %ret, align 4
  %scale = alloca i128, align 8
  store i128 0, i128* %scale, align 4
  %norm_b = alloca [256 x i128]*, align 8
  %norm_b1 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_b1, [256 x i128]** %norm_b, align 8
  %norm_a = alloca [256 x i128]*, align 8
  %norm_a2 = alloca [256 x i128], align 8
  store [256 x i128]* %norm_a2, [256 x i128]** %norm_a, align 8
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b3 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b3
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n4 = load i128, i128* %n.bind, align 4
  %k5 = load i128, i128* %k.bind, align 4
  %add6 = add i128 %k5, 1
  %scale7 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n4, i128 %add6, i128 %scale7, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n8 = load i128, i128* %n.bind, align 4
  %k9 = load i128, i128* %k.bind, align 4
  %scale10 = load i128, i128* %scale, align 4
  %b11 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call12 = call [256 x i128]* @long_scalar_mult(i128 %n8, i128 %k9, i128 %scale10, [256 x i128]* %b11)
  store [256 x i128]* %call12, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b13 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k14 = load i128, i128* %k.bind, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b13, i128 0, i128 %k14
  %norm_b16 = load i128, i128* %array_getter15, align 4
  %ne = icmp ne i128 %norm_b16, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %add19 = add i128 %k18, 1
  %norm_a20 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b21 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call22 = call i128 @short_div_norm(i128 %n17, i128 %add19, [256 x i128]* %norm_a20, [256 x i128]* %norm_b21)
  store i128 %call22, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %norm_a25 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b26 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call27 = call i128 @short_div_norm(i128 %n23, i128 %k24, [256 x i128]* %norm_a25, [256 x i128]* %norm_b26)
  store i128 %call27, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret28 = load i128, i128* %ret, align 4
  ret i128 %ret28
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %read_input_inner.num2bits_strict.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.num2bits_strict.in, i128* %in.bind, align 4
  %aliasCheck = alloca %struct_template_circuit_aliascheck*, align 8
  %n2b = alloca %struct_template_circuit_num2bits*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out2 = bitcast i8* %malloccall1 to [256 x i128]*
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call3 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  store %struct_template_circuit_num2bits* %call3, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load i128, i128* %in.bind, align 4
  %n2b4 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b4, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %in, i1* @constraint.135)
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %in, i128* %write_input_outter.num2bits.in, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b6 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b6, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %i8
  %n2b9 = load i128, i128* %array_getter, align 4
  %out10 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %out10, i128 0, i128 %i11
  %out13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %out13, i128 %n2b9, i1* @constraint.136)
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i15 = load i128, i128* %i, align 4
  %out16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %i15
  store i128 %n2b9, i128* %out16, align 4
  %n2b17 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b17, i32 0, i32 2
  %read_output_outter.num2bits.out19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out19, i128 0, i128 %i20
  %n2b22 = load i128, i128* %array_getter21, align 4
  %aliasCheck23 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck23, i32 0, i32 0
  %read_input_outter.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in, i128 0, i128 %i25
  %aliasCheck27 = load i128, i128* %array_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck27, i128 %n2b22, i1* @constraint.137)
  %ptr_getter28 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter28, i32 0, i32 0
  %read_input_outter.aliascheck.in30 = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %i31 = load i128, i128* %i, align 4
  %aliasCheck32 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in30, i128 0, i128 %i31
  store i128 %n2b22, i128* %aliasCheck32, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i33 = load i128, i128* %i, align 4
  %add = add i128 %i33, 1
  store i128 %add, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i34, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %exit

exit:                                             ; preds = %loop.exit
  %out35 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.num2bits_strict.out = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 1
  store [256 x i128]* %out35, [256 x i128]** %write_output_inner.num2bits_strict.out, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call i128 @long_gt(i128 %n, i128 %k, [256 x i128]* %b, [256 x i128]* %a)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %a3 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %n4 = load i128, i128* %n.bind, align 4
  %k5 = load i128, i128* %k.bind, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %b6 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call7 = call [256 x i128]* @long_sub(i128 %n4, i128 %k5, [256 x i128]* %p, [256 x i128]* %b6)
  %call8 = call [256 x i128]* @long_add(i128 %n1, i128 %k2, [256 x i128]* %a3, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %n9 = load i128, i128* %n.bind, align 4
  %k10 = load i128, i128* %k.bind, align 4
  %a11 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b12 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call13 = call [256 x i128]* @long_sub(i128 %n9, i128 %k10, [256 x i128]* %a11, [256 x i128]* %b12)
  ret [256 x i128]* %call13
}

define void @fn_template_init_modsubthree(%struct_template_circuit_modsubthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 0
  %read_arg_inner.modsubthree.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.modsubthree.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 1
  %read_input_inner.modsubthree.a = load i128, i128* %struct_getter1, align 4
  %a.bind = alloca i128, align 8
  store i128 %read_input_inner.modsubthree.a, i128* %a.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 2
  %read_input_inner.modsubthree.b = load i128, i128* %struct_getter2, align 4
  %b.bind = alloca i128, align 8
  store i128 %read_input_inner.modsubthree.b, i128* %b.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 3
  %read_input_inner.modsubthree.c = load i128, i128* %struct_getter3, align 4
  %c.bind = alloca i128, align 8
  store i128 %read_input_inner.modsubthree.c, i128* %c.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %borrow = bitcast i8* %malloccall to i128*
  store i128 0, i128* %borrow, align 4
  %b_plus_c = alloca i128, align 8
  store i128 0, i128* %b_plus_c, align 4
  %lt = alloca %struct_template_circuit_lessthan*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall4 to i128*
  store i128 0, i128* %out, align 4
  %b = load i128, i128* %b.bind, align 4
  %c = load i128, i128* %c.bind, align 4
  %add = add i128 %b, %c
  %b_plus_c5 = load i128, i128* %b_plus_c, align 4
  call void @fn_intrinsic_add_constraint(i128 %b_plus_c5, i128 %add, i1* @constraint.138)
  store i128 %add, i128* %b_plus_c, align 4
  %n = load i128, i128* %n.bind, align 4
  %add6 = add i128 %n, 1
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %add6)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a = load i128, i128* %a.bind, align 4
  %lt7 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt7, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  %lt9 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt9, i128 %a, i1* @constraint.139)
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %lt12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in11, i128 0, i128 0
  store i128 %a, i128* %lt12, align 4
  %b_plus_c13 = load i128, i128* %b_plus_c, align 4
  %lt14 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt14, i32 0, i32 1
  %read_input_outter.lessthan.in16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in16, i128 0, i128 1
  %lt18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt18, i128 %b_plus_c13, i1* @constraint.140)
  %ptr_getter19 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter19, i32 0, i32 1
  %read_input_outter.lessthan.in21 = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %lt22 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in21, i128 0, i128 1
  store i128 %b_plus_c13, i128* %lt22, align 4
  %lt23 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt23, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter24, align 4
  %borrow25 = load i128, i128* %borrow, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow25, i128 %read_output_outter.lessthan.out, i1* @constraint.141)
  store i128 %read_output_outter.lessthan.out, i128* %borrow, align 4
  %borrow26 = load i128, i128* %borrow, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n27
  %mul = mul i128 %borrow26, %lshift
  %a28 = load i128, i128* %a.bind, align 4
  %add29 = add i128 %mul, %a28
  %b_plus_c30 = load i128, i128* %b_plus_c, align 4
  %sub = sub i128 %add29, %b_plus_c30
  %out31 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out31, i128 %sub, i1* @constraint.142)
  store i128 %sub, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %entry
  %out32 = load i128, i128* %out, align 4
  %write_output_inner.modsubthree.out = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %out32, i128* %write_output_inner.modsubthree.out, align 4
  %borrow33 = load i128, i128* %borrow, align 4
  %write_output_inner.modsubthree.borrow = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %borrow33, i128* %write_output_inner.modsubthree.borrow, align 4
  ret void
}

define %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %0) {
entry:
  %struct_template_circuit_modsubthree = alloca %struct_template_circuit_modsubthree, align 8
  %write_arg_inner.modsubthree.n = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsubthree.n, align 4
  ret %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree
}

define void @fn_template_init_fpiszero(%struct_template_circuit_fpiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 0
  %read_arg_inner.fpiszero.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpiszero.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 1
  %read_arg_inner.fpiszero.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpiszero.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 2
  %read_arg_inner.fpiszero.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpiszero.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 3
  %read_input_inner.fpiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpiszero.in, [256 x i128]** %in.bind, align 8
  %isZero = alloca %struct_template_circuit_bigiszero*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to i128*
  store i128 0, i128* %out, align 4
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt, align 8
  %k4 = load i128, i128* %k.bind, align 4
  %call5 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %k4)
  store %struct_template_circuit_bigiszero* %call5, %struct_template_circuit_bigiszero** %isZero, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i6
  %in7 = load i128, i128* %array_getter, align 4
  %lt8 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt8, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i10
  %lt12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt12, i128 %in7, i1* @constraint.143)
  %ptr_getter = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter, i32 0, i32 2
  %read_input_outter.biglessthan.a14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %i15 = load i128, i128* %i, align 4
  %lt16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a14, i128 0, i128 %i15
  store i128 %in7, i128* %lt16, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i17
  %p19 = load i128, i128* %array_getter18, align 4
  %lt20 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt20, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i22
  %lt24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt24, i128 %p19, i1* @constraint.144)
  %ptr_getter25 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter25, i32 0, i32 3
  %read_input_outter.biglessthan.b27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i28 = load i128, i128* %i, align 4
  %lt29 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b27, i128 0, i128 %i28
  store i128 %p19, i128* %lt29, align 4
  %in30 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %in30, i128 0, i128 %i31
  %in33 = load i128, i128* %array_getter32, align 4
  %isZero34 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %isZero34, i32 0, i32 1
  %read_input_outter.bigiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in, i128 0, i128 %i36
  %isZero38 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %isZero38, i128 %in33, i1* @constraint.145)
  %ptr_getter39 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %ptr_getter39, i32 0, i32 1
  %read_input_outter.bigiszero.in41 = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %i42 = load i128, i128* %i, align 4
  %isZero43 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in41, i128 0, i128 %i42
  store i128 %in33, i128* %isZero43, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i44 = load i128, i128* %i, align 4
  %add = add i128 %i44, 1
  store i128 %add, i128* %i, align 4
  %i45 = load i128, i128* %i, align 4
  %k46 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i45, %k46
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt47 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt47, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.146)
  %isZero49 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %isZero49, i32 0, i32 2
  %read_output_outter.bigiszero.out = load i128, i128* %struct_getter50, align 4
  %out51 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out51, i128 %read_output_outter.bigiszero.out, i1* @constraint.147)
  store i128 %read_output_outter.bigiszero.out, i128* %out, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out52 = load i128, i128* %out, align 4
  %write_output_inner.fpiszero.out = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %out52, i128* %write_output_inner.fpiszero.out, align 4
  ret void
}

define %struct_template_circuit_fpiszero* @fn_template_build_fpiszero(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpiszero = alloca %struct_template_circuit_fpiszero, align 8
  %write_arg_inner.fpiszero.n = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpiszero.n, align 4
  %write_arg_inner.fpiszero.k = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpiszero.k, align 4
  %write_arg_inner.fpiszero.p = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpiszero.p, align 8
  ret %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero
}

define void @fn_template_init_longtoshortnoendcarry(%struct_template_circuit_longtoshortnoendcarry* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 0
  %read_arg_inner.longtoshortnoendcarry.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.longtoshortnoendcarry.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 1
  %read_arg_inner.longtoshortnoendcarry.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.longtoshortnoendcarry.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 2
  %read_input_inner.longtoshortnoendcarry.in = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.longtoshortnoendcarry.in, [256 x i128]** %in.bind, align 8
  %carry = alloca [256 x i128]*, align 8
  %carry3 = alloca [256 x i128], align 8
  store [256 x i128]* %carry3, [256 x i128]** %carry, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %split4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %split4, [256 x [256 x i128]]** %split, align 8
  %runningCarry = alloca [256 x i128]*, align 8
  %runningCarry5 = alloca [256 x i128], align 8
  store [256 x i128]* %runningCarry5, [256 x i128]** %runningCarry, align 8
  %outRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %outRangeChecks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %outRangeChecks6, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %runningCarryRangeChecks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %runningCarryRangeChecks7 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks7, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry8 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry8, [256 x i128]** %sumAndCarry, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out10 = bitcast i8* %malloccall9 to [256 x i128]*
  store [256 x i128]* %out10, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i11
  %in12 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %n13 = load i128, i128* %n.bind, align 4
  %n14 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %in12, i128 %n, i128 %n13, i128 %n14)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i15 = load i128, i128* %i, align 4
  %split16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i15
  %1 = bitcast [256 x i128]* %split16 to i8*
  %2 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i17 = load i128, i128* %i, align 4
  %add = add i128 %i17, 1
  store i128 %add, i128* %i, align 4
  %i18 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i18, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array19 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array19, [256 x i128]** %carry, align 8
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 0
  store i128 0, i128* %carry21, align 4
  %split22 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split22, i128 0, i128 0, i128 0
  %split24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out26 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 0
  store i128 %split24, i128* %out26, align 4
  %k27 = load i128, i128* %k.bind, align 4
  %sgt = icmp sgt i128 %k27, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %split28 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter29 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split28, i128 0, i128 0, i128 1
  %split30 = load i128, i128* %array_getter29, align 4
  %split31 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter32 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split31, i128 0, i128 1, i128 0
  %split33 = load i128, i128* %array_getter32, align 4
  %add34 = add i128 %split30, %split33
  %n35 = load i128, i128* %n.bind, align 4
  %n36 = load i128, i128* %n.bind, align 4
  %call37 = call [2 x i128]* @SplitFn(i128 %add34, i128 %n35, i128 %n36)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %3 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %4 = bitcast [2 x i128]* %call37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry38 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry38, i128 0, i128 0
  %sumAndCarry40 = load i128, i128* %array_getter39, align 4
  %ptr_getter41 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter41, i128 0, i128 1
  store i128 %sumAndCarry40, i128* %out42, align 4
  %sumAndCarry43 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry43, i128 0, i128 1
  %sumAndCarry45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 1
  store i128 %sumAndCarry45, i128* %carry47, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.exit
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k50 = load i128, i128* %k.bind, align 4
  %sgt51 = icmp sgt i128 %k50, 2
  br i1 %sgt51, label %if.true48, label %if.false49

if.true48:                                        ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body52

if.false49:                                       ; preds = %if.exit
  br label %if.exit117

loop.body52:                                      ; preds = %loop.latch90, %if.true48
  %split53 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split53, i128 0, i128 %i54, i128 0
  %split56 = load i128, i128* %array_getter55, align 4
  %split57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i58 = load i128, i128* %i, align 4
  %sub = sub i128 %i58, 1
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split57, i128 0, i128 %sub, i128 1
  %split60 = load i128, i128* %array_getter59, align 4
  %add61 = add i128 %split56, %split60
  %split62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i63 = load i128, i128* %i, align 4
  %sub64 = sub i128 %i63, 2
  %array_getter65 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split62, i128 0, i128 %sub64, i128 2
  %split66 = load i128, i128* %array_getter65, align 4
  %add67 = add i128 %add61, %split66
  %carry68 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i69 = load i128, i128* %i, align 4
  %sub70 = sub i128 %i69, 1
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %carry68, i128 0, i128 %sub70
  %carry72 = load i128, i128* %array_getter71, align 4
  %add73 = add i128 %add67, %carry72
  %n74 = load i128, i128* %n.bind, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %call76 = call [2 x i128]* @SplitFn(i128 %add73, i128 %n74, i128 %n75)
  %memcpy_ptr77 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr77 to i8*
  %6 = bitcast [2 x i128]* %call76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry78 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry78, i128 0, i128 0
  %sumAndCarry80 = load i128, i128* %array_getter79, align 4
  %ptr_getter81 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i82 = load i128, i128* %i, align 4
  %out83 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter81, i128 0, i128 %i82
  store i128 %sumAndCarry80, i128* %out83, align 4
  %sumAndCarry84 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry84, i128 0, i128 1
  %sumAndCarry86 = load i128, i128* %array_getter85, align 4
  %ptr_getter87 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i88 = load i128, i128* %i, align 4
  %carry89 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter87, i128 0, i128 %i88
  store i128 %sumAndCarry86, i128* %carry89, align 4
  br label %loop.latch90

loop.latch90:                                     ; preds = %loop.body52
  %i91 = load i128, i128* %i, align 4
  %add92 = add i128 %i91, 1
  store i128 %add92, i128* %i, align 4
  %i93 = load i128, i128* %i, align 4
  %k94 = load i128, i128* %k.bind, align 4
  %slt95 = icmp slt i128 %i93, %k94
  br i1 %slt95, label %loop.body52, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch90
  %split97 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k98 = load i128, i128* %k.bind, align 4
  %sub99 = sub i128 %k98, 1
  %array_getter100 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split97, i128 0, i128 %sub99, i128 1
  %split101 = load i128, i128* %array_getter100, align 4
  %split102 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k103 = load i128, i128* %k.bind, align 4
  %sub104 = sub i128 %k103, 2
  %array_getter105 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split102, i128 0, i128 %sub104, i128 2
  %split106 = load i128, i128* %array_getter105, align 4
  %add107 = add i128 %split101, %split106
  %carry108 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k109 = load i128, i128* %k.bind, align 4
  %sub110 = sub i128 %k109, 1
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %carry108, i128 0, i128 %sub110
  %carry112 = load i128, i128* %array_getter111, align 4
  %add113 = add i128 %add107, %carry112
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k115 = load i128, i128* %k.bind, align 4
  %out116 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 %k115
  store i128 %add113, i128* %out116, align 4
  br label %if.exit117

if.exit117:                                       ; preds = %if.false49, %loop.exit96
  store i128 0, i128* %i, align 4
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch137, %if.exit117
  %n119 = load i128, i128* %n.bind, align 4
  %call120 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n119)
  %ptr_getter121 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i122 = load i128, i128* %i, align 4
  %outRangeChecks123 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter121, i128 0, i128 %i122
  store %struct_template_circuit_num2bits* %call120, %struct_template_circuit_num2bits** %outRangeChecks123, align 8
  %out124 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %out124, i128 0, i128 %i125
  %out127 = load i128, i128* %array_getter126, align 4
  %outRangeChecks128 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i129 = load i128, i128* %i, align 4
  %array_getter130 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks128, i128 0, i128 %i129
  %outRangeChecks131 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter130, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks131, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter132, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out127, i1* @constraint.148)
  %ptr_getter133 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i134 = load i128, i128* %i, align 4
  %array_getter135 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter133, i128 0, i128 %i134
  %outRangeChecks136 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter135, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks136, i32 0, i32 1
  store i128 %out127, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch137

loop.latch137:                                    ; preds = %loop.body118
  %i138 = load i128, i128* %i, align 4
  %add139 = add i128 %i138, 1
  store i128 %add139, i128* %i, align 4
  %i140 = load i128, i128* %i, align 4
  %k141 = load i128, i128* %k.bind, align 4
  %add142 = add i128 %k141, 1
  %slt143 = icmp slt i128 %i140, %add142
  br i1 %slt143, label %loop.body118, label %loop.exit144

loop.exit144:                                     ; preds = %loop.latch137
  %in145 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %in145, i128 0, i128 0
  %in147 = load i128, i128* %array_getter146, align 4
  %out148 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter149 = getelementptr inbounds [256 x i128], [256 x i128]* %out148, i128 0, i128 0
  %out150 = load i128, i128* %array_getter149, align 4
  %sub151 = sub i128 %in147, %out150
  %n152 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n152
  %sdiv = sdiv i128 %sub151, %lshift
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %runningCarry154 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 0
  store i128 %sdiv, i128* %runningCarry154, align 4
  %n155 = load i128, i128* %n.bind, align 4
  %k156 = load i128, i128* %k.bind, align 4
  %call157 = call i128 @log_ceil(i128 %k156)
  %add158 = add i128 %n155, %call157
  %call159 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add158)
  %ptr_getter160 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %runningCarryRangeChecks161 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter160, i128 0, i128 0
  store %struct_template_circuit_num2bits* %call159, %struct_template_circuit_num2bits** %runningCarryRangeChecks161, align 8
  %runningCarry162 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %array_getter163 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry162, i128 0, i128 0
  %runningCarry164 = load i128, i128* %array_getter163, align 4
  %runningCarryRangeChecks165 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter166 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks165, i128 0, i128 0
  %runningCarryRangeChecks167 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter166, align 8
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks167, i32 0, i32 1
  %read_input_outter.num2bits.in169 = load i128, i128* %struct_getter168, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in169, i128 %runningCarry164, i1* @constraint.149)
  %ptr_getter170 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter171 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter170, i128 0, i128 0
  %runningCarryRangeChecks172 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter171, align 8
  %write_input_outter.num2bits.in173 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks172, i32 0, i32 1
  store i128 %runningCarry164, i128* %write_input_outter.num2bits.in173, align 4
  %runningCarry174 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %array_getter175 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry174, i128 0, i128 0
  %runningCarry176 = load i128, i128* %array_getter175, align 4
  %n177 = load i128, i128* %n.bind, align 4
  %lshift178 = shl i128 1, %n177
  %mul = mul i128 %runningCarry176, %lshift178
  %in179 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter180 = getelementptr inbounds [256 x i128], [256 x i128]* %in179, i128 0, i128 0
  %in181 = load i128, i128* %array_getter180, align 4
  %out182 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %out182, i128 0, i128 0
  %out184 = load i128, i128* %array_getter183, align 4
  %sub185 = sub i128 %in181, %out184
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %sub185, i1* @constraint.150)
  store i128 1, i128* %i, align 4
  br label %loop.body186

loop.body186:                                     ; preds = %loop.latch253, %loop.exit144
  %in187 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i188 = load i128, i128* %i, align 4
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %in187, i128 0, i128 %i188
  %in190 = load i128, i128* %array_getter189, align 4
  %out191 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i192 = load i128, i128* %i, align 4
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %out191, i128 0, i128 %i192
  %out194 = load i128, i128* %array_getter193, align 4
  %sub195 = sub i128 %in190, %out194
  %runningCarry196 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i197 = load i128, i128* %i, align 4
  %sub198 = sub i128 %i197, 1
  %array_getter199 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry196, i128 0, i128 %sub198
  %runningCarry200 = load i128, i128* %array_getter199, align 4
  %add201 = add i128 %sub195, %runningCarry200
  %n202 = load i128, i128* %n.bind, align 4
  %lshift203 = shl i128 1, %n202
  %sdiv204 = sdiv i128 %add201, %lshift203
  %ptr_getter205 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i206 = load i128, i128* %i, align 4
  %runningCarry207 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter205, i128 0, i128 %i206
  store i128 %sdiv204, i128* %runningCarry207, align 4
  %n208 = load i128, i128* %n.bind, align 4
  %k209 = load i128, i128* %k.bind, align 4
  %call210 = call i128 @log_ceil(i128 %k209)
  %add211 = add i128 %n208, %call210
  %call212 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add211)
  %ptr_getter213 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i214 = load i128, i128* %i, align 4
  %runningCarryRangeChecks215 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter213, i128 0, i128 %i214
  store %struct_template_circuit_num2bits* %call212, %struct_template_circuit_num2bits** %runningCarryRangeChecks215, align 8
  %runningCarry216 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i217 = load i128, i128* %i, align 4
  %array_getter218 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry216, i128 0, i128 %i217
  %runningCarry219 = load i128, i128* %array_getter218, align 4
  %runningCarryRangeChecks220 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i221 = load i128, i128* %i, align 4
  %array_getter222 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks220, i128 0, i128 %i221
  %runningCarryRangeChecks223 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter222, align 8
  %struct_getter224 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks223, i32 0, i32 1
  %read_input_outter.num2bits.in225 = load i128, i128* %struct_getter224, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in225, i128 %runningCarry219, i1* @constraint.151)
  %ptr_getter226 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter226, i128 0, i128 %i227
  %runningCarryRangeChecks229 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter228, align 8
  %write_input_outter.num2bits.in230 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks229, i32 0, i32 1
  store i128 %runningCarry219, i128* %write_input_outter.num2bits.in230, align 4
  %runningCarry231 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry231, i128 0, i128 %i232
  %runningCarry234 = load i128, i128* %array_getter233, align 4
  %n235 = load i128, i128* %n.bind, align 4
  %lshift236 = shl i128 1, %n235
  %mul237 = mul i128 %runningCarry234, %lshift236
  %in238 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i239 = load i128, i128* %i, align 4
  %array_getter240 = getelementptr inbounds [256 x i128], [256 x i128]* %in238, i128 0, i128 %i239
  %in241 = load i128, i128* %array_getter240, align 4
  %out242 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i243 = load i128, i128* %i, align 4
  %array_getter244 = getelementptr inbounds [256 x i128], [256 x i128]* %out242, i128 0, i128 %i243
  %out245 = load i128, i128* %array_getter244, align 4
  %sub246 = sub i128 %in241, %out245
  %runningCarry247 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i248 = load i128, i128* %i, align 4
  %sub249 = sub i128 %i248, 1
  %array_getter250 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry247, i128 0, i128 %sub249
  %runningCarry251 = load i128, i128* %array_getter250, align 4
  %add252 = add i128 %sub246, %runningCarry251
  call void @fn_intrinsic_add_constraint(i128 %mul237, i128 %add252, i1* @constraint.152)
  br label %loop.latch253

loop.latch253:                                    ; preds = %loop.body186
  %i254 = load i128, i128* %i, align 4
  %add255 = add i128 %i254, 1
  store i128 %add255, i128* %i, align 4
  %i256 = load i128, i128* %i, align 4
  %k257 = load i128, i128* %k.bind, align 4
  %slt258 = icmp slt i128 %i256, %k257
  br i1 %slt258, label %loop.body186, label %loop.exit259

loop.exit259:                                     ; preds = %loop.latch253
  %runningCarry260 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %k261 = load i128, i128* %k.bind, align 4
  %sub262 = sub i128 %k261, 1
  %array_getter263 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry260, i128 0, i128 %sub262
  %runningCarry264 = load i128, i128* %array_getter263, align 4
  %out265 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k266 = load i128, i128* %k.bind, align 4
  %array_getter267 = getelementptr inbounds [256 x i128], [256 x i128]* %out265, i128 0, i128 %k266
  %out268 = load i128, i128* %array_getter267, align 4
  call void @fn_intrinsic_add_constraint(i128 %runningCarry264, i128 %out268, i1* @constraint.153)
  br label %exit

exit:                                             ; preds = %loop.exit259
  %out269 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.longtoshortnoendcarry.out = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 3
  store [256 x i128]* %out269, [256 x i128]** %write_output_inner.longtoshortnoendcarry.out, align 8
  ret void
}

define %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_longtoshortnoendcarry = alloca %struct_template_circuit_longtoshortnoendcarry, align 8
  %write_arg_inner.longtoshortnoendcarry.n = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.longtoshortnoendcarry.n, align 4
  %write_arg_inner.longtoshortnoendcarry.k = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.longtoshortnoendcarry.k, align 4
  ret %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry
}

define void @fn_template_init_bigsub(%struct_template_circuit_bigsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 0
  %read_arg_inner.bigsub.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigsub.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 1
  %read_arg_inner.bigsub.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigsub.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 2
  %read_input_inner.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigsub.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 3
  %read_input_inner.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigsub.b, [256 x i128]** %b.bind, align 8
  %unit = alloca [256 x %struct_template_circuit_modsubthree*]*, align 8
  %unit4 = alloca [256 x %struct_template_circuit_modsubthree*], align 8
  store [256 x %struct_template_circuit_modsubthree*]* %unit4, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %underflow = bitcast i8* %malloccall7 to i128*
  store i128 0, i128* %underflow, align 4
  %unit0 = alloca %struct_template_circuit_modsub*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %n)
  store %struct_template_circuit_modsub* %call, %struct_template_circuit_modsub** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a8 = load i128, i128* %array_getter, align 4
  %unit09 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit09, i32 0, i32 1
  %read_input_outter.modsub.a = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsub.a, i128 %a8, i1* @constraint.154)
  %ptr_getter = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %write_input_outter.modsub.a = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter, i32 0, i32 1
  store i128 %a8, i128* %write_input_outter.modsub.a, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b12 = load i128, i128* %array_getter11, align 4
  %unit013 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit013, i32 0, i32 2
  %read_input_outter.modsub.b = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsub.b, i128 %b12, i1* @constraint.155)
  %ptr_getter15 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %write_input_outter.modsub.b = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter15, i32 0, i32 2
  store i128 %b12, i128* %write_input_outter.modsub.b, align 4
  %unit016 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit016, i32 0, i32 3
  %read_output_outter.modsub.out = load i128, i128* %struct_getter17, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %read_output_outter.modsub.out, i1* @constraint.156)
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 0
  store i128 %read_output_outter.modsub.out, i128* %out22, align 4
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n23 = load i128, i128* %n.bind, align 4
  %call24 = call %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %n23)
  %ptr_getter25 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i26 = load i128, i128* %i, align 4
  %sub = sub i128 %i26, 1
  %unit27 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter25, i128 0, i128 %sub
  store %struct_template_circuit_modsubthree* %call24, %struct_template_circuit_modsubthree** %unit27, align 8
  %a28 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %a28, i128 0, i128 %i29
  %a31 = load i128, i128* %array_getter30, align 4
  %unit32 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i33 = load i128, i128* %i, align 4
  %sub34 = sub i128 %i33, 1
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit32, i128 0, i128 %sub34
  %unit36 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter35, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit36, i32 0, i32 1
  %read_input_outter.modsubthree.a = load i128, i128* %struct_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.a, i128 %a31, i1* @constraint.157)
  %ptr_getter38 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i39 = load i128, i128* %i, align 4
  %sub40 = sub i128 %i39, 1
  %array_getter41 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter38, i128 0, i128 %sub40
  %unit42 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter41, align 8
  %write_input_outter.modsubthree.a = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit42, i32 0, i32 1
  store i128 %a31, i128* %write_input_outter.modsubthree.a, align 4
  %b43 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %b43, i128 0, i128 %i44
  %b46 = load i128, i128* %array_getter45, align 4
  %unit47 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i48 = load i128, i128* %i, align 4
  %sub49 = sub i128 %i48, 1
  %array_getter50 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit47, i128 0, i128 %sub49
  %unit51 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter50, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit51, i32 0, i32 2
  %read_input_outter.modsubthree.b = load i128, i128* %struct_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.b, i128 %b46, i1* @constraint.158)
  %ptr_getter53 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i54 = load i128, i128* %i, align 4
  %sub55 = sub i128 %i54, 1
  %array_getter56 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter53, i128 0, i128 %sub55
  %unit57 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter56, align 8
  %write_input_outter.modsubthree.b = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit57, i32 0, i32 2
  store i128 %b46, i128* %write_input_outter.modsubthree.b, align 4
  %i58 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i58, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit059 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit059, i32 0, i32 4
  %read_output_outter.modsub.borrow = load i128, i128* %struct_getter60, align 4
  %unit61 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i62 = load i128, i128* %i, align 4
  %sub63 = sub i128 %i62, 1
  %array_getter64 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit61, i128 0, i128 %sub63
  %unit65 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter64, align 8
  %struct_getter66 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit65, i32 0, i32 3
  %read_input_outter.modsubthree.c = load i128, i128* %struct_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.c, i128 %read_output_outter.modsub.borrow, i1* @constraint.159)
  %ptr_getter67 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i68 = load i128, i128* %i, align 4
  %sub69 = sub i128 %i68, 1
  %array_getter70 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter67, i128 0, i128 %sub69
  %unit71 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter70, align 8
  %write_input_outter.modsubthree.c = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit71, i32 0, i32 3
  store i128 %read_output_outter.modsub.borrow, i128* %write_input_outter.modsubthree.c, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit72 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i73 = load i128, i128* %i, align 4
  %sub74 = sub i128 %i73, 2
  %array_getter75 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit72, i128 0, i128 %sub74
  %unit76 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter75, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit76, i32 0, i32 5
  %read_output_outter.modsubthree.borrow = load i128, i128* %struct_getter77, align 4
  %unit78 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i79 = load i128, i128* %i, align 4
  %sub80 = sub i128 %i79, 1
  %array_getter81 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit78, i128 0, i128 %sub80
  %unit82 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter81, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit82, i32 0, i32 3
  %read_input_outter.modsubthree.c84 = load i128, i128* %struct_getter83, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.c84, i128 %read_output_outter.modsubthree.borrow, i1* @constraint.160)
  %ptr_getter85 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i86 = load i128, i128* %i, align 4
  %sub87 = sub i128 %i86, 1
  %array_getter88 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter85, i128 0, i128 %sub87
  %unit89 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter88, align 8
  %write_input_outter.modsubthree.c90 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit89, i32 0, i32 3
  store i128 %read_output_outter.modsubthree.borrow, i128* %write_input_outter.modsubthree.c90, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit91 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i92 = load i128, i128* %i, align 4
  %sub93 = sub i128 %i92, 1
  %array_getter94 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit91, i128 0, i128 %sub93
  %unit95 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter94, align 8
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit95, i32 0, i32 4
  %read_output_outter.modsubthree.out = load i128, i128* %struct_getter96, align 4
  %out97 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i98 = load i128, i128* %i, align 4
  %array_getter99 = getelementptr inbounds [256 x i128], [256 x i128]* %out97, i128 0, i128 %i98
  %out100 = load i128, i128* %array_getter99, align 4
  call void @fn_intrinsic_add_constraint(i128 %out100, i128 %read_output_outter.modsubthree.out, i1* @constraint.161)
  %ptr_getter101 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i102 = load i128, i128* %i, align 4
  %out103 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter101, i128 0, i128 %i102
  store i128 %read_output_outter.modsubthree.out, i128* %out103, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i104 = load i128, i128* %i, align 4
  %add = add i128 %i104, 1
  store i128 %add, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i105, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit106 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %k107 = load i128, i128* %k.bind, align 4
  %sub108 = sub i128 %k107, 2
  %array_getter109 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit106, i128 0, i128 %sub108
  %unit110 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter109, align 8
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit110, i32 0, i32 5
  %read_output_outter.modsubthree.borrow112 = load i128, i128* %struct_getter111, align 4
  %underflow113 = load i128, i128* %underflow, align 4
  call void @fn_intrinsic_add_constraint(i128 %underflow113, i128 %read_output_outter.modsubthree.borrow112, i1* @constraint.162)
  store i128 %read_output_outter.modsubthree.borrow112, i128* %underflow, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %out114 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigsub.out = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 4
  store [256 x i128]* %out114, [256 x i128]** %write_output_inner.bigsub.out, align 8
  %underflow115 = load i128, i128* %underflow, align 4
  %write_output_inner.bigsub.underflow = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %underflow115, i128* %write_output_inner.bigsub.underflow, align 4
  ret void
}

define %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsub = alloca %struct_template_circuit_bigsub, align 8
  %write_arg_inner.bigsub.n = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigsub.n, align 4
  %write_arg_inner.bigsub.k = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigsub.k, align 4
  ret %struct_template_circuit_bigsub* %struct_template_circuit_bigsub
}

define void @fn_template_init_fpnegate(%struct_template_circuit_fpnegate* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 0
  %read_arg_inner.fpnegate.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpnegate.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 1
  %read_arg_inner.fpnegate.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpnegate.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 2
  %read_arg_inner.fpnegate.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpnegate.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 3
  %read_input_inner.fpnegate.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpnegate.in, [256 x i128]** %in.bind, align 8
  %neg = alloca %struct_template_circuit_bigsub*, align 8
  %is_zero = alloca %struct_template_circuit_bigiszero*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out5 = bitcast i8* %malloccall4 to [256 x i128]*
  store [256 x i128]* %out5, [256 x i128]** %out, align 8
  %idx = alloca i128, align 8
  store i128 0, i128* %idx, align 4
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n, i128 %k)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %neg, align 8
  %k6 = load i128, i128* %k.bind, align 4
  %call7 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %k6)
  store %struct_template_circuit_bigiszero* %call7, %struct_template_circuit_bigiszero** %is_zero, align 8
  store i128 0, i128* %idx, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %idx8 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %idx8
  %p9 = load i128, i128* %array_getter, align 4
  %neg10 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg10, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %idx12 = load i128, i128* %idx, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %idx12
  %neg14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg14, i128 %p9, i1* @constraint.163)
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %idx17 = load i128, i128* %idx, align 4
  %neg18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a16, i128 0, i128 %idx17
  store i128 %p9, i128* %neg18, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %idx19 = load i128, i128* %idx, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %idx19
  %in21 = load i128, i128* %array_getter20, align 4
  %neg22 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg22, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %idx24 = load i128, i128* %idx, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %idx24
  %neg26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg26, i128 %in21, i1* @constraint.164)
  %ptr_getter27 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter27, i32 0, i32 3
  %read_input_outter.bigsub.b29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %idx30 = load i128, i128* %idx, align 4
  %neg31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b29, i128 0, i128 %idx30
  store i128 %in21, i128* %neg31, align 4
  %in32 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %idx33 = load i128, i128* %idx, align 4
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %in32, i128 0, i128 %idx33
  %in35 = load i128, i128* %array_getter34, align 4
  %is_zero36 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %is_zero, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %is_zero36, i32 0, i32 1
  %read_input_outter.bigiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %idx38 = load i128, i128* %idx, align 4
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in, i128 0, i128 %idx38
  %is_zero40 = load i128, i128* %array_getter39, align 4
  call void @fn_intrinsic_add_constraint(i128 %is_zero40, i128 %in35, i1* @constraint.165)
  %ptr_getter41 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %is_zero, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %ptr_getter41, i32 0, i32 1
  %read_input_outter.bigiszero.in43 = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %idx44 = load i128, i128* %idx, align 4
  %is_zero45 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in43, i128 0, i128 %idx44
  store i128 %in35, i128* %is_zero45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %idx46 = load i128, i128* %idx, align 4
  %add = add i128 %idx46, 1
  store i128 %add, i128* %idx, align 4
  %idx47 = load i128, i128* %idx, align 4
  %k48 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx47, %k48
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %neg49 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg49, i32 0, i32 5
  %read_output_outter.bigsub.underflow = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.bigsub.underflow, i128 0, i1* @constraint.166)
  store i128 0, i128* %idx, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch66, %loop.exit
  %is_zero52 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %is_zero, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %is_zero52, i32 0, i32 2
  %read_output_outter.bigiszero.out = load i128, i128* %struct_getter53, align 4
  %sub = sub i128 1, %read_output_outter.bigiszero.out
  %neg54 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg54, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %idx56 = load i128, i128* %idx, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %idx56
  %neg58 = load i128, i128* %array_getter57, align 4
  %mul = mul i128 %sub, %neg58
  %out59 = load [256 x i128]*, [256 x i128]** %out, align 8
  %idx60 = load i128, i128* %idx, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %out59, i128 0, i128 %idx60
  %out62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_add_constraint(i128 %out62, i128 %mul, i1* @constraint.167)
  %ptr_getter63 = load [256 x i128]*, [256 x i128]** %out, align 8
  %idx64 = load i128, i128* %idx, align 4
  %out65 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter63, i128 0, i128 %idx64
  store i128 %mul, i128* %out65, align 4
  br label %loop.latch66

loop.latch66:                                     ; preds = %loop.body51
  %idx67 = load i128, i128* %idx, align 4
  %add68 = add i128 %idx67, 1
  store i128 %add68, i128* %idx, align 4
  %idx69 = load i128, i128* %idx, align 4
  %k70 = load i128, i128* %k.bind, align 4
  %slt71 = icmp slt i128 %idx69, %k70
  br i1 %slt71, label %loop.body51, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch66
  br label %exit

exit:                                             ; preds = %loop.exit72
  %out73 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpnegate.out = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 4
  store [256 x i128]* %out73, [256 x i128]** %write_output_inner.fpnegate.out, align 8
  ret void
}

define %struct_template_circuit_fpnegate* @fn_template_build_fpnegate(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpnegate = alloca %struct_template_circuit_fpnegate, align 8
  %write_arg_inner.fpnegate.n = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpnegate.n, align 4
  %write_arg_inner.fpnegate.k = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpnegate.k, align 4
  %write_arg_inner.fpnegate.p = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpnegate.p, align 8
  ret %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %b.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %mult_shift = alloca [256 x i128]*, align 8
  %mult_shift1 = alloca [256 x i128], align 8
  store [256 x i128]* %mult_shift1, [256 x i128]** %mult_shift, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %dividend = alloca [256 x i128]*, align 8
  %dividend2 = alloca [256 x i128], align 8
  store [256 x i128]* %dividend2, [256 x i128]** %dividend, align 8
  %subtrahend = alloca [256 x i128]*, align 8
  %subtrahend3 = alloca [256 x i128], align 8
  store [256 x i128]* %subtrahend3, [256 x i128]** %subtrahend, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out4, [256 x [256 x i128]]** %out, align 8
  %remainder = alloca [256 x i128]*, align 8
  %remainder5 = alloca [256 x i128], align 8
  store [256 x i128]* %remainder5, [256 x i128]** %remainder, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array6 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array6, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i9 = load i128, i128* %i, align 4
  %remainder10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i9
  store i128 %a8, i128* %remainder10, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add = add i128 %i11, 1
  store i128 %add, i128* %i, align 4
  %i12 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %add13 = add i128 %m, %k
  %slt = icmp slt i128 %i12, %add13
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %dividend, align 8
  %m15 = load i128, i128* %m.bind, align 4
  store i128 %m15, i128* %i, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch115, %loop.exit
  %i17 = load i128, i128* %i, align 4
  %m18 = load i128, i128* %m.bind, align 4
  %eq = icmp eq i128 %i17, %m18
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body16
  %ptr_getter19 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k20 = load i128, i128* %k.bind, align 4
  %dividend21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter19, i128 0, i128 %k20
  store i128 0, i128* %dividend21, align 4
  %k22 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k22, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body23

if.false:                                         ; preds = %loop.body16
  %k38 = load i128, i128* %k.bind, align 4
  store i128 %k38, i128* %j, align 4
  br label %loop.body39

loop.body23:                                      ; preds = %loop.latch33, %if.true
  %remainder24 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j25 = load i128, i128* %j, align 4
  %m26 = load i128, i128* %m.bind, align 4
  %add27 = add i128 %j25, %m26
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder24, i128 0, i128 %add27
  %remainder29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j31 = load i128, i128* %j, align 4
  %dividend32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 %j31
  store i128 %remainder29, i128* %dividend32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body23
  %j34 = load i128, i128* %j, align 4
  %sub35 = sub i128 %j34, 1
  store i128 %sub35, i128* %j, align 4
  %j36 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j36, 0
  br i1 %sge, label %loop.body23, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch33
  br label %if.exit

loop.body39:                                      ; preds = %loop.latch49, %if.false
  %remainder40 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j41 = load i128, i128* %j, align 4
  %i42 = load i128, i128* %i, align 4
  %add43 = add i128 %j41, %i42
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder40, i128 0, i128 %add43
  %remainder45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j47 = load i128, i128* %j, align 4
  %dividend48 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 %j47
  store i128 %remainder45, i128* %dividend48, align 4
  br label %loop.latch49

loop.latch49:                                     ; preds = %loop.body39
  %j50 = load i128, i128* %j, align 4
  %sub51 = sub i128 %j50, 1
  store i128 %sub51, i128* %j, align 4
  %j52 = load i128, i128* %j, align 4
  %sge53 = icmp sge i128 %j52, 0
  br i1 %sge53, label %loop.body39, label %loop.exit54

loop.exit54:                                      ; preds = %loop.latch49
  br label %if.exit

if.exit:                                          ; preds = %loop.exit54, %loop.exit37
  %n = load i128, i128* %n.bind, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %dividend56 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call i128 @short_div(i128 %n, i128 %k55, [256 x i128]* %dividend56, [256 x i128]* %b)
  %ptr_getter57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i58 = load i128, i128* %i, align 4
  %out59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter57, i128 0, i128 0, i128 %i58
  store i128 %call, i128* %out59, align 4
  %n60 = load i128, i128* %n.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %out62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out62, i128 0, i128 0, i128 %i63
  %out65 = load i128, i128* %array_getter64, align 4
  %b66 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call67 = call [256 x i128]* @long_scalar_mult(i128 %n60, i128 %k61, i128 %out65, [256 x i128]* %b66)
  store [256 x i128]* %call67, [256 x i128]** %mult_shift, align 8
  %uniform_array68 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array68, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body69

loop.body69:                                      ; preds = %loop.latch73, %if.exit
  %ptr_getter70 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j71 = load i128, i128* %j, align 4
  %subtrahend72 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter70, i128 0, i128 %j71
  store i128 0, i128* %subtrahend72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body69
  %j74 = load i128, i128* %j, align 4
  %add75 = add i128 %j74, 1
  store i128 %add75, i128* %j, align 4
  %j76 = load i128, i128* %j, align 4
  %m77 = load i128, i128* %m.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %add79 = add i128 %m77, %k78
  %slt80 = icmp slt i128 %j76, %add79
  br i1 %slt80, label %loop.body69, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch73
  store i128 0, i128* %j, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch102, %loop.exit81
  %i85 = load i128, i128* %i, align 4
  %j86 = load i128, i128* %j, align 4
  %add87 = add i128 %i85, %j86
  %m88 = load i128, i128* %m.bind, align 4
  %k89 = load i128, i128* %k.bind, align 4
  %add90 = add i128 %m88, %k89
  %slt91 = icmp slt i128 %add87, %add90
  br i1 %slt91, label %if.true83, label %if.false84

if.true83:                                        ; preds = %loop.body82
  %mult_shift92 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j93 = load i128, i128* %j, align 4
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift92, i128 0, i128 %j93
  %mult_shift95 = load i128, i128* %array_getter94, align 4
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i97 = load i128, i128* %i, align 4
  %j98 = load i128, i128* %j, align 4
  %add99 = add i128 %i97, %j98
  %subtrahend100 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 %add99
  store i128 %mult_shift95, i128* %subtrahend100, align 4
  br label %if.exit101

if.false84:                                       ; preds = %loop.body82
  br label %if.exit101

if.exit101:                                       ; preds = %if.false84, %if.true83
  br label %loop.latch102

loop.latch102:                                    ; preds = %if.exit101
  %j103 = load i128, i128* %j, align 4
  %add104 = add i128 %j103, 1
  store i128 %add104, i128* %j, align 4
  %j105 = load i128, i128* %j, align 4
  %k106 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %j105, %k106
  br i1 %sle, label %loop.body82, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch102
  %n108 = load i128, i128* %n.bind, align 4
  %m109 = load i128, i128* %m.bind, align 4
  %k110 = load i128, i128* %k.bind, align 4
  %add111 = add i128 %m109, %k110
  %remainder112 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend113 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call114 = call [256 x i128]* @long_sub(i128 %n108, i128 %add111, [256 x i128]* %remainder112, [256 x i128]* %subtrahend113)
  store [256 x i128]* %call114, [256 x i128]** %remainder, align 8
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.exit107
  %i116 = load i128, i128* %i, align 4
  %sub117 = sub i128 %i116, 1
  store i128 %sub117, i128* %i, align 4
  %i118 = load i128, i128* %i, align 4
  %sge119 = icmp sge i128 %i118, 0
  br i1 %sge119, label %loop.body16, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch115
  store i128 0, i128* %i, align 4
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch129, %loop.exit120
  %remainder122 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i123 = load i128, i128* %i, align 4
  %array_getter124 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder122, i128 0, i128 %i123
  %remainder125 = load i128, i128* %array_getter124, align 4
  %ptr_getter126 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i127 = load i128, i128* %i, align 4
  %out128 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter126, i128 0, i128 1, i128 %i127
  store i128 %remainder125, i128* %out128, align 4
  br label %loop.latch129

loop.latch129:                                    ; preds = %loop.body121
  %i130 = load i128, i128* %i, align 4
  %add131 = add i128 %i130, 1
  store i128 %add131, i128* %i, align 4
  %i132 = load i128, i128* %i, align 4
  %k133 = load i128, i128* %k.bind, align 4
  %slt134 = icmp slt i128 %i132, %k133
  br i1 %slt134, label %loop.body121, label %loop.exit135

loop.exit135:                                     ; preds = %loop.latch129
  %ptr_getter136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k137 = load i128, i128* %k.bind, align 4
  %out138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter136, i128 0, i128 1, i128 %k137
  store i128 0, i128* %out138, align 4
  %out139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out139
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %sum = alloca [256 x i128]*, align 8
  %sum1 = alloca [256 x i128], align 8
  store [256 x i128]* %sum1, [256 x i128]** %sum, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp2 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp2, [256 x [256 x i128]]** %temp, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %sum5 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 1, [256 x i128]* %sum5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define void @fn_template_init_bigmult(%struct_template_circuit_bigmult* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 0
  %read_arg_inner.bigmult.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmult.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 1
  %read_arg_inner.bigmult.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmult.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 2
  %read_input_inner.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmult.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 3
  %read_input_inner.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmult.b, [256 x i128]** %b.bind, align 8
  %longshort = alloca %struct_template_circuit_longtoshortnoendcarry*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out5 = bitcast i8* %malloccall4 to [256 x i128]*
  store [256 x i128]* %out5, [256 x i128]** %out, align 8
  %mult = alloca %struct_template_circuit_bigmultshortlong*, align 8
  %LOGK = alloca i128, align 8
  store i128 0, i128* %LOGK, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call i128 @log_ceil(i128 %k)
  store i128 %call, i128* %LOGK, align 4
  %n = load i128, i128* %n.bind, align 4
  %k6 = load i128, i128* %k.bind, align 4
  %n7 = load i128, i128* %n.bind, align 4
  %mul = mul i128 2, %n7
  %LOGK8 = load i128, i128* %LOGK, align 4
  %add = add i128 %mul, %LOGK8
  %call9 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %n, i128 %k6, i128 %add)
  store %struct_template_circuit_bigmultshortlong* %call9, %struct_template_circuit_bigmultshortlong** %mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i10
  %a11 = load i128, i128* %array_getter, align 4
  %mult12 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult12, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a, i128 0, i128 %i14
  %mult16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult16, i128 %a11, i1* @constraint.168)
  %ptr_getter = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %i19 = load i128, i128* %i, align 4
  %mult20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a18, i128 0, i128 %i19
  store i128 %a11, i128* %mult20, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i21
  %b23 = load i128, i128* %array_getter22, align 4
  %mult24 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult24, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b, i128 0, i128 %i26
  %mult28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult28, i128 %b23, i1* @constraint.169)
  %ptr_getter29 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter29, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %i32 = load i128, i128* %i, align 4
  %mult33 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b31, i128 0, i128 %i32
  store i128 %b23, i128* %mult33, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i34 = load i128, i128* %i, align 4
  %add35 = add i128 %i34, 1
  store i128 %add35, i128* %i, align 4
  %i36 = load i128, i128* %i, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i36, %k37
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n38 = load i128, i128* %n.bind, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %mul40 = mul i128 2, %k39
  %sub = sub i128 %mul40, 1
  %call41 = call %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %n38, i128 %sub)
  store %struct_template_circuit_longtoshortnoendcarry* %call41, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body42

loop.body42:                                      ; preds = %loop.latch58, %loop.exit
  %mult43 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult43, i32 0, i32 5
  %read_output_outter.bigmultshortlong.out = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlong.out, i128 0, i128 %i45
  %mult47 = load i128, i128* %array_getter46, align 4
  %longshort48 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort48, i32 0, i32 2
  %read_input_outter.longtoshortnoendcarry.in = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.longtoshortnoendcarry.in, i128 0, i128 %i50
  %longshort52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %longshort52, i128 %mult47, i1* @constraint.170)
  %ptr_getter53 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %ptr_getter53, i32 0, i32 2
  %read_input_outter.longtoshortnoendcarry.in55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %longshort57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.longtoshortnoendcarry.in55, i128 0, i128 %i56
  store i128 %mult47, i128* %longshort57, align 4
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body42
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %mul63 = mul i128 2, %k62
  %sub64 = sub i128 %mul63, 1
  %slt65 = icmp slt i128 %i61, %sub64
  br i1 %slt65, label %loop.body42, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch58
  store i128 0, i128* %i, align 4
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch80, %loop.exit66
  %longshort68 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort68, i32 0, i32 3
  %read_output_outter.longtoshortnoendcarry.out = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.longtoshortnoendcarry.out, i128 0, i128 %i70
  %longshort72 = load i128, i128* %array_getter71, align 4
  %out73 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i74 = load i128, i128* %i, align 4
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %out73, i128 0, i128 %i74
  %out76 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %out76, i128 %longshort72, i1* @constraint.171)
  %ptr_getter77 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i78 = load i128, i128* %i, align 4
  %out79 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter77, i128 0, i128 %i78
  store i128 %longshort72, i128* %out79, align 4
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.body67
  %i81 = load i128, i128* %i, align 4
  %add82 = add i128 %i81, 1
  store i128 %add82, i128* %i, align 4
  %i83 = load i128, i128* %i, align 4
  %k84 = load i128, i128* %k.bind, align 4
  %mul85 = mul i128 2, %k84
  %slt86 = icmp slt i128 %i83, %mul85
  br i1 %slt86, label %loop.body67, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch80
  br label %exit

exit:                                             ; preds = %loop.exit87
  %out88 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmult.out = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 4
  store [256 x i128]* %out88, [256 x i128]** %write_output_inner.bigmult.out, align 8
  ret void
}

define %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmult = alloca %struct_template_circuit_bigmult, align 8
  %write_arg_inner.bigmult.n = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmult.n, align 4
  %write_arg_inner.bigmult.k = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmult.k, align 4
  ret %struct_template_circuit_bigmult* %struct_template_circuit_bigmult
}

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_sub_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call18 = call [256 x i128]* @long_sub_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
}

define void @fn_template_init_bigsubmodp(%struct_template_circuit_bigsubmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 0
  %read_arg_inner.bigsubmodp.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigsubmodp.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 1
  %read_arg_inner.bigsubmodp.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigsubmodp.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 2
  %read_input_inner.bigsubmodp.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigsubmodp.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 3
  %read_input_inner.bigsubmodp.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigsubmodp.b, [256 x i128]** %b.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 4
  %read_input_inner.bigsubmodp.p = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigsubmodp.p, [256 x i128]** %p.bind, align 8
  %tmp = alloca [256 x i128]*, align 8
  %tmp5 = alloca [256 x i128], align 8
  store [256 x i128]* %tmp5, [256 x i128]** %tmp, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %flag = alloca i128, align 8
  store i128 0, i128* %flag, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out7 = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n, i128 %k)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %sub10 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub10, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i12
  %sub14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub14, i128 %a9, i1* @constraint.172)
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %sub18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a16, i128 0, i128 %i17
  store i128 %a9, i128* %sub18, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i19
  %b21 = load i128, i128* %array_getter20, align 4
  %sub22 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub22, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i24
  %sub26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub26, i128 %b21, i1* @constraint.173)
  %ptr_getter27 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter27, i32 0, i32 3
  %read_input_outter.bigsub.b29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %sub31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b29, i128 0, i128 %i30
  store i128 %b21, i128* %sub31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i34, %k35
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub36 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub36, i32 0, i32 5
  %read_output_outter.bigsub.underflow = load i128, i128* %struct_getter37, align 4
  %flag38 = load i128, i128* %flag, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag38, i128 %read_output_outter.bigsub.underflow, i1* @constraint.174)
  store i128 %read_output_outter.bigsub.underflow, i128* %flag, align 4
  %n39 = load i128, i128* %n.bind, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %call41 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n39, i128 %k40)
  store %struct_template_circuit_bigadd* %call41, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body42

loop.body42:                                      ; preds = %loop.latch71, %loop.exit
  %sub43 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub43, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %i45
  %sub47 = load i128, i128* %array_getter46, align 4
  %add48 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add48, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i50
  %add52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %add52, i128 %sub47, i1* @constraint.175)
  %ptr_getter53 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter53, i32 0, i32 2
  %read_input_outter.bigadd.a55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %add57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a55, i128 0, i128 %i56
  store i128 %sub47, i128* %add57, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i58
  %p60 = load i128, i128* %array_getter59, align 4
  %add61 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add61, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter62, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i63
  %add65 = load i128, i128* %array_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %add65, i128 %p60, i1* @constraint.176)
  %ptr_getter66 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter66, i32 0, i32 3
  %read_input_outter.bigadd.b68 = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %i69 = load i128, i128* %i, align 4
  %add70 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b68, i128 0, i128 %i69
  store i128 %p60, i128* %add70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body42
  %i72 = load i128, i128* %i, align 4
  %add73 = add i128 %i72, 1
  store i128 %add73, i128* %i, align 4
  %i74 = load i128, i128* %i, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %slt76 = icmp slt i128 %i74, %k75
  br i1 %slt76, label %loop.body42, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  store i128 0, i128* %i, align 4
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch113, %loop.exit77
  %flag79 = load i128, i128* %flag, align 4
  %sub80 = sub i128 1, %flag79
  %sub81 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub81, i32 0, i32 4
  %read_output_outter.bigsub.out83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out83, i128 0, i128 %i84
  %sub86 = load i128, i128* %array_getter85, align 4
  %mul = mul i128 %sub80, %sub86
  %tmp87 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i88 = load i128, i128* %i, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp87, i128 0, i128 %i88
  %tmp90 = load i128, i128* %array_getter89, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp90, i128 %mul, i1* @constraint.177)
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i92 = load i128, i128* %i, align 4
  %tmp93 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %i92
  store i128 %mul, i128* %tmp93, align 4
  %tmp94 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp94, i128 0, i128 %i95
  %tmp97 = load i128, i128* %array_getter96, align 4
  %flag98 = load i128, i128* %flag, align 4
  %add99 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add99, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i101
  %add103 = load i128, i128* %array_getter102, align 4
  %mul104 = mul i128 %flag98, %add103
  %add105 = add i128 %tmp97, %mul104
  %out106 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i107 = load i128, i128* %i, align 4
  %array_getter108 = getelementptr inbounds [256 x i128], [256 x i128]* %out106, i128 0, i128 %i107
  %out109 = load i128, i128* %array_getter108, align 4
  call void @fn_intrinsic_add_constraint(i128 %out109, i128 %add105, i1* @constraint.178)
  %ptr_getter110 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i111 = load i128, i128* %i, align 4
  %out112 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter110, i128 0, i128 %i111
  store i128 %add105, i128* %out112, align 4
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.body78
  %i114 = load i128, i128* %i, align 4
  %add115 = add i128 %i114, 1
  store i128 %add115, i128* %i, align 4
  %i116 = load i128, i128* %i, align 4
  %k117 = load i128, i128* %k.bind, align 4
  %slt118 = icmp slt i128 %i116, %k117
  br i1 %slt118, label %loop.body78, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  br label %exit

exit:                                             ; preds = %loop.exit119
  %out120 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigsubmodp.out = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store [256 x i128]* %out120, [256 x i128]** %write_output_inner.bigsubmodp.out, align 8
  ret void
}

define %struct_template_circuit_bigsubmodp* @fn_template_build_bigsubmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsubmodp = alloca %struct_template_circuit_bigsubmodp, align 8
  %write_arg_inner.bigsubmodp.n = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigsubmodp.n, align 4
  %write_arg_inner.bigsubmodp.k = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigsubmodp.k, align 4
  ret %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %k1 = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %k1, [256 x i128]* %a, [256 x i128]* %b)
  ret [256 x [256 x i128]]* %call
}

define void @fn_template_init_fpadd(%struct_template_circuit_fpadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 0
  %read_arg_inner.fpadd.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpadd.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 1
  %read_arg_inner.fpadd.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpadd.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 2
  %read_arg_inner.fpadd.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpadd.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 3
  %read_input_inner.fpadd.a = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpadd.a, [256 x i128]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 4
  %read_input_inner.fpadd.b = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpadd.b, [256 x i128]** %b.bind, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n, i128 %k)
  store %struct_template_circuit_bigadd* %call, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %add9 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add9, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i11
  %add13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %add13, i128 %a8, i1* @constraint.179)
  %ptr_getter = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigadd.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %add17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a15, i128 0, i128 %i16
  store i128 %a8, i128* %add17, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %add21 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add21, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i23
  %add25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %add25, i128 %b20, i1* @constraint.180)
  %ptr_getter26 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter26, i32 0, i32 3
  %read_input_outter.bigadd.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %add30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b28, i128 0, i128 %i29
  store i128 %b20, i128* %add30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i31 = load i128, i128* %i, align 4
  %add32 = add i128 %i31, 1
  store i128 %add32, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i33, %k34
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n35 = load i128, i128* %n.bind, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %add37 = add i128 %k36, 1
  %call38 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n35, i128 %add37)
  store %struct_template_circuit_biglessthan* %call38, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch68, %loop.exit
  %add40 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add40, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i42
  %add44 = load i128, i128* %array_getter43, align 4
  %lt45 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt45, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i47
  %lt49 = load i128, i128* %array_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt49, i128 %add44, i1* @constraint.181)
  %ptr_getter50 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter50, i32 0, i32 2
  %read_input_outter.biglessthan.a52 = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %lt54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a52, i128 0, i128 %i53
  store i128 %add44, i128* %lt54, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i55
  %p57 = load i128, i128* %array_getter56, align 4
  %lt58 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt58, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i60
  %lt62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt62, i128 %p57, i1* @constraint.182)
  %ptr_getter63 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter63, i32 0, i32 3
  %read_input_outter.biglessthan.b65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %lt67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b65, i128 0, i128 %i66
  store i128 %p57, i128* %lt67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body39
  %i69 = load i128, i128* %i, align 4
  %add70 = add i128 %i69, 1
  store i128 %add70, i128* %i, align 4
  %i71 = load i128, i128* %i, align 4
  %k72 = load i128, i128* %k.bind, align 4
  %slt73 = icmp slt i128 %i71, %k72
  br i1 %slt73, label %loop.body39, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  %add75 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add75, i32 0, i32 4
  %read_output_outter.bigadd.out77 = load [256 x i128]*, [256 x i128]** %struct_getter76, align 8
  %k78 = load i128, i128* %k.bind, align 4
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out77, i128 0, i128 %k78
  %add80 = load i128, i128* %array_getter79, align 4
  %lt81 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt81, i32 0, i32 2
  %read_input_outter.biglessthan.a83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %k84 = load i128, i128* %k.bind, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a83, i128 0, i128 %k84
  %lt86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt86, i128 %add80, i1* @constraint.183)
  %ptr_getter87 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter87, i32 0, i32 2
  %read_input_outter.biglessthan.a89 = load [256 x i128]*, [256 x i128]** %struct_getter88, align 8
  %k90 = load i128, i128* %k.bind, align 4
  %lt91 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a89, i128 0, i128 %k90
  store i128 %add80, i128* %lt91, align 4
  %lt92 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt92, i32 0, i32 3
  %read_input_outter.biglessthan.b94 = load [256 x i128]*, [256 x i128]** %struct_getter93, align 8
  %k95 = load i128, i128* %k.bind, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b94, i128 0, i128 %k95
  %lt97 = load i128, i128* %array_getter96, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt97, i128 0, i1* @constraint.184)
  %ptr_getter98 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter98, i32 0, i32 3
  %read_input_outter.biglessthan.b100 = load [256 x i128]*, [256 x i128]** %struct_getter99, align 8
  %k101 = load i128, i128* %k.bind, align 4
  %lt102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b100, i128 0, i128 %k101
  store i128 0, i128* %lt102, align 4
  %n103 = load i128, i128* %n.bind, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %add105 = add i128 %k104, 1
  %call106 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n103, i128 %add105)
  store %struct_template_circuit_bigsub* %call106, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch145, %loop.exit74
  %add108 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add108, i32 0, i32 4
  %read_output_outter.bigadd.out110 = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %i111 = load i128, i128* %i, align 4
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out110, i128 0, i128 %i111
  %add113 = load i128, i128* %array_getter112, align 4
  %sub114 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub114, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter115, align 8
  %i116 = load i128, i128* %i, align 4
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i116
  %sub118 = load i128, i128* %array_getter117, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub118, i128 %add113, i1* @constraint.185)
  %ptr_getter119 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter119, i32 0, i32 2
  %read_input_outter.bigsub.a121 = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %i122 = load i128, i128* %i, align 4
  %sub123 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a121, i128 0, i128 %i122
  store i128 %add113, i128* %sub123, align 4
  %p124 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %p124, i128 0, i128 %i125
  %p127 = load i128, i128* %array_getter126, align 4
  %lt128 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt128, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter129, align 4
  %p130 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i131 = load i128, i128* %i, align 4
  %array_getter132 = getelementptr inbounds [256 x i128], [256 x i128]* %p130, i128 0, i128 %i131
  %p133 = load i128, i128* %array_getter132, align 4
  %mul = mul i128 %read_output_outter.biglessthan.out, %p133
  %sub134 = sub i128 %p127, %mul
  %sub135 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub135, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i137
  %sub139 = load i128, i128* %array_getter138, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub139, i128 %sub134, i1* @constraint.186)
  %ptr_getter140 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter140, i32 0, i32 3
  %read_input_outter.bigsub.b142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %i143 = load i128, i128* %i, align 4
  %sub144 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b142, i128 0, i128 %i143
  store i128 %sub134, i128* %sub144, align 4
  br label %loop.latch145

loop.latch145:                                    ; preds = %loop.body107
  %i146 = load i128, i128* %i, align 4
  %add147 = add i128 %i146, 1
  store i128 %add147, i128* %i, align 4
  %i148 = load i128, i128* %i, align 4
  %k149 = load i128, i128* %k.bind, align 4
  %slt150 = icmp slt i128 %i148, %k149
  br i1 %slt150, label %loop.body107, label %loop.exit151

loop.exit151:                                     ; preds = %loop.latch145
  %add152 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add152, i32 0, i32 4
  %read_output_outter.bigadd.out154 = load [256 x i128]*, [256 x i128]** %struct_getter153, align 8
  %k155 = load i128, i128* %k.bind, align 4
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out154, i128 0, i128 %k155
  %add157 = load i128, i128* %array_getter156, align 4
  %sub158 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub158, i32 0, i32 2
  %read_input_outter.bigsub.a160 = load [256 x i128]*, [256 x i128]** %struct_getter159, align 8
  %k161 = load i128, i128* %k.bind, align 4
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a160, i128 0, i128 %k161
  %sub163 = load i128, i128* %array_getter162, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub163, i128 %add157, i1* @constraint.187)
  %ptr_getter164 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter164, i32 0, i32 2
  %read_input_outter.bigsub.a166 = load [256 x i128]*, [256 x i128]** %struct_getter165, align 8
  %k167 = load i128, i128* %k.bind, align 4
  %sub168 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a166, i128 0, i128 %k167
  store i128 %add157, i128* %sub168, align 4
  %sub169 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub169, i32 0, i32 3
  %read_input_outter.bigsub.b171 = load [256 x i128]*, [256 x i128]** %struct_getter170, align 8
  %k172 = load i128, i128* %k.bind, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b171, i128 0, i128 %k172
  %sub174 = load i128, i128* %array_getter173, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub174, i128 0, i1* @constraint.188)
  %ptr_getter175 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter175, i32 0, i32 3
  %read_input_outter.bigsub.b177 = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %k178 = load i128, i128* %k.bind, align 4
  %sub179 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b177, i128 0, i128 %k178
  store i128 0, i128* %sub179, align 4
  %sub180 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter181 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub180, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter181, align 8
  %k182 = load i128, i128* %k.bind, align 4
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %k182
  %sub184 = load i128, i128* %array_getter183, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub184, i128 0, i1* @constraint.189)
  store i128 0, i128* %i, align 4
  br label %loop.body185

loop.body185:                                     ; preds = %loop.latch199, %loop.exit151
  %sub186 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter187 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub186, i32 0, i32 4
  %read_output_outter.bigsub.out188 = load [256 x i128]*, [256 x i128]** %struct_getter187, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out188, i128 0, i128 %i189
  %sub191 = load i128, i128* %array_getter190, align 4
  %out192 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i193 = load i128, i128* %i, align 4
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %out192, i128 0, i128 %i193
  %out195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_add_constraint(i128 %out195, i128 %sub191, i1* @constraint.190)
  %ptr_getter196 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i197 = load i128, i128* %i, align 4
  %out198 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter196, i128 0, i128 %i197
  store i128 %sub191, i128* %out198, align 4
  br label %loop.latch199

loop.latch199:                                    ; preds = %loop.body185
  %i200 = load i128, i128* %i, align 4
  %add201 = add i128 %i200, 1
  store i128 %add201, i128* %i, align 4
  %i202 = load i128, i128* %i, align 4
  %k203 = load i128, i128* %k.bind, align 4
  %slt204 = icmp slt i128 %i202, %k203
  br i1 %slt204, label %loop.body185, label %loop.exit205

loop.exit205:                                     ; preds = %loop.latch199
  br label %exit

exit:                                             ; preds = %loop.exit205
  %out206 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpadd.out = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 5
  store [256 x i128]* %out206, [256 x i128]** %write_output_inner.fpadd.out, align 8
  ret void
}

define %struct_template_circuit_fpadd* @fn_template_build_fpadd(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpadd = alloca %struct_template_circuit_fpadd, align 8
  %write_arg_inner.fpadd.n = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpadd.n, align 4
  %write_arg_inner.fpadd.k = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpadd.k, align 4
  %write_arg_inner.fpadd.p = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpadd.p, align 8
  ret %struct_template_circuit_fpadd* %struct_template_circuit_fpadd
}

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_add_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %b13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b13, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %p17 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call18 = call [256 x i128]* @long_add_mod(i128 %n7, i128 %k8, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %p17)
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out21 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out21
}

define void @fn_template_init_fpsubtract(%struct_template_circuit_fpsubtract* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 0
  %read_arg_inner.fpsubtract.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpsubtract.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 1
  %read_arg_inner.fpsubtract.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpsubtract.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 2
  %read_arg_inner.fpsubtract.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpsubtract.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 3
  %read_input_inner.fpsubtract.a = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpsubtract.a, [256 x i128]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 4
  %read_input_inner.fpsubtract.b = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpsubtract.b, [256 x i128]** %b.bind, align 8
  %tmp = alloca [256 x i128]*, align 8
  %tmp5 = alloca [256 x i128], align 8
  store [256 x i128]* %tmp5, [256 x i128]** %tmp, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out7 = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
  %flag = alloca i128, align 8
  store i128 0, i128* %flag, align 4
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n, i128 %k)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %sub10 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub10, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i12
  %sub14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub14, i128 %a9, i1* @constraint.191)
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %sub18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a16, i128 0, i128 %i17
  store i128 %a9, i128* %sub18, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i19
  %b21 = load i128, i128* %array_getter20, align 4
  %sub22 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub22, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i24
  %sub26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub26, i128 %b21, i1* @constraint.192)
  %ptr_getter27 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter27, i32 0, i32 3
  %read_input_outter.bigsub.b29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %sub31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b29, i128 0, i128 %i30
  store i128 %b21, i128* %sub31, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i34, %k35
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub36 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub36, i32 0, i32 5
  %read_output_outter.bigsub.underflow = load i128, i128* %struct_getter37, align 4
  %flag38 = load i128, i128* %flag, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag38, i128 %read_output_outter.bigsub.underflow, i1* @constraint.193)
  store i128 %read_output_outter.bigsub.underflow, i128* %flag, align 4
  %n39 = load i128, i128* %n.bind, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %call41 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n39, i128 %k40)
  store %struct_template_circuit_bigadd* %call41, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body42

loop.body42:                                      ; preds = %loop.latch71, %loop.exit
  %sub43 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub43, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %i45
  %sub47 = load i128, i128* %array_getter46, align 4
  %add48 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add48, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i50
  %add52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %add52, i128 %sub47, i1* @constraint.194)
  %ptr_getter53 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter53, i32 0, i32 2
  %read_input_outter.bigadd.a55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %add57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a55, i128 0, i128 %i56
  store i128 %sub47, i128* %add57, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i58
  %p60 = load i128, i128* %array_getter59, align 4
  %add61 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter62 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add61, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter62, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i63
  %add65 = load i128, i128* %array_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %add65, i128 %p60, i1* @constraint.195)
  %ptr_getter66 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter66, i32 0, i32 3
  %read_input_outter.bigadd.b68 = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %i69 = load i128, i128* %i, align 4
  %add70 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b68, i128 0, i128 %i69
  store i128 %p60, i128* %add70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body42
  %i72 = load i128, i128* %i, align 4
  %add73 = add i128 %i72, 1
  store i128 %add73, i128* %i, align 4
  %i74 = load i128, i128* %i, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %slt76 = icmp slt i128 %i74, %k75
  br i1 %slt76, label %loop.body42, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  store i128 0, i128* %i, align 4
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch113, %loop.exit77
  %flag79 = load i128, i128* %flag, align 4
  %sub80 = sub i128 1, %flag79
  %sub81 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub81, i32 0, i32 4
  %read_output_outter.bigsub.out83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out83, i128 0, i128 %i84
  %sub86 = load i128, i128* %array_getter85, align 4
  %mul = mul i128 %sub80, %sub86
  %tmp87 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i88 = load i128, i128* %i, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp87, i128 0, i128 %i88
  %tmp90 = load i128, i128* %array_getter89, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp90, i128 %mul, i1* @constraint.196)
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i92 = load i128, i128* %i, align 4
  %tmp93 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %i92
  store i128 %mul, i128* %tmp93, align 4
  %tmp94 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp94, i128 0, i128 %i95
  %tmp97 = load i128, i128* %array_getter96, align 4
  %flag98 = load i128, i128* %flag, align 4
  %add99 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add99, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i101
  %add103 = load i128, i128* %array_getter102, align 4
  %mul104 = mul i128 %flag98, %add103
  %add105 = add i128 %tmp97, %mul104
  %out106 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i107 = load i128, i128* %i, align 4
  %array_getter108 = getelementptr inbounds [256 x i128], [256 x i128]* %out106, i128 0, i128 %i107
  %out109 = load i128, i128* %array_getter108, align 4
  call void @fn_intrinsic_add_constraint(i128 %out109, i128 %add105, i1* @constraint.197)
  %ptr_getter110 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i111 = load i128, i128* %i, align 4
  %out112 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter110, i128 0, i128 %i111
  store i128 %add105, i128* %out112, align 4
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.body78
  %i114 = load i128, i128* %i, align 4
  %add115 = add i128 %i114, 1
  store i128 %add115, i128* %i, align 4
  %i116 = load i128, i128* %i, align 4
  %k117 = load i128, i128* %k.bind, align 4
  %slt118 = icmp slt i128 %i116, %k117
  br i1 %slt118, label %loop.body78, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  br label %exit

exit:                                             ; preds = %loop.exit119
  %out120 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpsubtract.out = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store [256 x i128]* %out120, [256 x i128]** %write_output_inner.fpsubtract.out, align 8
  ret void
}

define %struct_template_circuit_fpsubtract* @fn_template_build_fpsubtract(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsubtract = alloca %struct_template_circuit_fpsubtract, align 8
  %write_arg_inner.fpsubtract.n = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpsubtract.n, align 4
  %write_arg_inner.fpsubtract.k = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpsubtract.k, align 4
  %write_arg_inner.fpsubtract.p = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpsubtract.p, align 8
  ret %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract
}

define void @fn_template_init_bigaddmodp(%struct_template_circuit_bigaddmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 0
  %read_arg_inner.bigaddmodp.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigaddmodp.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 1
  %read_arg_inner.bigaddmodp.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigaddmodp.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 2
  %read_input_inner.bigaddmodp.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigaddmodp.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 3
  %read_input_inner.bigaddmodp.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigaddmodp.b, [256 x i128]** %b.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 4
  %read_input_inner.bigaddmodp.p = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigaddmodp.p, [256 x i128]** %p.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %sub = alloca %struct_template_circuit_bigsub*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n, i128 %k)
  store %struct_template_circuit_bigadd* %call, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %add9 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add9, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i11
  %add13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %add13, i128 %a8, i1* @constraint.198)
  %ptr_getter = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigadd.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %add17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a15, i128 0, i128 %i16
  store i128 %a8, i128* %add17, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %add21 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add21, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i23
  %add25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %add25, i128 %b20, i1* @constraint.199)
  %ptr_getter26 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter26, i32 0, i32 3
  %read_input_outter.bigadd.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %add30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b28, i128 0, i128 %i29
  store i128 %b20, i128* %add30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i31 = load i128, i128* %i, align 4
  %add32 = add i128 %i31, 1
  store i128 %add32, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i33, %k34
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n35 = load i128, i128* %n.bind, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %add37 = add i128 %k36, 1
  %call38 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n35, i128 %add37)
  store %struct_template_circuit_biglessthan* %call38, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch68, %loop.exit
  %add40 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add40, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i42
  %add44 = load i128, i128* %array_getter43, align 4
  %lt45 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt45, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i47
  %lt49 = load i128, i128* %array_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt49, i128 %add44, i1* @constraint.200)
  %ptr_getter50 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter50, i32 0, i32 2
  %read_input_outter.biglessthan.a52 = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %lt54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a52, i128 0, i128 %i53
  store i128 %add44, i128* %lt54, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i55
  %p57 = load i128, i128* %array_getter56, align 4
  %lt58 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt58, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i60
  %lt62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt62, i128 %p57, i1* @constraint.201)
  %ptr_getter63 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter63, i32 0, i32 3
  %read_input_outter.biglessthan.b65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %lt67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b65, i128 0, i128 %i66
  store i128 %p57, i128* %lt67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body39
  %i69 = load i128, i128* %i, align 4
  %add70 = add i128 %i69, 1
  store i128 %add70, i128* %i, align 4
  %i71 = load i128, i128* %i, align 4
  %k72 = load i128, i128* %k.bind, align 4
  %slt73 = icmp slt i128 %i71, %k72
  br i1 %slt73, label %loop.body39, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  %add75 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add75, i32 0, i32 4
  %read_output_outter.bigadd.out77 = load [256 x i128]*, [256 x i128]** %struct_getter76, align 8
  %k78 = load i128, i128* %k.bind, align 4
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out77, i128 0, i128 %k78
  %add80 = load i128, i128* %array_getter79, align 4
  %lt81 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt81, i32 0, i32 2
  %read_input_outter.biglessthan.a83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %k84 = load i128, i128* %k.bind, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a83, i128 0, i128 %k84
  %lt86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt86, i128 %add80, i1* @constraint.202)
  %ptr_getter87 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter87, i32 0, i32 2
  %read_input_outter.biglessthan.a89 = load [256 x i128]*, [256 x i128]** %struct_getter88, align 8
  %k90 = load i128, i128* %k.bind, align 4
  %lt91 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a89, i128 0, i128 %k90
  store i128 %add80, i128* %lt91, align 4
  %lt92 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt92, i32 0, i32 3
  %read_input_outter.biglessthan.b94 = load [256 x i128]*, [256 x i128]** %struct_getter93, align 8
  %k95 = load i128, i128* %k.bind, align 4
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b94, i128 0, i128 %k95
  %lt97 = load i128, i128* %array_getter96, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt97, i128 0, i1* @constraint.203)
  %ptr_getter98 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter98, i32 0, i32 3
  %read_input_outter.biglessthan.b100 = load [256 x i128]*, [256 x i128]** %struct_getter99, align 8
  %k101 = load i128, i128* %k.bind, align 4
  %lt102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b100, i128 0, i128 %k101
  store i128 0, i128* %lt102, align 4
  %n103 = load i128, i128* %n.bind, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %add105 = add i128 %k104, 1
  %call106 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n103, i128 %add105)
  store %struct_template_circuit_bigsub* %call106, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch141, %loop.exit74
  %add108 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add108, i32 0, i32 4
  %read_output_outter.bigadd.out110 = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %i111 = load i128, i128* %i, align 4
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out110, i128 0, i128 %i111
  %add113 = load i128, i128* %array_getter112, align 4
  %sub114 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub114, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter115, align 8
  %i116 = load i128, i128* %i, align 4
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i116
  %sub118 = load i128, i128* %array_getter117, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub118, i128 %add113, i1* @constraint.204)
  %ptr_getter119 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter119, i32 0, i32 2
  %read_input_outter.bigsub.a121 = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %i122 = load i128, i128* %i, align 4
  %sub123 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a121, i128 0, i128 %i122
  store i128 %add113, i128* %sub123, align 4
  %lt124 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter125 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt124, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter125, align 4
  %sub126 = sub i128 1, %read_output_outter.biglessthan.out
  %p127 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %p127, i128 0, i128 %i128
  %p130 = load i128, i128* %array_getter129, align 4
  %mul = mul i128 %sub126, %p130
  %sub131 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub131, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter132, align 8
  %i133 = load i128, i128* %i, align 4
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i133
  %sub135 = load i128, i128* %array_getter134, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub135, i128 %mul, i1* @constraint.205)
  %ptr_getter136 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter136, i32 0, i32 3
  %read_input_outter.bigsub.b138 = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %i139 = load i128, i128* %i, align 4
  %sub140 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b138, i128 0, i128 %i139
  store i128 %mul, i128* %sub140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body107
  %i142 = load i128, i128* %i, align 4
  %add143 = add i128 %i142, 1
  store i128 %add143, i128* %i, align 4
  %i144 = load i128, i128* %i, align 4
  %k145 = load i128, i128* %k.bind, align 4
  %slt146 = icmp slt i128 %i144, %k145
  br i1 %slt146, label %loop.body107, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch141
  %add148 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter149 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add148, i32 0, i32 4
  %read_output_outter.bigadd.out150 = load [256 x i128]*, [256 x i128]** %struct_getter149, align 8
  %k151 = load i128, i128* %k.bind, align 4
  %array_getter152 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out150, i128 0, i128 %k151
  %add153 = load i128, i128* %array_getter152, align 4
  %sub154 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter155 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub154, i32 0, i32 2
  %read_input_outter.bigsub.a156 = load [256 x i128]*, [256 x i128]** %struct_getter155, align 8
  %k157 = load i128, i128* %k.bind, align 4
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a156, i128 0, i128 %k157
  %sub159 = load i128, i128* %array_getter158, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub159, i128 %add153, i1* @constraint.206)
  %ptr_getter160 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter160, i32 0, i32 2
  %read_input_outter.bigsub.a162 = load [256 x i128]*, [256 x i128]** %struct_getter161, align 8
  %k163 = load i128, i128* %k.bind, align 4
  %sub164 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a162, i128 0, i128 %k163
  store i128 %add153, i128* %sub164, align 4
  %sub165 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub165, i32 0, i32 3
  %read_input_outter.bigsub.b167 = load [256 x i128]*, [256 x i128]** %struct_getter166, align 8
  %k168 = load i128, i128* %k.bind, align 4
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b167, i128 0, i128 %k168
  %sub170 = load i128, i128* %array_getter169, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub170, i128 0, i1* @constraint.207)
  %ptr_getter171 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter172 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter171, i32 0, i32 3
  %read_input_outter.bigsub.b173 = load [256 x i128]*, [256 x i128]** %struct_getter172, align 8
  %k174 = load i128, i128* %k.bind, align 4
  %sub175 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b173, i128 0, i128 %k174
  store i128 0, i128* %sub175, align 4
  %sub176 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub176, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter177, align 8
  %k178 = load i128, i128* %k.bind, align 4
  %array_getter179 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %k178
  %sub180 = load i128, i128* %array_getter179, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub180, i128 0, i1* @constraint.208)
  store i128 0, i128* %i, align 4
  br label %loop.body181

loop.body181:                                     ; preds = %loop.latch195, %loop.exit147
  %sub182 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter183 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub182, i32 0, i32 4
  %read_output_outter.bigsub.out184 = load [256 x i128]*, [256 x i128]** %struct_getter183, align 8
  %i185 = load i128, i128* %i, align 4
  %array_getter186 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out184, i128 0, i128 %i185
  %sub187 = load i128, i128* %array_getter186, align 4
  %out188 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %out188, i128 0, i128 %i189
  %out191 = load i128, i128* %array_getter190, align 4
  call void @fn_intrinsic_add_constraint(i128 %out191, i128 %sub187, i1* @constraint.209)
  %ptr_getter192 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i193 = load i128, i128* %i, align 4
  %out194 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter192, i128 0, i128 %i193
  store i128 %sub187, i128* %out194, align 4
  br label %loop.latch195

loop.latch195:                                    ; preds = %loop.body181
  %i196 = load i128, i128* %i, align 4
  %add197 = add i128 %i196, 1
  store i128 %add197, i128* %i, align 4
  %i198 = load i128, i128* %i, align 4
  %k199 = load i128, i128* %k.bind, align 4
  %slt200 = icmp slt i128 %i198, %k199
  br i1 %slt200, label %loop.body181, label %loop.exit201

loop.exit201:                                     ; preds = %loop.latch195
  br label %exit

exit:                                             ; preds = %loop.exit201
  %out202 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigaddmodp.out = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 5
  store [256 x i128]* %out202, [256 x i128]** %write_output_inner.bigaddmodp.out, align 8
  ret void
}

define %struct_template_circuit_bigaddmodp* @fn_template_build_bigaddmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigaddmodp = alloca %struct_template_circuit_bigaddmodp, align 8
  %write_arg_inner.bigaddmodp.n = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigaddmodp.n, align 4
  %write_arg_inner.bigaddmodp.k = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigaddmodp.k, align 4
  ret %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp
}

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %a_pos = alloca [256 x i128]*, align 8
  %a_pos2 = alloca [256 x i128], align 8
  store [256 x i128]* %a_pos2, [256 x i128]** %a_pos, align 8
  %Y_is_zero = alloca i128, align 8
  store i128 0, i128* %Y_is_zero, align 4
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %X = alloca [256 x [256 x i128]]*, align 8
  %X3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %X3, [256 x [256 x i128]]** %X, align 8
  %a_short = alloca [256 x i128]*, align 8
  %a_short4 = alloca [256 x i128], align 8
  store [256 x i128]* %a_short4, [256 x i128]** %a_short, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %n, i128 %k, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %a_short, align 8
  %a_short5 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a_short5, i128 0, i128 50
  %a_short6 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short6, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n7 = load i128, i128* %n.bind, align 4
  %k8 = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a_short9 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call10 = call [256 x [256 x i128]]* @long_div2(i128 %n7, i128 %k8, i128 %m, [256 x i128]* %a_short9, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call10, [256 x [256 x i128]]** %out, align 8
  br label %if.exit128

if.false:                                         ; preds = %entry
  %uniform_array11 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array11, [256 x i128]** %a_pos, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %a_short12 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %a_short12, i128 0, i128 %i13
  %a_short15 = load i128, i128* %array_getter14, align 4
  %neg = sub i128 0, %a_short15
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %i16 = load i128, i128* %i, align 4
  %a_pos17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 %neg, i128* %a_pos17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i18 = load i128, i128* %i, align 4
  %add = add i128 %i18, 1
  store i128 %add, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %add22 = add i128 %k20, %m21
  %slt = icmp slt i128 %i19, %add22
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %m25 = load i128, i128* %m.bind, align 4
  %a_pos26 = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %p27 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call28 = call [256 x [256 x i128]]* @long_div2(i128 %n23, i128 %k24, i128 %m25, [256 x i128]* %a_pos26, [256 x i128]* %p27)
  store [256 x [256 x i128]]* %call28, [256 x [256 x i128]]** %X, align 8
  store i128 1, i128* %Y_is_zero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch36, %loop.exit
  %X32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i33 = load i128, i128* %i, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X32, i128 0, i128 1, i128 %i33
  %X35 = load i128, i128* %array_getter34, align 4
  %ne = icmp ne i128 %X35, 0
  br i1 %ne, label %if.true30, label %if.false31

if.true30:                                        ; preds = %loop.body29
  store i128 0, i128* %Y_is_zero, align 4
  br label %if.exit

if.false31:                                       ; preds = %loop.body29
  br label %if.exit

if.exit:                                          ; preds = %if.false31, %if.true30
  br label %loop.latch36

loop.latch36:                                     ; preds = %if.exit
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %slt41 = icmp slt i128 %i39, %k40
  br i1 %slt41, label %loop.body29, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch36
  %Y_is_zero45 = load i128, i128* %Y_is_zero, align 4
  %eq46 = icmp eq i128 %Y_is_zero45, 1
  br i1 %eq46, label %if.true43, label %if.false44

if.true43:                                        ; preds = %loop.exit42
  %X47 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter48 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X47, i128 0, i128 1
  %X49 = load [256 x i128], [256 x i128]* %array_getter48, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X49, [256 x i128]* %spice_inline_array, align 4
  %ptr_getter50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter50, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out51 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit111

if.false44:                                       ; preds = %loop.exit42
  %n52 = load i128, i128* %n.bind, align 4
  %k53 = load i128, i128* %k.bind, align 4
  %p54 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %X55 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X55, i128 0, i128 1
  %X57 = load [256 x i128], [256 x i128]* %array_getter56, align 4
  %spice_inline_array58 = alloca [256 x i128], align 8
  store [256 x i128] %X57, [256 x i128]* %spice_inline_array58, align 4
  %call59 = call [256 x i128]* @long_sub(i128 %n52, i128 %k53, [256 x i128]* %p54, [256 x i128]* %spice_inline_array58)
  %ptr_getter60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter60, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out61 to i8*
  %8 = bitcast [256 x i128]* %call59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %X62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X62, i128 0, i128 0, i128 0
  %X64 = load i128, i128* %array_getter63, align 4
  %add65 = add i128 %X64, 1
  %ptr_getter66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %X67 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter66, i128 0, i128 0, i128 0
  store i128 %add65, i128* %X67, align 4
  %X70 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X70, i128 0, i128 0, i128 0
  %X72 = load i128, i128* %array_getter71, align 4
  %n73 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n73
  %sge = icmp sge i128 %X72, %lshift
  br i1 %sge, label %if.true68, label %if.false69

if.true68:                                        ; preds = %if.false44
  store i128 0, i128* %i, align 4
  br label %loop.body74

if.false69:                                       ; preds = %if.false44
  br label %if.exit110

loop.body74:                                      ; preds = %loop.latch102, %if.true68
  %X75 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X75, i128 0, i128 0, i128 %i76
  %X78 = load i128, i128* %array_getter77, align 4
  %n79 = load i128, i128* %n.bind, align 4
  %lshift80 = shl i128 1, %n79
  %sdiv = sdiv i128 %X78, %lshift80
  store i128 %sdiv, i128* %carry, align 4
  %X81 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  %array_getter84 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X81, i128 0, i128 0, i128 %add83
  %X85 = load i128, i128* %array_getter84, align 4
  %carry86 = load i128, i128* %carry, align 4
  %add87 = add i128 %X85, %carry86
  %ptr_getter88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i89 = load i128, i128* %i, align 4
  %add90 = add i128 %i89, 1
  %X91 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter88, i128 0, i128 0, i128 %add90
  store i128 %add87, i128* %X91, align 4
  %X92 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i93 = load i128, i128* %i, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X92, i128 0, i128 0, i128 %i93
  %X95 = load i128, i128* %array_getter94, align 4
  %carry96 = load i128, i128* %carry, align 4
  %n97 = load i128, i128* %n.bind, align 4
  %lshift98 = shl i128 1, %n97
  %mul = mul i128 %carry96, %lshift98
  %sub = sub i128 %X95, %mul
  %ptr_getter99 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i100 = load i128, i128* %i, align 4
  %X101 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter99, i128 0, i128 0, i128 %i100
  store i128 %sub, i128* %X101, align 4
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body74
  %i103 = load i128, i128* %i, align 4
  %add104 = add i128 %i103, 1
  store i128 %add104, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %m106 = load i128, i128* %m.bind, align 4
  %sub107 = sub i128 %m106, 1
  %slt108 = icmp slt i128 %i105, %sub107
  br i1 %slt108, label %loop.body74, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch102
  br label %if.exit110

if.exit110:                                       ; preds = %if.false69, %loop.exit109
  br label %if.exit111

if.exit111:                                       ; preds = %if.exit110, %if.true43
  store i128 0, i128* %i, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch121, %if.exit111
  %X113 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X113, i128 0, i128 0, i128 %i114
  %X116 = load i128, i128* %array_getter115, align 4
  %neg117 = sub i128 0, %X116
  %ptr_getter118 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i119 = load i128, i128* %i, align 4
  %out120 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter118, i128 0, i128 0, i128 %i119
  store i128 %neg117, i128* %out120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body112
  %i122 = load i128, i128* %i, align 4
  %add123 = add i128 %i122, 1
  store i128 %add123, i128* %i, align 4
  %i124 = load i128, i128* %i, align 4
  %m125 = load i128, i128* %m.bind, align 4
  %slt126 = icmp slt i128 %i124, %m125
  br i1 %slt126, label %loop.body112, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  br label %if.exit128

if.exit128:                                       ; preds = %loop.exit127, %if.true
  %out129 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out129
}

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %m.bind = alloca i128, align 8
  store i128 %2, i128* %m.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %out1, [256 x [256 x [256 x i128]]]** %out, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i2
  %a3 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a3, [256 x i128]* %spice_inline_array, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n, i128 %k, i128 %m, [256 x i128]* %spice_inline_array, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i4 = load i128, i128* %i, align 4
  %out5 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i4
  %5 = bitcast [256 x [256 x i128]]* %out5 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i7, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out8 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out8
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %e.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %e.bind, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %eBits = alloca [256 x i128]*, align 8
  %eBits1 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits1, [256 x i128]** %eBits, align 8
  %temp = alloca [256 x i128]*, align 8
  %temp2 = alloca [256 x i128], align 8
  store [256 x i128]* %temp2, [256 x i128]** %temp, align 8
  %temp23 = alloca [256 x [256 x i128]]*, align 8
  %temp24 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp24, [256 x [256 x i128]]** %temp23, align 8
  %out = alloca [256 x i128]*, align 8
  %out5 = alloca [256 x i128], align 8
  store [256 x i128]* %out5, [256 x i128]** %out, align 8
  %bitlength = alloca i128, align 8
  store i128 0, i128* %bitlength, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i7
  %e8 = load i128, i128* %array_getter, align 4
  %j9 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e8, %j9
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j10 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i11 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i11
  %add = add i128 %j10, %mul
  %eBits12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits12, align 4
  %eBits13 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j14 = load i128, i128* %j, align 4
  %n15 = load i128, i128* %n.bind, align 4
  %i16 = load i128, i128* %i, align 4
  %mul17 = mul i128 %n15, %i16
  %add18 = add i128 %j14, %mul17
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits13, i128 0, i128 %add18
  %eBits20 = load i128, i128* %array_getter19, align 4
  %eq = icmp eq i128 %eBits20, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body6
  %j21 = load i128, i128* %j, align 4
  %n22 = load i128, i128* %n.bind, align 4
  %i23 = load i128, i128* %i, align 4
  %mul24 = mul i128 %n22, %i23
  %add25 = add i128 %j21, %mul24
  %add26 = add i128 %add25, 1
  store i128 %add26, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body6
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j27 = load i128, i128* %j, align 4
  %add28 = add i128 %j27, 1
  store i128 %add28, i128* %j, align 4
  %j29 = load i128, i128* %j, align 4
  %n30 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j29, %n30
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt35 = icmp slt i128 %i34, %k
  br i1 %slt35, label %loop.body, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch31
  %uniform_array37 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array37, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch42, %loop.exit36
  %ptr_getter39 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i40 = load i128, i128* %i, align 4
  %out41 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter39, i128 0, i128 %i40
  store i128 0, i128* %out41, align 4
  br label %loop.latch42

loop.latch42:                                     ; preds = %loop.body38
  %i43 = load i128, i128* %i, align 4
  %add44 = add i128 %i43, 1
  store i128 %add44, i128* %i, align 4
  %i45 = load i128, i128* %i, align 4
  %slt46 = icmp slt i128 %i45, 50
  br i1 %slt46, label %loop.body38, label %loop.exit47

loop.exit47:                                      ; preds = %loop.latch42
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out49 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 0
  store i128 1, i128* %out49, align 4
  %bitlength50 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength50, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch92, %loop.exit47
  %eBits54 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits54, i128 0, i128 %i55
  %eBits57 = load i128, i128* %array_getter56, align 4
  %eq58 = icmp eq i128 %eBits57, 1
  br i1 %eq58, label %if.true52, label %if.false53

if.true52:                                        ; preds = %loop.body51
  %uniform_array59 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array59, [256 x i128]** %temp, align 8
  %n60 = load i128, i128* %n.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %out62 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n60, i128 %k61, [256 x i128]* %out62, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array63 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array63, [256 x [256 x i128]]** %temp23, align 8
  %n64 = load i128, i128* %n.bind, align 4
  %k65 = load i128, i128* %k.bind, align 4
  %temp66 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call67 = call [256 x [256 x i128]]* @long_div(i128 %n64, i128 %k65, [256 x i128]* %temp66, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call67, [256 x [256 x i128]]** %temp23, align 8
  %temp268 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp23, align 8
  %array_getter69 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp268, i128 0, i128 1
  %temp270 = load [256 x i128], [256 x i128]* %array_getter69, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp270, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit71

if.false53:                                       ; preds = %loop.body51
  br label %if.exit71

if.exit71:                                        ; preds = %if.false53, %if.true52
  %i74 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i74, 0
  br i1 %sgt, label %if.true72, label %if.false73

if.true72:                                        ; preds = %if.exit71
  %uniform_array75 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array75, [256 x i128]** %temp, align 8
  %n76 = load i128, i128* %n.bind, align 4
  %k77 = load i128, i128* %k.bind, align 4
  %out78 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out79 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call80 = call [256 x i128]* @prod(i128 %n76, i128 %k77, [256 x i128]* %out78, [256 x i128]* %out79)
  store [256 x i128]* %call80, [256 x i128]** %temp, align 8
  %uniform_array81 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array81, [256 x [256 x i128]]** %temp23, align 8
  %n82 = load i128, i128* %n.bind, align 4
  %k83 = load i128, i128* %k.bind, align 4
  %temp84 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p85 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call86 = call [256 x [256 x i128]]* @long_div(i128 %n82, i128 %k83, [256 x i128]* %temp84, [256 x i128]* %p85)
  store [256 x [256 x i128]]* %call86, [256 x [256 x i128]]** %temp23, align 8
  %temp287 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp23, align 8
  %array_getter88 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp287, i128 0, i128 1
  %temp289 = load [256 x i128], [256 x i128]* %array_getter88, align 4
  %spice_inline_array90 = alloca [256 x i128], align 8
  store [256 x i128] %temp289, [256 x i128]* %spice_inline_array90, align 4
  store [256 x i128]* %spice_inline_array90, [256 x i128]** %out, align 8
  br label %if.exit91

if.false73:                                       ; preds = %if.exit71
  br label %if.exit91

if.exit91:                                        ; preds = %if.false73, %if.true72
  br label %loop.latch92

loop.latch92:                                     ; preds = %if.exit91
  %i93 = load i128, i128* %i, align 4
  %sub94 = sub i128 %i93, 1
  store i128 %sub94, i128* %i, align 4
  %i95 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i95, 0
  br i1 %sge, label %loop.body51, label %loop.exit96

loop.exit96:                                      ; preds = %loop.latch92
  %out97 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out97
}

define void @fn_template_init_signedcheckcarrymodtozero(%struct_template_circuit_signedcheckcarrymodtozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 0
  %read_arg_inner.signedcheckcarrymodtozero.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedcheckcarrymodtozero.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 1
  %read_arg_inner.signedcheckcarrymodtozero.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedcheckcarrymodtozero.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 2
  %read_arg_inner.signedcheckcarrymodtozero.overflow = load i128, i128* %struct_getter2, align 4
  %overflow.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedcheckcarrymodtozero.overflow, i128* %overflow.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 3
  %read_arg_inner.signedcheckcarrymodtozero.p = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.signedcheckcarrymodtozero.p, [256 x i128]** %p.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 4
  %read_input_inner.signedcheckcarrymodtozero.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.signedcheckcarrymodtozero.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %X = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %X6, [256 x i128]** %X, align 8
  %Xvar = alloca [256 x [256 x i128]]*, align 8
  %Xvar7 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %Xvar7, [256 x [256 x i128]]** %Xvar, align 8
  %m = alloca i128, align 8
  store i128 0, i128* %m, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %X_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %X_range_checks8 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %X_range_checks8, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %mod_check = alloca %struct_template_circuit_checkcarrymodp*, align 8
  %overflow = load i128, i128* %overflow.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %overflow, %n
  %sub = sub i128 %add, 1
  %n9 = load i128, i128* %n.bind, align 4
  %sdiv = sdiv i128 %sub, %n9
  store i128 %sdiv, i128* %m, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m11 = load i128, i128* %m, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n10, i128 %k, i128 %m11, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %Xvar, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %Xvar12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar12, i128 0, i128 0, i128 %i13
  %Xvar14 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %X, align 8
  %i15 = load i128, i128* %i, align 4
  %X16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 %Xvar14, i128* %X16, align 4
  %n17 = load i128, i128* %n.bind, align 4
  %add18 = add i128 %n17, 1
  %call19 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add18)
  %ptr_getter20 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i21 = load i128, i128* %i, align 4
  %X_range_checks22 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter20, i128 0, i128 %i21
  store %struct_template_circuit_num2bits* %call19, %struct_template_circuit_num2bits** %X_range_checks22, align 8
  %X23 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %X23, i128 0, i128 %i24
  %X26 = load i128, i128* %array_getter25, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n27
  %add28 = add i128 %X26, %lshift
  %X_range_checks29 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks29, i128 0, i128 %i30
  %X_range_checks32 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter31, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks32, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add28, i1* @constraint.210)
  %ptr_getter34 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter34, i128 0, i128 %i35
  %X_range_checks37 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter36, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks37, i32 0, i32 1
  store i128 %add28, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %m41 = load i128, i128* %m, align 4
  %slt = icmp slt i128 %i40, %m41
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n42 = load i128, i128* %n.bind, align 4
  %k43 = load i128, i128* %k.bind, align 4
  %m44 = load i128, i128* %m, align 4
  %overflow45 = load i128, i128* %overflow.bind, align 4
  %p46 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call47 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %n42, i128 %k43, i128 %m44, i128 %overflow45, [256 x i128]* %p46)
  store %struct_template_circuit_checkcarrymodp* %call47, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch73, %loop.exit
  %in49 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %in49, i128 0, i128 %i50
  %in52 = load i128, i128* %array_getter51, align 4
  %mod_check53 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check53, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in, i128 0, i128 %i55
  %mod_check57 = load i128, i128* %array_getter56, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check57, i128 %in52, i1* @constraint.211)
  %ptr_getter58 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter58, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in60 = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %i61 = load i128, i128* %i, align 4
  %mod_check62 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in60, i128 0, i128 %i61
  store i128 %in52, i128* %mod_check62, align 4
  %mod_check63 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check63, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y, i128 0, i128 %i65
  %mod_check67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check67, i128 0, i1* @constraint.212)
  %ptr_getter68 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter68, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i71 = load i128, i128* %i, align 4
  %mod_check72 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y70, i128 0, i128 %i71
  store i128 0, i128* %mod_check72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body48
  %i74 = load i128, i128* %i, align 4
  %add75 = add i128 %i74, 1
  store i128 %add75, i128* %i, align 4
  %i76 = load i128, i128* %i, align 4
  %k77 = load i128, i128* %k.bind, align 4
  %slt78 = icmp slt i128 %i76, %k77
  br i1 %slt78, label %loop.body48, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  store i128 0, i128* %i, align 4
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch95, %loop.exit79
  %X81 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i82 = load i128, i128* %i, align 4
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %X81, i128 0, i128 %i82
  %X84 = load i128, i128* %array_getter83, align 4
  %mod_check85 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check85, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x, i128 0, i128 %i87
  %mod_check89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check89, i128 %X84, i1* @constraint.213)
  %ptr_getter90 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter90, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %i93 = load i128, i128* %i, align 4
  %mod_check94 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x92, i128 0, i128 %i93
  store i128 %X84, i128* %mod_check94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body80
  %i96 = load i128, i128* %i, align 4
  %add97 = add i128 %i96, 1
  store i128 %add97, i128* %i, align 4
  %i98 = load i128, i128* %i, align 4
  %m99 = load i128, i128* %m, align 4
  %slt100 = icmp slt i128 %i98, %m99
  br i1 %slt100, label %loop.body80, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch95
  br label %exit

exit:                                             ; preds = %loop.exit101
  %X102 = load [256 x i128]*, [256 x i128]** %X, align 8
  %write_output_inner.signedcheckcarrymodtozero.x = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 5
  store [256 x i128]* %X102, [256 x i128]** %write_output_inner.signedcheckcarrymodtozero.x, align 8
  ret void
}

define %struct_template_circuit_signedcheckcarrymodtozero* @fn_template_build_signedcheckcarrymodtozero(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedcheckcarrymodtozero = alloca %struct_template_circuit_signedcheckcarrymodtozero, align 8
  %write_arg_inner.signedcheckcarrymodtozero.n = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.signedcheckcarrymodtozero.n, align 4
  %write_arg_inner.signedcheckcarrymodtozero.k = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.signedcheckcarrymodtozero.k, align 4
  %write_arg_inner.signedcheckcarrymodtozero.overflow = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.signedcheckcarrymodtozero.overflow, align 4
  %write_arg_inner.signedcheckcarrymodtozero.p = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %write_arg_inner.signedcheckcarrymodtozero.p, align 8
  ret %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero
}

define void @fn_template_init_signedfpcarrymodp(%struct_template_circuit_signedfpcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 0
  %read_arg_inner.signedfpcarrymodp.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedfpcarrymodp.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 1
  %read_arg_inner.signedfpcarrymodp.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedfpcarrymodp.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 2
  %read_arg_inner.signedfpcarrymodp.overflow = load i128, i128* %struct_getter2, align 4
  %overflow.bind = alloca i128, align 8
  store i128 %read_arg_inner.signedfpcarrymodp.overflow, i128* %overflow.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 3
  %read_arg_inner.signedfpcarrymodp.p = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.signedfpcarrymodp.p, [256 x i128]** %p.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 4
  %read_input_inner.signedfpcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.signedfpcarrymodp.in, [256 x i128]** %in.bind, align 8
  %m = alloca i128, align 8
  store i128 0, i128* %m, align 4
  %Xvar = alloca [256 x [256 x i128]]*, align 8
  %Xvar5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %Xvar5, [256 x [256 x i128]]** %Xvar, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out7 = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
  %mod_check = alloca %struct_template_circuit_checkcarrymodp*, align 8
  %X_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %X_range_checks8 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %X_range_checks8, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %range_checks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %range_checks9, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %X = bitcast i8* %malloccall10 to [256 x i128]**
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X12 = bitcast i8* %malloccall11 to [256 x i128]*
  store [256 x i128]* %X12, [256 x i128]** %X, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %overflow = load i128, i128* %overflow.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %overflow, %n
  %sub = sub i128 %add, 1
  %n13 = load i128, i128* %n.bind, align 4
  %sdiv = sdiv i128 %sub, %n13
  store i128 %sdiv, i128* %m, align 4
  %n14 = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m15 = load i128, i128* %m, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n14, i128 %k, i128 %m15, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %Xvar, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %Xvar16 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar16, i128 0, i128 1, i128 %i17
  %Xvar18 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i19 = load i128, i128* %i, align 4
  %out20 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i19
  store i128 %Xvar18, i128* %out20, align 4
  %n21 = load i128, i128* %n.bind, align 4
  %call22 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n21)
  %ptr_getter23 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i24 = load i128, i128* %i, align 4
  %range_checks25 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter23, i128 0, i128 %i24
  store %struct_template_circuit_num2bits* %call22, %struct_template_circuit_num2bits** %range_checks25, align 8
  %out26 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %out26, i128 0, i128 %i27
  %out29 = load i128, i128* %array_getter28, align 4
  %range_checks30 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks30, i128 0, i128 %i31
  %range_checks33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks33, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter34, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out29, i1* @constraint.214)
  %ptr_getter35 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i36 = load i128, i128* %i, align 4
  %array_getter37 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter35, i128 0, i128 %i36
  %range_checks38 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter37, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks38, i32 0, i32 1
  store i128 %out29, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i39 = load i128, i128* %i, align 4
  %add40 = add i128 %i39, 1
  store i128 %add40, i128* %i, align 4
  %i41 = load i128, i128* %i, align 4
  %k42 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i41, %k42
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch74, %loop.exit
  %Xvar44 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar44, i128 0, i128 0, i128 %i45
  %Xvar47 = load i128, i128* %array_getter46, align 4
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i49 = load i128, i128* %i, align 4
  %X50 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 %i49
  store i128 %Xvar47, i128* %X50, align 4
  %n51 = load i128, i128* %n.bind, align 4
  %add52 = add i128 %n51, 1
  %call53 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add52)
  %ptr_getter54 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i55 = load i128, i128* %i, align 4
  %X_range_checks56 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter54, i128 0, i128 %i55
  store %struct_template_circuit_num2bits* %call53, %struct_template_circuit_num2bits** %X_range_checks56, align 8
  %X57 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %X57, i128 0, i128 %i58
  %X60 = load i128, i128* %array_getter59, align 4
  %n61 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n61
  %add62 = add i128 %X60, %lshift
  %X_range_checks63 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i64 = load i128, i128* %i, align 4
  %array_getter65 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks63, i128 0, i128 %i64
  %X_range_checks66 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter65, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks66, i32 0, i32 1
  %read_input_outter.num2bits.in68 = load i128, i128* %struct_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in68, i128 %add62, i1* @constraint.215)
  %ptr_getter69 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter69, i128 0, i128 %i70
  %X_range_checks72 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter71, align 8
  %write_input_outter.num2bits.in73 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks72, i32 0, i32 1
  store i128 %add62, i128* %write_input_outter.num2bits.in73, align 4
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body43
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %m78 = load i128, i128* %m, align 4
  %slt79 = icmp slt i128 %i77, %m78
  br i1 %slt79, label %loop.body43, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch74
  %n81 = load i128, i128* %n.bind, align 4
  %k82 = load i128, i128* %k.bind, align 4
  %m83 = load i128, i128* %m, align 4
  %overflow84 = load i128, i128* %overflow.bind, align 4
  %p85 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call86 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %n81, i128 %k82, i128 %m83, i128 %overflow84, [256 x i128]* %p85)
  store %struct_template_circuit_checkcarrymodp* %call86, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch116, %loop.exit80
  %in88 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [256 x i128], [256 x i128]* %in88, i128 0, i128 %i89
  %in91 = load i128, i128* %array_getter90, align 4
  %mod_check92 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter93 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check92, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter93, align 8
  %i94 = load i128, i128* %i, align 4
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in, i128 0, i128 %i94
  %mod_check96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check96, i128 %in91, i1* @constraint.216)
  %ptr_getter97 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter97, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in99 = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %i100 = load i128, i128* %i, align 4
  %mod_check101 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in99, i128 0, i128 %i100
  store i128 %in91, i128* %mod_check101, align 4
  %out102 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i103 = load i128, i128* %i, align 4
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %out102, i128 0, i128 %i103
  %out105 = load i128, i128* %array_getter104, align 4
  %mod_check106 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check106, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y = load [256 x i128]*, [256 x i128]** %struct_getter107, align 8
  %i108 = load i128, i128* %i, align 4
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y, i128 0, i128 %i108
  %mod_check110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check110, i128 %out105, i1* @constraint.217)
  %ptr_getter111 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter111, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y113 = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %i114 = load i128, i128* %i, align 4
  %mod_check115 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y113, i128 0, i128 %i114
  store i128 %out105, i128* %mod_check115, align 4
  br label %loop.latch116

loop.latch116:                                    ; preds = %loop.body87
  %i117 = load i128, i128* %i, align 4
  %add118 = add i128 %i117, 1
  store i128 %add118, i128* %i, align 4
  %i119 = load i128, i128* %i, align 4
  %k120 = load i128, i128* %k.bind, align 4
  %slt121 = icmp slt i128 %i119, %k120
  br i1 %slt121, label %loop.body87, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch116
  store i128 0, i128* %i, align 4
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch138, %loop.exit122
  %X124 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %X124, i128 0, i128 %i125
  %X127 = load i128, i128* %array_getter126, align 4
  %mod_check128 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check128, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x = load [256 x i128]*, [256 x i128]** %struct_getter129, align 8
  %i130 = load i128, i128* %i, align 4
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x, i128 0, i128 %i130
  %mod_check132 = load i128, i128* %array_getter131, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check132, i128 %X127, i1* @constraint.218)
  %ptr_getter133 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter133, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x135 = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %i136 = load i128, i128* %i, align 4
  %mod_check137 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x135, i128 0, i128 %i136
  store i128 %X127, i128* %mod_check137, align 4
  br label %loop.latch138

loop.latch138:                                    ; preds = %loop.body123
  %i139 = load i128, i128* %i, align 4
  %add140 = add i128 %i139, 1
  store i128 %add140, i128* %i, align 4
  %i141 = load i128, i128* %i, align 4
  %m142 = load i128, i128* %m, align 4
  %slt143 = icmp slt i128 %i141, %m142
  br i1 %slt143, label %loop.body123, label %loop.exit144

loop.exit144:                                     ; preds = %loop.latch138
  br label %exit

exit:                                             ; preds = %loop.exit144
  %X145 = load [256 x i128]*, [256 x i128]** %X, align 8
  %write_output_inner.signedfpcarrymodp.x = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 5
  store [256 x i128]* %X145, [256 x i128]** %write_output_inner.signedfpcarrymodp.x, align 8
  %out146 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.signedfpcarrymodp.out = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 6
  store [256 x i128]* %out146, [256 x i128]** %write_output_inner.signedfpcarrymodp.out, align 8
  ret void
}

define %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedfpcarrymodp = alloca %struct_template_circuit_signedfpcarrymodp, align 8
  %write_arg_inner.signedfpcarrymodp.n = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.signedfpcarrymodp.n, align 4
  %write_arg_inner.signedfpcarrymodp.k = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.signedfpcarrymodp.k, align 4
  %write_arg_inner.signedfpcarrymodp.overflow = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.signedfpcarrymodp.overflow, align 4
  %write_arg_inner.signedfpcarrymodp.p = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %write_arg_inner.signedfpcarrymodp.p, align 8
  ret %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %isZero = alloca i128, align 8
  store i128 0, i128* %isZero, align 4
  %pMinusTwo = alloca [256 x i128]*, align 8
  %pMinusTwo1 = alloca [256 x i128], align 8
  store [256 x i128]* %pMinusTwo1, [256 x i128]** %pMinusTwo, align 8
  %out = alloca [256 x i128]*, align 8
  %out2 = alloca [256 x i128], align 8
  store [256 x i128]* %out2, [256 x i128]** %out, align 8
  %pCopy = alloca [256 x i128]*, align 8
  %pCopy3 = alloca [256 x i128], align 8
  store [256 x i128]* %pCopy3, [256 x i128]** %pCopy, align 8
  %two = alloca [256 x i128]*, align 8
  %two4 = alloca [256 x i128], align 8
  store [256 x i128]* %two4, [256 x i128]** %two, align 8
  %ret = alloca [256 x i128]*, align 8
  %ret5 = alloca [256 x i128], align 8
  store [256 x i128]* %ret5, [256 x i128]** %ret, align 8
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i6
  %a7 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a7, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i8 = load i128, i128* %i, align 4
  %add = add i128 %i8, 1
  store i128 %add, i128* %i, align 4
  %i9 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i9, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero12 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero12, 1
  br i1 %eq, label %if.true10, label %if.false11

if.true10:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body13

if.false11:                                       ; preds = %loop.exit
  br label %if.exit24

loop.body13:                                      ; preds = %loop.latch16, %if.true10
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i14 = load i128, i128* %i, align 4
  %ret15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 0, i128* %ret15, align 4
  br label %loop.latch16

loop.latch16:                                     ; preds = %loop.body13
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %slt21 = icmp slt i128 %i19, %k20
  br i1 %slt21, label %loop.body13, label %loop.exit22

loop.exit22:                                      ; preds = %loop.latch16
  %ret23 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret23

if.exit24:                                        ; preds = %if.false11
  %uniform_array25 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array25, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch42, %if.exit24
  %i29 = load i128, i128* %i, align 4
  %k30 = load i128, i128* %k.bind, align 4
  %slt31 = icmp slt i128 %i29, %k30
  br i1 %slt31, label %if.true27, label %if.false28

if.true27:                                        ; preds = %loop.body26
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i32
  %p34 = load i128, i128* %array_getter33, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i36 = load i128, i128* %i, align 4
  %pCopy37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 %p34, i128* %pCopy37, align 4
  br label %if.exit41

if.false28:                                       ; preds = %loop.body26
  %ptr_getter38 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i39 = load i128, i128* %i, align 4
  %pCopy40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter38, i128 0, i128 %i39
  store i128 0, i128* %pCopy40, align 4
  br label %if.exit41

if.exit41:                                        ; preds = %if.false28, %if.true27
  br label %loop.latch42

loop.latch42:                                     ; preds = %if.exit41
  %i43 = load i128, i128* %i, align 4
  %add44 = add i128 %i43, 1
  store i128 %add44, i128* %i, align 4
  %i45 = load i128, i128* %i, align 4
  %slt46 = icmp slt i128 %i45, 50
  br i1 %slt46, label %loop.body26, label %loop.exit47

loop.exit47:                                      ; preds = %loop.latch42
  %uniform_array48 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array48, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body49

loop.body49:                                      ; preds = %loop.latch53, %loop.exit47
  %ptr_getter50 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i51 = load i128, i128* %i, align 4
  %two52 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter50, i128 0, i128 %i51
  store i128 0, i128* %two52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body49
  %i54 = load i128, i128* %i, align 4
  %add55 = add i128 %i54, 1
  store i128 %add55, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %slt57 = icmp slt i128 %i56, 50
  br i1 %slt57, label %loop.body49, label %loop.exit58

loop.exit58:                                      ; preds = %loop.latch53
  %ptr_getter59 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two60 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter59, i128 0, i128 0
  store i128 2, i128* %two60, align 4
  %uniform_array61 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array61, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %pCopy63 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two64 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k62, [256 x i128]* %pCopy63, [256 x i128]* %two64)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array65 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array65, [256 x i128]** %out, align 8
  %n66 = load i128, i128* %n.bind, align 4
  %k67 = load i128, i128* %k.bind, align 4
  %a68 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %pCopy69 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo70 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call71 = call [256 x i128]* @mod_exp(i128 %n66, i128 %k67, [256 x i128]* %a68, [256 x i128]* %pCopy69, [256 x i128]* %pMinusTwo70)
  store [256 x i128]* %call71, [256 x i128]** %out, align 8
  %out72 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out72
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %temp1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %temp1, [256 x [256 x i128]]** %temp, align 8
  %prod = alloca [256 x i128]*, align 8
  %prod2 = alloca [256 x i128], align 8
  store [256 x i128]* %prod2, [256 x i128]** %prod, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %prod5 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %n3, i128 %k4, [256 x i128]* %prod5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %temp, align 8
  %temp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp7, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define void @fn_template_init_bigmod2(%struct_template_circuit_bigmod2* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 0
  %read_arg_inner.bigmod2.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmod2.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 1
  %read_arg_inner.bigmod2.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmod2.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 2
  %read_arg_inner.bigmod2.m = load i128, i128* %struct_getter2, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmod2.m, i128* %m.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 3
  %read_input_inner.bigmod2.a = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmod2.a, [256 x i128]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 4
  %read_input_inner.bigmod2.b = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmod2.b, [256 x i128]** %b.bind, align 8
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv5, [256 x [256 x i128]]** %longdiv, align 8
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks6, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %mul = alloca %struct_template_circuit_bigmult*, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %div = bitcast i8* %malloccall to [256 x i128]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div8 = bitcast i8* %malloccall7 to [256 x i128]*
  store [256 x i128]* %div8, [256 x i128]** %div, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %mod = bitcast i8* %malloccall9 to [256 x i128]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod11 = bitcast i8* %malloccall10 to [256 x i128]*
  store [256 x i128]* %mod11, [256 x i128]** %mod, align 8
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks12 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks12, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %k13 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %m, %k13
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %sub, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv14 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv14, i128 0, i128 1, i128 %i15
  %longdiv16 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i17 = load i128, i128* %i, align 4
  %mod18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i17
  store i128 %longdiv16, i128* %mod18, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add20 = add i128 %i19, 1
  store i128 %add20, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k22 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i21, %k22
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch31, %loop.exit
  %longdiv24 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv24, i128 0, i128 0, i128 %i25
  %longdiv27 = load i128, i128* %array_getter26, align 4
  %ptr_getter28 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i29 = load i128, i128* %i, align 4
  %div30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter28, i128 0, i128 %i29
  store i128 %longdiv27, i128* %div30, align 4
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.body23
  %i32 = load i128, i128* %i, align 4
  %add33 = add i128 %i32, 1
  store i128 %add33, i128* %i, align 4
  %i34 = load i128, i128* %i, align 4
  %m35 = load i128, i128* %m.bind, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %sub37 = sub i128 %m35, %k36
  %sle = icmp sle i128 %i34, %sub37
  br i1 %sle, label %loop.body23, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch31
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch58, %loop.exit38
  %n40 = load i128, i128* %n.bind, align 4
  %call41 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n40)
  %ptr_getter42 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i43 = load i128, i128* %i, align 4
  %div_range_checks44 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter42, i128 0, i128 %i43
  store %struct_template_circuit_num2bits* %call41, %struct_template_circuit_num2bits** %div_range_checks44, align 8
  %div45 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %div45, i128 0, i128 %i46
  %div48 = load i128, i128* %array_getter47, align 4
  %div_range_checks49 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks49, i128 0, i128 %i50
  %div_range_checks52 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter51, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks52, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %div48, i1* @constraint.219)
  %ptr_getter54 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter54, i128 0, i128 %i55
  %div_range_checks57 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter56, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks57, i32 0, i32 1
  store i128 %div48, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body39
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %m62 = load i128, i128* %m.bind, align 4
  %k63 = load i128, i128* %k.bind, align 4
  %sub64 = sub i128 %m62, %k63
  %sle65 = icmp sle i128 %i61, %sub64
  br i1 %sle65, label %loop.body39, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch58
  store i128 0, i128* %i, align 4
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch88, %loop.exit66
  %n68 = load i128, i128* %n.bind, align 4
  %call69 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n68)
  %ptr_getter70 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i71 = load i128, i128* %i, align 4
  %mod_range_checks72 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter70, i128 0, i128 %i71
  store %struct_template_circuit_num2bits* %call69, %struct_template_circuit_num2bits** %mod_range_checks72, align 8
  %mod73 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i74 = load i128, i128* %i, align 4
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %mod73, i128 0, i128 %i74
  %mod76 = load i128, i128* %array_getter75, align 4
  %mod_range_checks77 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i78 = load i128, i128* %i, align 4
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks77, i128 0, i128 %i78
  %mod_range_checks80 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter79, align 8
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks80, i32 0, i32 1
  %read_input_outter.num2bits.in82 = load i128, i128* %struct_getter81, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in82, i128 %mod76, i1* @constraint.220)
  %ptr_getter83 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter83, i128 0, i128 %i84
  %mod_range_checks86 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter85, align 8
  %write_input_outter.num2bits.in87 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks86, i32 0, i32 1
  store i128 %mod76, i128* %write_input_outter.num2bits.in87, align 4
  br label %loop.latch88

loop.latch88:                                     ; preds = %loop.body67
  %i89 = load i128, i128* %i, align 4
  %add90 = add i128 %i89, 1
  store i128 %add90, i128* %i, align 4
  %i91 = load i128, i128* %i, align 4
  %k92 = load i128, i128* %k.bind, align 4
  %slt93 = icmp slt i128 %i91, %k92
  br i1 %slt93, label %loop.body67, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch88
  %n95 = load i128, i128* %n.bind, align 4
  %m96 = load i128, i128* %m.bind, align 4
  %k97 = load i128, i128* %k.bind, align 4
  %sub98 = sub i128 %m96, %k97
  %add99 = add i128 %sub98, 1
  %call100 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n95, i128 %add99)
  store %struct_template_circuit_bigmult* %call100, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body101

loop.body101:                                     ; preds = %loop.latch130, %loop.exit94
  %div102 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i103 = load i128, i128* %i, align 4
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %div102, i128 0, i128 %i103
  %div105 = load i128, i128* %array_getter104, align 4
  %mul106 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul106, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter107, align 8
  %i108 = load i128, i128* %i, align 4
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i108
  %mul110 = load i128, i128* %array_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul110, i128 %div105, i1* @constraint.221)
  %ptr_getter111 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter111, i32 0, i32 2
  %read_input_outter.bigmult.a113 = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %i114 = load i128, i128* %i, align 4
  %mul115 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a113, i128 0, i128 %i114
  store i128 %div105, i128* %mul115, align 4
  %b116 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [256 x i128], [256 x i128]* %b116, i128 0, i128 %i117
  %b119 = load i128, i128* %array_getter118, align 4
  %mul120 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter121 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul120, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter121, align 8
  %i122 = load i128, i128* %i, align 4
  %array_getter123 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i122
  %mul124 = load i128, i128* %array_getter123, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul124, i128 %b119, i1* @constraint.222)
  %ptr_getter125 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter125, i32 0, i32 3
  %read_input_outter.bigmult.b127 = load [256 x i128]*, [256 x i128]** %struct_getter126, align 8
  %i128 = load i128, i128* %i, align 4
  %mul129 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b127, i128 0, i128 %i128
  store i128 %b119, i128* %mul129, align 4
  br label %loop.latch130

loop.latch130:                                    ; preds = %loop.body101
  %i131 = load i128, i128* %i, align 4
  %add132 = add i128 %i131, 1
  store i128 %add132, i128* %i, align 4
  %i133 = load i128, i128* %i, align 4
  %k134 = load i128, i128* %k.bind, align 4
  %slt135 = icmp slt i128 %i133, %k134
  br i1 %slt135, label %loop.body101, label %loop.exit136

loop.exit136:                                     ; preds = %loop.latch130
  %k137 = load i128, i128* %k.bind, align 4
  store i128 %k137, i128* %i, align 4
  br label %loop.body138

loop.body138:                                     ; preds = %loop.latch165, %loop.exit136
  %div139 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i140 = load i128, i128* %i, align 4
  %array_getter141 = getelementptr inbounds [256 x i128], [256 x i128]* %div139, i128 0, i128 %i140
  %div142 = load i128, i128* %array_getter141, align 4
  %mul143 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul143, i32 0, i32 2
  %read_input_outter.bigmult.a145 = load [256 x i128]*, [256 x i128]** %struct_getter144, align 8
  %i146 = load i128, i128* %i, align 4
  %array_getter147 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a145, i128 0, i128 %i146
  %mul148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul148, i128 %div142, i1* @constraint.223)
  %ptr_getter149 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter149, i32 0, i32 2
  %read_input_outter.bigmult.a151 = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %i152 = load i128, i128* %i, align 4
  %mul153 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a151, i128 0, i128 %i152
  store i128 %div142, i128* %mul153, align 4
  %mul154 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter155 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul154, i32 0, i32 3
  %read_input_outter.bigmult.b156 = load [256 x i128]*, [256 x i128]** %struct_getter155, align 8
  %i157 = load i128, i128* %i, align 4
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b156, i128 0, i128 %i157
  %mul159 = load i128, i128* %array_getter158, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul159, i128 0, i1* @constraint.224)
  %ptr_getter160 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter160, i32 0, i32 3
  %read_input_outter.bigmult.b162 = load [256 x i128]*, [256 x i128]** %struct_getter161, align 8
  %i163 = load i128, i128* %i, align 4
  %mul164 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b162, i128 0, i128 %i163
  store i128 0, i128* %mul164, align 4
  br label %loop.latch165

loop.latch165:                                    ; preds = %loop.body138
  %i166 = load i128, i128* %i, align 4
  %add167 = add i128 %i166, 1
  store i128 %add167, i128* %i, align 4
  %i168 = load i128, i128* %i, align 4
  %m169 = load i128, i128* %m.bind, align 4
  %k170 = load i128, i128* %k.bind, align 4
  %sub171 = sub i128 %m169, %k170
  %sle172 = icmp sle i128 %i168, %sub171
  br i1 %sle172, label %loop.body138, label %loop.exit173

loop.exit173:                                     ; preds = %loop.latch165
  %m174 = load i128, i128* %m.bind, align 4
  store i128 %m174, i128* %i, align 4
  br label %loop.body175

loop.body175:                                     ; preds = %loop.latch181, %loop.exit173
  %mul176 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul176, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter177, align 8
  %i178 = load i128, i128* %i, align 4
  %array_getter179 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i178
  %mul180 = load i128, i128* %array_getter179, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul180, i128 0, i1* @constraint.225)
  br label %loop.latch181

loop.latch181:                                    ; preds = %loop.body175
  %i182 = load i128, i128* %i, align 4
  %add183 = add i128 %i182, 1
  store i128 %add183, i128* %i, align 4
  %i184 = load i128, i128* %i, align 4
  %m185 = load i128, i128* %m.bind, align 4
  %k186 = load i128, i128* %k.bind, align 4
  %sub187 = sub i128 %m185, %k186
  %mul188 = mul i128 2, %sub187
  %add189 = add i128 %mul188, 2
  %slt190 = icmp slt i128 %i184, %add189
  br i1 %slt190, label %loop.body175, label %loop.exit191

loop.exit191:                                     ; preds = %loop.latch181
  %n192 = load i128, i128* %n.bind, align 4
  %m193 = load i128, i128* %m.bind, align 4
  %call194 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n192, i128 %m193)
  store %struct_template_circuit_bigadd* %call194, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body195

loop.body195:                                     ; preds = %loop.latch240, %loop.exit191
  %mul196 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter197 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul196, i32 0, i32 4
  %read_output_outter.bigmult.out198 = load [256 x i128]*, [256 x i128]** %struct_getter197, align 8
  %i199 = load i128, i128* %i, align 4
  %array_getter200 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out198, i128 0, i128 %i199
  %mul201 = load i128, i128* %array_getter200, align 4
  %add202 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter203 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add202, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter203, align 8
  %i204 = load i128, i128* %i, align 4
  %array_getter205 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i204
  %add206 = load i128, i128* %array_getter205, align 4
  call void @fn_intrinsic_add_constraint(i128 %add206, i128 %mul201, i1* @constraint.226)
  %ptr_getter207 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter207, i32 0, i32 2
  %read_input_outter.bigadd.a209 = load [256 x i128]*, [256 x i128]** %struct_getter208, align 8
  %i210 = load i128, i128* %i, align 4
  %add211 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a209, i128 0, i128 %i210
  store i128 %mul201, i128* %add211, align 4
  %i212 = load i128, i128* %i, align 4
  %k213 = load i128, i128* %k.bind, align 4
  %slt214 = icmp slt i128 %i212, %k213
  br i1 %slt214, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body195
  %mod215 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i216 = load i128, i128* %i, align 4
  %array_getter217 = getelementptr inbounds [256 x i128], [256 x i128]* %mod215, i128 0, i128 %i216
  %mod218 = load i128, i128* %array_getter217, align 4
  %add219 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter220 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add219, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter220, align 8
  %i221 = load i128, i128* %i, align 4
  %array_getter222 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i221
  %add223 = load i128, i128* %array_getter222, align 4
  call void @fn_intrinsic_add_constraint(i128 %add223, i128 %mod218, i1* @constraint.227)
  %ptr_getter224 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter225 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter224, i32 0, i32 3
  %read_input_outter.bigadd.b226 = load [256 x i128]*, [256 x i128]** %struct_getter225, align 8
  %i227 = load i128, i128* %i, align 4
  %add228 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b226, i128 0, i128 %i227
  store i128 %mod218, i128* %add228, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body195
  %add229 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter230 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add229, i32 0, i32 3
  %read_input_outter.bigadd.b231 = load [256 x i128]*, [256 x i128]** %struct_getter230, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b231, i128 0, i128 %i232
  %add234 = load i128, i128* %array_getter233, align 4
  call void @fn_intrinsic_add_constraint(i128 %add234, i128 0, i1* @constraint.228)
  %ptr_getter235 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter236 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter235, i32 0, i32 3
  %read_input_outter.bigadd.b237 = load [256 x i128]*, [256 x i128]** %struct_getter236, align 8
  %i238 = load i128, i128* %i, align 4
  %add239 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b237, i128 0, i128 %i238
  store i128 0, i128* %add239, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch240

loop.latch240:                                    ; preds = %if.exit
  %i241 = load i128, i128* %i, align 4
  %add242 = add i128 %i241, 1
  store i128 %add242, i128* %i, align 4
  %i243 = load i128, i128* %i, align 4
  %m244 = load i128, i128* %m.bind, align 4
  %slt245 = icmp slt i128 %i243, %m244
  br i1 %slt245, label %loop.body195, label %loop.exit246

loop.exit246:                                     ; preds = %loop.latch240
  store i128 0, i128* %i, align 4
  br label %loop.body247

loop.body247:                                     ; preds = %loop.latch257, %loop.exit246
  %add248 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter249 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add248, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter249, align 8
  %i250 = load i128, i128* %i, align 4
  %array_getter251 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i250
  %add252 = load i128, i128* %array_getter251, align 4
  %a253 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i254 = load i128, i128* %i, align 4
  %array_getter255 = getelementptr inbounds [256 x i128], [256 x i128]* %a253, i128 0, i128 %i254
  %a256 = load i128, i128* %array_getter255, align 4
  call void @fn_intrinsic_add_constraint(i128 %add252, i128 %a256, i1* @constraint.229)
  br label %loop.latch257

loop.latch257:                                    ; preds = %loop.body247
  %i258 = load i128, i128* %i, align 4
  %add259 = add i128 %i258, 1
  store i128 %add259, i128* %i, align 4
  %i260 = load i128, i128* %i, align 4
  %m261 = load i128, i128* %m.bind, align 4
  %slt262 = icmp slt i128 %i260, %m261
  br i1 %slt262, label %loop.body247, label %loop.exit263

loop.exit263:                                     ; preds = %loop.latch257
  %add264 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter265 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add264, i32 0, i32 4
  %read_output_outter.bigadd.out266 = load [256 x i128]*, [256 x i128]** %struct_getter265, align 8
  %m267 = load i128, i128* %m.bind, align 4
  %array_getter268 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out266, i128 0, i128 %m267
  %add269 = load i128, i128* %array_getter268, align 4
  call void @fn_intrinsic_add_constraint(i128 %add269, i128 0, i1* @constraint.230)
  %n270 = load i128, i128* %n.bind, align 4
  %k271 = load i128, i128* %k.bind, align 4
  %call272 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n270, i128 %k271)
  store %struct_template_circuit_biglessthan* %call272, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body273

loop.body273:                                     ; preds = %loop.latch302, %loop.exit263
  %mod274 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i275 = load i128, i128* %i, align 4
  %array_getter276 = getelementptr inbounds [256 x i128], [256 x i128]* %mod274, i128 0, i128 %i275
  %mod277 = load i128, i128* %array_getter276, align 4
  %lt278 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter279 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt278, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter279, align 8
  %i280 = load i128, i128* %i, align 4
  %array_getter281 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i280
  %lt282 = load i128, i128* %array_getter281, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt282, i128 %mod277, i1* @constraint.231)
  %ptr_getter283 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter284 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter283, i32 0, i32 2
  %read_input_outter.biglessthan.a285 = load [256 x i128]*, [256 x i128]** %struct_getter284, align 8
  %i286 = load i128, i128* %i, align 4
  %lt287 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a285, i128 0, i128 %i286
  store i128 %mod277, i128* %lt287, align 4
  %b288 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i289 = load i128, i128* %i, align 4
  %array_getter290 = getelementptr inbounds [256 x i128], [256 x i128]* %b288, i128 0, i128 %i289
  %b291 = load i128, i128* %array_getter290, align 4
  %lt292 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt292, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter293, align 8
  %i294 = load i128, i128* %i, align 4
  %array_getter295 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i294
  %lt296 = load i128, i128* %array_getter295, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt296, i128 %b291, i1* @constraint.232)
  %ptr_getter297 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter298 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter297, i32 0, i32 3
  %read_input_outter.biglessthan.b299 = load [256 x i128]*, [256 x i128]** %struct_getter298, align 8
  %i300 = load i128, i128* %i, align 4
  %lt301 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b299, i128 0, i128 %i300
  store i128 %b291, i128* %lt301, align 4
  br label %loop.latch302

loop.latch302:                                    ; preds = %loop.body273
  %i303 = load i128, i128* %i, align 4
  %add304 = add i128 %i303, 1
  store i128 %add304, i128* %i, align 4
  %i305 = load i128, i128* %i, align 4
  %k306 = load i128, i128* %k.bind, align 4
  %slt307 = icmp slt i128 %i305, %k306
  br i1 %slt307, label %loop.body273, label %loop.exit308

loop.exit308:                                     ; preds = %loop.latch302
  %lt309 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter310 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt309, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter310, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.233)
  br label %exit

exit:                                             ; preds = %loop.exit308
  %div311 = load [256 x i128]*, [256 x i128]** %div, align 8
  %write_output_inner.bigmod2.div = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 5
  store [256 x i128]* %div311, [256 x i128]** %write_output_inner.bigmod2.div, align 8
  %mod312 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %write_output_inner.bigmod2.mod = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 6
  store [256 x i128]* %mod312, [256 x i128]** %write_output_inner.bigmod2.mod, align 8
  ret void
}

define %struct_template_circuit_bigmod2* @fn_template_build_bigmod2(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmod2 = alloca %struct_template_circuit_bigmod2, align 8
  %write_arg_inner.bigmod2.n = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmod2.n, align 4
  %write_arg_inner.bigmod2.k = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmod2.k, align 4
  %write_arg_inner.bigmod2.m = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.bigmod2.m, align 4
  ret %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2
}

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %num.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %num.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %q = alloca [256 x i128]*, align 8
  %q1 = alloca [256 x i128], align 8
  store [256 x i128]* %q1, [256 x i128]** %q, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %v = alloca [256 x i128]*, align 8
  %v2 = alloca [256 x i128], align 8
  store [256 x i128]* %v2, [256 x i128]** %v, align 8
  %l = alloca i128, align 8
  store i128 0, i128* %l, align 4
  %r = alloca [256 x [256 x i128]]*, align 8
  %r3 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r3, [256 x [256 x i128]]** %r, align 8
  %newu = alloca [256 x i128]*, align 8
  %newu4 = alloca [256 x i128], align 8
  store [256 x i128]* %newu4, [256 x i128]** %newu, align 8
  %newv = alloca [256 x i128]*, align 8
  %newv5 = alloca [256 x i128], align 8
  store [256 x i128]* %newv5, [256 x i128]** %newv, align 8
  %x = alloca [256 x i128]*, align 8
  %x6 = alloca [256 x i128], align 8
  store [256 x i128]* %x6, [256 x i128]** %x, align 8
  %b = alloca [256 x i128]*, align 8
  %b7 = alloca [256 x i128], align 8
  store [256 x i128]* %b7, [256 x i128]** %b, align 8
  %ka = alloca i128, align 8
  store i128 0, i128* %ka, align 4
  %ret = alloca [256 x i128]*, align 8
  %ret8 = alloca [256 x i128], align 8
  store [256 x i128]* %ret8, [256 x i128]** %ret, align 8
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %amodp9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %amodp9, [256 x [256 x i128]]** %amodp, align 8
  %a = alloca [256 x i128]*, align 8
  %a10 = alloca [256 x i128], align 8
  store [256 x i128]* %a10, [256 x i128]** %a, align 8
  %u = alloca [256 x i128]*, align 8
  %u11 = alloca [256 x i128], align 8
  store [256 x i128]* %u11, [256 x i128]** %u, align 8
  %y = alloca [256 x i128]*, align 8
  %y12 = alloca [256 x i128], align 8
  store [256 x i128]* %y12, [256 x i128]** %y, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %num = load [256 x i128]*, [256 x i128]** %num.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 0, [256 x i128]* %num, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %amodp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %a, align 8
  %uniform_array13 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array13, [256 x i128]** %b, align 8
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %x, align 8
  %uniform_array15 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array15, [256 x i128]** %y, align 8
  %uniform_array16 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array16, [256 x i128]** %u, align 8
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %v, align 8
  %uniform_array18 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array18, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %amodp19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %amodp, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %amodp19, i128 0, i128 1, i128 %i20
  %amodp21 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a, align 8
  %i22 = load i128, i128* %i, align 4
  %a23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i22
  store i128 %amodp21, i128* %a23, align 4
  %p24 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %p24, i128 0, i128 %i25
  %p27 = load i128, i128* %array_getter26, align 4
  %ptr_getter28 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i29 = load i128, i128* %i, align 4
  %b30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter28, i128 0, i128 %i29
  store i128 %p27, i128* %b30, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i32 = load i128, i128* %i, align 4
  %x33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 0, i128* %x33, align 4
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i35 = load i128, i128* %i, align 4
  %y36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 0, i128* %y36, align 4
  %ptr_getter37 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i38 = load i128, i128* %i, align 4
  %u39 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter37, i128 0, i128 %i38
  store i128 0, i128* %u39, align 4
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i41 = load i128, i128* %i, align 4
  %v42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 0, i128* %v42, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i43 = load i128, i128* %i, align 4
  %add = add i128 %i43, 1
  store i128 %add, i128* %i, align 4
  %i44 = load i128, i128* %i, align 4
  %k45 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i44, %k45
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter46 = load [256 x i128]*, [256 x i128]** %y, align 8
  %y47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter46, i128 0, i128 0
  store i128 1, i128* %y47, align 4
  %ptr_getter48 = load [256 x i128]*, [256 x i128]** %u, align 8
  %u49 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter48, i128 0, i128 0
  store i128 1, i128* %u49, align 4
  store i128 0, i128* %l, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch207, %loop.exit
  store i128 0, i128* %ka, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch58, %loop.body50
  %a52 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %a52, i128 0, i128 %i53
  %a55 = load i128, i128* %array_getter54, align 4
  %ne = icmp ne i128 %a55, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body51
  %i56 = load i128, i128* %i, align 4
  %add57 = add i128 %i56, 1
  store i128 %add57, i128* %ka, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body51
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch58

loop.latch58:                                     ; preds = %if.exit
  %i59 = load i128, i128* %i, align 4
  %add60 = add i128 %i59, 1
  store i128 %add60, i128* %i, align 4
  %i61 = load i128, i128* %i, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %slt63 = icmp slt i128 %i61, %k62
  br i1 %slt63, label %loop.body51, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch58
  %ka67 = load i128, i128* %ka, align 4
  %eq = icmp eq i128 %ka67, 0
  br i1 %eq, label %if.true65, label %if.false66

if.true65:                                        ; preds = %loop.exit64
  store i128 0, i128* %i, align 4
  br label %loop.body68

if.false66:                                       ; preds = %loop.exit64
  br label %if.exit84

loop.body68:                                      ; preds = %loop.latch76, %if.true65
  %x69 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %x69, i128 0, i128 %i70
  %x72 = load i128, i128* %array_getter71, align 4
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i74 = load i128, i128* %i, align 4
  %ret75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 %x72, i128* %ret75, align 4
  br label %loop.latch76

loop.latch76:                                     ; preds = %loop.body68
  %i77 = load i128, i128* %i, align 4
  %add78 = add i128 %i77, 1
  store i128 %add78, i128* %i, align 4
  %i79 = load i128, i128* %i, align 4
  %k80 = load i128, i128* %k.bind, align 4
  %slt81 = icmp slt i128 %i79, %k80
  br i1 %slt81, label %loop.body68, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  %ret83 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret83

if.exit84:                                        ; preds = %if.false66
  %n85 = load i128, i128* %n.bind, align 4
  %ka86 = load i128, i128* %ka, align 4
  %k87 = load i128, i128* %k.bind, align 4
  %ka88 = load i128, i128* %ka, align 4
  %sub = sub i128 %k87, %ka88
  %b89 = load [256 x i128]*, [256 x i128]** %b, align 8
  %a90 = load [256 x i128]*, [256 x i128]** %a, align 8
  %call91 = call [256 x [256 x i128]]* @long_div2(i128 %n85, i128 %ka86, i128 %sub, [256 x i128]* %b89, [256 x i128]* %a90)
  store [256 x [256 x i128]]* %call91, [256 x [256 x i128]]** %r, align 8
  %uniform_array92 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array92, [256 x i128]** %q, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body93

loop.body93:                                      ; preds = %loop.latch101, %if.exit84
  %r94 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i95 = load i128, i128* %i, align 4
  %array_getter96 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r94, i128 0, i128 0, i128 %i95
  %r97 = load i128, i128* %array_getter96, align 4
  %ptr_getter98 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i99 = load i128, i128* %i, align 4
  %q100 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter98, i128 0, i128 %i99
  store i128 %r97, i128* %q100, align 4
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.body93
  %i102 = load i128, i128* %i, align 4
  %add103 = add i128 %i102, 1
  store i128 %add103, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %ka106 = load i128, i128* %ka, align 4
  %sub107 = sub i128 %k105, %ka106
  %add108 = add i128 %sub107, 1
  %slt109 = icmp slt i128 %i104, %add108
  br i1 %slt109, label %loop.body93, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch101
  %k111 = load i128, i128* %k.bind, align 4
  %ka112 = load i128, i128* %ka, align 4
  %sub113 = sub i128 %k111, %ka112
  %add114 = add i128 %sub113, 1
  store i128 %add114, i128* %i, align 4
  br label %loop.body115

loop.body115:                                     ; preds = %loop.latch119, %loop.exit110
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i117 = load i128, i128* %i, align 4
  %q118 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 %i117
  store i128 0, i128* %q118, align 4
  br label %loop.latch119

loop.latch119:                                    ; preds = %loop.body115
  %i120 = load i128, i128* %i, align 4
  %add121 = add i128 %i120, 1
  store i128 %add121, i128* %i, align 4
  %i122 = load i128, i128* %i, align 4
  %k123 = load i128, i128* %k.bind, align 4
  %slt124 = icmp slt i128 %i122, %k123
  br i1 %slt124, label %loop.body115, label %loop.exit125

loop.exit125:                                     ; preds = %loop.latch119
  %n126 = load i128, i128* %n.bind, align 4
  %k127 = load i128, i128* %k.bind, align 4
  %x128 = load [256 x i128]*, [256 x i128]** %x, align 8
  %n129 = load i128, i128* %n.bind, align 4
  %k130 = load i128, i128* %k.bind, align 4
  %u131 = load [256 x i128]*, [256 x i128]** %u, align 8
  %q132 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p133 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call134 = call [256 x i128]* @prod_mod(i128 %n129, i128 %k130, [256 x i128]* %u131, [256 x i128]* %q132, [256 x i128]* %p133)
  %p135 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call136 = call [256 x i128]* @long_sub_mod(i128 %n126, i128 %k127, [256 x i128]* %x128, [256 x i128]* %call134, [256 x i128]* %p135)
  store [256 x i128]* %call136, [256 x i128]** %newu, align 8
  %n137 = load i128, i128* %n.bind, align 4
  %k138 = load i128, i128* %k.bind, align 4
  %y139 = load [256 x i128]*, [256 x i128]** %y, align 8
  %n140 = load i128, i128* %n.bind, align 4
  %k141 = load i128, i128* %k.bind, align 4
  %v142 = load [256 x i128]*, [256 x i128]** %v, align 8
  %q143 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p144 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call145 = call [256 x i128]* @prod_mod(i128 %n140, i128 %k141, [256 x i128]* %v142, [256 x i128]* %q143, [256 x i128]* %p144)
  %p146 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call147 = call [256 x i128]* @long_sub_mod(i128 %n137, i128 %k138, [256 x i128]* %y139, [256 x i128]* %call145, [256 x i128]* %p146)
  store [256 x i128]* %call147, [256 x i128]** %newv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body148

loop.body148:                                     ; preds = %loop.latch200, %loop.exit125
  %a149 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %a149, i128 0, i128 %i150
  %a152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i154 = load i128, i128* %i, align 4
  %b155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %a152, i128* %b155, align 4
  %i158 = load i128, i128* %i, align 4
  %ka159 = load i128, i128* %ka, align 4
  %slt160 = icmp slt i128 %i158, %ka159
  br i1 %slt160, label %if.true156, label %if.false157

if.true156:                                       ; preds = %loop.body148
  %r161 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r161, i128 0, i128 1, i128 %i162
  %r164 = load i128, i128* %array_getter163, align 4
  %ptr_getter165 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i166 = load i128, i128* %i, align 4
  %a167 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter165, i128 0, i128 %i166
  store i128 %r164, i128* %a167, align 4
  br label %if.exit171

if.false157:                                      ; preds = %loop.body148
  %ptr_getter168 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i169 = load i128, i128* %i, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter168, i128 0, i128 %i169
  store i128 0, i128* %a170, align 4
  br label %if.exit171

if.exit171:                                       ; preds = %if.false157, %if.true156
  %u172 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i173 = load i128, i128* %i, align 4
  %array_getter174 = getelementptr inbounds [256 x i128], [256 x i128]* %u172, i128 0, i128 %i173
  %u175 = load i128, i128* %array_getter174, align 4
  %ptr_getter176 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i177 = load i128, i128* %i, align 4
  %x178 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter176, i128 0, i128 %i177
  store i128 %u175, i128* %x178, align 4
  %v179 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %v179, i128 0, i128 %i180
  %v182 = load i128, i128* %array_getter181, align 4
  %ptr_getter183 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i184 = load i128, i128* %i, align 4
  %y185 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter183, i128 0, i128 %i184
  store i128 %v182, i128* %y185, align 4
  %newu186 = load [256 x i128]*, [256 x i128]** %newu, align 8
  %i187 = load i128, i128* %i, align 4
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %newu186, i128 0, i128 %i187
  %newu189 = load i128, i128* %array_getter188, align 4
  %ptr_getter190 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i191 = load i128, i128* %i, align 4
  %u192 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter190, i128 0, i128 %i191
  store i128 %newu189, i128* %u192, align 4
  %newv193 = load [256 x i128]*, [256 x i128]** %newv, align 8
  %i194 = load i128, i128* %i, align 4
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %newv193, i128 0, i128 %i194
  %newv196 = load i128, i128* %array_getter195, align 4
  %ptr_getter197 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i198 = load i128, i128* %i, align 4
  %v199 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter197, i128 0, i128 %i198
  store i128 %newv196, i128* %v199, align 4
  br label %loop.latch200

loop.latch200:                                    ; preds = %if.exit171
  %i201 = load i128, i128* %i, align 4
  %add202 = add i128 %i201, 1
  store i128 %add202, i128* %i, align 4
  %i203 = load i128, i128* %i, align 4
  %k204 = load i128, i128* %k.bind, align 4
  %slt205 = icmp slt i128 %i203, %k204
  br i1 %slt205, label %loop.body148, label %loop.exit206

loop.exit206:                                     ; preds = %loop.latch200
  br label %loop.latch207

loop.latch207:                                    ; preds = %loop.exit206
  %l208 = load i128, i128* %l, align 4
  %add209 = add i128 %l208, 1
  store i128 %add209, i128* %l, align 4
  %l210 = load i128, i128* %l, align 4
  %slt211 = icmp slt i128 %l210, 1000
  br i1 %slt211, label %loop.body50, label %loop.exit212

loop.exit212:                                     ; preds = %loop.latch207
  %ret213 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret213
}

define void @fn_template_init_bigmod(%struct_template_circuit_bigmod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 0
  %read_arg_inner.bigmod.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmod.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 1
  %read_arg_inner.bigmod.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmod.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 2
  %read_input_inner.bigmod.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmod.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 3
  %read_input_inner.bigmod.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmod.b, [256 x i128]** %b.bind, align 8
  %lt = alloca %struct_template_circuit_biglessthan*, align 8
  %mul = alloca %struct_template_circuit_bigmult*, align 8
  %add = alloca %struct_template_circuit_bigadd*, align 8
  %longdiv = alloca [256 x [256 x i128]]*, align 8
  %longdiv4 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %longdiv4, [256 x [256 x i128]]** %longdiv, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %div_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %div_range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %div_range_checks5, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %mod_range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %mod_range_checks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %mod_range_checks6, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %mod = bitcast i8* %malloccall to [256 x i128]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod8 = bitcast i8* %malloccall7 to [256 x i128]*
  store [256 x i128]* %mod8, [256 x i128]** %mod, align 8
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %div = bitcast i8* %malloccall9 to [256 x i128]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div11 = bitcast i8* %malloccall10 to [256 x i128]*
  store [256 x i128]* %div11, [256 x i128]** %div, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv12, i128 0, i128 0, i128 %i13
  %longdiv14 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %div, align 8
  %i15 = load i128, i128* %i, align 4
  %div16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 %longdiv14, i128* %div16, align 4
  %longdiv17 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv17, i128 0, i128 1, i128 %i18
  %longdiv20 = load i128, i128* %array_getter19, align 4
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i22 = load i128, i128* %i, align 4
  %mod23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 %i22
  store i128 %longdiv20, i128* %mod23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i24 = load i128, i128* %i, align 4
  %add25 = add i128 %i24, 1
  store i128 %add25, i128* %i, align 4
  %i26 = load i128, i128* %i, align 4
  %k27 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i26, %k27
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %longdiv28 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %k29 = load i128, i128* %k.bind, align 4
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv28, i128 0, i128 0, i128 %k29
  %longdiv31 = load i128, i128* %array_getter30, align 4
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %div, align 8
  %k33 = load i128, i128* %k.bind, align 4
  %div34 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %k33
  store i128 %longdiv31, i128* %div34, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch54, %loop.exit
  %n36 = load i128, i128* %n.bind, align 4
  %call37 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n36)
  %ptr_getter38 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i39 = load i128, i128* %i, align 4
  %div_range_checks40 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter38, i128 0, i128 %i39
  store %struct_template_circuit_num2bits* %call37, %struct_template_circuit_num2bits** %div_range_checks40, align 8
  %div41 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %div41, i128 0, i128 %i42
  %div44 = load i128, i128* %array_getter43, align 4
  %div_range_checks45 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks45, i128 0, i128 %i46
  %div_range_checks48 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter47, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks48, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %div44, i1* @constraint.234)
  %ptr_getter50 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter50, i128 0, i128 %i51
  %div_range_checks53 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter52, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks53, i32 0, i32 1
  store i128 %div44, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch54

loop.latch54:                                     ; preds = %loop.body35
  %i55 = load i128, i128* %i, align 4
  %add56 = add i128 %i55, 1
  store i128 %add56, i128* %i, align 4
  %i57 = load i128, i128* %i, align 4
  %k58 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %i57, %k58
  br i1 %sle, label %loop.body35, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch54
  store i128 0, i128* %i, align 4
  br label %loop.body60

loop.body60:                                      ; preds = %loop.latch81, %loop.exit59
  %n61 = load i128, i128* %n.bind, align 4
  %call62 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n61)
  %ptr_getter63 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i64 = load i128, i128* %i, align 4
  %mod_range_checks65 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter63, i128 0, i128 %i64
  store %struct_template_circuit_num2bits* %call62, %struct_template_circuit_num2bits** %mod_range_checks65, align 8
  %mod66 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i67 = load i128, i128* %i, align 4
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %mod66, i128 0, i128 %i67
  %mod69 = load i128, i128* %array_getter68, align 4
  %mod_range_checks70 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks70, i128 0, i128 %i71
  %mod_range_checks73 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter72, align 8
  %struct_getter74 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks73, i32 0, i32 1
  %read_input_outter.num2bits.in75 = load i128, i128* %struct_getter74, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in75, i128 %mod69, i1* @constraint.235)
  %ptr_getter76 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i77 = load i128, i128* %i, align 4
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter76, i128 0, i128 %i77
  %mod_range_checks79 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter78, align 8
  %write_input_outter.num2bits.in80 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks79, i32 0, i32 1
  store i128 %mod69, i128* %write_input_outter.num2bits.in80, align 4
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body60
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %k85 = load i128, i128* %k.bind, align 4
  %slt86 = icmp slt i128 %i84, %k85
  br i1 %slt86, label %loop.body60, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch81
  %n88 = load i128, i128* %n.bind, align 4
  %k89 = load i128, i128* %k.bind, align 4
  %add90 = add i128 %k89, 1
  %call91 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n88, i128 %add90)
  store %struct_template_circuit_bigmult* %call91, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body92

loop.body92:                                      ; preds = %loop.latch121, %loop.exit87
  %div93 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i94 = load i128, i128* %i, align 4
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %div93, i128 0, i128 %i94
  %div96 = load i128, i128* %array_getter95, align 4
  %mul97 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul97, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i99
  %mul101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul101, i128 %div96, i1* @constraint.236)
  %ptr_getter102 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter102, i32 0, i32 2
  %read_input_outter.bigmult.a104 = load [256 x i128]*, [256 x i128]** %struct_getter103, align 8
  %i105 = load i128, i128* %i, align 4
  %mul106 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a104, i128 0, i128 %i105
  store i128 %div96, i128* %mul106, align 4
  %b107 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i108 = load i128, i128* %i, align 4
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %b107, i128 0, i128 %i108
  %b110 = load i128, i128* %array_getter109, align 4
  %mul111 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul111, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %i113 = load i128, i128* %i, align 4
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i113
  %mul115 = load i128, i128* %array_getter114, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul115, i128 %b110, i1* @constraint.237)
  %ptr_getter116 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter116, i32 0, i32 3
  %read_input_outter.bigmult.b118 = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %i119 = load i128, i128* %i, align 4
  %mul120 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b118, i128 0, i128 %i119
  store i128 %b110, i128* %mul120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body92
  %i122 = load i128, i128* %i, align 4
  %add123 = add i128 %i122, 1
  store i128 %add123, i128* %i, align 4
  %i124 = load i128, i128* %i, align 4
  %k125 = load i128, i128* %k.bind, align 4
  %slt126 = icmp slt i128 %i124, %k125
  br i1 %slt126, label %loop.body92, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  %div128 = load [256 x i128]*, [256 x i128]** %div, align 8
  %k129 = load i128, i128* %k.bind, align 4
  %array_getter130 = getelementptr inbounds [256 x i128], [256 x i128]* %div128, i128 0, i128 %k129
  %div131 = load i128, i128* %array_getter130, align 4
  %mul132 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter133 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul132, i32 0, i32 2
  %read_input_outter.bigmult.a134 = load [256 x i128]*, [256 x i128]** %struct_getter133, align 8
  %k135 = load i128, i128* %k.bind, align 4
  %array_getter136 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a134, i128 0, i128 %k135
  %mul137 = load i128, i128* %array_getter136, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul137, i128 %div131, i1* @constraint.238)
  %ptr_getter138 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter139 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter138, i32 0, i32 2
  %read_input_outter.bigmult.a140 = load [256 x i128]*, [256 x i128]** %struct_getter139, align 8
  %k141 = load i128, i128* %k.bind, align 4
  %mul142 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a140, i128 0, i128 %k141
  store i128 %div131, i128* %mul142, align 4
  %mul143 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul143, i32 0, i32 3
  %read_input_outter.bigmult.b145 = load [256 x i128]*, [256 x i128]** %struct_getter144, align 8
  %k146 = load i128, i128* %k.bind, align 4
  %array_getter147 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b145, i128 0, i128 %k146
  %mul148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul148, i128 0, i1* @constraint.239)
  %ptr_getter149 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter149, i32 0, i32 3
  %read_input_outter.bigmult.b151 = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %k152 = load i128, i128* %k.bind, align 4
  %mul153 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b151, i128 0, i128 %k152
  store i128 0, i128* %mul153, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body154

loop.body154:                                     ; preds = %loop.latch155, %loop.exit127
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.body154
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  store i128 %add157, i128* %i, align 4
  %i158 = load i128, i128* %i, align 4
  %k159 = load i128, i128* %k.bind, align 4
  %mul160 = mul i128 2, %k159
  %add161 = add i128 %mul160, 2
  %slt162 = icmp slt i128 %i158, %add161
  br i1 %slt162, label %loop.body154, label %loop.exit163

loop.exit163:                                     ; preds = %loop.latch155
  %n164 = load i128, i128* %n.bind, align 4
  %k165 = load i128, i128* %k.bind, align 4
  %mul166 = mul i128 2, %k165
  %add167 = add i128 %mul166, 2
  %call168 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n164, i128 %add167)
  store %struct_template_circuit_bigadd* %call168, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body169

loop.body169:                                     ; preds = %loop.latch213, %loop.exit163
  %mul170 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter171 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul170, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter171, align 8
  %i172 = load i128, i128* %i, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i172
  %mul174 = load i128, i128* %array_getter173, align 4
  %add175 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add175, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %i177 = load i128, i128* %i, align 4
  %array_getter178 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i177
  %add179 = load i128, i128* %array_getter178, align 4
  call void @fn_intrinsic_add_constraint(i128 %add179, i128 %mul174, i1* @constraint.240)
  %ptr_getter180 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter181 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter180, i32 0, i32 2
  %read_input_outter.bigadd.a182 = load [256 x i128]*, [256 x i128]** %struct_getter181, align 8
  %i183 = load i128, i128* %i, align 4
  %add184 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a182, i128 0, i128 %i183
  store i128 %mul174, i128* %add184, align 4
  %i185 = load i128, i128* %i, align 4
  %k186 = load i128, i128* %k.bind, align 4
  %slt187 = icmp slt i128 %i185, %k186
  br i1 %slt187, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body169
  %mod188 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x i128], [256 x i128]* %mod188, i128 0, i128 %i189
  %mod191 = load i128, i128* %array_getter190, align 4
  %add192 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter193 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add192, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter193, align 8
  %i194 = load i128, i128* %i, align 4
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i194
  %add196 = load i128, i128* %array_getter195, align 4
  call void @fn_intrinsic_add_constraint(i128 %add196, i128 %mod191, i1* @constraint.241)
  %ptr_getter197 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter198 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter197, i32 0, i32 3
  %read_input_outter.bigadd.b199 = load [256 x i128]*, [256 x i128]** %struct_getter198, align 8
  %i200 = load i128, i128* %i, align 4
  %add201 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b199, i128 0, i128 %i200
  store i128 %mod191, i128* %add201, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body169
  %add202 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter203 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add202, i32 0, i32 3
  %read_input_outter.bigadd.b204 = load [256 x i128]*, [256 x i128]** %struct_getter203, align 8
  %i205 = load i128, i128* %i, align 4
  %array_getter206 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b204, i128 0, i128 %i205
  %add207 = load i128, i128* %array_getter206, align 4
  call void @fn_intrinsic_add_constraint(i128 %add207, i128 0, i1* @constraint.242)
  %ptr_getter208 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter209 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter208, i32 0, i32 3
  %read_input_outter.bigadd.b210 = load [256 x i128]*, [256 x i128]** %struct_getter209, align 8
  %i211 = load i128, i128* %i, align 4
  %add212 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b210, i128 0, i128 %i211
  store i128 0, i128* %add212, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch213

loop.latch213:                                    ; preds = %if.exit
  %i214 = load i128, i128* %i, align 4
  %add215 = add i128 %i214, 1
  store i128 %add215, i128* %i, align 4
  %i216 = load i128, i128* %i, align 4
  %k217 = load i128, i128* %k.bind, align 4
  %mul218 = mul i128 2, %k217
  %slt219 = icmp slt i128 %i216, %mul218
  br i1 %slt219, label %loop.body169, label %loop.exit220

loop.exit220:                                     ; preds = %loop.latch213
  %mul221 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter222 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul221, i32 0, i32 4
  %read_output_outter.bigmult.out223 = load [256 x i128]*, [256 x i128]** %struct_getter222, align 8
  %k224 = load i128, i128* %k.bind, align 4
  %mul225 = mul i128 2, %k224
  %array_getter226 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out223, i128 0, i128 %mul225
  %mul227 = load i128, i128* %array_getter226, align 4
  %add228 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter229 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add228, i32 0, i32 2
  %read_input_outter.bigadd.a230 = load [256 x i128]*, [256 x i128]** %struct_getter229, align 8
  %k231 = load i128, i128* %k.bind, align 4
  %mul232 = mul i128 2, %k231
  %array_getter233 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a230, i128 0, i128 %mul232
  %add234 = load i128, i128* %array_getter233, align 4
  call void @fn_intrinsic_add_constraint(i128 %add234, i128 %mul227, i1* @constraint.243)
  %ptr_getter235 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter236 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter235, i32 0, i32 2
  %read_input_outter.bigadd.a237 = load [256 x i128]*, [256 x i128]** %struct_getter236, align 8
  %k238 = load i128, i128* %k.bind, align 4
  %mul239 = mul i128 2, %k238
  %add240 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a237, i128 0, i128 %mul239
  store i128 %mul227, i128* %add240, align 4
  %mul241 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter242 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul241, i32 0, i32 4
  %read_output_outter.bigmult.out243 = load [256 x i128]*, [256 x i128]** %struct_getter242, align 8
  %k244 = load i128, i128* %k.bind, align 4
  %mul245 = mul i128 2, %k244
  %add246 = add i128 %mul245, 1
  %array_getter247 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out243, i128 0, i128 %add246
  %mul248 = load i128, i128* %array_getter247, align 4
  %add249 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter250 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add249, i32 0, i32 2
  %read_input_outter.bigadd.a251 = load [256 x i128]*, [256 x i128]** %struct_getter250, align 8
  %k252 = load i128, i128* %k.bind, align 4
  %mul253 = mul i128 2, %k252
  %add254 = add i128 %mul253, 1
  %array_getter255 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a251, i128 0, i128 %add254
  %add256 = load i128, i128* %array_getter255, align 4
  call void @fn_intrinsic_add_constraint(i128 %add256, i128 %mul248, i1* @constraint.244)
  %ptr_getter257 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter258 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter257, i32 0, i32 2
  %read_input_outter.bigadd.a259 = load [256 x i128]*, [256 x i128]** %struct_getter258, align 8
  %k260 = load i128, i128* %k.bind, align 4
  %mul261 = mul i128 2, %k260
  %add262 = add i128 %mul261, 1
  %add263 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a259, i128 0, i128 %add262
  store i128 %mul248, i128* %add263, align 4
  %add264 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter265 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add264, i32 0, i32 3
  %read_input_outter.bigadd.b266 = load [256 x i128]*, [256 x i128]** %struct_getter265, align 8
  %k267 = load i128, i128* %k.bind, align 4
  %mul268 = mul i128 2, %k267
  %array_getter269 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b266, i128 0, i128 %mul268
  %add270 = load i128, i128* %array_getter269, align 4
  call void @fn_intrinsic_add_constraint(i128 %add270, i128 0, i1* @constraint.245)
  %ptr_getter271 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter272 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter271, i32 0, i32 3
  %read_input_outter.bigadd.b273 = load [256 x i128]*, [256 x i128]** %struct_getter272, align 8
  %k274 = load i128, i128* %k.bind, align 4
  %mul275 = mul i128 2, %k274
  %add276 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b273, i128 0, i128 %mul275
  store i128 0, i128* %add276, align 4
  %add277 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter278 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add277, i32 0, i32 3
  %read_input_outter.bigadd.b279 = load [256 x i128]*, [256 x i128]** %struct_getter278, align 8
  %k280 = load i128, i128* %k.bind, align 4
  %mul281 = mul i128 2, %k280
  %add282 = add i128 %mul281, 1
  %array_getter283 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b279, i128 0, i128 %add282
  %add284 = load i128, i128* %array_getter283, align 4
  call void @fn_intrinsic_add_constraint(i128 %add284, i128 0, i1* @constraint.246)
  %ptr_getter285 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter286 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter285, i32 0, i32 3
  %read_input_outter.bigadd.b287 = load [256 x i128]*, [256 x i128]** %struct_getter286, align 8
  %k288 = load i128, i128* %k.bind, align 4
  %mul289 = mul i128 2, %k288
  %add290 = add i128 %mul289, 1
  %add291 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b287, i128 0, i128 %add290
  store i128 0, i128* %add291, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body292

loop.body292:                                     ; preds = %loop.latch293, %loop.exit220
  br label %loop.latch293

loop.latch293:                                    ; preds = %loop.body292
  %i294 = load i128, i128* %i, align 4
  %add295 = add i128 %i294, 1
  store i128 %add295, i128* %i, align 4
  %i296 = load i128, i128* %i, align 4
  %k297 = load i128, i128* %k.bind, align 4
  %mul298 = mul i128 2, %k297
  %add299 = add i128 %mul298, 2
  %slt300 = icmp slt i128 %i296, %add299
  br i1 %slt300, label %loop.body292, label %loop.exit301

loop.exit301:                                     ; preds = %loop.latch293
  store i128 0, i128* %i, align 4
  br label %loop.body302

loop.body302:                                     ; preds = %loop.latch312, %loop.exit301
  %add303 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add303, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter304, align 8
  %i305 = load i128, i128* %i, align 4
  %array_getter306 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i305
  %add307 = load i128, i128* %array_getter306, align 4
  %a308 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i309 = load i128, i128* %i, align 4
  %array_getter310 = getelementptr inbounds [256 x i128], [256 x i128]* %a308, i128 0, i128 %i309
  %a311 = load i128, i128* %array_getter310, align 4
  call void @fn_intrinsic_add_constraint(i128 %add307, i128 %a311, i1* @constraint.247)
  br label %loop.latch312

loop.latch312:                                    ; preds = %loop.body302
  %i313 = load i128, i128* %i, align 4
  %add314 = add i128 %i313, 1
  store i128 %add314, i128* %i, align 4
  %i315 = load i128, i128* %i, align 4
  %k316 = load i128, i128* %k.bind, align 4
  %mul317 = mul i128 2, %k316
  %slt318 = icmp slt i128 %i315, %mul317
  br i1 %slt318, label %loop.body302, label %loop.exit319

loop.exit319:                                     ; preds = %loop.latch312
  %add320 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter321 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add320, i32 0, i32 4
  %read_output_outter.bigadd.out322 = load [256 x i128]*, [256 x i128]** %struct_getter321, align 8
  %k323 = load i128, i128* %k.bind, align 4
  %mul324 = mul i128 2, %k323
  %array_getter325 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out322, i128 0, i128 %mul324
  %add326 = load i128, i128* %array_getter325, align 4
  call void @fn_intrinsic_add_constraint(i128 %add326, i128 0, i1* @constraint.248)
  %add327 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter328 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add327, i32 0, i32 4
  %read_output_outter.bigadd.out329 = load [256 x i128]*, [256 x i128]** %struct_getter328, align 8
  %k330 = load i128, i128* %k.bind, align 4
  %mul331 = mul i128 2, %k330
  %add332 = add i128 %mul331, 1
  %array_getter333 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out329, i128 0, i128 %add332
  %add334 = load i128, i128* %array_getter333, align 4
  call void @fn_intrinsic_add_constraint(i128 %add334, i128 0, i1* @constraint.249)
  %n335 = load i128, i128* %n.bind, align 4
  %k336 = load i128, i128* %k.bind, align 4
  %call337 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n335, i128 %k336)
  store %struct_template_circuit_biglessthan* %call337, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body338

loop.body338:                                     ; preds = %loop.latch367, %loop.exit319
  %mod339 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i340 = load i128, i128* %i, align 4
  %array_getter341 = getelementptr inbounds [256 x i128], [256 x i128]* %mod339, i128 0, i128 %i340
  %mod342 = load i128, i128* %array_getter341, align 4
  %lt343 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter344 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt343, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter344, align 8
  %i345 = load i128, i128* %i, align 4
  %array_getter346 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i345
  %lt347 = load i128, i128* %array_getter346, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt347, i128 %mod342, i1* @constraint.250)
  %ptr_getter348 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter349 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter348, i32 0, i32 2
  %read_input_outter.biglessthan.a350 = load [256 x i128]*, [256 x i128]** %struct_getter349, align 8
  %i351 = load i128, i128* %i, align 4
  %lt352 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a350, i128 0, i128 %i351
  store i128 %mod342, i128* %lt352, align 4
  %b353 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i354 = load i128, i128* %i, align 4
  %array_getter355 = getelementptr inbounds [256 x i128], [256 x i128]* %b353, i128 0, i128 %i354
  %b356 = load i128, i128* %array_getter355, align 4
  %lt357 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter358 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt357, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter358, align 8
  %i359 = load i128, i128* %i, align 4
  %array_getter360 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i359
  %lt361 = load i128, i128* %array_getter360, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt361, i128 %b356, i1* @constraint.251)
  %ptr_getter362 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter363 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter362, i32 0, i32 3
  %read_input_outter.biglessthan.b364 = load [256 x i128]*, [256 x i128]** %struct_getter363, align 8
  %i365 = load i128, i128* %i, align 4
  %lt366 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b364, i128 0, i128 %i365
  store i128 %b356, i128* %lt366, align 4
  br label %loop.latch367

loop.latch367:                                    ; preds = %loop.body338
  %i368 = load i128, i128* %i, align 4
  %add369 = add i128 %i368, 1
  store i128 %add369, i128* %i, align 4
  %i370 = load i128, i128* %i, align 4
  %k371 = load i128, i128* %k.bind, align 4
  %slt372 = icmp slt i128 %i370, %k371
  br i1 %slt372, label %loop.body338, label %loop.exit373

loop.exit373:                                     ; preds = %loop.latch367
  %lt374 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter375 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt374, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter375, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.252)
  br label %exit

exit:                                             ; preds = %loop.exit373
  %div376 = load [256 x i128]*, [256 x i128]** %div, align 8
  %write_output_inner.bigmod.div = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 4
  store [256 x i128]* %div376, [256 x i128]** %write_output_inner.bigmod.div, align 8
  %mod377 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %write_output_inner.bigmod.mod = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 5
  store [256 x i128]* %mod377, [256 x i128]** %write_output_inner.bigmod.mod, align 8
  ret void
}

define %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmod = alloca %struct_template_circuit_bigmod, align 8
  %write_arg_inner.bigmod.n = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmod.n, align 4
  %write_arg_inner.bigmod.k = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmod.k, align 4
  ret %struct_template_circuit_bigmod* %struct_template_circuit_bigmod
}

define void @fn_template_init_bigmultmodp(%struct_template_circuit_bigmultmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 0
  %read_arg_inner.bigmultmodp.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultmodp.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 1
  %read_arg_inner.bigmultmodp.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmultmodp.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 2
  %read_input_inner.bigmultmodp.a = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultmodp.a, [256 x i128]** %a.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 3
  %read_input_inner.bigmultmodp.b = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultmodp.b, [256 x i128]** %b.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 4
  %read_input_inner.bigmultmodp.p = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmultmodp.p, [256 x i128]** %p.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %big_mult = alloca %struct_template_circuit_bigmult*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %big_mod = alloca %struct_template_circuit_bigmod*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n, i128 %k)
  store %struct_template_circuit_bigmult* %call, %struct_template_circuit_bigmult** %big_mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i7
  %a8 = load i128, i128* %array_getter, align 4
  %big_mult9 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult9, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i11
  %big_mult13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult13, i128 %a8, i1* @constraint.253)
  %ptr_getter = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigmult.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %big_mult17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a15, i128 0, i128 %i16
  store i128 %a8, i128* %big_mult17, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %big_mult21 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult21, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i23
  %big_mult25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult25, i128 %b20, i1* @constraint.254)
  %ptr_getter26 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter26, i32 0, i32 3
  %read_input_outter.bigmult.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %big_mult30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b28, i128 0, i128 %i29
  store i128 %b20, i128* %big_mult30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i31 = load i128, i128* %i, align 4
  %add = add i128 %i31, 1
  store i128 %add, i128* %i, align 4
  %i32 = load i128, i128* %i, align 4
  %k33 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i32, %k33
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n34 = load i128, i128* %n.bind, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %call36 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %n34, i128 %k35)
  store %struct_template_circuit_bigmod* %call36, %struct_template_circuit_bigmod** %big_mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch53, %loop.exit
  %big_mult38 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult38, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter39, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i40
  %big_mult42 = load i128, i128* %array_getter41, align 4
  %big_mod43 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod43, i32 0, i32 2
  %read_input_outter.bigmod.a = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a, i128 0, i128 %i45
  %big_mod47 = load i128, i128* %array_getter46, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod47, i128 %big_mult42, i1* @constraint.255)
  %ptr_getter48 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter48, i32 0, i32 2
  %read_input_outter.bigmod.a50 = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %i51 = load i128, i128* %i, align 4
  %big_mod52 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a50, i128 0, i128 %i51
  store i128 %big_mult42, i128* %big_mod52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body37
  %i54 = load i128, i128* %i, align 4
  %add55 = add i128 %i54, 1
  store i128 %add55, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %k57 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k57
  %slt58 = icmp slt i128 %i56, %mul
  br i1 %slt58, label %loop.body37, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  store i128 0, i128* %i, align 4
  br label %loop.body60

loop.body60:                                      ; preds = %loop.latch74, %loop.exit59
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i61
  %p63 = load i128, i128* %array_getter62, align 4
  %big_mod64 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod64, i32 0, i32 3
  %read_input_outter.bigmod.b = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b, i128 0, i128 %i66
  %big_mod68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod68, i128 %p63, i1* @constraint.256)
  %ptr_getter69 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter69, i32 0, i32 3
  %read_input_outter.bigmod.b71 = load [256 x i128]*, [256 x i128]** %struct_getter70, align 8
  %i72 = load i128, i128* %i, align 4
  %big_mod73 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b71, i128 0, i128 %i72
  store i128 %p63, i128* %big_mod73, align 4
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body60
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %slt79 = icmp slt i128 %i77, %k78
  br i1 %slt79, label %loop.body60, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch74
  store i128 0, i128* %i, align 4
  br label %loop.body81

loop.body81:                                      ; preds = %loop.latch94, %loop.exit80
  %big_mod82 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod82, i32 0, i32 5
  %read_output_outter.bigmod.mod = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmod.mod, i128 0, i128 %i84
  %big_mod86 = load i128, i128* %array_getter85, align 4
  %out87 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i88 = load i128, i128* %i, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %out87, i128 0, i128 %i88
  %out90 = load i128, i128* %array_getter89, align 4
  call void @fn_intrinsic_add_constraint(i128 %out90, i128 %big_mod86, i1* @constraint.257)
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i92 = load i128, i128* %i, align 4
  %out93 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %i92
  store i128 %big_mod86, i128* %out93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body81
  %i95 = load i128, i128* %i, align 4
  %add96 = add i128 %i95, 1
  store i128 %add96, i128* %i, align 4
  %i97 = load i128, i128* %i, align 4
  %k98 = load i128, i128* %k.bind, align 4
  %slt99 = icmp slt i128 %i97, %k98
  br i1 %slt99, label %loop.body81, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch94
  br label %exit

exit:                                             ; preds = %loop.exit100
  %out101 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmultmodp.out = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 5
  store [256 x i128]* %out101, [256 x i128]** %write_output_inner.bigmultmodp.out, align 8
  ret void
}

define %struct_template_circuit_bigmultmodp* @fn_template_build_bigmultmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmultmodp = alloca %struct_template_circuit_bigmultmodp, align 8
  %write_arg_inner.bigmultmodp.n = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmultmodp.n, align 4
  %write_arg_inner.bigmultmodp.k = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmultmodp.k, align 4
  ret %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %b.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %3, [256 x [256 x i128]]** %b.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %p.bind, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %ab2 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %ab2, [256 x [256 x [256 x i128]]]** %ab, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array3 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array3, [256 x [256 x [256 x i128]]]** %ab, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch16, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body4

loop.body4:                                       ; preds = %loop.latch, %loop.body
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i5
  %a6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a6, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j7 = load i128, i128* %j, align 4
  %array_getter8 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j7
  %b9 = load [256 x i128], [256 x i128]* %array_getter8, align 4
  %spice_inline_array10 = alloca [256 x i128], align 8
  store [256 x i128] %b9, [256 x i128]* %spice_inline_array10, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @prod_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array10, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %i11 = load i128, i128* %i, align 4
  %j12 = load i128, i128* %j, align 4
  %ab13 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i11, i128 %j12
  %5 = bitcast [256 x i128]* %ab13 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body4
  %j14 = load i128, i128* %j, align 4
  %add = add i128 %j14, 1
  store i128 %add, i128* %j, align 4
  %j15 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j15, 2
  br i1 %slt, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch16

loop.latch16:                                     ; preds = %loop.exit
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %slt20 = icmp slt i128 %i19, 2
  br i1 %slt20, label %loop.body, label %loop.exit21

loop.exit21:                                      ; preds = %loop.latch16
  %n22 = load i128, i128* %n.bind, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %ab24 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter25 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab24, i128 0, i128 0, i128 0
  %ab26 = load [256 x i128], [256 x i128]* %array_getter25, align 4
  %spice_inline_array27 = alloca [256 x i128], align 8
  store [256 x i128] %ab26, [256 x i128]* %spice_inline_array27, align 4
  %ab28 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter29 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab28, i128 0, i128 1, i128 1
  %ab30 = load [256 x i128], [256 x i128]* %array_getter29, align 4
  %spice_inline_array31 = alloca [256 x i128], align 8
  store [256 x i128] %ab30, [256 x i128]* %spice_inline_array31, align 4
  %p32 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call33 = call [256 x i128]* @long_sub_mod(i128 %n22, i128 %k23, [256 x i128]* %spice_inline_array27, [256 x i128]* %spice_inline_array31, [256 x i128]* %p32)
  %ptr_getter34 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out35 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter34, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out35 to i8*
  %8 = bitcast [256 x i128]* %call33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n36 = load i128, i128* %n.bind, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %ab38 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter39 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab38, i128 0, i128 0, i128 1
  %ab40 = load [256 x i128], [256 x i128]* %array_getter39, align 4
  %spice_inline_array41 = alloca [256 x i128], align 8
  store [256 x i128] %ab40, [256 x i128]* %spice_inline_array41, align 4
  %ab42 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter43 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab42, i128 0, i128 1, i128 0
  %ab44 = load [256 x i128], [256 x i128]* %array_getter43, align 4
  %spice_inline_array45 = alloca [256 x i128], align 8
  store [256 x i128] %ab44, [256 x i128]* %spice_inline_array45, align 4
  %p46 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call47 = call [256 x i128]* @long_add_mod(i128 %n36, i128 %k37, [256 x i128]* %spice_inline_array41, [256 x i128]* %spice_inline_array45, [256 x i128]* %p46)
  %ptr_getter48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter48, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out49 to i8*
  %10 = bitcast [256 x i128]* %call47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out50 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out50
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %e.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %4, [256 x i128]** %e.bind, align 8
  %bitLength = alloca i128, align 8
  store i128 0, i128* %bitLength, align 4
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %out1 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1, [256 x [256 x i128]]** %out, align 8
  %eBits = alloca [256 x i128]*, align 8
  %eBits2 = alloca [256 x i128], align 8
  store [256 x i128]* %eBits2, [256 x i128]** %eBits, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitLength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i4
  %e5 = load i128, i128* %array_getter, align 4
  %j6 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e5, %j6
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j7 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i8 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i8
  %add = add i128 %j7, %mul
  %eBits9 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits9, align 4
  %eBits10 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j11 = load i128, i128* %j, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %i13 = load i128, i128* %i, align 4
  %mul14 = mul i128 %n12, %i13
  %add15 = add i128 %j11, %mul14
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits10, i128 0, i128 %add15
  %eBits17 = load i128, i128* %array_getter16, align 4
  %eq = icmp eq i128 %eBits17, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body3
  %j18 = load i128, i128* %j, align 4
  %n19 = load i128, i128* %n.bind, align 4
  %i20 = load i128, i128* %i, align 4
  %mul21 = mul i128 %n19, %i20
  %add22 = add i128 %j18, %mul21
  %add23 = add i128 %add22, 1
  store i128 %add23, i128* %bitLength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body3
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j24 = load i128, i128* %j, align 4
  %add25 = add i128 %j24, 1
  store i128 %add25, i128* %j, align 4
  %j26 = load i128, i128* %j, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j26, %n27
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.exit
  %i29 = load i128, i128* %i, align 4
  %add30 = add i128 %i29, 1
  store i128 %add30, i128* %i, align 4
  %i31 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul32 = mul i128 2, %k
  %slt33 = icmp slt i128 %i31, %mul32
  br i1 %slt33, label %loop.body, label %loop.exit34

loop.exit34:                                      ; preds = %loop.latch28
  %uniform_array35 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array35, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch43, %loop.exit34
  %ptr_getter37 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i38 = load i128, i128* %i, align 4
  %out39 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter37, i128 0, i128 0, i128 %i38
  store i128 0, i128* %out39, align 4
  %ptr_getter40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i41 = load i128, i128* %i, align 4
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter40, i128 0, i128 1, i128 %i41
  store i128 0, i128* %out42, align 4
  br label %loop.latch43

loop.latch43:                                     ; preds = %loop.body36
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %i, align 4
  %i46 = load i128, i128* %i, align 4
  %slt47 = icmp slt i128 %i46, 50
  br i1 %slt47, label %loop.body36, label %loop.exit48

loop.exit48:                                      ; preds = %loop.latch43
  %ptr_getter49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter49, i128 0, i128 0, i128 0
  store i128 1, i128* %out50, align 4
  %bitLength51 = load i128, i128* %bitLength, align 4
  %sub = sub i128 %bitLength51, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch74, %loop.exit48
  %eBits55 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits55, i128 0, i128 %i56
  %eBits58 = load i128, i128* %array_getter57, align 4
  %eq59 = icmp eq i128 %eBits58, 1
  br i1 %eq59, label %if.true53, label %if.false54

if.true53:                                        ; preds = %loop.body52
  %n60 = load i128, i128* %n.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %out62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n60, i128 %k61, [256 x [256 x i128]]* %out62, [256 x [256 x i128]]* %a, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %out, align 8
  br label %if.exit63

if.false54:                                       ; preds = %loop.body52
  br label %if.exit63

if.exit63:                                        ; preds = %if.false54, %if.true53
  %i66 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i66, 0
  br i1 %sgt, label %if.true64, label %if.false65

if.true64:                                        ; preds = %if.exit63
  %n67 = load i128, i128* %n.bind, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %out69 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out70 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %p71 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call72 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n67, i128 %k68, [256 x [256 x i128]]* %out69, [256 x [256 x i128]]* %out70, [256 x i128]* %p71)
  store [256 x [256 x i128]]* %call72, [256 x [256 x i128]]** %out, align 8
  br label %if.exit73

if.false65:                                       ; preds = %if.exit63
  br label %if.exit73

if.exit73:                                        ; preds = %if.false65, %if.true64
  br label %loop.latch74

loop.latch74:                                     ; preds = %if.exit73
  %i75 = load i128, i128* %i, align 4
  %sub76 = sub i128 %i75, 1
  store i128 %sub76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i77, 0
  br i1 %sge, label %loop.body52, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch74
  %out79 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out79
}

define void @fn_template_init_primereduce(%struct_template_circuit_primereduce* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 0
  %read_arg_inner.primereduce.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.primereduce.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 1
  %read_arg_inner.primereduce.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.primereduce.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 2
  %read_arg_inner.primereduce.m = load i128, i128* %struct_getter2, align 4
  %m.bind = alloca i128, align 8
  store i128 %read_arg_inner.primereduce.m, i128* %m.bind, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 3
  %read_arg_inner.primereduce.p = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.primereduce.p, [256 x i128]** %p.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 4
  %read_arg_inner.primereduce.m_out = load i128, i128* %struct_getter4, align 4
  %m_out.bind = alloca i128, align 8
  store i128 %read_arg_inner.primereduce.m_out, i128* %m_out.bind, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 5
  %read_input_inner.primereduce.in = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.primereduce.in, [256 x i128]** %in.bind, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %r6 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %r6, [256 x [256 x i128]]** %r, align 8
  %pow2n = alloca [256 x i128]*, align 8
  %pow2n7 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2n7, [256 x i128]** %pow2n, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %pow2nk = alloca [256 x i128]*, align 8
  %pow2nk8 = alloca [256 x i128], align 8
  store [256 x i128]* %pow2nk8, [256 x i128]** %pow2nk, align 8
  %e = alloca [256 x i128]*, align 8
  %e9 = alloca [256 x i128], align 8
  store [256 x i128]* %e9, [256 x i128]** %e, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out11 = bitcast i8* %malloccall10 to [256 x i128]*
  store [256 x i128]* %out11, [256 x i128]** %out, align 8
  %two = alloca [256 x i128]*, align 8
  %two12 = alloca [256 x i128], align 8
  store [256 x i128]* %two12, [256 x i128]** %two, align 8
  %out_sum = alloca [256 x i128]*, align 8
  %out_sum13 = alloca [256 x i128], align 8
  store [256 x i128]* %out_sum13, [256 x i128]** %out_sum, align 8
  %j = alloca i128, align 8
  store i128 0, i128* %j, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %two, align 8
  %uniform_array14 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array14, [256 x i128]** %e, align 8
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %two, align 8
  %i15 = load i128, i128* %i, align 4
  %two16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 0, i128* %two16, align 4
  %ptr_getter17 = load [256 x i128]*, [256 x i128]** %e, align 8
  %i18 = load i128, i128* %i, align 4
  %e19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter17, i128 0, i128 %i18
  store i128 0, i128* %e19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i20 = load i128, i128* %i, align 4
  %add = add i128 %i20, 1
  store i128 %add, i128* %i, align 4
  %i21 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i21, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 0
  store i128 2, i128* %two23, align 4
  %n = load i128, i128* %n.bind, align 4
  %ptr_getter24 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e25 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter24, i128 0, i128 0
  store i128 %n, i128* %e25, align 4
  %n26 = load i128, i128* %n.bind, align 4
  %k27 = load i128, i128* %k.bind, align 4
  %two28 = load [256 x i128]*, [256 x i128]** %two, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %e29 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call = call [256 x i128]* @mod_exp(i128 %n26, i128 %k27, [256 x i128]* %two28, [256 x i128]* %p, [256 x i128]* %e29)
  store [256 x i128]* %call, [256 x i128]** %pow2n, align 8
  %k30 = load i128, i128* %k.bind, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 0
  store i128 %k30, i128* %e32, align 4
  %n33 = load i128, i128* %n.bind, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %pow2n35 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p36 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %e37 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call38 = call [256 x i128]* @mod_exp(i128 %n33, i128 %k34, [256 x i128]* %pow2n35, [256 x i128]* %p36, [256 x i128]* %e37)
  store [256 x i128]* %call38, [256 x i128]** %pow2nk, align 8
  %uniform_array39 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array39, [256 x [256 x i128]]** %r, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch57, %loop.exit
  %i41 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i41, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body40
  %pow2nk42 = load [256 x i128]*, [256 x i128]** %pow2nk, align 8
  %ptr_getter43 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i44 = load i128, i128* %i, align 4
  %r45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter43, i128 0, i128 %i44
  %1 = bitcast [256 x i128]* %r45 to i8*
  %2 = bitcast [256 x i128]* %pow2nk42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body40
  %n46 = load i128, i128* %n.bind, align 4
  %k47 = load i128, i128* %k.bind, align 4
  %r48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i49 = load i128, i128* %i, align 4
  %sub = sub i128 %i49, 1
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r48, i128 0, i128 %sub
  %r50 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %r50, [256 x i128]* %spice_inline_array, align 4
  %pow2n51 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p52 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call53 = call [256 x i128]* @prod_mod(i128 %n46, i128 %k47, [256 x i128]* %spice_inline_array, [256 x i128]* %pow2n51, [256 x i128]* %p52)
  %ptr_getter54 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i55 = load i128, i128* %i, align 4
  %r56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter54, i128 0, i128 %i55
  %3 = bitcast [256 x i128]* %r56 to i8*
  %4 = bitcast [256 x i128]* %call53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch57

loop.latch57:                                     ; preds = %if.exit
  %i58 = load i128, i128* %i, align 4
  %add59 = add i128 %i58, 1
  store i128 %add59, i128* %i, align 4
  %i60 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %slt61 = icmp slt i128 %i60, %m
  br i1 %slt61, label %loop.body40, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch57
  %uniform_array63 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array63, [256 x i128]** %out_sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch71, %loop.exit62
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i65
  %in67 = load i128, i128* %array_getter66, align 4
  %ptr_getter68 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i69 = load i128, i128* %i, align 4
  %out_sum70 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter68, i128 0, i128 %i69
  store i128 %in67, i128* %out_sum70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body64
  %i72 = load i128, i128* %i, align 4
  %add73 = add i128 %i72, 1
  store i128 %add73, i128* %i, align 4
  %i74 = load i128, i128* %i, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %slt76 = icmp slt i128 %i74, %k75
  br i1 %slt76, label %loop.body64, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  store i128 0, i128* %i, align 4
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch106, %loop.exit77
  store i128 0, i128* %j, align 4
  br label %loop.body79

loop.body79:                                      ; preds = %loop.latch99, %loop.body78
  %out_sum80 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j81 = load i128, i128* %j, align 4
  %array_getter82 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum80, i128 0, i128 %j81
  %out_sum83 = load i128, i128* %array_getter82, align 4
  %in84 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i85 = load i128, i128* %i, align 4
  %k86 = load i128, i128* %k.bind, align 4
  %add87 = add i128 %i85, %k86
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %in84, i128 0, i128 %add87
  %in89 = load i128, i128* %array_getter88, align 4
  %r90 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i91 = load i128, i128* %i, align 4
  %j92 = load i128, i128* %j, align 4
  %array_getter93 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r90, i128 0, i128 %i91, i128 %j92
  %r94 = load i128, i128* %array_getter93, align 4
  %mul = mul i128 %in89, %r94
  %add95 = add i128 %out_sum83, %mul
  %ptr_getter96 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j97 = load i128, i128* %j, align 4
  %out_sum98 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter96, i128 0, i128 %j97
  store i128 %add95, i128* %out_sum98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body79
  %j100 = load i128, i128* %j, align 4
  %add101 = add i128 %j100, 1
  store i128 %add101, i128* %j, align 4
  %j102 = load i128, i128* %j, align 4
  %k103 = load i128, i128* %k.bind, align 4
  %slt104 = icmp slt i128 %j102, %k103
  br i1 %slt104, label %loop.body79, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch99
  br label %loop.latch106

loop.latch106:                                    ; preds = %loop.exit105
  %i107 = load i128, i128* %i, align 4
  %add108 = add i128 %i107, 1
  store i128 %add108, i128* %i, align 4
  %i109 = load i128, i128* %i, align 4
  %m110 = load i128, i128* %m.bind, align 4
  %slt111 = icmp slt i128 %i109, %m110
  br i1 %slt111, label %loop.body78, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch106
  store i128 0, i128* %i, align 4
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch125, %loop.exit112
  %out_sum114 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum114, i128 0, i128 %i115
  %out_sum117 = load i128, i128* %array_getter116, align 4
  %out118 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i119 = load i128, i128* %i, align 4
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %out118, i128 0, i128 %i119
  %out121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %out121, i128 %out_sum117, i1* @constraint.258)
  %ptr_getter122 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i123 = load i128, i128* %i, align 4
  %out124 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter122, i128 0, i128 %i123
  store i128 %out_sum117, i128* %out124, align 4
  br label %loop.latch125

loop.latch125:                                    ; preds = %loop.body113
  %i126 = load i128, i128* %i, align 4
  %add127 = add i128 %i126, 1
  store i128 %add127, i128* %i, align 4
  %i128 = load i128, i128* %i, align 4
  %k129 = load i128, i128* %k.bind, align 4
  %slt130 = icmp slt i128 %i128, %k129
  br i1 %slt130, label %loop.body113, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch125
  br label %exit

exit:                                             ; preds = %loop.exit131
  %out132 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.primereduce.out = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 6
  store [256 x i128]* %out132, [256 x i128]** %write_output_inner.primereduce.out, align 8
  ret void
}

define %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, i128 %4) {
entry:
  %struct_template_circuit_primereduce = alloca %struct_template_circuit_primereduce, align 8
  %write_arg_inner.primereduce.n = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.primereduce.n, align 4
  %write_arg_inner.primereduce.k = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.primereduce.k, align 4
  %write_arg_inner.primereduce.m = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 2
  store i128 %2, i128* %write_arg_inner.primereduce.m, align 4
  %write_arg_inner.primereduce.p = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %write_arg_inner.primereduce.p, align 8
  %write_arg_inner.primereduce.m_out = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 4
  store i128 %4, i128* %write_arg_inner.primereduce.m_out, align 4
  ret %struct_template_circuit_primereduce* %struct_template_circuit_primereduce
}

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %2, [256 x [256 x i128]]** %a.bind, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %3, [256 x i128]** %p.bind, align 8
  %out1 = alloca [256 x i128]*, align 8
  %out11 = alloca [256 x i128], align 8
  store [256 x i128]* %out11, [256 x i128]** %out1, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %sq02 = alloca [256 x i128], align 8
  store [256 x i128]* %sq02, [256 x i128]** %sq0, align 8
  %lambda = alloca [256 x i128]*, align 8
  %lambda3 = alloca [256 x i128], align 8
  store [256 x i128]* %lambda3, [256 x i128]** %lambda, align 8
  %out1_pre = alloca [256 x i128]*, align 8
  %out1_pre4 = alloca [256 x i128], align 8
  store [256 x i128]* %out1_pre4, [256 x i128]** %out1_pre, align 8
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %out1_div5 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out1_div5, [256 x [256 x i128]]** %out1_div, align 8
  %out0 = alloca [256 x i128]*, align 8
  %out06 = alloca [256 x i128], align 8
  store [256 x i128]* %out06, [256 x i128]** %out0, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %sq_sum7 = alloca [256 x i128], align 8
  store [256 x i128]* %sq_sum7, [256 x i128]** %sq_sum, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out8 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out8, [256 x [256 x i128]]** %out, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %out0_div9 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %out0_div9, [256 x [256 x i128]]** %out0_div, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %sq_sum_div10 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %sq_sum_div10, [256 x [256 x i128]]** %sq_sum_div, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %sq111 = alloca [256 x i128], align 8
  store [256 x i128]* %sq111, [256 x i128]** %sq1, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %a13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a13, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  store [256 x i128]* %call, [256 x i128]** %sq0, align 8
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %a19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a19, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %a23 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a23, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %n17, i128 %k18, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  store [256 x i128]* %call27, [256 x i128]** %sq1, align 8
  %n28 = load i128, i128* %n.bind, align 4
  %k29 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k29
  %sq030 = load [256 x i128]*, [256 x i128]** %sq0, align 8
  %sq131 = load [256 x i128]*, [256 x i128]** %sq1, align 8
  %call32 = call [256 x i128]* @long_add(i128 %n28, i128 %mul, [256 x i128]* %sq030, [256 x i128]* %sq131)
  store [256 x i128]* %call32, [256 x i128]** %sq_sum, align 8
  %n33 = load i128, i128* %n.bind, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %add = add i128 %k35, 1
  %sq_sum36 = load [256 x i128]*, [256 x i128]** %sq_sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %n33, i128 %k34, i128 %add, [256 x i128]* %sq_sum36, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call37, [256 x [256 x i128]]** %sq_sum_div, align 8
  %n38 = load i128, i128* %n.bind, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %sq_sum_div40 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sq_sum_div, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sq_sum_div40, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %p44 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call45 = call [256 x i128]* @mod_inv(i128 %n38, i128 %k39, [256 x i128]* %spice_inline_array43, [256 x i128]* %p44)
  store [256 x i128]* %call45, [256 x i128]** %lambda, align 8
  %n46 = load i128, i128* %n.bind, align 4
  %k47 = load i128, i128* %k.bind, align 4
  %lambda48 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %a49 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a49, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %n46, i128 %k47, [256 x i128]* %lambda48, [256 x i128]* %spice_inline_array52)
  store [256 x i128]* %call53, [256 x i128]** %out0, align 8
  %n54 = load i128, i128* %n.bind, align 4
  %k55 = load i128, i128* %k.bind, align 4
  %out056 = load [256 x i128]*, [256 x i128]** %out0, align 8
  %p57 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call58 = call [256 x [256 x i128]]* @long_div(i128 %n54, i128 %k55, [256 x i128]* %out056, [256 x i128]* %p57)
  store [256 x [256 x i128]]* %call58, [256 x [256 x i128]]** %out0_div, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %out0_div59 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out0_div, align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out0_div59, i128 0, i128 1
  %out0_div61 = load [256 x i128], [256 x i128]* %array_getter60, align 4
  %spice_inline_array62 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div61, [256 x i128]* %spice_inline_array62, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out63 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n64 = load i128, i128* %n.bind, align 4
  %k65 = load i128, i128* %k.bind, align 4
  %p66 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %a67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a67, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %n64, i128 %k65, [256 x i128]* %p66, [256 x i128]* %spice_inline_array70)
  store [256 x i128]* %call71, [256 x i128]** %out1_pre, align 8
  %n72 = load i128, i128* %n.bind, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %lambda74 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %out1_pre75 = load [256 x i128]*, [256 x i128]** %out1_pre, align 8
  %call76 = call [256 x i128]* @prod(i128 %n72, i128 %k73, [256 x i128]* %lambda74, [256 x i128]* %out1_pre75)
  store [256 x i128]* %call76, [256 x i128]** %out1, align 8
  %n77 = load i128, i128* %n.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %out179 = load [256 x i128]*, [256 x i128]** %out1, align 8
  %p80 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %n77, i128 %k78, [256 x i128]* %out179, [256 x i128]* %p80)
  store [256 x [256 x i128]]* %call81, [256 x [256 x i128]]** %out1_div, align 8
  %out1_div82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out1_div, align 8
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out1_div82, i128 0, i128 1
  %out1_div84 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div84, [256 x i128]* %spice_inline_array85, align 4
  %ptr_getter86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter86, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out87 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out88
}

define void @fn_template_init_bigmodinv(%struct_template_circuit_bigmodinv* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 0
  %read_arg_inner.bigmodinv.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmodinv.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 1
  %read_arg_inner.bigmodinv.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.bigmodinv.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 2
  %read_input_inner.bigmodinv.in = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmodinv.in, [256 x i128]** %in.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 3
  %read_input_inner.bigmodinv.p = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bigmodinv.p, [256 x i128]** %p.bind, align 8
  %inv = alloca [256 x i128]*, align 8
  %inv4 = alloca [256 x i128], align 8
  store [256 x i128]* %inv4, [256 x i128]** %inv, align 8
  %mult = alloca %struct_template_circuit_bigmult*, align 8
  %range_checks = alloca [256 x %struct_template_circuit_num2bits*]*, align 8
  %range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  store [256 x %struct_template_circuit_num2bits*]* %range_checks5, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %mod = alloca %struct_template_circuit_bigmod*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out7 = bitcast i8* %malloccall6 to [256 x i128]*
  store [256 x i128]* %out7, [256 x i128]** %out, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @mod_inv(i128 %n, i128 %k, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x i128]* %call, [256 x i128]** %inv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %inv8 = load [256 x i128]*, [256 x i128]** %inv, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %inv8, i128 0, i128 %i9
  %inv10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i11 = load i128, i128* %i, align 4
  %out12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i11
  store i128 %inv10, i128* %out12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %k15 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i14, %k15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch35, %loop.exit
  %n17 = load i128, i128* %n.bind, align 4
  %call18 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n17)
  %ptr_getter19 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i20 = load i128, i128* %i, align 4
  %range_checks21 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter19, i128 0, i128 %i20
  store %struct_template_circuit_num2bits* %call18, %struct_template_circuit_num2bits** %range_checks21, align 8
  %out22 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %out22, i128 0, i128 %i23
  %out25 = load i128, i128* %array_getter24, align 4
  %range_checks26 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks26, i128 0, i128 %i27
  %range_checks29 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter28, align 8
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks29, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out25, i1* @constraint.259)
  %ptr_getter31 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter31, i128 0, i128 %i32
  %range_checks34 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter33, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks34, i32 0, i32 1
  store i128 %out25, i128* %write_input_outter.num2bits.in, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body16
  %i36 = load i128, i128* %i, align 4
  %add37 = add i128 %i36, 1
  store i128 %add37, i128* %i, align 4
  %i38 = load i128, i128* %i, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %slt40 = icmp slt i128 %i38, %k39
  br i1 %slt40, label %loop.body16, label %loop.exit41

loop.exit41:                                      ; preds = %loop.latch35
  %n42 = load i128, i128* %n.bind, align 4
  %k43 = load i128, i128* %k.bind, align 4
  %call44 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n42, i128 %k43)
  store %struct_template_circuit_bigmult* %call44, %struct_template_circuit_bigmult** %mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body45

loop.body45:                                      ; preds = %loop.latch74, %loop.exit41
  %in46 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i47 = load i128, i128* %i, align 4
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %in46, i128 0, i128 %i47
  %in49 = load i128, i128* %array_getter48, align 4
  %mult50 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult50, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i52 = load i128, i128* %i, align 4
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i52
  %mult54 = load i128, i128* %array_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult54, i128 %in49, i1* @constraint.260)
  %ptr_getter55 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter55, i32 0, i32 2
  %read_input_outter.bigmult.a57 = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %i58 = load i128, i128* %i, align 4
  %mult59 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a57, i128 0, i128 %i58
  store i128 %in49, i128* %mult59, align 4
  %out60 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %out60, i128 0, i128 %i61
  %out63 = load i128, i128* %array_getter62, align 4
  %mult64 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult64, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i66
  %mult68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult68, i128 %out63, i1* @constraint.261)
  %ptr_getter69 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter69, i32 0, i32 3
  %read_input_outter.bigmult.b71 = load [256 x i128]*, [256 x i128]** %struct_getter70, align 8
  %i72 = load i128, i128* %i, align 4
  %mult73 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b71, i128 0, i128 %i72
  store i128 %out63, i128* %mult73, align 4
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body45
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %slt79 = icmp slt i128 %i77, %k78
  br i1 %slt79, label %loop.body45, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch74
  %n81 = load i128, i128* %n.bind, align 4
  %k82 = load i128, i128* %k.bind, align 4
  %call83 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %n81, i128 %k82)
  store %struct_template_circuit_bigmod* %call83, %struct_template_circuit_bigmod** %mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch100, %loop.exit80
  %mult85 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult85, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i87
  %mult89 = load i128, i128* %array_getter88, align 4
  %mod90 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod90, i32 0, i32 2
  %read_input_outter.bigmod.a = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a, i128 0, i128 %i92
  %mod94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod94, i128 %mult89, i1* @constraint.262)
  %ptr_getter95 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter95, i32 0, i32 2
  %read_input_outter.bigmod.a97 = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %i98 = load i128, i128* %i, align 4
  %mod99 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a97, i128 0, i128 %i98
  store i128 %mult89, i128* %mod99, align 4
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body84
  %i101 = load i128, i128* %i, align 4
  %add102 = add i128 %i101, 1
  store i128 %add102, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k104
  %slt105 = icmp slt i128 %i103, %mul
  br i1 %slt105, label %loop.body84, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch100
  store i128 0, i128* %i, align 4
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch122, %loop.exit106
  %p108 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i109 = load i128, i128* %i, align 4
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %p108, i128 0, i128 %i109
  %p111 = load i128, i128* %array_getter110, align 4
  %mod112 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod112, i32 0, i32 3
  %read_input_outter.bigmod.b = load [256 x i128]*, [256 x i128]** %struct_getter113, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b, i128 0, i128 %i114
  %mod116 = load i128, i128* %array_getter115, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod116, i128 %p111, i1* @constraint.263)
  %ptr_getter117 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter117, i32 0, i32 3
  %read_input_outter.bigmod.b119 = load [256 x i128]*, [256 x i128]** %struct_getter118, align 8
  %i120 = load i128, i128* %i, align 4
  %mod121 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b119, i128 0, i128 %i120
  store i128 %p111, i128* %mod121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body107
  %i123 = load i128, i128* %i, align 4
  %add124 = add i128 %i123, 1
  store i128 %add124, i128* %i, align 4
  %i125 = load i128, i128* %i, align 4
  %k126 = load i128, i128* %k.bind, align 4
  %slt127 = icmp slt i128 %i125, %k126
  br i1 %slt127, label %loop.body107, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  %mod129 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter130 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod129, i32 0, i32 5
  %read_output_outter.bigmod.mod = load [256 x i128]*, [256 x i128]** %struct_getter130, align 8
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmod.mod, i128 0, i128 0
  %mod132 = load i128, i128* %array_getter131, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod132, i128 1, i1* @constraint.264)
  store i128 1, i128* %i, align 4
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch140, %loop.exit128
  %mod134 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter135 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod134, i32 0, i32 5
  %read_output_outter.bigmod.mod136 = load [256 x i128]*, [256 x i128]** %struct_getter135, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmod.mod136, i128 0, i128 %i137
  %mod139 = load i128, i128* %array_getter138, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod139, i128 0, i1* @constraint.265)
  br label %loop.latch140

loop.latch140:                                    ; preds = %loop.body133
  %i141 = load i128, i128* %i, align 4
  %add142 = add i128 %i141, 1
  store i128 %add142, i128* %i, align 4
  %i143 = load i128, i128* %i, align 4
  %k144 = load i128, i128* %k.bind, align 4
  %slt145 = icmp slt i128 %i143, %k144
  br i1 %slt145, label %loop.body133, label %loop.exit146

loop.exit146:                                     ; preds = %loop.latch140
  br label %exit

exit:                                             ; preds = %loop.exit146
  %out147 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmodinv.out = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 4
  store [256 x i128]* %out147, [256 x i128]** %write_output_inner.bigmodinv.out, align 8
  ret void
}

define %struct_template_circuit_bigmodinv* @fn_template_build_bigmodinv(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmodinv = alloca %struct_template_circuit_bigmodinv, align 8
  %write_arg_inner.bigmodinv.n = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigmodinv.n, align 4
  %write_arg_inner.bigmodinv.k = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.bigmodinv.k, align 4
  ret %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv
}

define void @fn_template_init_fpmultiply(%struct_template_circuit_fpmultiply* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 0
  %read_arg_inner.fpmultiply.n = load i128, i128* %struct_getter, align 4
  %n.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpmultiply.n, i128* %n.bind, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 1
  %read_arg_inner.fpmultiply.k = load i128, i128* %struct_getter1, align 4
  %k.bind = alloca i128, align 8
  store i128 %read_arg_inner.fpmultiply.k, i128* %k.bind, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 2
  %read_arg_inner.fpmultiply.p = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %p.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_arg_inner.fpmultiply.p, [256 x i128]** %p.bind, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 3
  %read_input_inner.fpmultiply.a = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpmultiply.a, [256 x i128]** %a.bind, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 4
  %read_input_inner.fpmultiply.b = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %b.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.fpmultiply.b, [256 x i128]** %b.bind, align 8
  %nocarry = alloca %struct_template_circuit_bigmultshortlong*, align 8
  %LOGK = alloca i128, align 8
  store i128 0, i128* %LOGK, align 4
  %red = alloca %struct_template_circuit_primereduce*, align 8
  %i = alloca i128, align 8
  store i128 0, i128* %i, align 4
  %big_mod = alloca %struct_template_circuit_signedfpcarrymodp*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out6 = bitcast i8* %malloccall5 to [256 x i128]*
  store [256 x i128]* %out6, [256 x i128]** %out, align 8
  %k = load i128, i128* %k.bind, align 4
  %call = call i128 @log_ceil(i128 %k)
  store i128 %call, i128* %LOGK, align 4
  %n = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %n8 = load i128, i128* %n.bind, align 4
  %mul = mul i128 2, %n8
  %LOGK9 = load i128, i128* %LOGK, align 4
  %add = add i128 %mul, %LOGK9
  %call10 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %n, i128 %k7, i128 %add)
  store %struct_template_circuit_bigmultshortlong* %call10, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %nocarry13 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry13, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a, i128 0, i128 %i15
  %nocarry17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry17, i128 %a12, i1* @constraint.266)
  %ptr_getter = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i20 = load i128, i128* %i, align 4
  %nocarry21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a19, i128 0, i128 %i20
  store i128 %a12, i128* %nocarry21, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i22
  %b24 = load i128, i128* %array_getter23, align 4
  %nocarry25 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry25, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b, i128 0, i128 %i27
  %nocarry29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry29, i128 %b24, i1* @constraint.267)
  %ptr_getter30 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter30, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %i33 = load i128, i128* %i, align 4
  %nocarry34 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b32, i128 0, i128 %i33
  store i128 %b24, i128* %nocarry34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i35 = load i128, i128* %i, align 4
  %add36 = add i128 %i35, 1
  store i128 %add36, i128* %i, align 4
  %i37 = load i128, i128* %i, align 4
  %k38 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i37, %k38
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n39 = load i128, i128* %n.bind, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %k41 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k41, 1
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %n42 = load i128, i128* %n.bind, align 4
  %mul43 = mul i128 3, %n42
  %LOGK44 = load i128, i128* %LOGK, align 4
  %mul45 = mul i128 2, %LOGK44
  %add46 = add i128 %mul43, %mul45
  %call47 = call %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %n39, i128 %k40, i128 %sub, [256 x i128]* %p, i128 %add46)
  store %struct_template_circuit_primereduce* %call47, %struct_template_circuit_primereduce** %red, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch64, %loop.exit
  %nocarry49 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry49, i32 0, i32 5
  %read_output_outter.bigmultshortlong.out = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %i51 = load i128, i128* %i, align 4
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlong.out, i128 0, i128 %i51
  %nocarry53 = load i128, i128* %array_getter52, align 4
  %red54 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %red54, i32 0, i32 5
  %read_input_outter.primereduce.in = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.primereduce.in, i128 0, i128 %i56
  %red58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %red58, i128 %nocarry53, i1* @constraint.268)
  %ptr_getter59 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %ptr_getter59, i32 0, i32 5
  %read_input_outter.primereduce.in61 = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %i62 = load i128, i128* %i, align 4
  %red63 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.primereduce.in61, i128 0, i128 %i62
  store i128 %nocarry53, i128* %red63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body48
  %i65 = load i128, i128* %i, align 4
  %add66 = add i128 %i65, 1
  store i128 %add66, i128* %i, align 4
  %i67 = load i128, i128* %i, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %mul69 = mul i128 2, %k68
  %sub70 = sub i128 %mul69, 1
  %slt71 = icmp slt i128 %i67, %sub70
  br i1 %slt71, label %loop.body48, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch64
  %n73 = load i128, i128* %n.bind, align 4
  %k74 = load i128, i128* %k.bind, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %mul76 = mul i128 3, %n75
  %LOGK77 = load i128, i128* %LOGK, align 4
  %mul78 = mul i128 2, %LOGK77
  %add79 = add i128 %mul76, %mul78
  %p80 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call81 = call %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %n73, i128 %k74, i128 %add79, [256 x i128]* %p80)
  store %struct_template_circuit_signedfpcarrymodp* %call81, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch98, %loop.exit72
  %red83 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %red83, i32 0, i32 6
  %read_output_outter.primereduce.out = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.primereduce.out, i128 0, i128 %i85
  %red87 = load i128, i128* %array_getter86, align 4
  %big_mod88 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %big_mod88, i32 0, i32 4
  %read_input_outter.signedfpcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter89, align 8
  %i90 = load i128, i128* %i, align 4
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.signedfpcarrymodp.in, i128 0, i128 %i90
  %big_mod92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod92, i128 %red87, i1* @constraint.269)
  %ptr_getter93 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %ptr_getter93, i32 0, i32 4
  %read_input_outter.signedfpcarrymodp.in95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %i96 = load i128, i128* %i, align 4
  %big_mod97 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.signedfpcarrymodp.in95, i128 0, i128 %i96
  store i128 %red87, i128* %big_mod97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body82
  %i99 = load i128, i128* %i, align 4
  %add100 = add i128 %i99, 1
  store i128 %add100, i128* %i, align 4
  %i101 = load i128, i128* %i, align 4
  %k102 = load i128, i128* %k.bind, align 4
  %slt103 = icmp slt i128 %i101, %k102
  br i1 %slt103, label %loop.body82, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  store i128 0, i128* %i, align 4
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch118, %loop.exit104
  %big_mod106 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %big_mod106, i32 0, i32 6
  %read_output_outter.signedfpcarrymodp.out = load [256 x i128]*, [256 x i128]** %struct_getter107, align 8
  %i108 = load i128, i128* %i, align 4
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.signedfpcarrymodp.out, i128 0, i128 %i108
  %big_mod110 = load i128, i128* %array_getter109, align 4
  %out111 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i112 = load i128, i128* %i, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %out111, i128 0, i128 %i112
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %big_mod110, i1* @constraint.270)
  %ptr_getter115 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i116 = load i128, i128* %i, align 4
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter115, i128 0, i128 %i116
  store i128 %big_mod110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %i119 = load i128, i128* %i, align 4
  %add120 = add i128 %i119, 1
  store i128 %add120, i128* %i, align 4
  %i121 = load i128, i128* %i, align 4
  %k122 = load i128, i128* %k.bind, align 4
  %slt123 = icmp slt i128 %i121, %k122
  br i1 %slt123, label %loop.body105, label %loop.exit124

loop.exit124:                                     ; preds = %loop.latch118
  br label %exit

exit:                                             ; preds = %loop.exit124
  %out125 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpmultiply.out = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 5
  store [256 x i128]* %out125, [256 x i128]** %write_output_inner.fpmultiply.out, align 8
  ret void
}

define %struct_template_circuit_fpmultiply* @fn_template_build_fpmultiply(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpmultiply = alloca %struct_template_circuit_fpmultiply, align 8
  %write_arg_inner.fpmultiply.n = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.fpmultiply.n, align 4
  %write_arg_inner.fpmultiply.k = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 1
  store i128 %1, i128* %write_arg_inner.fpmultiply.k, align 4
  %write_arg_inner.fpmultiply.p = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %write_arg_inner.fpmultiply.p, align 8
  ret %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply
}

declare noalias i8* @malloc(i32)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
