; ModuleID = './auditing/fp.ll'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp.circom"

%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_iszero = type { i128, i128, i128 }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_forceequalifenabled = type { i128, [256 x i128]* }
%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_lessthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_compconstant = type { i128, [256 x i128]*, [256 x i128]*, i128, i128 }
%struct_template_circuit_greaterthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_aliascheck = type { [256 x i128]* }
%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_num2bits_strict = type { i128, [256 x i128]* }
%struct_template_circuit_greatereqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_isequal = type { [256 x i128]*, i128 }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_lesseqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_checkcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bits2num_strict = type { [256 x i128]*, i128 }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_fpnegate = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsubtract = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpsgn0 = type { i128, i128, [256 x i128]*, [256 x i128]*, i128, i128 }
%struct_template_circuit_fpiszero = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpisequal = type { i128, i128, [256 x i128]*, [256 x [256 x i128]]*, i128 }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedfpcarrymodp = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedcheckcarrymodtozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_primereduce = type { i128, i128, i128, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
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

define i128 @fn_intrinsic_inline_init() {
entry:
  ret i128 0
}

define void @fn_template_init_or(%struct_template_circuit_or* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 0
  %or.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 1
  %or.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %or.a.read_input_inner, %or.b.read_input_inner
  %mul = mul i128 %or.a.read_input_inner, %or.b.read_input_inner
  %sub = sub i128 %add, %mul
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint)
  %or.out.write_output_inner = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %sub, i128* %or.out.write_output_inner, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  %or.out.read_output_inner = load i128, i128* %struct_getter6, align 4
  br label %exit

exit:                                             ; preds = %entry
  %or.out.write_output_inner8 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %0, i32 0, i32 2
  store i128 %or.out.read_output_inner, i128* %or.out.write_output_inner8, align 4
  ret void
}

define %struct_template_circuit_or* @fn_template_build_or() {
entry:
  %struct_template_circuit_or = alloca %struct_template_circuit_or, align 8
  ret %struct_template_circuit_or* %struct_template_circuit_or
}

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %iszero.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %inv = call i128 @fn_intrinsic_inline_init()
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
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint.1)
  %iszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  store i128 %add, i128* %iszero.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 2
  %iszero.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  %mul12 = mul i128 %iszero.in.read_input_inner, %iszero.out.read_output_inner
  call void @fn_intrinsic_add_constraint(i128 %mul12, i128 0, i1* @constraint.2)
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

define i128 @get_fp_sgn0([256 x i128]* %0) {
entry:
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %0, i128 0, i128 0
  %a1 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a1, 2
  ret i128 %mod
}

define void @fn_template_init_nand(%struct_template_circuit_nand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 0
  %nand.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 1
  %nand.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %mul = mul i128 %nand.a.read_input_inner, %nand.b.read_input_inner
  %sub = sub i128 1, %mul
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint.3)
  %nand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %sub, i128* %nand.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  %nand.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %exit

exit:                                             ; preds = %entry
  %nand.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_nand, %struct_template_circuit_nand* %0, i32 0, i32 2
  store i128 %nand.out.read_output_inner, i128* %nand.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_nand* @fn_template_build_nand() {
entry:
  %struct_template_circuit_nand = alloca %struct_template_circuit_nand, align 8
  ret %struct_template_circuit_nand* %struct_template_circuit_nand
}

define void @fn_template_init_num2bits(%struct_template_circuit_num2bits* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 0
  %num2bits.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 1
  %num2bits.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %e22 = call i128 @fn_intrinsic_inline_init()
  %lc13 = call i128 @fn_intrinsic_inline_init()
  %i4 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %e2.0 = phi i128 [ 1, %entry ], [ %add24, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add26, %loop.latch ]
  %rshift = lshr i128 %num2bits.in.read_input_inner, %i.0
  %and = and i128 %rshift, 1
  %out7 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out7, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out10 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out14 = load i128, i128* %array_getter13, align 4
  %sub = sub i128 %out14, 1
  %mul = mul i128 %out10, %sub
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.4)
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %num2bits.in.read_input_inner, i1* @constraint.5)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bits.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %0, i32 0, i32 2
  store [256 x i128]* %out, [256 x i128]** %num2bits.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %0) {
entry:
  %struct_template_circuit_num2bits = alloca %struct_template_circuit_num2bits, align 8
  %num2bits.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %struct_template_circuit_num2bits, i32 0, i32 0
  store i128 %0, i128* %num2bits.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bits* %struct_template_circuit_num2bits
}

define void @fn_template_init_splitthree(%struct_template_circuit_splitthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 0
  %splitthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 1
  %splitthree.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 2
  %splitthree.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 3
  %splitthree.in.read_input_inner = load i128, i128* %struct_getter3, align 4
  %big = call i128 @fn_intrinsic_inline_init()
  %medium = call i128 @fn_intrinsic_inline_init()
  %small = call i128 @fn_intrinsic_inline_init()
  %lshift = shl i128 1, %splitthree.n.read_arg_inner
  %mod = srem i128 %splitthree.in.read_input_inner, %lshift
  %splitthree.small.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %mod, i128* %splitthree.small.write_output_inner, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  %splitthree.small.read_output_inner = load i128, i128* %struct_getter5, align 4
  %lshift8 = shl i128 1, %splitthree.n.read_arg_inner
  %sdiv = sdiv i128 %splitthree.in.read_input_inner, %lshift8
  %lshift9 = shl i128 1, %splitthree.m.read_arg_inner
  %mod10 = srem i128 %sdiv, %lshift9
  %splitthree.medium.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %mod10, i128* %splitthree.medium.write_output_inner, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  %splitthree.medium.read_output_inner = load i128, i128* %struct_getter13, align 4
  %add = add i128 %splitthree.n.read_arg_inner, %splitthree.m.read_arg_inner
  %lshift17 = shl i128 1, %add
  %sdiv18 = sdiv i128 %splitthree.in.read_input_inner, %lshift17
  %splitthree.big.write_output_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %sdiv18, i128* %splitthree.big.write_output_inner, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  %splitthree.big.read_output_inner = load i128, i128* %struct_getter21, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.n.read_arg_inner)
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %splitthree.small.read_output_inner, i1* @constraint.6)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %splitthree.small.read_output_inner, i128* %num2bits.in.write_input_outter, align 4
  %call28 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.m.read_arg_inner)
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call28, i32 0, i32 1
  %num2bits.in.read_input_outter32 = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter32, i128 %splitthree.medium.read_output_inner, i1* @constraint.7)
  %num2bits.in.write_input_outter34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call28, i32 0, i32 1
  store i128 %splitthree.medium.read_output_inner, i128* %num2bits.in.write_input_outter34, align 4
  %call35 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %splitthree.k.read_arg_inner)
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call35, i32 0, i32 1
  %num2bits.in.read_input_outter39 = load i128, i128* %struct_getter38, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter39, i128 %splitthree.big.read_output_inner, i1* @constraint.8)
  %num2bits.in.write_input_outter41 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call35, i32 0, i32 1
  store i128 %splitthree.big.read_output_inner, i128* %num2bits.in.write_input_outter41, align 4
  %lshift46 = shl i128 1, %splitthree.n.read_arg_inner
  %mul = mul i128 %splitthree.medium.read_output_inner, %lshift46
  %add47 = add i128 %splitthree.small.read_output_inner, %mul
  %add51 = add i128 %splitthree.n.read_arg_inner, %splitthree.m.read_arg_inner
  %lshift52 = shl i128 1, %add51
  %mul53 = mul i128 %splitthree.big.read_output_inner, %lshift52
  %add54 = add i128 %add47, %mul53
  call void @fn_intrinsic_add_constraint(i128 %splitthree.in.read_input_inner, i128 %add54, i1* @constraint.9)
  br label %exit

exit:                                             ; preds = %entry
  %splitthree.small.write_output_inner56 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 4
  store i128 %splitthree.small.read_output_inner, i128* %splitthree.small.write_output_inner56, align 4
  %splitthree.medium.write_output_inner58 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 5
  store i128 %splitthree.medium.read_output_inner, i128* %splitthree.medium.write_output_inner58, align 4
  %splitthree.big.write_output_inner60 = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %0, i32 0, i32 6
  store i128 %splitthree.big.read_output_inner, i128* %splitthree.big.write_output_inner60, align 4
  ret void
}

define %struct_template_circuit_splitthree* @fn_template_build_splitthree(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_splitthree = alloca %struct_template_circuit_splitthree, align 8
  %splitthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 0
  store i128 %0, i128* %splitthree.n.write_arg_inner, align 4
  %splitthree.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 1
  store i128 %1, i128* %splitthree.m.write_arg_inner, align 4
  %splitthree.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_splitthree, %struct_template_circuit_splitthree* %struct_template_circuit_splitthree, i32 0, i32 2
  store i128 %2, i128* %splitthree.k.write_arg_inner, align 4
  ret %struct_template_circuit_splitthree* %struct_template_circuit_splitthree
}

define void @fn_template_init_forceequalifenabled(%struct_template_circuit_forceequalifenabled* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 0
  %forceequalifenabled.enabled.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_forceequalifenabled, %struct_template_circuit_forceequalifenabled* %0, i32 0, i32 1
  %forceequalifenabled.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %forceequalifenabled.in.read_input_inner, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.10)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %iszero.out.read_output_outter
  %mul = mul i128 %sub10, %forceequalifenabled.enabled.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.11)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
}

define void @fn_template_init_bigmultshortlong2dunequal(%struct_template_circuit_bigmultshortlong2dunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 0
  %bigmultshortlong2dunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 1
  %bigmultshortlong2dunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 2
  %bigmultshortlong2dunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 3
  %bigmultshortlong2dunequal.la.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 4
  %bigmultshortlong2dunequal.lb.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 5
  %bigmultshortlong2dunequal.a.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter5, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 6
  %bigmultshortlong2dunequal.b.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter6, align 8
  %deg27 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]*
  %i29 = call i128 @fn_intrinsic_inline_init()
  %j10 = call i128 @fn_intrinsic_inline_init()
  %j111 = call i128 @fn_intrinsic_inline_init()
  %deg113 = call i128 @fn_intrinsic_inline_init()
  %i15 = call i128 @fn_intrinsic_inline_init()
  %k216 = call i128 @fn_intrinsic_inline_init()
  %i117 = call i128 @fn_intrinsic_inline_init()
  %j218 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch28, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add31, %loop.latch28 ]
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.0, i128 %j.0
  store i128 0, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body21
  %add = add i128 %j.0, 1
  %add27 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub = sub i128 %add27, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body21, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.exit
  %add31 = add i128 %i.0, 1
  %add33 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub34 = sub i128 %add33, 1
  %slt35 = icmp slt i128 %add31, %sub34
  br i1 %slt35, label %loop.body, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch28
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch85, %loop.exit36
  %i1.0 = phi i128 [ 0, %loop.exit36 ], [ %add87, %loop.latch85 ]
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch78, %loop.body37
  %i2.0 = phi i128 [ 0, %loop.body37 ], [ %add80, %loop.latch78 ]
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch71, %loop.body38
  %j1.0 = phi i128 [ 0, %loop.body38 ], [ %add73, %loop.latch71 ]
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch64, %loop.body39
  %j2.0 = phi i128 [ 0, %loop.body39 ], [ %add66, %loop.latch64 ]
  %add43 = add i128 %i1.0, %i2.0
  %add46 = add i128 %j1.0, %j2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add43, i128 %add46
  %prod_val50 = load i128, i128* %array_getter, align 4
  %array_getter53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2dunequal.a.read_input_inner, i128 0, i128 %i1.0, i128 %j1.0
  %a54 = load i128, i128* %array_getter53, align 4
  %array_getter57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2dunequal.b.read_input_inner, i128 0, i128 %i2.0, i128 %j2.0
  %b58 = load i128, i128* %array_getter57, align 4
  %mul = mul i128 %a54, %b58
  %add59 = add i128 %prod_val50, %mul
  %prod_val63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add43, i128 %add46
  store i128 %add59, i128* %prod_val63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body40
  %add66 = add i128 %j2.0, 1
  %slt69 = icmp slt i128 %add66, %bigmultshortlong2dunequal.kb.read_arg_inner
  br i1 %slt69, label %loop.body40, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %add73 = add i128 %j1.0, 1
  %slt76 = icmp slt i128 %add73, %bigmultshortlong2dunequal.ka.read_arg_inner
  br i1 %slt76, label %loop.body39, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit77
  %add80 = add i128 %i2.0, 1
  %slt83 = icmp slt i128 %add80, %bigmultshortlong2dunequal.lb.read_arg_inner
  br i1 %slt83, label %loop.body38, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  br label %loop.latch85

loop.latch85:                                     ; preds = %loop.exit84
  %add87 = add i128 %i1.0, 1
  %slt90 = icmp slt i128 %add87, %bigmultshortlong2dunequal.la.read_arg_inner
  br i1 %slt90, label %loop.body37, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch85
  br label %loop.body92

loop.body92:                                      ; preds = %loop.latch113, %loop.exit91
  %i.1 = phi i128 [ 0, %loop.exit91 ], [ %add115, %loop.latch113 ]
  br label %loop.body93

loop.body93:                                      ; preds = %loop.latch103, %loop.body92
  %j.1 = phi i128 [ 0, %loop.body92 ], [ %add105, %loop.latch103 ]
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.1, i128 %j.1
  %prod_val98 = load i128, i128* %array_getter97, align 4
  %out102 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out, i128 0, i128 %i.1, i128 %j.1
  store i128 %prod_val98, i128* %out102, align 4
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.body93
  %add105 = add i128 %j.1, 1
  %add109 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub110 = sub i128 %add109, 1
  %slt111 = icmp slt i128 %add105, %sub110
  br i1 %slt111, label %loop.body93, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch103
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.exit112
  %add115 = add i128 %i.1, 1
  %add119 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub120 = sub i128 %add119, 1
  %slt121 = icmp slt i128 %add115, %sub120
  br i1 %slt121, label %loop.body92, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch113
  %add125 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub126 = sub i128 %add125, 1
  %add129 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub130 = sub i128 %add129, 1
  %sgt = icmp sgt i128 %sub126, %sub130
  %add133 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub134 = sub i128 %add133, 1
  %add137 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub138 = sub i128 %add137, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub134, i128 %sub138)
  %uniform_array139 = alloca [256 x [256 x i128]], align 8
  br label %loop.body140

loop.body140:                                     ; preds = %loop.latch157, %loop.exit122
  %i.2 = phi i128 [ 0, %loop.exit122 ], [ %add159, %loop.latch157 ]
  br label %loop.body141

loop.body141:                                     ; preds = %loop.latch149, %loop.body140
  %j.2 = phi i128 [ 0, %loop.body140 ], [ %add151, %loop.latch149 ]
  %pow144 = call i128 @fn_intrinsic_inline_powi(i128 %i.2, i128 %j.2)
  %pow148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %i.2, i128 %j.2
  store i128 %pow144, i128* %pow148, align 4
  br label %loop.latch149

loop.latch149:                                    ; preds = %loop.body141
  %add151 = add i128 %j.2, 1
  %slt155 = icmp slt i128 %add151, %inline_switch
  br i1 %slt155, label %loop.body141, label %loop.exit156

loop.exit156:                                     ; preds = %loop.latch149
  br label %loop.latch157

loop.latch157:                                    ; preds = %loop.exit156
  %add159 = add i128 %i.2, 1
  %slt162 = icmp slt i128 %add159, %inline_switch
  br i1 %slt162, label %loop.body140, label %loop.exit163

loop.exit163:                                     ; preds = %loop.latch157
  %uniform_array164 = alloca [256 x [256 x i128]], align 8
  %uniform_array165 = alloca [256 x [256 x i128]], align 8
  %uniform_array166 = alloca [256 x [256 x i128]], align 8
  br label %loop.body167

loop.body167:                                     ; preds = %loop.latch319, %loop.exit163
  %i.3 = phi i128 [ 0, %loop.exit163 ], [ %add321, %loop.latch319 ]
  br label %loop.body168

loop.body168:                                     ; preds = %loop.latch309, %loop.body167
  %j.3 = phi i128 [ 0, %loop.body167 ], [ %add311, %loop.latch309 ]
  %a_poly172 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array164, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %a_poly172, align 4
  %b_poly176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array165, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %b_poly176, align 4
  %out_poly180 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array166, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %out_poly180, align 4
  br label %loop.body181

loop.body181:                                     ; preds = %loop.latch299, %loop.body168
  %deg1.0 = phi i128 [ 0, %loop.body168 ], [ %add301, %loop.latch299 ]
  %slt184 = icmp slt i128 %deg1.0, %bigmultshortlong2dunequal.la.read_arg_inner
  br i1 %slt184, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body181
  br label %loop.body185

if.false:                                         ; preds = %loop.body181
  br label %if.exit

loop.body185:                                     ; preds = %loop.latch213, %if.true
  %deg2.0 = phi i128 [ 0, %if.true ], [ %add215, %loop.latch213 ]
  %array_getter189 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array164, i128 0, i128 %i.3, i128 %j.3
  %a_poly190 = load i128, i128* %array_getter189, align 4
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2dunequal.a.read_input_inner, i128 0, i128 %deg1.0, i128 %deg2.0
  %a195 = load i128, i128* %array_getter194, align 4
  %array_getter199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %i.3, i128 %deg1.0
  %pow200 = load i128, i128* %array_getter199, align 4
  %mul201 = mul i128 %a195, %pow200
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %j.3, i128 %deg2.0
  %pow206 = load i128, i128* %array_getter205, align 4
  %mul207 = mul i128 %mul201, %pow206
  %add208 = add i128 %a_poly190, %mul207
  %a_poly212 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array164, i128 0, i128 %i.3, i128 %j.3
  store i128 %add208, i128* %a_poly212, align 4
  br label %loop.latch213

loop.latch213:                                    ; preds = %loop.body185
  %add215 = add i128 %deg2.0, 1
  %slt218 = icmp slt i128 %add215, %bigmultshortlong2dunequal.ka.read_arg_inner
  br i1 %slt218, label %loop.body185, label %loop.exit219

loop.exit219:                                     ; preds = %loop.latch213
  br label %if.exit

if.exit:                                          ; preds = %loop.exit219, %if.false
  %slt224 = icmp slt i128 %deg1.0, %bigmultshortlong2dunequal.lb.read_arg_inner
  br i1 %slt224, label %if.true220, label %if.false221

if.true220:                                       ; preds = %if.exit
  br label %loop.body225

if.false221:                                      ; preds = %if.exit
  br label %if.exit260

loop.body225:                                     ; preds = %loop.latch253, %if.true220
  %deg2.1 = phi i128 [ 0, %if.true220 ], [ %add255, %loop.latch253 ]
  %array_getter229 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array165, i128 0, i128 %i.3, i128 %j.3
  %b_poly230 = load i128, i128* %array_getter229, align 4
  %array_getter234 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2dunequal.b.read_input_inner, i128 0, i128 %deg1.0, i128 %deg2.1
  %b235 = load i128, i128* %array_getter234, align 4
  %array_getter239 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %i.3, i128 %deg1.0
  %pow240 = load i128, i128* %array_getter239, align 4
  %mul241 = mul i128 %b235, %pow240
  %array_getter245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %j.3, i128 %deg2.1
  %pow246 = load i128, i128* %array_getter245, align 4
  %mul247 = mul i128 %mul241, %pow246
  %add248 = add i128 %b_poly230, %mul247
  %b_poly252 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array165, i128 0, i128 %i.3, i128 %j.3
  store i128 %add248, i128* %b_poly252, align 4
  br label %loop.latch253

loop.latch253:                                    ; preds = %loop.body225
  %add255 = add i128 %deg2.1, 1
  %slt258 = icmp slt i128 %add255, %bigmultshortlong2dunequal.kb.read_arg_inner
  br i1 %slt258, label %loop.body225, label %loop.exit259

loop.exit259:                                     ; preds = %loop.latch253
  br label %if.exit260

if.exit260:                                       ; preds = %loop.exit259, %if.false221
  br label %loop.body261

loop.body261:                                     ; preds = %loop.latch289, %if.exit260
  %deg2.2 = phi i128 [ 0, %if.exit260 ], [ %add291, %loop.latch289 ]
  %array_getter265 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array166, i128 0, i128 %i.3, i128 %j.3
  %out_poly266 = load i128, i128* %array_getter265, align 4
  %array_getter270 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out, i128 0, i128 %deg1.0, i128 %deg2.2
  %out271 = load i128, i128* %array_getter270, align 4
  %array_getter275 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %i.3, i128 %deg1.0
  %pow276 = load i128, i128* %array_getter275, align 4
  %mul277 = mul i128 %out271, %pow276
  %array_getter281 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array139, i128 0, i128 %j.3, i128 %deg2.2
  %pow282 = load i128, i128* %array_getter281, align 4
  %mul283 = mul i128 %mul277, %pow282
  %add284 = add i128 %out_poly266, %mul283
  %out_poly288 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array166, i128 0, i128 %i.3, i128 %j.3
  store i128 %add284, i128* %out_poly288, align 4
  br label %loop.latch289

loop.latch289:                                    ; preds = %loop.body261
  %add291 = add i128 %deg2.2, 1
  %add295 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub296 = sub i128 %add295, 1
  %slt297 = icmp slt i128 %add291, %sub296
  br i1 %slt297, label %loop.body261, label %loop.exit298

loop.exit298:                                     ; preds = %loop.latch289
  br label %loop.latch299

loop.latch299:                                    ; preds = %loop.exit298
  %add301 = add i128 %deg1.0, 1
  %add305 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub306 = sub i128 %add305, 1
  %slt307 = icmp slt i128 %add301, %sub306
  br i1 %slt307, label %loop.body181, label %loop.exit308

loop.exit308:                                     ; preds = %loop.latch299
  br label %loop.latch309

loop.latch309:                                    ; preds = %loop.exit308
  %add311 = add i128 %j.3, 1
  %add315 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub316 = sub i128 %add315, 1
  %slt317 = icmp slt i128 %add311, %sub316
  br i1 %slt317, label %loop.body168, label %loop.exit318

loop.exit318:                                     ; preds = %loop.latch309
  br label %loop.latch319

loop.latch319:                                    ; preds = %loop.exit318
  %add321 = add i128 %i.3, 1
  %add325 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub326 = sub i128 %add325, 1
  %slt327 = icmp slt i128 %add321, %sub326
  br i1 %slt327, label %loop.body167, label %loop.exit328

loop.exit328:                                     ; preds = %loop.latch319
  br label %loop.body329

loop.body329:                                     ; preds = %loop.latch357, %loop.exit328
  %i.4 = phi i128 [ 0, %loop.exit328 ], [ %add359, %loop.latch357 ]
  br label %loop.body330

loop.body330:                                     ; preds = %loop.latch347, %loop.body329
  %j.4 = phi i128 [ 0, %loop.body329 ], [ %add349, %loop.latch347 ]
  %array_getter334 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array166, i128 0, i128 %i.4, i128 %j.4
  %out_poly335 = load i128, i128* %array_getter334, align 4
  %array_getter339 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array164, i128 0, i128 %i.4, i128 %j.4
  %a_poly340 = load i128, i128* %array_getter339, align 4
  %array_getter344 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array165, i128 0, i128 %i.4, i128 %j.4
  %b_poly345 = load i128, i128* %array_getter344, align 4
  %mul346 = mul i128 %a_poly340, %b_poly345
  call void @fn_intrinsic_add_constraint(i128 %out_poly335, i128 %mul346, i1* @constraint.12)
  br label %loop.latch347

loop.latch347:                                    ; preds = %loop.body330
  %add349 = add i128 %j.4, 1
  %add353 = add i128 %bigmultshortlong2dunequal.ka.read_arg_inner, %bigmultshortlong2dunequal.kb.read_arg_inner
  %sub354 = sub i128 %add353, 1
  %slt355 = icmp slt i128 %add349, %sub354
  br i1 %slt355, label %loop.body330, label %loop.exit356

loop.exit356:                                     ; preds = %loop.latch347
  br label %loop.latch357

loop.latch357:                                    ; preds = %loop.exit356
  %add359 = add i128 %i.4, 1
  %add363 = add i128 %bigmultshortlong2dunequal.la.read_arg_inner, %bigmultshortlong2dunequal.lb.read_arg_inner
  %sub364 = sub i128 %add363, 1
  %slt365 = icmp slt i128 %add359, %sub364
  br i1 %slt365, label %loop.body329, label %loop.exit366

loop.exit366:                                     ; preds = %loop.latch357
  br label %exit

exit:                                             ; preds = %loop.exit366
  %bigmultshortlong2dunequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 7
  store [256 x [256 x i128]]* %out, [256 x [256 x i128]]** %bigmultshortlong2dunequal.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2dunequal* @fn_template_build_bigmultshortlong2dunequal(i128 %0, i128 %1, i128 %2, i128 %3, i128 %4) {
entry:
  %struct_template_circuit_bigmultshortlong2dunequal = alloca %struct_template_circuit_bigmultshortlong2dunequal, align 8
  %bigmultshortlong2dunequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong2dunequal.n.write_arg_inner, align 4
  %bigmultshortlong2dunequal.ka.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong2dunequal.ka.write_arg_inner, align 4
  %bigmultshortlong2dunequal.kb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong2dunequal.kb.write_arg_inner, align 4
  %bigmultshortlong2dunequal.la.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 3
  store i128 %3, i128* %bigmultshortlong2dunequal.la.write_arg_inner, align 4
  %bigmultshortlong2dunequal.lb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal, i32 0, i32 4
  store i128 %4, i128* %bigmultshortlong2dunequal.lb.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong2dunequal* %struct_template_circuit_bigmultshortlong2dunequal
}

define void @fn_template_init_lessthan(%struct_template_circuit_lessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 0
  %lessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %0, i32 0, i32 1
  %lessthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %lessthan.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %lessthan.n.read_arg_inner
  %add4 = add i128 %in2, %lshift
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_inner, i128 0, i128 1
  %in7 = load i128, i128* %array_getter6, align 4
  %sub = sub i128 %add4, %in7
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %sub, i1* @constraint.13)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %sub, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %lessthan.n.read_arg_inner
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub15, i1* @constraint.14)
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

define void @fn_template_init_nor(%struct_template_circuit_nor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 0
  %nor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 1
  %nor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %mul = mul i128 %nor.a.read_input_inner, %nor.b.read_input_inner
  %add = add i128 %mul, 1
  %sub = sub i128 %add, %nor.a.read_input_inner
  %sub4 = sub i128 %sub, %nor.b.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub4, i1* @constraint.15)
  %nor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %sub4, i128* %nor.out.write_output_inner, align 4
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  %nor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  br label %exit

exit:                                             ; preds = %entry
  %nor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_nor, %struct_template_circuit_nor* %0, i32 0, i32 2
  store i128 %nor.out.read_output_inner, i128* %nor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_nor* @fn_template_build_nor() {
entry:
  %struct_template_circuit_nor = alloca %struct_template_circuit_nor, align 8
  ret %struct_template_circuit_nor* %struct_template_circuit_nor
}

define void @fn_template_init_compconstant(%struct_template_circuit_compconstant* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 0
  %compconstant.ct.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 1
  %compconstant.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %sout = call i128 @fn_intrinsic_inline_init()
  %b2 = call i128 @fn_intrinsic_inline_init()
  %clsb3 = call i128 @fn_intrinsic_inline_init()
  %cmsb4 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %parts = bitcast i8* %malloccall to [256 x i128]*
  %sum5 = call i128 @fn_intrinsic_inline_init()
  %slsb6 = call i128 @fn_intrinsic_inline_init()
  %a7 = call i128 @fn_intrinsic_inline_init()
  %smsb8 = call i128 @fn_intrinsic_inline_init()
  %e9 = call i128 @fn_intrinsic_inline_init()
  %i10 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %sum.0 = phi i128 [ 0, %entry ], [ %add128, %loop.latch ]
  %a.0 = phi i128 [ 1, %entry ], [ %add134, %loop.latch ]
  %b.0 = phi i128 [ poison, %entry ], [ %sub131, %loop.latch ]
  %e.0 = phi i128 [ 1, %entry ], [ %mul136, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add138, %loop.latch ]
  %mul = mul i128 %i.0, 2
  %rshift = lshr i128 %compconstant.ct.read_arg_inner, %mul
  %and = and i128 %rshift, 1
  %mul14 = mul i128 %i.0, 2
  %add = add i128 %mul14, 1
  %rshift15 = lshr i128 %compconstant.ct.read_arg_inner, %add
  %and16 = and i128 %rshift15, 1
  %mul18 = mul i128 %i.0, 2
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %mul18
  %in19 = load i128, i128* %array_getter, align 4
  %mul22 = mul i128 %i.0, 2
  %add23 = add i128 %mul22, 1
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_inner, i128 0, i128 %add23
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
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  %parts46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts46, i128 %add42, i1* @constraint.16)
  %parts48 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
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
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  %parts77 = load i128, i128* %array_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts77, i128 %add73, i1* @constraint.17)
  %parts80 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
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
  %array_getter101 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  %parts102 = load i128, i128* %array_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts102, i128 %add98, i1* @constraint.18)
  %parts105 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add98, i128* %parts105, align 4
  br label %if.exit

if.false82:                                       ; preds = %if.false50
  %neg107 = sub i128 0, %a.0
  %mul109 = mul i128 %neg107, %in25
  %mul111 = mul i128 %mul109, %in19
  %add113 = add i128 %mul111, %a.0
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  %parts117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts117, i128 %add113, i1* @constraint.19)
  %parts120 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
  store i128 %add113, i128* %parts120, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false82, %if.true81
  br label %if.exit121

if.exit121:                                       ; preds = %if.exit, %if.true49
  br label %if.exit122

if.exit122:                                       ; preds = %if.exit121, %if.true
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %parts, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %sout, i128 %add128, i1* @constraint.20)
  %compconstant.sout.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  store i128 %add128, i128* %compconstant.sout.write_inter_inner, align 4
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 3
  %compconstant.sout.read_inter_inner = load i128, i128* %struct_getter144, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %compconstant.sout.read_inter_inner, i1* @constraint.21)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %compconstant.sout.read_inter_inner, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 127
  %num2bits152 = load i128, i128* %array_getter151, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %num2bits152, i1* @constraint.22)
  %compconstant.out.write_output_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  store i128 %num2bits152, i128* %compconstant.out.write_output_inner, align 4
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 4
  %compconstant.out.read_output_inner = load i128, i128* %struct_getter156, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %compconstant.parts.write_inter_inner = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store [256 x i128]* %parts, [256 x i128]** %compconstant.parts.write_inter_inner, align 8
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

define void @fn_template_init_greaterthan(%struct_template_circuit_greaterthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 0
  %greaterthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greaterthan, %struct_template_circuit_greaterthan* %0, i32 0, i32 1
  %greaterthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greaterthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.23)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %greaterthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %in12, i1* @constraint.24)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %in12, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.25)
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

define void @fn_template_init_modsumfour(%struct_template_circuit_modsumfour* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 0
  %modsumfour.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 1
  %modsumfour.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 2
  %modsumfour.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 3
  %modsumfour.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 4
  %modsumfour.d.read_input_inner = load i128, i128* %struct_getter4, align 4
  %carry = call i128 @fn_intrinsic_inline_init()
  %sum = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %modsumfour.n.read_arg_inner, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %add5 = add i128 %modsumfour.a.read_input_inner, %modsumfour.b.read_input_inner
  %add6 = add i128 %add5, %modsumfour.c.read_input_inner
  %add7 = add i128 %add6, %modsumfour.d.read_input_inner
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %add7, i1* @constraint.26)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add7, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsumfour.n.read_arg_inner
  %n2b13 = load i128, i128* %array_getter, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %add18 = add i128 %modsumfour.n.read_arg_inner, 1
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter16, i128 0, i128 %add18
  %n2b20 = load i128, i128* %array_getter19, align 4
  %mul = mul i128 2, %n2b20
  %add21 = add i128 %n2b13, %mul
  call void @fn_intrinsic_add_constraint(i128 %carry, i128 %add21, i1* @constraint.27)
  %modsumfour.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %add21, i128* %modsumfour.carry.write_output_inner, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  %modsumfour.carry.read_output_inner = load i128, i128* %struct_getter25, align 4
  %add28 = add i128 %modsumfour.a.read_input_inner, %modsumfour.b.read_input_inner
  %add30 = add i128 %add28, %modsumfour.c.read_input_inner
  %add32 = add i128 %add30, %modsumfour.d.read_input_inner
  %lshift = shl i128 1, %modsumfour.n.read_arg_inner
  %mul35 = mul i128 %modsumfour.carry.read_output_inner, %lshift
  %sub = sub i128 %add32, %mul35
  call void @fn_intrinsic_add_constraint(i128 %sum, i128 %sub, i1* @constraint.28)
  %modsumfour.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %sub, i128* %modsumfour.sum.write_output_inner, align 4
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  %modsumfour.sum.read_output_inner = load i128, i128* %struct_getter39, align 4
  br label %exit

exit:                                             ; preds = %entry
  %modsumfour.sum.write_output_inner41 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %modsumfour.sum.read_output_inner, i128* %modsumfour.sum.write_output_inner41, align 4
  %modsumfour.carry.write_output_inner43 = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %modsumfour.carry.read_output_inner, i128* %modsumfour.carry.write_output_inner43, align 4
  ret void
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
  %struct_template_circuit_modsumfour = alloca %struct_template_circuit_modsumfour, align 8
  %modsumfour.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour, i32 0, i32 0
  store i128 %0, i128* %modsumfour.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour
}

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %i2 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a4 = load i128, i128* %array_getter, align 4
  %mul = mul i128 %a4, %2
  %array_getter7 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a8 = load i128, i128* %array_getter7, align 4
  %sub = sub i128 %mul, %a8
  %out10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.0
  store i128 %sub, i128* %out10, align 4
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 %i.0
  %a14 = load i128, i128* %array_getter13, align 4
  %array_getter17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 %i.0
  %a18 = load i128, i128* %array_getter17, align 4
  %mul20 = mul i128 %a18, %2
  %add = add i128 %a14, %mul20
  %out23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.0
  store i128 %add, i128* %out23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add25 = add i128 %i.0, 1
  %slt = icmp slt i128 %add25, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x i128]]* %uniform_array
}

define i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %sub = sub i128 %1, 1
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ %sub, %entry ], [ %sub19, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a3 = load i128, i128* %array_getter, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b6 = load i128, i128* %array_getter5, align 4
  %sgt = icmp sgt i128 %a3, %b6
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 1

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter11, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b16 = load i128, i128* %array_getter15, align 4
  %slt = icmp slt i128 %a12, %b16
  br i1 %slt, label %if.true7, label %if.false8

if.true7:                                         ; preds = %if.exit
  ret i128 0

if.false8:                                        ; preds = %if.exit
  br label %if.exit17

if.exit17:                                        ; preds = %if.false8
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit17
  %sub19 = sub i128 %i.0, 1
  %sge = icmp sge i128 %sub19, 0
  br i1 %sge, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 0
}

define [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array4 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add106, %loop.latch ]
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b12 = load i128, i128* %array_getter11, align 4
  %sge = icmp sge i128 %a9, %b12
  br i1 %sge, label %if.true6, label %if.false7

if.false:                                         ; preds = %loop.body
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a46 = load i128, i128* %array_getter45, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b50 = load i128, i128* %array_getter49, align 4
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub53
  %borrow55 = load i128, i128* %array_getter54, align 4
  %add56 = add i128 %b50, %borrow55
  %sge57 = icmp sge i128 %a46, %add56
  br i1 %sge57, label %if.true41, label %if.false42

if.true6:                                         ; preds = %if.true
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a16 = load i128, i128* %array_getter15, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %sub = sub i128 %a16, %b20
  %diff22 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub, i128* %diff22, align 4
  %borrow25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow25, align 4
  br label %if.exit

if.false7:                                        ; preds = %if.true
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b33 = load i128, i128* %array_getter32, align 4
  %sub34 = sub i128 %a29, %b33
  %lshift = shl i128 1, %0
  %add = add i128 %sub34, %lshift
  %diff37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %diff37, align 4
  %borrow40 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow40, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false7, %if.true6
  br label %if.exit104

if.true41:                                        ; preds = %if.false
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a61 = load i128, i128* %array_getter60, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b65 = load i128, i128* %array_getter64, align 4
  %sub66 = sub i128 %a61, %b65
  %sub69 = sub i128 %i.0, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub69
  %borrow71 = load i128, i128* %array_getter70, align 4
  %sub72 = sub i128 %sub66, %borrow71
  %diff75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub72, i128* %diff75, align 4
  %borrow78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 0, i128* %borrow78, align 4
  br label %if.exit103

if.false42:                                       ; preds = %if.false
  %lshift80 = shl i128 1, %0
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a84 = load i128, i128* %array_getter83, align 4
  %add85 = add i128 %lshift80, %a84
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b89 = load i128, i128* %array_getter88, align 4
  %sub90 = sub i128 %add85, %b89
  %sub93 = sub i128 %i.0, 1
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %sub93
  %borrow95 = load i128, i128* %array_getter94, align 4
  %sub96 = sub i128 %sub90, %borrow95
  %diff99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sub96, i128* %diff99, align 4
  %borrow102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array4, i128 0, i128 %i.0
  store i128 1, i128* %borrow102, align 4
  br label %if.exit103

if.exit103:                                       ; preds = %if.false42, %if.true41
  br label %if.exit104

if.exit104:                                       ; preds = %if.exit103, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit104
  %add106 = add i128 %i.0, 1
  %slt = icmp slt i128 %add106, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_modsub(%struct_template_circuit_modsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 0
  %modsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 1
  %modsub.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 2
  %modsub.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %borrow = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %modsub.n.read_arg_inner)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt5 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt5, i128 %modsub.a.read_input_inner, i1* @constraint.29)
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter7 = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %lt8 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter7, i128 0, i128 0
  store i128 %modsub.a.read_input_inner, i128* %lt8, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter11, i128 0, i128 1
  %lt13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt13, i128 %modsub.b.read_input_inner, i1* @constraint.30)
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %lt17 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter16, i128 0, i128 1
  store i128 %modsub.b.read_input_inner, i128* %lt17, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow, i128 %lessthan.out.read_output_outter, i1* @constraint.31)
  %modsub.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %lessthan.out.read_output_outter, i128* %modsub.borrow.write_output_inner, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  %modsub.borrow.read_output_inner = load i128, i128* %struct_getter23, align 4
  %lshift = shl i128 1, %modsub.n.read_arg_inner
  %mul = mul i128 %modsub.borrow.read_output_inner, %lshift
  %add = add i128 %mul, %modsub.a.read_input_inner
  %sub = sub i128 %add, %modsub.b.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint.32)
  %modsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %sub, i128* %modsub.out.write_output_inner, align 4
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  %modsub.out.read_output_inner = load i128, i128* %struct_getter31, align 4
  br label %exit

exit:                                             ; preds = %entry
  %modsub.out.write_output_inner33 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %modsub.out.read_output_inner, i128* %modsub.out.write_output_inner33, align 4
  %modsub.borrow.write_output_inner35 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %modsub.borrow.read_output_inner, i128* %modsub.borrow.write_output_inner35, align 4
  ret void
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
  %struct_template_circuit_modsub = alloca %struct_template_circuit_modsub, align 8
  %modsub.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %struct_template_circuit_modsub, i32 0, i32 0
  store i128 %0, i128* %modsub.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsub* %struct_template_circuit_modsub
}

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %X3 = call i128 @fn_intrinsic_inline_init()
  %carry4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %borrow6 = call i128 @fn_intrinsic_inline_init()
  %MAXL7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %temp12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch20, %loop.exit
  %i.1 = phi i128 [ %1, %loop.exit ], [ %add22, %loop.latch20 ]
  %temp19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.1
  store i128 0, i128* %temp19, align 4
  br label %loop.latch20

loop.latch20:                                     ; preds = %loop.body16
  %add22 = add i128 %i.1, 1
  %sle = icmp sle i128 %add22, 50
  br i1 %sle, label %loop.body16, label %loop.exit25

loop.exit25:                                      ; preds = %loop.latch20
  %lshift = shl i128 1, %0
  br label %loop.body26

loop.body26:                                      ; preds = %loop.latch83, %loop.exit25
  %i.2 = phi i128 [ 0, %loop.exit25 ], [ %add85, %loop.latch83 ]
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp30 = load i128, i128* %array_getter29, align 4
  %sge = icmp sge i128 %temp30, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body26
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp34 = load i128, i128* %array_getter33, align 4
  %mod = srem i128 %temp34, %lshift
  %out38 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %mod, i128* %out38, align 4
  %add41 = add i128 %i.2, 1
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add41
  %temp43 = load i128, i128* %array_getter42, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp47 = load i128, i128* %array_getter46, align 4
  %sdiv = sdiv i128 %temp47, %lshift
  %add49 = add i128 %temp43, %sdiv
  %add52 = add i128 %i.2, 1
  %temp53 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add52
  store i128 %add49, i128* %temp53, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body26
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp57 = load i128, i128* %array_getter56, align 4
  %neg = sub i128 0, %temp57
  %add59 = add i128 %neg, %lshift
  %sub = sub i128 %add59, 1
  %sdiv61 = sdiv i128 %sub, %lshift
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.2
  %temp65 = load i128, i128* %array_getter64, align 4
  %mul = mul i128 %sdiv61, %lshift
  %add68 = add i128 %temp65, %mul
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  store i128 %add68, i128* %out71, align 4
  %add74 = add i128 %i.2, 1
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add74
  %temp76 = load i128, i128* %array_getter75, align 4
  %sub78 = sub i128 %temp76, %sdiv61
  %add81 = add i128 %i.2, 1
  %temp82 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add81
  store i128 %sub78, i128* %temp82, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch83

loop.latch83:                                     ; preds = %if.exit
  %add85 = add i128 %i.2, 1
  %slt88 = icmp slt i128 %add85, 50
  br i1 %slt88, label %loop.body26, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 50
  %temp95 = load i128, i128* %array_getter94, align 4
  %sge96 = icmp sge i128 %temp95, 0
  br i1 %sge96, label %if.true90, label %if.false91

if.true90:                                        ; preds = %loop.exit89
  %out99 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 0, i128* %out99, align 4
  ret [256 x i128]* %uniform_array

if.false91:                                       ; preds = %loop.exit89
  br label %if.exit101

if.exit101:                                       ; preds = %if.false91
  br label %loop.body102

loop.body102:                                     ; preds = %loop.latch110, %if.exit101
  %i.3 = phi i128 [ 0, %if.exit101 ], [ %add112, %loop.latch110 ]
  %array_getter105 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.3
  %a106 = load i128, i128* %array_getter105, align 4
  %temp109 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.3
  store i128 %a106, i128* %temp109, align 4
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.body102
  %add112 = add i128 %i.3, 1
  %slt115 = icmp slt i128 %add112, %1
  br i1 %slt115, label %loop.body102, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch110
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit116
  %i.4 = phi i128 [ %1, %loop.exit116 ], [ %add124, %loop.latch122 ]
  %temp121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.4
  store i128 0, i128* %temp121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %add124 = add i128 %i.4, 1
  %sle127 = icmp sle i128 %add124, 50
  br i1 %sle127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  br label %loop.body129

loop.body129:                                     ; preds = %loop.latch198, %loop.exit128
  %i.5 = phi i128 [ 0, %loop.exit128 ], [ %add200, %loop.latch198 ]
  %array_getter134 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp135 = load i128, i128* %array_getter134, align 4
  %slt136 = icmp slt i128 %temp135, 0
  br i1 %slt136, label %if.true130, label %if.false131

if.true130:                                       ; preds = %loop.body129
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp140 = load i128, i128* %array_getter139, align 4
  %neg141 = sub i128 0, %temp140
  %sdiv143 = sdiv i128 %neg141, %lshift
  %array_getter146 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp147 = load i128, i128* %array_getter146, align 4
  %mul150 = mul i128 %sdiv143, %lshift
  %add151 = add i128 %temp147, %mul150
  %out154 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %add151, i128* %out154, align 4
  %add157 = add i128 %i.5, 1
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add157
  %temp159 = load i128, i128* %array_getter158, align 4
  %sub161 = sub i128 %temp159, %sdiv143
  %add164 = add i128 %i.5, 1
  %temp165 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add164
  store i128 %sub161, i128* %temp165, align 4
  br label %if.exit197

if.false131:                                      ; preds = %loop.body129
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp169 = load i128, i128* %array_getter168, align 4
  %add171 = add i128 %temp169, %lshift
  %sub172 = sub i128 %add171, 1
  %sdiv174 = sdiv i128 %sub172, %lshift
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.5
  %temp178 = load i128, i128* %array_getter177, align 4
  %mul181 = mul i128 %sdiv174, %lshift
  %sub182 = sub i128 %temp178, %mul181
  %out185 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %sub182, i128* %out185, align 4
  %add188 = add i128 %i.5, 1
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add188
  %temp190 = load i128, i128* %array_getter189, align 4
  %add192 = add i128 %temp190, %sdiv174
  %add195 = add i128 %i.5, 1
  %temp196 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %add195
  store i128 %add192, i128* %temp196, align 4
  br label %if.exit197

if.exit197:                                       ; preds = %if.false131, %if.true130
  br label %loop.latch198

loop.latch198:                                    ; preds = %if.exit197
  %add200 = add i128 %i.5, 1
  %slt203 = icmp slt i128 %add200, 50
  br i1 %slt203, label %loop.body129, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch198
  %out207 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 50
  store i128 1, i128* %out207, align 4
  ret [256 x i128]* %uniform_array
}

define i128 @log_ceil(i128 %0) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %n_temp2 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %n_temp.0 = phi i128 [ %0, %entry ], [ %sdiv, %loop.latch ]
  %eq = icmp eq i128 %n_temp.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 %i.0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  %sdiv = sdiv i128 %n_temp.0, 2
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 254
}

define void @fn_template_init_bits2num(%struct_template_circuit_bits2num* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 0
  %bits2num.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 1
  %bits2num.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %lc13 = call i128 @fn_intrinsic_inline_init()
  %e24 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add13, %loop.latch ]
  %lc1.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %e2.0 = phi i128 [ 1, %entry ], [ %add11, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_inner, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %add, i1* @constraint.33)
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

define void @fn_template_init_modsum(%struct_template_circuit_modsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 0
  %modsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 1
  %modsum.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 2
  %modsum.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %sum = call i128 @fn_intrinsic_inline_init()
  %carry = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %modsum.n.read_arg_inner, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %add3 = add i128 %modsum.a.read_input_inner, %modsum.b.read_input_inner
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %add3, i1* @constraint.34)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add3, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsum.n.read_arg_inner
  %n2b9 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry, i128 %n2b9, i1* @constraint.35)
  %modsum.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %n2b9, i128* %modsum.carry.write_output_inner, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  %modsum.carry.read_output_inner = load i128, i128* %struct_getter13, align 4
  %add16 = add i128 %modsum.a.read_input_inner, %modsum.b.read_input_inner
  %lshift = shl i128 1, %modsum.n.read_arg_inner
  %mul = mul i128 %modsum.carry.read_output_inner, %lshift
  %sub = sub i128 %add16, %mul
  call void @fn_intrinsic_add_constraint(i128 %sum, i128 %sub, i1* @constraint.36)
  %modsum.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %sub, i128* %modsum.sum.write_output_inner, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  %modsum.sum.read_output_inner = load i128, i128* %struct_getter22, align 4
  br label %exit

exit:                                             ; preds = %entry
  %modsum.sum.write_output_inner24 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %modsum.sum.read_output_inner, i128* %modsum.sum.write_output_inner24, align 4
  %modsum.carry.write_output_inner26 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %modsum.carry.read_output_inner, i128* %modsum.carry.write_output_inner26, align 4
  ret void
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
  %struct_template_circuit_modsum = alloca %struct_template_circuit_modsum, align 8
  %modsum.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %struct_template_circuit_modsum, i32 0, i32 0
  store i128 %0, i128* %modsum.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsum* %struct_template_circuit_modsum
}

define void @fn_template_init_modsumthree(%struct_template_circuit_modsumthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 0
  %modsumthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 1
  %modsumthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 2
  %modsumthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 3
  %modsumthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %carry = call i128 @fn_intrinsic_inline_init()
  %sum = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %modsumthree.n.read_arg_inner, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  %add4 = add i128 %modsumthree.a.read_input_inner, %modsumthree.b.read_input_inner
  %add5 = add i128 %add4, %modsumthree.c.read_input_inner
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %add5, i1* @constraint.37)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %add5, i128* %num2bits.in.write_input_outter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %modsumthree.n.read_arg_inner
  %n2b11 = load i128, i128* %array_getter, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %add16 = add i128 %modsumthree.n.read_arg_inner, 1
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter14, i128 0, i128 %add16
  %n2b18 = load i128, i128* %array_getter17, align 4
  %mul = mul i128 2, %n2b18
  %add19 = add i128 %n2b11, %mul
  call void @fn_intrinsic_add_constraint(i128 %carry, i128 %add19, i1* @constraint.38)
  %modsumthree.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %add19, i128* %modsumthree.carry.write_output_inner, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  %modsumthree.carry.read_output_inner = load i128, i128* %struct_getter23, align 4
  %add26 = add i128 %modsumthree.a.read_input_inner, %modsumthree.b.read_input_inner
  %add28 = add i128 %add26, %modsumthree.c.read_input_inner
  %lshift = shl i128 1, %modsumthree.n.read_arg_inner
  %mul31 = mul i128 %modsumthree.carry.read_output_inner, %lshift
  %sub = sub i128 %add28, %mul31
  call void @fn_intrinsic_add_constraint(i128 %sum, i128 %sub, i1* @constraint.39)
  %modsumthree.sum.write_output_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %sub, i128* %modsumthree.sum.write_output_inner, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  %modsumthree.sum.read_output_inner = load i128, i128* %struct_getter35, align 4
  br label %exit

exit:                                             ; preds = %entry
  %modsumthree.sum.write_output_inner37 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %modsumthree.sum.read_output_inner, i128* %modsumthree.sum.write_output_inner37, align 4
  %modsumthree.carry.write_output_inner39 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %modsumthree.carry.read_output_inner, i128* %modsumthree.carry.write_output_inner39, align 4
  ret void
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
  %struct_template_circuit_modsumthree = alloca %struct_template_circuit_modsumthree, align 8
  %modsumthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree, i32 0, i32 0
  store i128 %0, i128* %modsumthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree
}

define void @fn_template_init_bigmultshortlong(%struct_template_circuit_bigmultshortlong* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 0
  %bigmultshortlong.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 1
  %bigmultshortlong.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 2
  %bigmultshortlong.m_out.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 3
  %bigmultshortlong.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 4
  %bigmultshortlong.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %j5 = call i128 @fn_intrinsic_inline_init()
  %k27 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %i9 = call i128 @fn_intrinsic_inline_init()
  %a_idx13 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch73, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add75, %loop.latch73 ]
  %prod_val15 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val15, align 4
  %slt = icmp slt i128 %i.0, %bigmultshortlong.k.read_arg_inner
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body17

if.false:                                         ; preds = %loop.body
  %sub37 = sub i128 %i.0, %bigmultshortlong.k.read_arg_inner
  %add38 = add i128 %sub37, 1
  br label %loop.body39

loop.body17:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add32, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val20 = load i128, i128* %array_getter, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_inner, i128 0, i128 %a_idx.0
  %a23 = load i128, i128* %array_getter22, align 4
  %sub = sub i128 %i.0, %a_idx.0
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_inner, i128 0, i128 %sub
  %b27 = load i128, i128* %array_getter26, align 4
  %mul = mul i128 %a23, %b27
  %add = add i128 %prod_val20, %mul
  %prod_val30 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body17
  %add32 = add i128 %a_idx.0, 1
  %sle = icmp sle i128 %add32, %i.0
  br i1 %sle, label %loop.body17, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body39:                                      ; preds = %loop.latch59, %if.false
  %a_idx.1 = phi i128 [ %add38, %if.false ], [ %add61, %loop.latch59 ]
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val43 = load i128, i128* %array_getter42, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_inner, i128 0, i128 %a_idx.1
  %a47 = load i128, i128* %array_getter46, align 4
  %sub51 = sub i128 %i.0, %a_idx.1
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_inner, i128 0, i128 %sub51
  %b53 = load i128, i128* %array_getter52, align 4
  %mul54 = mul i128 %a47, %b53
  %add55 = add i128 %prod_val43, %mul54
  %prod_val58 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add55, i128* %prod_val58, align 4
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body39
  %add61 = add i128 %a_idx.1, 1
  %slt64 = icmp slt i128 %add61, %bigmultshortlong.k.read_arg_inner
  br i1 %slt64, label %loop.body39, label %loop.exit65

loop.exit65:                                      ; preds = %loop.latch59
  br label %if.exit

if.exit:                                          ; preds = %loop.exit65, %loop.exit
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val69 = load i128, i128* %array_getter68, align 4
  %out72 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %prod_val69, i128* %out72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %if.exit
  %add75 = add i128 %i.0, 1
  %mul78 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub79 = sub i128 %mul78, 1
  %slt80 = icmp slt i128 %add75, %sub79
  br i1 %slt80, label %loop.body, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch73
  %mul83 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub84 = sub i128 %mul83, 1
  %uniform_array85 = alloca [256 x [256 x i128]], align 8
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch102, %loop.exit81
  %i.1 = phi i128 [ 0, %loop.exit81 ], [ %add104, %loop.latch102 ]
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch95, %loop.body86
  %j.0 = phi i128 [ 0, %loop.body86 ], [ %add97, %loop.latch95 ]
  %pow90 = call i128 @fn_intrinsic_inline_powi(i128 %i.1, i128 %j.0)
  %pow94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %i.1, i128 %j.0
  store i128 %pow90, i128* %pow94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body87
  %add97 = add i128 %j.0, 1
  %slt100 = icmp slt i128 %add97, %sub84
  br i1 %slt100, label %loop.body87, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch95
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.exit101
  %add104 = add i128 %i.1, 1
  %slt107 = icmp slt i128 %add104, %sub84
  br i1 %slt107, label %loop.body86, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch102
  %uniform_array109 = alloca [256 x i128], align 8
  %uniform_array110 = alloca [256 x i128], align 8
  %uniform_array111 = alloca [256 x i128], align 8
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch194, %loop.exit108
  %i.2 = phi i128 [ 0, %loop.exit108 ], [ %add196, %loop.latch194 ]
  %out_poly115 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array111, i128 0, i128 %i.2
  store i128 0, i128* %out_poly115, align 4
  %a_poly118 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array109, i128 0, i128 %i.2
  store i128 0, i128* %a_poly118, align 4
  %b_poly121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array110, i128 0, i128 %i.2
  store i128 0, i128* %b_poly121, align 4
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch141, %loop.body112
  %j.1 = phi i128 [ 0, %loop.body112 ], [ %add143, %loop.latch141 ]
  %array_getter125 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array111, i128 0, i128 %i.2
  %out_poly126 = load i128, i128* %array_getter125, align 4
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %j.1
  %out130 = load i128, i128* %array_getter129, align 4
  %array_getter134 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %i.2, i128 %j.1
  %pow135 = load i128, i128* %array_getter134, align 4
  %mul136 = mul i128 %out130, %pow135
  %add137 = add i128 %out_poly126, %mul136
  %out_poly140 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array111, i128 0, i128 %i.2
  store i128 %add137, i128* %out_poly140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body122
  %add143 = add i128 %j.1, 1
  %mul146 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub147 = sub i128 %mul146, 1
  %slt148 = icmp slt i128 %add143, %sub147
  br i1 %slt148, label %loop.body122, label %loop.exit149

loop.exit149:                                     ; preds = %loop.latch141
  br label %loop.body150

loop.body150:                                     ; preds = %loop.latch187, %loop.exit149
  %j.2 = phi i128 [ 0, %loop.exit149 ], [ %add189, %loop.latch187 ]
  %array_getter153 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array109, i128 0, i128 %i.2
  %a_poly154 = load i128, i128* %array_getter153, align 4
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_inner, i128 0, i128 %j.2
  %a158 = load i128, i128* %array_getter157, align 4
  %array_getter162 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %i.2, i128 %j.2
  %pow163 = load i128, i128* %array_getter162, align 4
  %mul164 = mul i128 %a158, %pow163
  %add165 = add i128 %a_poly154, %mul164
  %a_poly168 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array109, i128 0, i128 %i.2
  store i128 %add165, i128* %a_poly168, align 4
  %array_getter171 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array110, i128 0, i128 %i.2
  %b_poly172 = load i128, i128* %array_getter171, align 4
  %array_getter175 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_inner, i128 0, i128 %j.2
  %b176 = load i128, i128* %array_getter175, align 4
  %array_getter180 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %i.2, i128 %j.2
  %pow181 = load i128, i128* %array_getter180, align 4
  %mul182 = mul i128 %b176, %pow181
  %add183 = add i128 %b_poly172, %mul182
  %b_poly186 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array110, i128 0, i128 %i.2
  store i128 %add183, i128* %b_poly186, align 4
  br label %loop.latch187

loop.latch187:                                    ; preds = %loop.body150
  %add189 = add i128 %j.2, 1
  %slt192 = icmp slt i128 %add189, %bigmultshortlong.k.read_arg_inner
  br i1 %slt192, label %loop.body150, label %loop.exit193

loop.exit193:                                     ; preds = %loop.latch187
  br label %loop.latch194

loop.latch194:                                    ; preds = %loop.exit193
  %add196 = add i128 %i.2, 1
  %mul199 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub200 = sub i128 %mul199, 1
  %slt201 = icmp slt i128 %add196, %sub200
  br i1 %slt201, label %loop.body112, label %loop.exit202

loop.exit202:                                     ; preds = %loop.latch194
  br label %loop.body203

loop.body203:                                     ; preds = %loop.latch217, %loop.exit202
  %i.3 = phi i128 [ 0, %loop.exit202 ], [ %add219, %loop.latch217 ]
  %array_getter206 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array111, i128 0, i128 %i.3
  %out_poly207 = load i128, i128* %array_getter206, align 4
  %array_getter210 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array109, i128 0, i128 %i.3
  %a_poly211 = load i128, i128* %array_getter210, align 4
  %array_getter214 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array110, i128 0, i128 %i.3
  %b_poly215 = load i128, i128* %array_getter214, align 4
  %mul216 = mul i128 %a_poly211, %b_poly215
  call void @fn_intrinsic_add_constraint(i128 %out_poly207, i128 %mul216, i1* @constraint.40)
  br label %loop.latch217

loop.latch217:                                    ; preds = %loop.body203
  %add219 = add i128 %i.3, 1
  %mul222 = mul i128 2, %bigmultshortlong.k.read_arg_inner
  %sub223 = sub i128 %mul222, 1
  %slt224 = icmp slt i128 %add219, %sub223
  br i1 %slt224, label %loop.body203, label %loop.exit225

loop.exit225:                                     ; preds = %loop.latch217
  br label %exit

exit:                                             ; preds = %loop.exit225
  %bigmultshortlong.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlong.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong = alloca %struct_template_circuit_bigmultshortlong, align 8
  %bigmultshortlong.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong.n.write_arg_inner, align 4
  %bigmultshortlong.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong.k.write_arg_inner, align 4
  %bigmultshortlong.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong* %struct_template_circuit_bigmultshortlong
}

define i128 @is_equal_Fp2(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %idx2 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch13, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add15, %loop.latch13 ]
  br label %loop.body3

loop.body3:                                       ; preds = %loop.latch, %loop.body
  %idx.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0, i128 %idx.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0, i128 %idx.0
  %b10 = load i128, i128* %array_getter9, align 4
  %ne = icmp ne i128 %a6, %b10
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body3
  ret i128 0

if.false:                                         ; preds = %loop.body3
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body3, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.exit
  %add15 = add i128 %i.0, 1
  %slt17 = icmp slt i128 %add15, 2
  br i1 %slt17, label %loop.body, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  ret i128 1
}

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %aliascheck.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_inner, i128 0, i128 %i.0
  %in3 = load i128, i128* %array_getter, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter, i128 0, i128 %i.0
  %compConstant8 = load i128, i128* %array_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant8, i128 %in3, i1* @constraint.41)
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 1
  %compconstant.in.read_input_outter10 = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %compConstant12 = getelementptr inbounds [256 x i128], [256 x i128]* %compconstant.in.read_input_outter10, i128 0, i128 %i.0
  store i128 %in3, i128* %compConstant12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %call, i32 0, i32 4
  %compconstant.out.read_output_outter = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %compconstant.out.read_output_outter, i128 0, i1* @constraint.42)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
}

define void @fn_template_init_bigmultshortlong2d(%struct_template_circuit_bigmultshortlong2d* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 0
  %bigmultshortlong2d.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 1
  %bigmultshortlong2d.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 2
  %bigmultshortlong2d.l.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 3
  %bigmultshortlong2d.a.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 4
  %bigmultshortlong2d.b.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter4, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x [256 x i128]]*
  %j7 = call i128 @fn_intrinsic_inline_init()
  %i18 = call i128 @fn_intrinsic_inline_init()
  %deg29 = call i128 @fn_intrinsic_inline_init()
  %j110 = call i128 @fn_intrinsic_inline_init()
  %j212 = call i128 @fn_intrinsic_inline_init()
  %deg113 = call i128 @fn_intrinsic_inline_init()
  %i14 = call i128 @fn_intrinsic_inline_init()
  %k215 = call i128 @fn_intrinsic_inline_init()
  %i216 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch25, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add27, %loop.latch25 ]
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.0, i128 %j.0
  store i128 0, i128* %prod_val22, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body19
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body19, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch25

loop.latch25:                                     ; preds = %loop.exit
  %add27 = add i128 %i.0, 1
  %mul29 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub30 = sub i128 %mul29, 1
  %slt31 = icmp slt i128 %add27, %sub30
  br i1 %slt31, label %loop.body, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch25
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch82, %loop.exit32
  %i1.0 = phi i128 [ 0, %loop.exit32 ], [ %add84, %loop.latch82 ]
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch75, %loop.body33
  %i2.0 = phi i128 [ 0, %loop.body33 ], [ %add77, %loop.latch75 ]
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch68, %loop.body34
  %j1.0 = phi i128 [ 0, %loop.body34 ], [ %add70, %loop.latch68 ]
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch61, %loop.body35
  %j2.0 = phi i128 [ 0, %loop.body35 ], [ %add63, %loop.latch61 ]
  %add39 = add i128 %i1.0, %i2.0
  %add42 = add i128 %j1.0, %j2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add39, i128 %add42
  %prod_val46 = load i128, i128* %array_getter, align 4
  %array_getter49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2d.a.read_input_inner, i128 0, i128 %i1.0, i128 %j1.0
  %a50 = load i128, i128* %array_getter49, align 4
  %array_getter53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2d.b.read_input_inner, i128 0, i128 %i2.0, i128 %j2.0
  %b54 = load i128, i128* %array_getter53, align 4
  %mul55 = mul i128 %a50, %b54
  %add56 = add i128 %prod_val46, %mul55
  %prod_val60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add39, i128 %add42
  store i128 %add56, i128* %prod_val60, align 4
  br label %loop.latch61

loop.latch61:                                     ; preds = %loop.body36
  %add63 = add i128 %j2.0, 1
  %slt66 = icmp slt i128 %add63, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt66, label %loop.body36, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.exit67
  %add70 = add i128 %j1.0, 1
  %slt73 = icmp slt i128 %add70, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt73, label %loop.body35, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch68
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.exit74
  %add77 = add i128 %i2.0, 1
  %slt80 = icmp slt i128 %add77, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt80, label %loop.body34, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch75
  br label %loop.latch82

loop.latch82:                                     ; preds = %loop.exit81
  %add84 = add i128 %i1.0, 1
  %slt87 = icmp slt i128 %add84, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt87, label %loop.body33, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch82
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch109, %loop.exit88
  %i.1 = phi i128 [ 0, %loop.exit88 ], [ %add111, %loop.latch109 ]
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch100, %loop.body89
  %j.1 = phi i128 [ 0, %loop.body89 ], [ %add102, %loop.latch100 ]
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.1, i128 %j.1
  %prod_val95 = load i128, i128* %array_getter94, align 4
  %out99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out, i128 0, i128 %i.1, i128 %j.1
  store i128 %prod_val95, i128* %out99, align 4
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body90
  %add102 = add i128 %j.1, 1
  %mul105 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub106 = sub i128 %mul105, 1
  %slt107 = icmp slt i128 %add102, %sub106
  br i1 %slt107, label %loop.body90, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch100
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.exit108
  %add111 = add i128 %i.1, 1
  %mul114 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub115 = sub i128 %mul114, 1
  %slt116 = icmp slt i128 %add111, %sub115
  br i1 %slt116, label %loop.body89, label %loop.exit117

loop.exit117:                                     ; preds = %loop.latch109
  %mul119 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub120 = sub i128 %mul119, 1
  %mul122 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub123 = sub i128 %mul122, 1
  %sgt = icmp sgt i128 %sub120, %sub123
  %mul125 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub126 = sub i128 %mul125, 1
  %mul128 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub129 = sub i128 %mul128, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub126, i128 %sub129)
  %uniform_array130 = alloca [256 x [256 x i128]], align 8
  br label %loop.body131

loop.body131:                                     ; preds = %loop.latch148, %loop.exit117
  %i.2 = phi i128 [ 0, %loop.exit117 ], [ %add150, %loop.latch148 ]
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch141, %loop.body131
  %j.2 = phi i128 [ 0, %loop.body131 ], [ %add143, %loop.latch141 ]
  %pow135 = call i128 @fn_intrinsic_inline_powi(i128 %i.2, i128 %j.2)
  %pow140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %i.2, i128 %j.2
  store i128 %pow135, i128* %pow140, align 4
  br label %loop.latch141

loop.latch141:                                    ; preds = %loop.body132
  %add143 = add i128 %j.2, 1
  %slt146 = icmp slt i128 %add143, %inline_switch
  br i1 %slt146, label %loop.body132, label %loop.exit147

loop.exit147:                                     ; preds = %loop.latch141
  br label %loop.latch148

loop.latch148:                                    ; preds = %loop.exit147
  %add150 = add i128 %i.2, 1
  %slt153 = icmp slt i128 %add150, %inline_switch
  br i1 %slt153, label %loop.body131, label %loop.exit154

loop.exit154:                                     ; preds = %loop.latch148
  %uniform_array155 = alloca [256 x [256 x i128]], align 8
  %uniform_array156 = alloca [256 x [256 x i128]], align 8
  %uniform_array157 = alloca [256 x [256 x i128]], align 8
  br label %loop.body158

loop.body158:                                     ; preds = %loop.latch300, %loop.exit154
  %i.3 = phi i128 [ 0, %loop.exit154 ], [ %add302, %loop.latch300 ]
  br label %loop.body159

loop.body159:                                     ; preds = %loop.latch291, %loop.body158
  %j.3 = phi i128 [ 0, %loop.body158 ], [ %add293, %loop.latch291 ]
  %a_poly163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array155, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %a_poly163, align 4
  %b_poly167 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array156, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %b_poly167, align 4
  %out_poly171 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array157, i128 0, i128 %i.3, i128 %j.3
  store i128 0, i128* %out_poly171, align 4
  br label %loop.body172

loop.body172:                                     ; preds = %loop.latch236, %loop.body159
  %deg1.0 = phi i128 [ 0, %loop.body159 ], [ %add238, %loop.latch236 ]
  br label %loop.body173

loop.body173:                                     ; preds = %loop.latch229, %loop.body172
  %deg2.0 = phi i128 [ 0, %loop.body172 ], [ %add231, %loop.latch229 ]
  %array_getter177 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array155, i128 0, i128 %i.3, i128 %j.3
  %a_poly178 = load i128, i128* %array_getter177, align 4
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2d.a.read_input_inner, i128 0, i128 %deg1.0, i128 %deg2.0
  %a183 = load i128, i128* %array_getter182, align 4
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %i.3, i128 %deg1.0
  %pow189 = load i128, i128* %array_getter188, align 4
  %mul190 = mul i128 %a183, %pow189
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %j.3, i128 %deg2.0
  %pow195 = load i128, i128* %array_getter194, align 4
  %mul196 = mul i128 %mul190, %pow195
  %add197 = add i128 %a_poly178, %mul196
  %a_poly201 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array155, i128 0, i128 %i.3, i128 %j.3
  store i128 %add197, i128* %a_poly201, align 4
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array156, i128 0, i128 %i.3, i128 %j.3
  %b_poly206 = load i128, i128* %array_getter205, align 4
  %array_getter210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %bigmultshortlong2d.b.read_input_inner, i128 0, i128 %deg1.0, i128 %deg2.0
  %b211 = load i128, i128* %array_getter210, align 4
  %array_getter215 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %i.3, i128 %deg1.0
  %pow216 = load i128, i128* %array_getter215, align 4
  %mul217 = mul i128 %b211, %pow216
  %array_getter221 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %j.3, i128 %deg2.0
  %pow222 = load i128, i128* %array_getter221, align 4
  %mul223 = mul i128 %mul217, %pow222
  %add224 = add i128 %b_poly206, %mul223
  %b_poly228 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array156, i128 0, i128 %i.3, i128 %j.3
  store i128 %add224, i128* %b_poly228, align 4
  br label %loop.latch229

loop.latch229:                                    ; preds = %loop.body173
  %add231 = add i128 %deg2.0, 1
  %slt234 = icmp slt i128 %add231, %bigmultshortlong2d.k.read_arg_inner
  br i1 %slt234, label %loop.body173, label %loop.exit235

loop.exit235:                                     ; preds = %loop.latch229
  br label %loop.latch236

loop.latch236:                                    ; preds = %loop.exit235
  %add238 = add i128 %deg1.0, 1
  %slt241 = icmp slt i128 %add238, %bigmultshortlong2d.l.read_arg_inner
  br i1 %slt241, label %loop.body172, label %loop.exit242

loop.exit242:                                     ; preds = %loop.latch236
  br label %loop.body243

loop.body243:                                     ; preds = %loop.latch282, %loop.exit242
  %deg1.1 = phi i128 [ 0, %loop.exit242 ], [ %add284, %loop.latch282 ]
  br label %loop.body244

loop.body244:                                     ; preds = %loop.latch273, %loop.body243
  %deg2.1 = phi i128 [ 0, %loop.body243 ], [ %add275, %loop.latch273 ]
  %array_getter248 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array157, i128 0, i128 %i.3, i128 %j.3
  %out_poly249 = load i128, i128* %array_getter248, align 4
  %array_getter253 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out, i128 0, i128 %deg1.1, i128 %deg2.1
  %out254 = load i128, i128* %array_getter253, align 4
  %array_getter258 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %i.3, i128 %deg1.1
  %pow259 = load i128, i128* %array_getter258, align 4
  %mul260 = mul i128 %out254, %pow259
  %array_getter265 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array130, i128 0, i128 %j.3, i128 %deg2.1
  %pow266 = load i128, i128* %array_getter265, align 4
  %mul267 = mul i128 %mul260, %pow266
  %add268 = add i128 %out_poly249, %mul267
  %out_poly272 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array157, i128 0, i128 %i.3, i128 %j.3
  store i128 %add268, i128* %out_poly272, align 4
  br label %loop.latch273

loop.latch273:                                    ; preds = %loop.body244
  %add275 = add i128 %deg2.1, 1
  %mul278 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub279 = sub i128 %mul278, 1
  %slt280 = icmp slt i128 %add275, %sub279
  br i1 %slt280, label %loop.body244, label %loop.exit281

loop.exit281:                                     ; preds = %loop.latch273
  br label %loop.latch282

loop.latch282:                                    ; preds = %loop.exit281
  %add284 = add i128 %deg1.1, 1
  %mul287 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub288 = sub i128 %mul287, 1
  %slt289 = icmp slt i128 %add284, %sub288
  br i1 %slt289, label %loop.body243, label %loop.exit290

loop.exit290:                                     ; preds = %loop.latch282
  br label %loop.latch291

loop.latch291:                                    ; preds = %loop.exit290
  %add293 = add i128 %j.3, 1
  %mul296 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub297 = sub i128 %mul296, 1
  %slt298 = icmp slt i128 %add293, %sub297
  br i1 %slt298, label %loop.body159, label %loop.exit299

loop.exit299:                                     ; preds = %loop.latch291
  br label %loop.latch300

loop.latch300:                                    ; preds = %loop.exit299
  %add302 = add i128 %i.3, 1
  %mul305 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub306 = sub i128 %mul305, 1
  %slt307 = icmp slt i128 %add302, %sub306
  br i1 %slt307, label %loop.body158, label %loop.exit308

loop.exit308:                                     ; preds = %loop.latch300
  br label %loop.body309

loop.body309:                                     ; preds = %loop.latch336, %loop.exit308
  %i.4 = phi i128 [ 0, %loop.exit308 ], [ %add338, %loop.latch336 ]
  br label %loop.body310

loop.body310:                                     ; preds = %loop.latch327, %loop.body309
  %j.4 = phi i128 [ 0, %loop.body309 ], [ %add329, %loop.latch327 ]
  %array_getter314 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array157, i128 0, i128 %i.4, i128 %j.4
  %out_poly315 = load i128, i128* %array_getter314, align 4
  %array_getter319 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array155, i128 0, i128 %i.4, i128 %j.4
  %a_poly320 = load i128, i128* %array_getter319, align 4
  %array_getter324 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array156, i128 0, i128 %i.4, i128 %j.4
  %b_poly325 = load i128, i128* %array_getter324, align 4
  %mul326 = mul i128 %a_poly320, %b_poly325
  call void @fn_intrinsic_add_constraint(i128 %out_poly315, i128 %mul326, i1* @constraint.43)
  br label %loop.latch327

loop.latch327:                                    ; preds = %loop.body310
  %add329 = add i128 %j.4, 1
  %mul332 = mul i128 2, %bigmultshortlong2d.k.read_arg_inner
  %sub333 = sub i128 %mul332, 1
  %slt334 = icmp slt i128 %add329, %sub333
  br i1 %slt334, label %loop.body310, label %loop.exit335

loop.exit335:                                     ; preds = %loop.latch327
  br label %loop.latch336

loop.latch336:                                    ; preds = %loop.exit335
  %add338 = add i128 %i.4, 1
  %mul341 = mul i128 2, %bigmultshortlong2d.l.read_arg_inner
  %sub342 = sub i128 %mul341, 1
  %slt343 = icmp slt i128 %add338, %sub342
  br i1 %slt343, label %loop.body309, label %loop.exit344

loop.exit344:                                     ; preds = %loop.latch336
  br label %exit

exit:                                             ; preds = %loop.exit344
  %bigmultshortlong2d.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 5
  store [256 x [256 x i128]]* %out, [256 x [256 x i128]]** %bigmultshortlong2d.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlong2d* @fn_template_build_bigmultshortlong2d(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmultshortlong2d = alloca %struct_template_circuit_bigmultshortlong2d, align 8
  %bigmultshortlong2d.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlong2d.n.write_arg_inner, align 4
  %bigmultshortlong2d.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlong2d.k.write_arg_inner, align 4
  %bigmultshortlong2d.l.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlong2d.l.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlong2d* %struct_template_circuit_bigmultshortlong2d
}

define i128 @nbits(i128 %0) {
entry:
  %r1 = call i128 @fn_intrinsic_inline_init()
  %n2 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %r.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %n.0 = phi i128 [ 1, %entry ], [ %mul, %loop.latch ]
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

define i128 @min(i128 %0, i128 %1) {
entry:
  %slt = icmp slt i128 %0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define void @fn_template_init_num2bitsneg(%struct_template_circuit_num2bitsneg* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 0
  %num2bitsneg.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 1
  %num2bitsneg.in.read_input_inner = load i128, i128* %struct_getter1, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %lc12 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %neg4 = call i128 @fn_intrinsic_inline_init()
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
  %out9 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %and, i128* %out9, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out16 = load i128, i128* %array_getter15, align 4
  %sub17 = sub i128 %out16, 1
  %mul = mul i128 %out12, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.44)
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
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
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %num2bitsneg.in.read_input_inner, i1* @constraint.45)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %num2bitsneg.in.read_input_inner, i128* %iszero.in.write_input_outter, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter36, align 4
  %pow38 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %mul39 = mul i128 %iszero.out.read_output_outter, %pow38
  %add40 = add i128 %add, %mul39
  %pow42 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %num2bitsneg.n.read_arg_inner)
  %sub44 = sub i128 %pow42, %num2bitsneg.in.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %add40, i128 %sub44, i1* @constraint.46)
  br label %exit

exit:                                             ; preds = %loop.exit
  %num2bitsneg.out.write_output_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [256 x i128]* %out, [256 x i128]** %num2bitsneg.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %num2bitsneg.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %num2bitsneg.n.write_arg_inner, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
}

define void @fn_template_init_binsum(%struct_template_circuit_binsum* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 0
  %binsum.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 1
  %binsum.ops.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 2
  %binsum.in.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter2, align 8
  %e23 = call i128 @fn_intrinsic_inline_init()
  %lout4 = call i128 @fn_intrinsic_inline_init()
  %nout5 = call i128 @fn_intrinsic_inline_init()
  %lin6 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %j7 = call i128 @fn_intrinsic_inline_init()
  %k8 = call i128 @fn_intrinsic_inline_init()
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %binsum.n.read_arg_inner)
  %sub = sub i128 %pow, 1
  %mul = mul i128 %sub, %binsum.ops.read_arg_inner
  %call = call i128 @nbits(i128 %mul)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch23, %entry
  %e2.0 = phi i128 [ 1, %entry ], [ %add22, %loop.latch23 ]
  %lin.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch23 ]
  %k.0 = phi i128 [ 0, %entry ], [ %add25, %loop.latch23 ]
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch, %loop.body
  %lin.1 = phi i128 [ %lin.0, %loop.body ], [ %add, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add17, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %binsum.in.read_input_inner, i128 0, i128 %j.0, i128 %k.0
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
  %lout.0 = phi i128 [ 0, %loop.exit29 ], [ %add52, %loop.latch56 ]
  %e2.1 = phi i128 [ 1, %loop.exit29 ], [ %add55, %loop.latch56 ]
  %k.1 = phi i128 [ 0, %loop.exit29 ], [ %add58, %loop.latch56 ]
  %rshift = lshr i128 %add, %k.1
  %and = and i128 %rshift, 1
  %out34 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %k.1
  store i128 %and, i128* %out34, align 4
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %k.1
  %out38 = load i128, i128* %array_getter37, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %k.1
  %out42 = load i128, i128* %array_getter41, align 4
  %sub43 = sub i128 %out42, 1
  %mul44 = mul i128 %out38, %sub43
  call void @fn_intrinsic_add_constraint(i128 %mul44, i128 0, i1* @constraint.47)
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %k.1
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
  call void @fn_intrinsic_add_constraint(i128 %add, i128 %add52, i1* @constraint.48)
  br label %exit

exit:                                             ; preds = %loop.exit62
  %binsum.out.write_output_inner = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [256 x i128]* %out, [256 x i128]** %binsum.out.write_output_inner, align 8
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

define [3 x i128]* @SplitThreeFn(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %var_inline_array = alloca [3 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  %add = add i128 %1, %2
  %lshift11 = shl i128 1, %add
  %sdiv12 = sdiv i128 %0, %lshift11
  %lshift13 = shl i128 1, %3
  %mod14 = srem i128 %sdiv12, %lshift13
  %var_inline_array15 = getelementptr inbounds [3 x i128], [3 x i128]* %var_inline_array, i128 0, i128 2
  store i128 %mod14, i128* %var_inline_array15, align 4
  ret [3 x i128]* %var_inline_array
}

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %idx1 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %1, i128 0, i128 %idx.0
  %a3 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a3, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  ret i128 0

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %0
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret i128 1
}

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %num2bits_strict.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %i1 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter4, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %num2bits_strict.in.read_input_inner, i1* @constraint.49)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 1
  store i128 %num2bits_strict.in.read_input_inner, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b8 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %out12, i128 %n2b8, i1* @constraint.50)
  %out15 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %n2b8, i128* %out15, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call2, i32 0, i32 2
  %num2bits.out.read_output_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter18, i128 0, i128 %i.0
  %n2b21 = load i128, i128* %array_getter20, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck26, i128 %n2b21, i1* @constraint.51)
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %aliasCheck31 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter29, i128 0, i128 %i.0
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
  store [256 x i128]* %out, [256 x i128]** %num2bits_strict.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_num2bits_strict* @fn_template_build_num2bits_strict() {
entry:
  %struct_template_circuit_num2bits_strict = alloca %struct_template_circuit_num2bits_strict, align 8
  ret %struct_template_circuit_num2bits_strict* %struct_template_circuit_num2bits_strict
}

define [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %temp1 = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %out5 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %out5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch33, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add35, %loop.latch33 ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %out11 = load i128, i128* %array_getter, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.1
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %2, %b14
  %add15 = add i128 %out11, %mul
  %lshift = shl i128 1, %0
  %mod = srem i128 %add15, %lshift
  %out19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 %mod, i128* %out19, align 4
  %add22 = add i128 %i.1, 1
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add22
  %out24 = load i128, i128* %array_getter23, align 4
  %lshift27 = shl i128 1, %0
  %sdiv = sdiv i128 %add15, %lshift27
  %add28 = add i128 %out24, %sdiv
  %add31 = add i128 %i.1, 1
  %out32 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add31
  store i128 %add28, i128* %out32, align 4
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.body8
  %add35 = add i128 %i.1, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body8, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_greatereqthan(%struct_template_circuit_greatereqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 0
  %greatereqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_greatereqthan, %struct_template_circuit_greatereqthan* %0, i32 0, i32 1
  %greatereqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %greatereqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.52)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %greatereqthan.in.read_input_inner, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.53)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.54)
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

define void @fn_template_init_split(%struct_template_circuit_split* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 0
  %split.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 1
  %split.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 2
  %split.in.read_input_inner = load i128, i128* %struct_getter2, align 4
  %small = call i128 @fn_intrinsic_inline_init()
  %big = call i128 @fn_intrinsic_inline_init()
  %lshift = shl i128 1, %split.n.read_arg_inner
  %mod = srem i128 %split.in.read_input_inner, %lshift
  %split.small.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %mod, i128* %split.small.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  %split.small.read_output_inner = load i128, i128* %struct_getter4, align 4
  %lshift7 = shl i128 1, %split.n.read_arg_inner
  %sdiv = sdiv i128 %split.in.read_input_inner, %lshift7
  %split.big.write_output_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %sdiv, i128* %split.big.write_output_inner, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  %split.big.read_output_inner = load i128, i128* %struct_getter10, align 4
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %split.n.read_arg_inner)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %split.small.read_output_inner, i1* @constraint.55)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %split.small.read_output_inner, i128* %num2bits.in.write_input_outter, align 4
  %call16 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %split.m.read_arg_inner)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call16, i32 0, i32 1
  %num2bits.in.read_input_outter20 = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter20, i128 %split.big.read_output_inner, i1* @constraint.56)
  %num2bits.in.write_input_outter22 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call16, i32 0, i32 1
  store i128 %split.big.read_output_inner, i128* %num2bits.in.write_input_outter22, align 4
  %lshift27 = shl i128 1, %split.n.read_arg_inner
  %mul = mul i128 %split.big.read_output_inner, %lshift27
  %add = add i128 %split.small.read_output_inner, %mul
  call void @fn_intrinsic_add_constraint(i128 %split.in.read_input_inner, i128 %add, i1* @constraint.57)
  br label %exit

exit:                                             ; preds = %entry
  %split.small.write_output_inner29 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 3
  store i128 %split.small.read_output_inner, i128* %split.small.write_output_inner29, align 4
  %split.big.write_output_inner31 = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %0, i32 0, i32 4
  store i128 %split.big.read_output_inner, i128* %split.big.write_output_inner31, align 4
  ret void
}

define %struct_template_circuit_split* @fn_template_build_split(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_split = alloca %struct_template_circuit_split, align 8
  %split.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 0
  store i128 %0, i128* %split.n.write_arg_inner, align 4
  %split.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_split, %struct_template_circuit_split* %struct_template_circuit_split, i32 0, i32 1
  store i128 %1, i128* %split.m.write_arg_inner, align 4
  ret %struct_template_circuit_split* %struct_template_circuit_split
}

define [2 x i128]* @SplitFn(i128 %0, i128 %1, i128 %2) {
entry:
  %var_inline_array = alloca [2 x i128], align 8
  %lshift = shl i128 1, %1
  %mod = srem i128 %0, %lshift
  %var_inline_array1 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 0
  store i128 %mod, i128* %var_inline_array1, align 4
  %lshift4 = shl i128 1, %1
  %sdiv = sdiv i128 %0, %lshift4
  %lshift5 = shl i128 1, %2
  %mod6 = srem i128 %sdiv, %lshift5
  %var_inline_array7 = getelementptr inbounds [2 x i128], [2 x i128]* %var_inline_array, i128 0, i128 1
  store i128 %mod6, i128* %var_inline_array7, align 4
  ret [2 x i128]* %var_inline_array
}

define void @fn_template_init_bigmultshortlongunequal(%struct_template_circuit_bigmultshortlongunequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 0
  %bigmultshortlongunequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 1
  %bigmultshortlongunequal.ka.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 2
  %bigmultshortlongunequal.kb.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 3
  %bigmultshortlongunequal.m_out.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %j9 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %i12 = call i128 @fn_intrinsic_inline_init()
  %k213 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %prod_val15 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add18 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub = sub i128 %add18, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch45, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add47, %loop.latch45 ]
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch38, %loop.body19
  %j.0 = phi i128 [ 0, %loop.body19 ], [ %add40, %loop.latch38 ]
  %add24 = add i128 %i.1, %j.0
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add24
  %prod_val25 = load i128, i128* %array_getter, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_inner, i128 0, i128 %i.1
  %a28 = load i128, i128* %array_getter27, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_inner, i128 0, i128 %j.0
  %b31 = load i128, i128* %array_getter30, align 4
  %mul = mul i128 %a28, %b31
  %add32 = add i128 %prod_val25, %mul
  %add36 = add i128 %i.1, %j.0
  %prod_val37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add36
  store i128 %add32, i128* %prod_val37, align 4
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body20
  %add40 = add i128 %j.0, 1
  %slt43 = icmp slt i128 %add40, %bigmultshortlongunequal.kb.read_arg_inner
  br i1 %slt43, label %loop.body20, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch38
  br label %loop.latch45

loop.latch45:                                     ; preds = %loop.exit44
  %add47 = add i128 %i.1, 1
  %slt50 = icmp slt i128 %add47, %bigmultshortlongunequal.ka.read_arg_inner
  br i1 %slt50, label %loop.body19, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch45
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch60, %loop.exit51
  %i.2 = phi i128 [ 0, %loop.exit51 ], [ %add62, %loop.latch60 ]
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %prod_val56 = load i128, i128* %array_getter55, align 4
  %out59 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  store i128 %prod_val56, i128* %out59, align 4
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.body52
  %add62 = add i128 %i.2, 1
  %add66 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub67 = sub i128 %add66, 1
  %slt68 = icmp slt i128 %add62, %sub67
  br i1 %slt68, label %loop.body52, label %loop.exit69

loop.exit69:                                      ; preds = %loop.latch60
  %add72 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub73 = sub i128 %add72, 1
  %uniform_array74 = alloca [256 x [256 x i128]], align 8
  br label %loop.body75

loop.body75:                                      ; preds = %loop.latch91, %loop.exit69
  %i.3 = phi i128 [ 0, %loop.exit69 ], [ %add93, %loop.latch91 ]
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch84, %loop.body75
  %j.1 = phi i128 [ 0, %loop.body75 ], [ %add86, %loop.latch84 ]
  %pow79 = call i128 @fn_intrinsic_inline_powi(i128 %i.3, i128 %j.1)
  %pow83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array74, i128 0, i128 %i.3, i128 %j.1
  store i128 %pow79, i128* %pow83, align 4
  br label %loop.latch84

loop.latch84:                                     ; preds = %loop.body76
  %add86 = add i128 %j.1, 1
  %slt89 = icmp slt i128 %add86, %sub73
  br i1 %slt89, label %loop.body76, label %loop.exit90

loop.exit90:                                      ; preds = %loop.latch84
  br label %loop.latch91

loop.latch91:                                     ; preds = %loop.exit90
  %add93 = add i128 %i.3, 1
  %slt96 = icmp slt i128 %add93, %sub73
  br i1 %slt96, label %loop.body75, label %loop.exit97

loop.exit97:                                      ; preds = %loop.latch91
  %uniform_array98 = alloca [256 x i128], align 8
  %uniform_array99 = alloca [256 x i128], align 8
  %uniform_array100 = alloca [256 x i128], align 8
  br label %loop.body101

loop.body101:                                     ; preds = %loop.latch192, %loop.exit97
  %i.4 = phi i128 [ 0, %loop.exit97 ], [ %add194, %loop.latch192 ]
  %out_poly104 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array100, i128 0, i128 %i.4
  store i128 0, i128* %out_poly104, align 4
  %a_poly107 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array98, i128 0, i128 %i.4
  store i128 0, i128* %a_poly107, align 4
  %b_poly110 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array99, i128 0, i128 %i.4
  store i128 0, i128* %b_poly110, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch130, %loop.body101
  %j.2 = phi i128 [ 0, %loop.body101 ], [ %add132, %loop.latch130 ]
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array100, i128 0, i128 %i.4
  %out_poly115 = load i128, i128* %array_getter114, align 4
  %array_getter118 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %j.2
  %out119 = load i128, i128* %array_getter118, align 4
  %array_getter123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array74, i128 0, i128 %i.4, i128 %j.2
  %pow124 = load i128, i128* %array_getter123, align 4
  %mul125 = mul i128 %out119, %pow124
  %add126 = add i128 %out_poly115, %mul125
  %out_poly129 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array100, i128 0, i128 %i.4
  store i128 %add126, i128* %out_poly129, align 4
  br label %loop.latch130

loop.latch130:                                    ; preds = %loop.body111
  %add132 = add i128 %j.2, 1
  %add136 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub137 = sub i128 %add136, 1
  %slt138 = icmp slt i128 %add132, %sub137
  br i1 %slt138, label %loop.body111, label %loop.exit139

loop.exit139:                                     ; preds = %loop.latch130
  br label %loop.body140

loop.body140:                                     ; preds = %loop.latch159, %loop.exit139
  %j.3 = phi i128 [ 0, %loop.exit139 ], [ %add161, %loop.latch159 ]
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array98, i128 0, i128 %i.4
  %a_poly144 = load i128, i128* %array_getter143, align 4
  %array_getter147 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_inner, i128 0, i128 %j.3
  %a148 = load i128, i128* %array_getter147, align 4
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array74, i128 0, i128 %i.4, i128 %j.3
  %pow153 = load i128, i128* %array_getter152, align 4
  %mul154 = mul i128 %a148, %pow153
  %add155 = add i128 %a_poly144, %mul154
  %a_poly158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array98, i128 0, i128 %i.4
  store i128 %add155, i128* %a_poly158, align 4
  br label %loop.latch159

loop.latch159:                                    ; preds = %loop.body140
  %add161 = add i128 %j.3, 1
  %slt164 = icmp slt i128 %add161, %bigmultshortlongunequal.ka.read_arg_inner
  br i1 %slt164, label %loop.body140, label %loop.exit165

loop.exit165:                                     ; preds = %loop.latch159
  br label %loop.body166

loop.body166:                                     ; preds = %loop.latch185, %loop.exit165
  %j.4 = phi i128 [ 0, %loop.exit165 ], [ %add187, %loop.latch185 ]
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array99, i128 0, i128 %i.4
  %b_poly170 = load i128, i128* %array_getter169, align 4
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_inner, i128 0, i128 %j.4
  %b174 = load i128, i128* %array_getter173, align 4
  %array_getter178 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array74, i128 0, i128 %i.4, i128 %j.4
  %pow179 = load i128, i128* %array_getter178, align 4
  %mul180 = mul i128 %b174, %pow179
  %add181 = add i128 %b_poly170, %mul180
  %b_poly184 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array99, i128 0, i128 %i.4
  store i128 %add181, i128* %b_poly184, align 4
  br label %loop.latch185

loop.latch185:                                    ; preds = %loop.body166
  %add187 = add i128 %j.4, 1
  %slt190 = icmp slt i128 %add187, %bigmultshortlongunequal.kb.read_arg_inner
  br i1 %slt190, label %loop.body166, label %loop.exit191

loop.exit191:                                     ; preds = %loop.latch185
  br label %loop.latch192

loop.latch192:                                    ; preds = %loop.exit191
  %add194 = add i128 %i.4, 1
  %add198 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub199 = sub i128 %add198, 1
  %slt200 = icmp slt i128 %add194, %sub199
  br i1 %slt200, label %loop.body101, label %loop.exit201

loop.exit201:                                     ; preds = %loop.latch192
  br label %loop.body202

loop.body202:                                     ; preds = %loop.latch216, %loop.exit201
  %i.5 = phi i128 [ 0, %loop.exit201 ], [ %add218, %loop.latch216 ]
  %array_getter205 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array100, i128 0, i128 %i.5
  %out_poly206 = load i128, i128* %array_getter205, align 4
  %array_getter209 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array98, i128 0, i128 %i.5
  %a_poly210 = load i128, i128* %array_getter209, align 4
  %array_getter213 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array99, i128 0, i128 %i.5
  %b_poly214 = load i128, i128* %array_getter213, align 4
  %mul215 = mul i128 %a_poly210, %b_poly214
  call void @fn_intrinsic_add_constraint(i128 %out_poly206, i128 %mul215, i1* @constraint.58)
  br label %loop.latch216

loop.latch216:                                    ; preds = %loop.body202
  %add218 = add i128 %i.5, 1
  %add222 = add i128 %bigmultshortlongunequal.ka.read_arg_inner, %bigmultshortlongunequal.kb.read_arg_inner
  %sub223 = sub i128 %add222, 1
  %slt224 = icmp slt i128 %add218, %sub223
  br i1 %slt224, label %loop.body202, label %loop.exit225

loop.exit225:                                     ; preds = %loop.latch216
  br label %exit

exit:                                             ; preds = %loop.exit225
  %bigmultshortlongunequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %0, i32 0, i32 6
  store [256 x i128]* %out, [256 x i128]** %bigmultshortlongunequal.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %0, i128 %1, i128 %2, i128 %3) {
entry:
  %struct_template_circuit_bigmultshortlongunequal = alloca %struct_template_circuit_bigmultshortlongunequal, align 8
  %bigmultshortlongunequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 0
  store i128 %0, i128* %bigmultshortlongunequal.n.write_arg_inner, align 4
  %bigmultshortlongunequal.ka.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 1
  store i128 %1, i128* %bigmultshortlongunequal.ka.write_arg_inner, align 4
  %bigmultshortlongunequal.kb.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 2
  store i128 %2, i128* %bigmultshortlongunequal.kb.write_arg_inner, align 4
  %bigmultshortlongunequal.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal, i32 0, i32 3
  store i128 %3, i128* %bigmultshortlongunequal.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultshortlongunequal* %struct_template_circuit_bigmultshortlongunequal
}

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %sgn11 = call i128 @fn_intrinsic_inline_init()
  %z2 = call i128 @fn_intrinsic_inline_init()
  %sgn03 = call i128 @fn_intrinsic_inline_init()
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0, i128 0
  %a4 = load i128, i128* %array_getter, align 4
  %mod = srem i128 %a4, 2
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 1, i128 0
  %a7 = load i128, i128* %array_getter6, align 4
  %mod8 = srem i128 %a7, 2
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %1, i128 0, i128 0
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array, align 4
  %call = call i128 @long_is_zero(i128 %0, [256 x i128]* %spice_inline_array)
  %and = and i128 %call, %mod8
  %or = or i128 %mod, %and
  ret i128 %or
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %isequal.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_inner, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %array_getter3 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_inner, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.59)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.60)
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

define void @fn_template_init_bigiszero(%struct_template_circuit_bigiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 0
  %bigiszero.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 1
  %bigiszero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %i2 = call i128 @fn_intrinsic_inline_init()
  %isZeros3 = alloca [256 x %struct_template_circuit_iszero*], align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %total4 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %total.0 = phi i128 [ %bigiszero.k.read_arg_inner, %entry ], [ %sub, %loop.latch ]
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %isZeros6 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros3, i128 0, i128 %i.0
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZeros6, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_inner, i128 0, i128 %i.0
  %in8 = load i128, i128* %array_getter, align 4
  %array_getter11 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros3, i128 0, i128 %i.0
  %isZeros12 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter11, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros12, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %in8, i1* @constraint.61)
  %array_getter16 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros3, i128 0, i128 %i.0
  %isZeros17 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter16, align 8
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros17, i32 0, i32 0
  store i128 %in8, i128* %iszero.in.write_input_outter, align 4
  %array_getter21 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros3, i128 0, i128 %i.0
  %isZeros22 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter21, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros22, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  %sub = sub i128 %total.0, %iszero.out.read_output_outter
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigiszero.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call27 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call27, i32 0, i32 0
  %iszero.in.read_input_outter31 = load i128, i128* %struct_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter31, i128 %sub, i1* @constraint.62)
  %iszero.in.write_input_outter33 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call27, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter33, align 4
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call27, i32 0, i32 2
  %iszero.out.read_output_outter36 = load i128, i128* %struct_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %iszero.out.read_output_outter36, i1* @constraint.63)
  %bigiszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %iszero.out.read_output_outter36, i128* %bigiszero.out.write_output_inner, align 4
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  %bigiszero.out.read_output_inner = load i128, i128* %struct_getter40, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bigiszero.out.write_output_inner42 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %bigiszero.out.read_output_inner, i128* %bigiszero.out.write_output_inner42, align 4
  ret void
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
  %struct_template_circuit_bigiszero = alloca %struct_template_circuit_bigiszero, align 8
  %bigiszero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero, i32 0, i32 0
  store i128 %0, i128* %bigiszero.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero
}

define void @fn_template_init_modsubthree(%struct_template_circuit_modsubthree* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 0
  %modsubthree.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 1
  %modsubthree.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 2
  %modsubthree.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 3
  %modsubthree.c.read_input_inner = load i128, i128* %struct_getter3, align 4
  %b_plus_c = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %borrow = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %modsubthree.b.read_input_inner, %modsubthree.c.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %b_plus_c, i128 %add, i1* @constraint.64)
  %modsubthree.b_plus_c.write_inter_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %add, i128* %modsubthree.b_plus_c.write_inter_inner, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  %modsubthree.b_plus_c.read_inter_inner = load i128, i128* %struct_getter6, align 4
  %add7 = add i128 %modsubthree.n.read_arg_inner, 1
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %add7)
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt10 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt10, i128 %modsubthree.a.read_input_inner, i1* @constraint.65)
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter13 = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %lt14 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter13, i128 0, i128 0
  store i128 %modsubthree.a.read_input_inner, i128* %lt14, align 4
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter18, i128 0, i128 1
  %lt20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt20, i128 %modsubthree.b_plus_c.read_inter_inner, i1* @constraint.66)
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %lt24 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter23, i128 0, i128 1
  store i128 %modsubthree.b_plus_c.read_inter_inner, i128* %lt24, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow, i128 %lessthan.out.read_output_outter, i1* @constraint.67)
  %modsubthree.borrow.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  store i128 %lessthan.out.read_output_outter, i128* %modsubthree.borrow.write_output_inner, align 4
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  %modsubthree.borrow.read_output_inner = load i128, i128* %struct_getter30, align 4
  %lshift = shl i128 1, %modsubthree.n.read_arg_inner
  %mul = mul i128 %modsubthree.borrow.read_output_inner, %lshift
  %add34 = add i128 %mul, %modsubthree.a.read_input_inner
  %sub = sub i128 %add34, %modsubthree.b_plus_c.read_inter_inner
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint.68)
  %modsubthree.out.write_output_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %sub, i128* %modsubthree.out.write_output_inner, align 4
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  %modsubthree.out.read_output_inner = load i128, i128* %struct_getter39, align 4
  br label %exit

exit:                                             ; preds = %entry
  %modsubthree.b_plus_c.write_inter_inner41 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 4
  store i128 %modsubthree.b_plus_c.read_inter_inner, i128* %modsubthree.b_plus_c.write_inter_inner41, align 4
  %modsubthree.out.write_output_inner43 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 5
  store i128 %modsubthree.out.read_output_inner, i128* %modsubthree.out.write_output_inner43, align 4
  %modsubthree.borrow.write_output_inner45 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %0, i32 0, i32 6
  store i128 %modsubthree.borrow.read_output_inner, i128* %modsubthree.borrow.write_output_inner45, align 4
  ret void
}

define %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %0) {
entry:
  %struct_template_circuit_modsubthree = alloca %struct_template_circuit_modsubthree, align 8
  %modsubthree.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree, i32 0, i32 0
  store i128 %0, i128* %modsubthree.n.write_arg_inner, align 4
  ret %struct_template_circuit_modsubthree* %struct_template_circuit_modsubthree
}

define void @fn_template_init_longtoshortnoendcarry(%struct_template_circuit_longtoshortnoendcarry* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 0
  %longtoshortnoendcarry.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 1
  %longtoshortnoendcarry.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry5 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry5, [256 x i128]** %sumAndCarry, align 8
  %i6 = call i128 @fn_intrinsic_inline_init()
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %runningCarry = bitcast i8* %malloccall7 to [256 x i128]*
  %runningCarryRangeChecks8 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %outRangeChecks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, i128 0, i128 %i.0
  %in11 = load i128, i128* %array_getter, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %in11, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
  %split15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.0
  %1 = bitcast [256 x i128]* %split15 to i8*
  %2 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array18 = alloca [256 x i128], align 8
  %carry20 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 0
  store i128 0, i128* %carry20, align 4
  %array_getter22 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 0
  %split23 = load i128, i128* %array_getter22, align 4
  %out25 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  store i128 %split23, i128* %out25, align 4
  %sgt = icmp sgt i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %array_getter28 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 1
  %split29 = load i128, i128* %array_getter28, align 4
  %array_getter31 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 0
  %split32 = load i128, i128* %array_getter31, align 4
  %add33 = add i128 %split29, %split32
  %call36 = call [2 x i128]* @SplitFn(i128 %add33, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %3 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %4 = bitcast [2 x i128]* %call36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry37 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry37, i128 0, i128 0
  %sumAndCarry39 = load i128, i128* %array_getter38, align 4
  %out41 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 1
  store i128 %sumAndCarry39, i128* %out41, align 4
  %sumAndCarry42 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry42, i128 0, i128 1
  %sumAndCarry44 = load i128, i128* %array_getter43, align 4
  %carry46 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 1
  store i128 %sumAndCarry44, i128* %carry46, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.exit
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %sgt50 = icmp sgt i128 %longtoshortnoendcarry.k.read_arg_inner, 2
  br i1 %sgt50, label %if.true47, label %if.false48

if.true47:                                        ; preds = %if.exit
  br label %loop.body51

if.false48:                                       ; preds = %if.exit
  br label %if.exit116

loop.body51:                                      ; preds = %loop.latch89, %if.true47
  %i.1 = phi i128 [ 2, %if.true47 ], [ %add91, %loop.latch89 ]
  %array_getter54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %i.1, i128 0
  %split55 = load i128, i128* %array_getter54, align 4
  %sub = sub i128 %i.1, 1
  %array_getter58 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %sub, i128 1
  %split59 = load i128, i128* %array_getter58, align 4
  %add60 = add i128 %split55, %split59
  %sub63 = sub i128 %i.1, 2
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %sub63, i128 2
  %split65 = load i128, i128* %array_getter64, align 4
  %add66 = add i128 %add60, %split65
  %sub69 = sub i128 %i.1, 1
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %sub69
  %carry71 = load i128, i128* %array_getter70, align 4
  %add72 = add i128 %add66, %carry71
  %call75 = call [2 x i128]* @SplitFn(i128 %add72, i128 %longtoshortnoendcarry.n.read_arg_inner, i128 %longtoshortnoendcarry.n.read_arg_inner)
  %memcpy_ptr76 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr76 to i8*
  %6 = bitcast [2 x i128]* %call75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry77 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter78 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry77, i128 0, i128 0
  %sumAndCarry79 = load i128, i128* %array_getter78, align 4
  %out82 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.1
  store i128 %sumAndCarry79, i128* %out82, align 4
  %sumAndCarry83 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry83, i128 0, i128 1
  %sumAndCarry85 = load i128, i128* %array_getter84, align 4
  %carry88 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.1
  store i128 %sumAndCarry85, i128* %carry88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body51
  %add91 = add i128 %i.1, 1
  %slt94 = icmp slt i128 %add91, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt94, label %loop.body51, label %loop.exit95

loop.exit95:                                      ; preds = %loop.latch89
  %sub98 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %sub98, i128 1
  %split100 = load i128, i128* %array_getter99, align 4
  %sub103 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 2
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %sub103, i128 2
  %split105 = load i128, i128* %array_getter104, align 4
  %add106 = add i128 %split100, %split105
  %sub109 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %sub109
  %carry111 = load i128, i128* %array_getter110, align 4
  %add112 = add i128 %add106, %carry111
  %out115 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %longtoshortnoendcarry.k.read_arg_inner
  store i128 %add112, i128* %out115, align 4
  br label %if.exit116

if.exit116:                                       ; preds = %loop.exit95, %if.false48
  br label %loop.body117

loop.body117:                                     ; preds = %loop.latch136, %if.exit116
  %i.2 = phi i128 [ 0, %if.exit116 ], [ %add138, %loop.latch136 ]
  %call119 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %longtoshortnoendcarry.n.read_arg_inner)
  %outRangeChecks122 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks9, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call119, %struct_template_circuit_num2bits** %outRangeChecks122, align 8
  %array_getter125 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out126 = load i128, i128* %array_getter125, align 4
  %array_getter129 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks9, i128 0, i128 %i.2
  %outRangeChecks130 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter129, align 8
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks130, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter131, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %out126, i1* @constraint.69)
  %array_getter134 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks9, i128 0, i128 %i.2
  %outRangeChecks135 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter134, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks135, i32 0, i32 1
  store i128 %out126, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body117
  %add138 = add i128 %i.2, 1
  %add141 = add i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %slt142 = icmp slt i128 %add138, %add141
  br i1 %slt142, label %loop.body117, label %loop.exit143

loop.exit143:                                     ; preds = %loop.latch136
  %array_getter145 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, i128 0, i128 0
  %in146 = load i128, i128* %array_getter145, align 4
  %array_getter148 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  %out149 = load i128, i128* %array_getter148, align 4
  %sub150 = sub i128 %in146, %out149
  %lshift = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %sdiv = sdiv i128 %sub150, %lshift
  %runningCarry153 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 0
  store i128 %sdiv, i128* %runningCarry153, align 4
  %call156 = call i128 @log_ceil(i128 %longtoshortnoendcarry.k.read_arg_inner)
  %add157 = add i128 %longtoshortnoendcarry.n.read_arg_inner, %call156
  %call158 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add157)
  %runningCarryRangeChecks160 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 0
  store %struct_template_circuit_num2bits* %call158, %struct_template_circuit_num2bits** %runningCarryRangeChecks160, align 8
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 0
  %runningCarry163 = load i128, i128* %array_getter162, align 4
  %array_getter165 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 0
  %runningCarryRangeChecks166 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter165, align 8
  %struct_getter167 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks166, i32 0, i32 1
  %num2bits.in.read_input_outter168 = load i128, i128* %struct_getter167, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter168, i128 %runningCarry163, i1* @constraint.70)
  %array_getter170 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 0
  %runningCarryRangeChecks171 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter170, align 8
  %num2bits.in.write_input_outter172 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks171, i32 0, i32 1
  store i128 %runningCarry163, i128* %num2bits.in.write_input_outter172, align 4
  %array_getter174 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 0
  %runningCarry175 = load i128, i128* %array_getter174, align 4
  %lshift177 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %mul = mul i128 %runningCarry175, %lshift177
  %array_getter179 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, i128 0, i128 0
  %in180 = load i128, i128* %array_getter179, align 4
  %array_getter182 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  %out183 = load i128, i128* %array_getter182, align 4
  %sub184 = sub i128 %in180, %out183
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %sub184, i1* @constraint.71)
  br label %loop.body185

loop.body185:                                     ; preds = %loop.latch252, %loop.exit143
  %i.3 = phi i128 [ 1, %loop.exit143 ], [ %add254, %loop.latch252 ]
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, i128 0, i128 %i.3
  %in189 = load i128, i128* %array_getter188, align 4
  %array_getter192 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out193 = load i128, i128* %array_getter192, align 4
  %sub194 = sub i128 %in189, %out193
  %sub197 = sub i128 %i.3, 1
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %sub197
  %runningCarry199 = load i128, i128* %array_getter198, align 4
  %add200 = add i128 %sub194, %runningCarry199
  %lshift202 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %sdiv203 = sdiv i128 %add200, %lshift202
  %runningCarry206 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %i.3
  store i128 %sdiv203, i128* %runningCarry206, align 4
  %call209 = call i128 @log_ceil(i128 %longtoshortnoendcarry.k.read_arg_inner)
  %add210 = add i128 %longtoshortnoendcarry.n.read_arg_inner, %call209
  %call211 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add210)
  %runningCarryRangeChecks214 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 %i.3
  store %struct_template_circuit_num2bits* %call211, %struct_template_circuit_num2bits** %runningCarryRangeChecks214, align 8
  %array_getter217 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %i.3
  %runningCarry218 = load i128, i128* %array_getter217, align 4
  %array_getter221 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 %i.3
  %runningCarryRangeChecks222 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter221, align 8
  %struct_getter223 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks222, i32 0, i32 1
  %num2bits.in.read_input_outter224 = load i128, i128* %struct_getter223, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter224, i128 %runningCarry218, i1* @constraint.72)
  %array_getter227 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks8, i128 0, i128 %i.3
  %runningCarryRangeChecks228 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter227, align 8
  %num2bits.in.write_input_outter229 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks228, i32 0, i32 1
  store i128 %runningCarry218, i128* %num2bits.in.write_input_outter229, align 4
  %array_getter232 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %i.3
  %runningCarry233 = load i128, i128* %array_getter232, align 4
  %lshift235 = shl i128 1, %longtoshortnoendcarry.n.read_arg_inner
  %mul236 = mul i128 %runningCarry233, %lshift235
  %array_getter239 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_inner, i128 0, i128 %i.3
  %in240 = load i128, i128* %array_getter239, align 4
  %array_getter243 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out244 = load i128, i128* %array_getter243, align 4
  %sub245 = sub i128 %in240, %out244
  %sub248 = sub i128 %i.3, 1
  %array_getter249 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %sub248
  %runningCarry250 = load i128, i128* %array_getter249, align 4
  %add251 = add i128 %sub245, %runningCarry250
  call void @fn_intrinsic_add_constraint(i128 %mul236, i128 %add251, i1* @constraint.73)
  br label %loop.latch252

loop.latch252:                                    ; preds = %loop.body185
  %add254 = add i128 %i.3, 1
  %slt257 = icmp slt i128 %add254, %longtoshortnoendcarry.k.read_arg_inner
  br i1 %slt257, label %loop.body185, label %loop.exit258

loop.exit258:                                     ; preds = %loop.latch252
  %sub261 = sub i128 %longtoshortnoendcarry.k.read_arg_inner, 1
  %array_getter262 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry, i128 0, i128 %sub261
  %runningCarry263 = load i128, i128* %array_getter262, align 4
  %array_getter266 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %longtoshortnoendcarry.k.read_arg_inner
  %out267 = load i128, i128* %array_getter266, align 4
  call void @fn_intrinsic_add_constraint(i128 %runningCarry263, i128 %out267, i1* @constraint.74)
  br label %exit

exit:                                             ; preds = %loop.exit258
  %longtoshortnoendcarry.runningcarry.write_inter_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 3
  store [256 x i128]* %runningCarry, [256 x i128]** %longtoshortnoendcarry.runningcarry.write_inter_inner, align 8
  %longtoshortnoendcarry.out.write_output_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %longtoshortnoendcarry.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_longtoshortnoendcarry = alloca %struct_template_circuit_longtoshortnoendcarry, align 8
  %longtoshortnoendcarry.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 0
  store i128 %0, i128* %longtoshortnoendcarry.n.write_arg_inner, align 4
  %longtoshortnoendcarry.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry, i32 0, i32 1
  store i128 %1, i128* %longtoshortnoendcarry.k.write_arg_inner, align 4
  ret %struct_template_circuit_longtoshortnoendcarry* %struct_template_circuit_longtoshortnoendcarry
}

define void @fn_template_init_xor(%struct_template_circuit_xor* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 0
  %xor.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 1
  %xor.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 %xor.a.read_input_inner, %xor.b.read_input_inner
  %mul = mul i128 2, %xor.a.read_input_inner
  %mul4 = mul i128 %mul, %xor.b.read_input_inner
  %sub = sub i128 %add, %mul4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint.75)
  %xor.out.write_output_inner = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %sub, i128* %xor.out.write_output_inner, align 4
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  %xor.out.read_output_inner = load i128, i128* %struct_getter7, align 4
  br label %exit

exit:                                             ; preds = %entry
  %xor.out.write_output_inner9 = getelementptr inbounds %struct_template_circuit_xor, %struct_template_circuit_xor* %0, i32 0, i32 2
  store i128 %xor.out.read_output_inner, i128* %xor.out.write_output_inner9, align 4
  ret void
}

define %struct_template_circuit_xor* @fn_template_build_xor() {
entry:
  %struct_template_circuit_xor = alloca %struct_template_circuit_xor, align 8
  ret %struct_template_circuit_xor* %struct_template_circuit_xor
}

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %not.in.read_input_inner = load i128, i128* %struct_getter, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %add = add i128 1, %not.in.read_input_inner
  %mul = mul i128 2, %not.in.read_input_inner
  %sub = sub i128 %add, %mul
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %sub, i1* @constraint.76)
  %not.out.write_output_inner = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %sub, i128* %not.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  %not.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %exit

exit:                                             ; preds = %entry
  %not.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 1
  store i128 %not.out.read_output_inner, i128* %not.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_not* @fn_template_build_not() {
entry:
  %struct_template_circuit_not = alloca %struct_template_circuit_not, align 8
  ret %struct_template_circuit_not* %struct_template_circuit_not
}

define void @fn_template_init_and(%struct_template_circuit_and* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 0
  %and.a.read_input_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 1
  %and.b.read_input_inner = load i128, i128* %struct_getter1, align 4
  %out = call i128 @fn_intrinsic_inline_init()
  %mul = mul i128 %and.a.read_input_inner, %and.b.read_input_inner
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %mul, i1* @constraint.77)
  %and.out.write_output_inner = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %mul, i128* %and.out.write_output_inner, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  %and.out.read_output_inner = load i128, i128* %struct_getter4, align 4
  br label %exit

exit:                                             ; preds = %entry
  %and.out.write_output_inner6 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %0, i32 0, i32 2
  store i128 %and.out.read_output_inner, i128* %and.out.write_output_inner6, align 4
  ret void
}

define %struct_template_circuit_and* @fn_template_build_and() {
entry:
  %struct_template_circuit_and = alloca %struct_template_circuit_and, align 8
  ret %struct_template_circuit_and* %struct_template_circuit_and
}

define i128 @max(i128 %0, i128 %1) {
entry:
  %sgt = icmp sgt i128 %0, %1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  ret i128 %0

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false
  ret i128 %1
}

define i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %qhat1 = call i128 @fn_intrinsic_inline_init()
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %1
  %a3 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %0
  %mul = mul i128 %a3, %lshift
  %sub = sub i128 %1, 1
  %array_getter6 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %sub
  %a7 = load i128, i128* %array_getter6, align 4
  %add = add i128 %mul, %a7
  %sub9 = sub i128 %1, 1
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub9
  %b11 = load i128, i128* %array_getter10, align 4
  %sdiv = sdiv i128 %add, %b11
  %lshift14 = shl i128 1, %0
  %sub15 = sub i128 %lshift14, 1
  %sgt = icmp sgt i128 %sdiv, %sub15
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %lshift17 = shl i128 1, %0
  %sub18 = sub i128 %lshift17, 1
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %qhat.0 = phi i128 [ %sub18, %if.true ], [ %sdiv, %if.false ]
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %qhat.0, [256 x i128]* %3)
  %add27 = add i128 %1, 1
  %call30 = call i128 @long_gt(i128 %0, i128 %add27, [256 x i128]* %call, [256 x i128]* %2)
  %eq = icmp eq i128 %call30, 1
  br i1 %eq, label %if.true23, label %if.false24

if.true23:                                        ; preds = %if.exit
  %add33 = add i128 %1, 1
  %call36 = call [256 x i128]* @long_sub(i128 %0, i128 %add33, [256 x i128]* %call, [256 x i128]* %3)
  %add41 = add i128 %1, 1
  %call44 = call i128 @long_gt(i128 %0, i128 %add41, [256 x i128]* %call36, [256 x i128]* %2)
  %eq45 = icmp eq i128 %call44, 1
  br i1 %eq45, label %if.true37, label %if.false38

if.false24:                                       ; preds = %if.exit
  ret i128 %qhat.0

if.true37:                                        ; preds = %if.true23
  %sub47 = sub i128 %qhat.0, 2
  ret i128 %sub47

if.false38:                                       ; preds = %if.true23
  %sub49 = sub i128 %qhat.0, 1
  ret i128 %sub49
}

define [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %a_idx2 = call i128 @fn_intrinsic_inline_init()
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry6 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry6, [256 x i128]** %sumAndCarry, align 8
  %i7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch60, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add62, %loop.latch60 ]
  %prod_val9 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %prod_val9, align 4
  %slt = icmp slt i128 %i.0, %1
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %loop.body11

if.false:                                         ; preds = %loop.body
  %sub31 = sub i128 %i.0, %1
  %add32 = add i128 %sub31, 1
  br label %loop.body33

loop.body11:                                      ; preds = %loop.latch, %if.true
  %a_idx.0 = phi i128 [ 0, %if.true ], [ %add26, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val14 = load i128, i128* %array_getter, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.0
  %a17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %i.0, %a_idx.0
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b21 = load i128, i128* %array_getter20, align 4
  %mul = mul i128 %a17, %b21
  %add = add i128 %prod_val14, %mul
  %prod_val24 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add, i128* %prod_val24, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %add26 = add i128 %a_idx.0, 1
  %sle = icmp sle i128 %add26, %i.0
  br i1 %sle, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body33:                                      ; preds = %loop.latch53, %if.false
  %a_idx.1 = phi i128 [ %add32, %if.false ], [ %add55, %loop.latch53 ]
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  %prod_val37 = load i128, i128* %array_getter36, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %a_idx.1
  %a41 = load i128, i128* %array_getter40, align 4
  %sub45 = sub i128 %i.0, %a_idx.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub45
  %b47 = load i128, i128* %array_getter46, align 4
  %mul48 = mul i128 %a41, %b47
  %add49 = add i128 %prod_val37, %mul48
  %prod_val52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %add49, i128* %prod_val52, align 4
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.body33
  %add55 = add i128 %a_idx.1, 1
  %slt58 = icmp slt i128 %add55, %1
  br i1 %slt58, label %loop.body33, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %if.exit

if.exit:                                          ; preds = %loop.exit59, %loop.exit
  br label %loop.latch60

loop.latch60:                                     ; preds = %if.exit
  %add62 = add i128 %i.0, 1
  %mul65 = mul i128 2, %1
  %sub66 = sub i128 %mul65, 1
  %slt67 = icmp slt i128 %add62, %sub66
  br i1 %slt67, label %loop.body, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch60
  %uniform_array69 = alloca [256 x i128], align 8
  %uniform_array70 = alloca [256 x [256 x i128]], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch81, %loop.exit68
  %i.1 = phi i128 [ 0, %loop.exit68 ], [ %add83, %loop.latch81 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %prod_val75 = load i128, i128* %array_getter74, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val75, i128 %0, i128 %0, i128 %0)
  %split80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.1
  %4 = bitcast [256 x i128]* %split80 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body71
  %add83 = add i128 %i.1, 1
  %mul86 = mul i128 2, %1
  %sub87 = sub i128 %mul86, 1
  %slt88 = icmp slt i128 %add83, %sub87
  br i1 %slt88, label %loop.body71, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch81
  %uniform_array90 = alloca [256 x i128], align 8
  %carry92 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 0
  store i128 0, i128* %carry92, align 4
  %array_getter94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 0
  %split95 = load i128, i128* %array_getter94, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 0
  store i128 %split95, i128* %out97, align 4
  %mul101 = mul i128 2, %1
  %sub102 = sub i128 %mul101, 1
  %sgt = icmp sgt i128 %sub102, 1
  br i1 %sgt, label %if.true98, label %if.false99

if.true98:                                        ; preds = %loop.exit89
  %array_getter104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 0, i128 1
  %split105 = load i128, i128* %array_getter104, align 4
  %array_getter107 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 1, i128 0
  %split108 = load i128, i128* %array_getter107, align 4
  %add109 = add i128 %split105, %split108
  %call112 = call [2 x i128]* @SplitFn(i128 %add109, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry113 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry113, i128 0, i128 0
  %sumAndCarry115 = load i128, i128* %array_getter114, align 4
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 1
  store i128 %sumAndCarry115, i128* %out117, align 4
  %sumAndCarry118 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry118, i128 0, i128 1
  %sumAndCarry120 = load i128, i128* %array_getter119, align 4
  %carry122 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 1
  store i128 %sumAndCarry120, i128* %carry122, align 4
  br label %if.exit123

if.false99:                                       ; preds = %loop.exit89
  br label %if.exit123

if.exit123:                                       ; preds = %if.false99, %if.true98
  %mul127 = mul i128 2, %1
  %sub128 = sub i128 %mul127, 1
  %sgt129 = icmp sgt i128 %sub128, 2
  br i1 %sgt129, label %if.true124, label %if.false125

if.true124:                                       ; preds = %if.exit123
  br label %loop.body130

if.false125:                                      ; preds = %if.exit123
  br label %if.exit203

loop.body130:                                     ; preds = %loop.latch169, %if.true124
  %i.2 = phi i128 [ 2, %if.true124 ], [ %add171, %loop.latch169 ]
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %i.2, i128 0
  %split134 = load i128, i128* %array_getter133, align 4
  %sub137 = sub i128 %i.2, 1
  %array_getter138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub137, i128 1
  %split139 = load i128, i128* %array_getter138, align 4
  %add140 = add i128 %split134, %split139
  %sub143 = sub i128 %i.2, 2
  %array_getter144 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub143, i128 2
  %split145 = load i128, i128* %array_getter144, align 4
  %add146 = add i128 %add140, %split145
  %sub149 = sub i128 %i.2, 1
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub149
  %carry151 = load i128, i128* %array_getter150, align 4
  %add152 = add i128 %add146, %carry151
  %call155 = call [2 x i128]* @SplitFn(i128 %add152, i128 %0, i128 %0)
  %memcpy_ptr156 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr156 to i8*
  %9 = bitcast [2 x i128]* %call155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry157 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter158 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry157, i128 0, i128 0
  %sumAndCarry159 = load i128, i128* %array_getter158, align 4
  %out162 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %i.2
  store i128 %sumAndCarry159, i128* %out162, align 4
  %sumAndCarry163 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter164 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry163, i128 0, i128 1
  %sumAndCarry165 = load i128, i128* %array_getter164, align 4
  %carry168 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %i.2
  store i128 %sumAndCarry165, i128* %carry168, align 4
  br label %loop.latch169

loop.latch169:                                    ; preds = %loop.body130
  %add171 = add i128 %i.2, 1
  %mul174 = mul i128 2, %1
  %sub175 = sub i128 %mul174, 1
  %slt176 = icmp slt i128 %add171, %sub175
  br i1 %slt176, label %loop.body130, label %loop.exit177

loop.exit177:                                     ; preds = %loop.latch169
  %mul180 = mul i128 2, %1
  %sub181 = sub i128 %mul180, 2
  %array_getter182 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub181, i128 1
  %split183 = load i128, i128* %array_getter182, align 4
  %mul186 = mul i128 2, %1
  %sub187 = sub i128 %mul186, 3
  %array_getter188 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array70, i128 0, i128 %sub187, i128 2
  %split189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %split183, %split189
  %mul193 = mul i128 2, %1
  %sub194 = sub i128 %mul193, 2
  %array_getter195 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array90, i128 0, i128 %sub194
  %carry196 = load i128, i128* %array_getter195, align 4
  %add197 = add i128 %add190, %carry196
  %mul200 = mul i128 2, %1
  %sub201 = sub i128 %mul200, 1
  %out202 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array69, i128 0, i128 %sub201
  store i128 %add197, i128* %out202, align 4
  br label %if.exit203

if.exit203:                                       ; preds = %loop.exit177, %if.false125
  ret [256 x i128]* %uniform_array69
}

define void @fn_template_init_bigadd(%struct_template_circuit_bigadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 0
  %bigadd.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 1
  %bigadd.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 2
  %bigadd.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 3
  %bigadd.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %unit4 = alloca [256 x %struct_template_circuit_modsumthree*], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %i5 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %bigadd.n.read_arg_inner)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_inner, i128 0, i128 0
  %a6 = load i128, i128* %array_getter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 1
  %modsum.a.read_input_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsum.a.read_input_outter, i128 %a6, i1* @constraint.78)
  %modsum.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 1
  store i128 %a6, i128* %modsum.a.write_input_outter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_inner, i128 0, i128 0
  %b10 = load i128, i128* %array_getter9, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 2
  %modsum.b.read_input_outter = load i128, i128* %struct_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsum.b.read_input_outter, i128 %b10, i1* @constraint.79)
  %modsum.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 2
  store i128 %b10, i128* %modsum.b.write_input_outter, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 3
  %modsum.sum.read_output_outter = load i128, i128* %struct_getter15, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  %out18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %modsum.sum.read_output_outter, i1* @constraint.80)
  %out20 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  store i128 %modsum.sum.read_output_outter, i128* %out20, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add, %loop.latch ]
  %call22 = call %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %bigadd.n.read_arg_inner)
  %sub = sub i128 %i.0, 1
  %unit25 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub
  store %struct_template_circuit_modsumthree* %call22, %struct_template_circuit_modsumthree** %unit25, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_inner, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %sub32 = sub i128 %i.0, 1
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub32
  %unit34 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit34, i32 0, i32 1
  %modsumthree.a.read_input_outter = load i128, i128* %struct_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsumthree.a.read_input_outter, i128 %a29, i1* @constraint.81)
  %sub38 = sub i128 %i.0, 1
  %array_getter39 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub38
  %unit40 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter39, align 8
  %modsumthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit40, i32 0, i32 1
  store i128 %a29, i128* %modsumthree.a.write_input_outter, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_inner, i128 0, i128 %i.0
  %b44 = load i128, i128* %array_getter43, align 4
  %sub47 = sub i128 %i.0, 1
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub47
  %unit49 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter48, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit49, i32 0, i32 2
  %modsumthree.b.read_input_outter = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsumthree.b.read_input_outter, i128 %b44, i1* @constraint.82)
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub53
  %unit55 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter54, align 8
  %modsumthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit55, i32 0, i32 2
  store i128 %b44, i128* %modsumthree.b.write_input_outter, align 4
  %eq = icmp eq i128 %i.0, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %call, i32 0, i32 4
  %modsum.carry.read_output_outter = load i128, i128* %struct_getter58, align 4
  %sub61 = sub i128 %i.0, 1
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub61
  %unit63 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter62, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit63, i32 0, i32 3
  %modsumthree.c.read_input_outter = load i128, i128* %struct_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsumthree.c.read_input_outter, i128 %modsum.carry.read_output_outter, i1* @constraint.83)
  %sub67 = sub i128 %i.0, 1
  %array_getter68 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub67
  %unit69 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter68, align 8
  %modsumthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit69, i32 0, i32 3
  store i128 %modsum.carry.read_output_outter, i128* %modsumthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %sub72 = sub i128 %i.0, 2
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit74, i32 0, i32 5
  %modsumthree.carry.read_output_outter = load i128, i128* %struct_getter75, align 4
  %sub78 = sub i128 %i.0, 1
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub78
  %unit80 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter79, align 8
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit80, i32 0, i32 3
  %modsumthree.c.read_input_outter82 = load i128, i128* %struct_getter81, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsumthree.c.read_input_outter82, i128 %modsumthree.carry.read_output_outter, i1* @constraint.84)
  %sub85 = sub i128 %i.0, 1
  %array_getter86 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub85
  %unit87 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter86, align 8
  %modsumthree.c.write_input_outter88 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit87, i32 0, i32 3
  store i128 %modsumthree.carry.read_output_outter, i128* %modsumthree.c.write_input_outter88, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %sub91 = sub i128 %i.0, 1
  %array_getter92 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub91
  %unit93 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter92, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit93, i32 0, i32 4
  %modsumthree.sum.read_output_outter = load i128, i128* %struct_getter94, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %out98, i128 %modsumthree.sum.read_output_outter, i1* @constraint.85)
  %out101 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %modsumthree.sum.read_output_outter, i128* %out101, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigadd.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub106 = sub i128 %bigadd.k.read_arg_inner, 2
  %array_getter107 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit4, i128 0, i128 %sub106
  %unit108 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter107, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit108, i32 0, i32 5
  %modsumthree.carry.read_output_outter110 = load i128, i128* %struct_getter109, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %bigadd.k.read_arg_inner
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %modsumthree.carry.read_output_outter110, i1* @constraint.86)
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %bigadd.k.read_arg_inner
  store i128 %modsumthree.carry.read_output_outter110, i128* %out117, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bigadd.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %bigadd.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigadd = alloca %struct_template_circuit_bigadd, align 8
  %bigadd.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 0
  store i128 %0, i128* %bigadd.n.write_arg_inner, align 4
  %bigadd.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %struct_template_circuit_bigadd, i32 0, i32 1
  store i128 %1, i128* %bigadd.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigadd* %struct_template_circuit_bigadd
}

define void @fn_template_init_checkcarrytozero(%struct_template_circuit_checkcarrytozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 0
  %checkcarrytozero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 1
  %checkcarrytozero.m.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 2
  %checkcarrytozero.k.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 3
  %checkcarrytozero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %carry = bitcast i8* %malloccall to [256 x i128]*
  %EPSILON4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %carryRangeChecks6 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add82, %loop.latch ]
  %add = add i128 %checkcarrytozero.m.read_arg_inner, 1
  %sub = sub i128 %add, %checkcarrytozero.n.read_arg_inner
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %sub)
  %carryRangeChecks9 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks6, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %carryRangeChecks9, align 8
  %eq = icmp eq i128 %i.0, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_inner, i128 0, i128 %i.0
  %in12 = load i128, i128* %array_getter, align 4
  %lshift = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %sdiv = sdiv i128 %in12, %lshift
  %carry16 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %i.0
  store i128 %sdiv, i128* %carry16, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_inner, i128 0, i128 %i.0
  %in20 = load i128, i128* %array_getter19, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %i.0
  %carry24 = load i128, i128* %array_getter23, align 4
  %lshift26 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %mul = mul i128 %carry24, %lshift26
  call void @fn_intrinsic_add_constraint(i128 %in20, i128 %mul, i1* @constraint.87)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_inner, i128 0, i128 %i.0
  %in30 = load i128, i128* %array_getter29, align 4
  %sub33 = sub i128 %i.0, 1
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %sub33
  %carry35 = load i128, i128* %array_getter34, align 4
  %add36 = add i128 %in30, %carry35
  %lshift38 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %sdiv39 = sdiv i128 %add36, %lshift38
  %carry42 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %i.0
  store i128 %sdiv39, i128* %carry42, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_inner, i128 0, i128 %i.0
  %in46 = load i128, i128* %array_getter45, align 4
  %sub49 = sub i128 %i.0, 1
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %sub49
  %carry51 = load i128, i128* %array_getter50, align 4
  %add52 = add i128 %in46, %carry51
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %i.0
  %carry56 = load i128, i128* %array_getter55, align 4
  %lshift58 = shl i128 1, %checkcarrytozero.n.read_arg_inner
  %mul59 = mul i128 %carry56, %lshift58
  call void @fn_intrinsic_add_constraint(i128 %add52, i128 %mul59, i1* @constraint.88)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %i.0
  %carry63 = load i128, i128* %array_getter62, align 4
  %add66 = add i128 %checkcarrytozero.m.read_arg_inner, 1
  %sub68 = sub i128 %add66, %checkcarrytozero.n.read_arg_inner
  %sub69 = sub i128 %sub68, 1
  %lshift70 = shl i128 1, %sub69
  %add71 = add i128 %carry63, %lshift70
  %array_getter74 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks6, i128 0, i128 %i.0
  %carryRangeChecks75 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter74, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks75, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter76, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %add71, i1* @constraint.89)
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks6, i128 0, i128 %i.0
  %carryRangeChecks80 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter79, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks80, i32 0, i32 1
  store i128 %add71, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add82 = add i128 %i.0, 1
  %sub84 = sub i128 %checkcarrytozero.k.read_arg_inner, 1
  %slt = icmp slt i128 %add82, %sub84
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub87 = sub i128 %checkcarrytozero.k.read_arg_inner, 1
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_inner, i128 0, i128 %sub87
  %in89 = load i128, i128* %array_getter88, align 4
  %sub92 = sub i128 %checkcarrytozero.k.read_arg_inner, 2
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %carry, i128 0, i128 %sub92
  %carry94 = load i128, i128* %array_getter93, align 4
  %add95 = add i128 %in89, %carry94
  call void @fn_intrinsic_add_constraint(i128 %add95, i128 0, i1* @constraint.90)
  br label %exit

exit:                                             ; preds = %loop.exit
  %checkcarrytozero.carry.write_inter_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %0, i32 0, i32 4
  store [256 x i128]* %carry, [256 x i128]** %checkcarrytozero.carry.write_inter_inner, align 8
  ret void
}

define %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_checkcarrytozero = alloca %struct_template_circuit_checkcarrytozero, align 8
  %checkcarrytozero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 0
  store i128 %0, i128* %checkcarrytozero.n.write_arg_inner, align 4
  %checkcarrytozero.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 1
  store i128 %1, i128* %checkcarrytozero.m.write_arg_inner, align 4
  %checkcarrytozero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero, i32 0, i32 2
  store i128 %2, i128* %checkcarrytozero.k.write_arg_inner, align 4
  ret %struct_template_circuit_checkcarrytozero* %struct_template_circuit_checkcarrytozero
}

define [256 x i128]* @long_add4(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4, [256 x i128]* %5) {
entry:
  %carry1 = call i128 @fn_intrinsic_inline_init()
  %i2 = call i128 @fn_intrinsic_inline_init()
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry4 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry4, [256 x i128]** %sumAndCarry, align 8
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry28, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add30, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %c12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add, %c12
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %5, i128 0, i128 %i.0
  %d16 = load i128, i128* %array_getter15, align 4
  %add17 = add i128 %add13, %d16
  %add19 = add i128 %add17, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add19, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry21 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry21, i128 0, i128 0
  %sumAndCarry23 = load i128, i128* %array_getter22, align 4
  %sum25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry23, i128* %sum25, align 4
  %sumAndCarry26 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry26, i128 0, i128 1
  %sumAndCarry28 = load i128, i128* %array_getter27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add30 = add i128 %i.0, 1
  %slt = icmp slt i128 %add30, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum35 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry28, i128* %sum35, align 4
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_bigmult(%struct_template_circuit_bigmult* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 0
  %bigmult.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 1
  %bigmult.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 2
  %bigmult.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 3
  %bigmult.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %LOGK4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %call = call i128 @log_ceil(i128 %bigmult.k.read_arg_inner)
  %mul = mul i128 2, %bigmult.n.read_arg_inner
  %add = add i128 %mul, %call
  %call9 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %bigmult.n.read_arg_inner, i128 %bigmult.k.read_arg_inner, i128 %add)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_inner, i128 0, i128 %i.0
  %a11 = load i128, i128* %array_getter, align 4
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call9, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter, i128 0, i128 %i.0
  %mult16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult16, i128 %a11, i1* @constraint.91)
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call9, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %mult20 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter18, i128 0, i128 %i.0
  store i128 %a11, i128* %mult20, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_inner, i128 0, i128 %i.0
  %b23 = load i128, i128* %array_getter22, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call9, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter, i128 0, i128 %i.0
  %mult28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult28, i128 %b23, i1* @constraint.92)
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call9, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %mult33 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter31, i128 0, i128 %i.0
  store i128 %b23, i128* %mult33, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add35 = add i128 %i.0, 1
  %slt = icmp slt i128 %add35, %bigmult.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %mul40 = mul i128 2, %bigmult.k.read_arg_inner
  %sub = sub i128 %mul40, 1
  %call41 = call %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %bigmult.n.read_arg_inner, i128 %sub)
  br label %loop.body42

loop.body42:                                      ; preds = %loop.latch58, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add60, %loop.latch58 ]
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call9, i32 0, i32 5
  %bigmultshortlong.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.out.read_output_outter, i128 0, i128 %i.1
  %mult47 = load i128, i128* %array_getter46, align 4
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call41, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter49, align 8
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter, i128 0, i128 %i.1
  %longshort52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %longshort52, i128 %mult47, i1* @constraint.93)
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call41, i32 0, i32 2
  %longtoshortnoendcarry.in.read_input_outter55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %longshort57 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.in.read_input_outter55, i128 0, i128 %i.1
  store i128 %mult47, i128* %longshort57, align 4
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body42
  %add60 = add i128 %i.1, 1
  %mul63 = mul i128 2, %bigmult.k.read_arg_inner
  %sub64 = sub i128 %mul63, 1
  %slt65 = icmp slt i128 %add60, %sub64
  br i1 %slt65, label %loop.body42, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch58
  br label %loop.body67

loop.body67:                                      ; preds = %loop.latch80, %loop.exit66
  %i.2 = phi i128 [ 0, %loop.exit66 ], [ %add82, %loop.latch80 ]
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %call41, i32 0, i32 4
  %longtoshortnoendcarry.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %longtoshortnoendcarry.out.read_output_outter, i128 0, i128 %i.2
  %longshort72 = load i128, i128* %array_getter71, align 4
  %array_getter75 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out76 = load i128, i128* %array_getter75, align 4
  call void @fn_intrinsic_add_constraint(i128 %out76, i128 %longshort72, i1* @constraint.94)
  %out79 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  store i128 %longshort72, i128* %out79, align 4
  br label %loop.latch80

loop.latch80:                                     ; preds = %loop.body67
  %add82 = add i128 %i.2, 1
  %mul85 = mul i128 2, %bigmult.k.read_arg_inner
  %slt86 = icmp slt i128 %add82, %mul85
  br i1 %slt86, label %loop.body67, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch80
  br label %exit

exit:                                             ; preds = %loop.exit87
  %bigmult.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %bigmult.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmult = alloca %struct_template_circuit_bigmult, align 8
  %bigmult.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 0
  store i128 %0, i128* %bigmult.n.write_arg_inner, align 4
  %bigmult.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %struct_template_circuit_bigmult, i32 0, i32 1
  store i128 %1, i128* %bigmult.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmult* %struct_template_circuit_bigmult
}

define [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %i3 = call i128 @fn_intrinsic_inline_init()
  %carry4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
  %carry.0 = phi i128 [ 0, %entry ], [ %sumAndCarry20, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a6 = load i128, i128* %array_getter, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %b9 = load i128, i128* %array_getter8, align 4
  %add = add i128 %a6, %b9
  %add11 = add i128 %add, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add11, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry13 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry13, i128 0, i128 0
  %sumAndCarry15 = load i128, i128* %array_getter14, align 4
  %sum17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry15, i128* %sum17, align 4
  %sumAndCarry18 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry18, i128 0, i128 1
  %sumAndCarry20 = load i128, i128* %array_getter19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add22 = add i128 %i.0, 1
  %slt = icmp slt i128 %add22, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum27 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %sumAndCarry20, i128* %sum27, align 4
  ret [256 x i128]* %uniform_array
}

define [256 x i128]* @long_add_unequal(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %sumAndCarry = alloca [256 x i128]*, align 8
  %sumAndCarry2 = alloca [256 x i128], align 8
  store [256 x i128]* %sumAndCarry2, [256 x i128]** %sumAndCarry, align 8
  %carry3 = call i128 @fn_intrinsic_inline_init()
  %i4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %carry.0 = phi i128 [ 0, %entry ], [ %carry.1, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add42, %loop.latch ]
  %slt = icmp slt i128 %i.0, %2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %b10 = load i128, i128* %array_getter9, align 4
  %add = add i128 %a7, %b10
  %add12 = add i128 %add, %carry.0
  %call = call [2 x i128]* @SplitFn(i128 %add12, i128 %0, i128 %0)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry14 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry14, i128 0, i128 0
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  %sum18 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry16, i128* %sum18, align 4
  %sumAndCarry19 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry19, i128 0, i128 1
  %sumAndCarry21 = load i128, i128* %array_getter20, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a25 = load i128, i128* %array_getter24, align 4
  %add27 = add i128 %a25, %carry.0
  %call30 = call [2 x i128]* @SplitFn(i128 %add27, i128 %0, i128 %0)
  %memcpy_ptr31 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr31 to i8*
  %8 = bitcast [2 x i128]* %call30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry32 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry32, i128 0, i128 0
  %sumAndCarry34 = load i128, i128* %array_getter33, align 4
  %sum37 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %sumAndCarry34, i128* %sum37, align 4
  %sumAndCarry38 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry38, i128 0, i128 1
  %sumAndCarry40 = load i128, i128* %array_getter39, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry.1 = phi i128 [ %sumAndCarry21, %if.true ], [ %sumAndCarry40, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add42 = add i128 %i.0, 1
  %slt44 = icmp slt i128 %add42, %1
  br i1 %slt44, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum48 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %1
  store i128 %carry.1, i128* %sum48, align 4
  ret [256 x i128]* %uniform_array
}

define void @fn_template_init_lesseqthan(%struct_template_circuit_lesseqthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 0
  %lesseqthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_lesseqthan, %struct_template_circuit_lesseqthan* %0, i32 0, i32 1
  %lesseqthan.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %lesseqthan.n.read_arg_inner)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt6 = load i128, i128* %array_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt6, i128 %in2, i1* @constraint.95)
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter8 = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt9 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter8, i128 0, i128 0
  store i128 %in2, i128* %lt9, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %lesseqthan.in.read_input_inner, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %add, i1* @constraint.96)
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 1
  %lessthan.in.read_input_outter20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %lt21 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter20, i128 0, i128 1
  store i128 %add, i128* %lt21, align 4
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %call, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %lessthan.out.read_output_outter, i1* @constraint.97)
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

define void @fn_template_init_bigisequal(%struct_template_circuit_bigisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 0
  %bigisequal.k.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 1
  %bigisequal.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 2
  %bigisequal.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %isEquals3 = alloca [256 x %struct_template_circuit_isequal*], align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %total5 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %total.0 = phi i128 [ %bigisequal.k.read_arg_inner, %entry ], [ %sub, %loop.latch ]
  %call = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %isEquals7 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  store %struct_template_circuit_isequal* %call, %struct_template_circuit_isequal** %isEquals7, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigisequal.a.read_input_inner, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %array_getter12 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  %isEquals13 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter12, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals13, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %isEquals16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals16, i128 %a9, i1* @constraint.98)
  %array_getter19 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  %isEquals20 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter19, align 8
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals20, i32 0, i32 0
  %isequal.in.read_input_outter22 = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %isEquals23 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter22, i128 0, i128 0
  store i128 %a9, i128* %isEquals23, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %bigisequal.b.read_input_inner, i128 0, i128 %i.0
  %b26 = load i128, i128* %array_getter25, align 4
  %array_getter29 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  %isEquals30 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter29, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals30, i32 0, i32 0
  %isequal.in.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter32, i128 0, i128 1
  %isEquals34 = load i128, i128* %array_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals34, i128 %b26, i1* @constraint.99)
  %array_getter37 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  %isEquals38 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter37, align 8
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals38, i32 0, i32 0
  %isequal.in.read_input_outter40 = load [256 x i128]*, [256 x i128]** %struct_getter39, align 8
  %isEquals41 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter40, i128 0, i128 1
  store i128 %b26, i128* %isEquals41, align 4
  %array_getter45 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals3, i128 0, i128 %i.0
  %isEquals46 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter45, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals46, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter47, align 4
  %sub = sub i128 %total.0, %isequal.out.read_output_outter
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigisequal.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call51 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call51, i32 0, i32 0
  %iszero.in.read_input_outter = load i128, i128* %struct_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %iszero.in.read_input_outter, i128 %sub, i1* @constraint.100)
  %iszero.in.write_input_outter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call51, i32 0, i32 0
  store i128 %sub, i128* %iszero.in.write_input_outter, align 4
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %call51, i32 0, i32 2
  %iszero.out.read_output_outter = load i128, i128* %struct_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %iszero.out.read_output_outter, i1* @constraint.101)
  %bigisequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %iszero.out.read_output_outter, i128* %bigisequal.out.write_output_inner, align 4
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  %bigisequal.out.read_output_inner = load i128, i128* %struct_getter61, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bigisequal.out.write_output_inner63 = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %bigisequal.out.read_output_inner, i128* %bigisequal.out.write_output_inner63, align 4
  ret void
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
  %struct_template_circuit_bigisequal = alloca %struct_template_circuit_bigisequal, align 8
  %bigisequal.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal, i32 0, i32 0
  store i128 %0, i128* %bigisequal.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal
}

define void @fn_template_init_bigsub(%struct_template_circuit_bigsub* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 0
  %bigsub.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 1
  %bigsub.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 2
  %bigsub.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 3
  %bigsub.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %unit5 = alloca [256 x %struct_template_circuit_modsubthree*], align 8
  %underflow = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %bigsub.n.read_arg_inner)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_inner, i128 0, i128 0
  %a6 = load i128, i128* %array_getter, align 4
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 1
  %modsub.a.read_input_outter = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsub.a.read_input_outter, i128 %a6, i1* @constraint.102)
  %modsub.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 1
  store i128 %a6, i128* %modsub.a.write_input_outter, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_inner, i128 0, i128 0
  %b10 = load i128, i128* %array_getter9, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 2
  %modsub.b.read_input_outter = load i128, i128* %struct_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsub.b.read_input_outter, i128 %b10, i1* @constraint.103)
  %modsub.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 2
  store i128 %b10, i128* %modsub.b.write_input_outter, align 4
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 3
  %modsub.out.read_output_outter = load i128, i128* %struct_getter15, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  %out18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %out18, i128 %modsub.out.read_output_outter, i1* @constraint.104)
  %out20 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 0
  store i128 %modsub.out.read_output_outter, i128* %out20, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add, %loop.latch ]
  %call22 = call %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %bigsub.n.read_arg_inner)
  %sub = sub i128 %i.0, 1
  %unit25 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub
  store %struct_template_circuit_modsubthree* %call22, %struct_template_circuit_modsubthree** %unit25, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_inner, i128 0, i128 %i.0
  %a29 = load i128, i128* %array_getter28, align 4
  %sub32 = sub i128 %i.0, 1
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub32
  %unit34 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit34, i32 0, i32 1
  %modsubthree.a.read_input_outter = load i128, i128* %struct_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsubthree.a.read_input_outter, i128 %a29, i1* @constraint.105)
  %sub38 = sub i128 %i.0, 1
  %array_getter39 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub38
  %unit40 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter39, align 8
  %modsubthree.a.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit40, i32 0, i32 1
  store i128 %a29, i128* %modsubthree.a.write_input_outter, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_inner, i128 0, i128 %i.0
  %b44 = load i128, i128* %array_getter43, align 4
  %sub47 = sub i128 %i.0, 1
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub47
  %unit49 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter48, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit49, i32 0, i32 2
  %modsubthree.b.read_input_outter = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsubthree.b.read_input_outter, i128 %b44, i1* @constraint.106)
  %sub53 = sub i128 %i.0, 1
  %array_getter54 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub53
  %unit55 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter54, align 8
  %modsubthree.b.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit55, i32 0, i32 2
  store i128 %b44, i128* %modsubthree.b.write_input_outter, align 4
  %eq = icmp eq i128 %i.0, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %call, i32 0, i32 4
  %modsub.borrow.read_output_outter = load i128, i128* %struct_getter58, align 4
  %sub61 = sub i128 %i.0, 1
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub61
  %unit63 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter62, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit63, i32 0, i32 3
  %modsubthree.c.read_input_outter = load i128, i128* %struct_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsubthree.c.read_input_outter, i128 %modsub.borrow.read_output_outter, i1* @constraint.107)
  %sub67 = sub i128 %i.0, 1
  %array_getter68 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub67
  %unit69 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter68, align 8
  %modsubthree.c.write_input_outter = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit69, i32 0, i32 3
  store i128 %modsub.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %sub72 = sub i128 %i.0, 2
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit74, i32 0, i32 6
  %modsubthree.borrow.read_output_outter = load i128, i128* %struct_getter75, align 4
  %sub78 = sub i128 %i.0, 1
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub78
  %unit80 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter79, align 8
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit80, i32 0, i32 3
  %modsubthree.c.read_input_outter82 = load i128, i128* %struct_getter81, align 4
  call void @fn_intrinsic_add_constraint(i128 %modsubthree.c.read_input_outter82, i128 %modsubthree.borrow.read_output_outter, i1* @constraint.108)
  %sub85 = sub i128 %i.0, 1
  %array_getter86 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub85
  %unit87 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter86, align 8
  %modsubthree.c.write_input_outter88 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit87, i32 0, i32 3
  store i128 %modsubthree.borrow.read_output_outter, i128* %modsubthree.c.write_input_outter88, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %sub91 = sub i128 %i.0, 1
  %array_getter92 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub91
  %unit93 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter92, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit93, i32 0, i32 5
  %modsubthree.out.read_output_outter = load i128, i128* %struct_getter94, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %out98, i128 %modsubthree.out.read_output_outter, i1* @constraint.109)
  %out101 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %modsubthree.out.read_output_outter, i128* %out101, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigsub.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub106 = sub i128 %bigsub.k.read_arg_inner, 2
  %array_getter107 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit5, i128 0, i128 %sub106
  %unit108 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter107, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit108, i32 0, i32 6
  %modsubthree.borrow.read_output_outter110 = load i128, i128* %struct_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %underflow, i128 %modsubthree.borrow.read_output_outter110, i1* @constraint.110)
  %bigsub.underflow.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %modsubthree.borrow.read_output_outter110, i128* %bigsub.underflow.write_output_inner, align 4
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  %bigsub.underflow.read_output_inner = load i128, i128* %struct_getter114, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %bigsub.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %bigsub.out.write_output_inner, align 8
  %bigsub.underflow.write_output_inner117 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_inner, i128* %bigsub.underflow.write_output_inner117, align 4
  ret void
}

define %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsub = alloca %struct_template_circuit_bigsub, align 8
  %bigsub.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 0
  store i128 %0, i128* %bigsub.n.write_arg_inner, align 4
  %bigsub.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %struct_template_circuit_bigsub, i32 0, i32 1
  store i128 %1, i128* %bigsub.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigsub* %struct_template_circuit_bigsub
}

define void @fn_template_init_checkcarrymodp(%struct_template_circuit_checkcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 0
  %checkcarrymodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 1
  %checkcarrymodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 2
  %checkcarrymodp.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 3
  %checkcarrymodp.overflow.read_arg_inner = load i128, i128* %struct_getter3, align 4
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 4
  %checkcarrymodp.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 5
  %checkcarrymodp.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 6
  %checkcarrymodp.x.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %0, i32 0, i32 7
  %checkcarrymodp.y.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %i8 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_bigmultshortlongunequal* @fn_template_build_bigmultshortlongunequal(i128 %checkcarrymodp.n.read_arg_inner, i128 %checkcarrymodp.k.read_arg_inner, i128 %checkcarrymodp.m.read_arg_inner, i128 %checkcarrymodp.overflow.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.p.read_arg_inner, i128 0, i128 %i.0
  %p10 = load i128, i128* %array_getter, align 4
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_outter, i128 0, i128 %i.0
  %pX15 = load i128, i128* %array_getter14, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX15, i128 %p10, i1* @constraint.111)
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 4
  %bigmultshortlongunequal.a.read_input_outter17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %pX19 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.a.read_input_outter17, i128 0, i128 %i.0
  store i128 %p10, i128* %pX19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %checkcarrymodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body23

loop.body23:                                      ; preds = %loop.latch37, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add39, %loop.latch37 ]
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_inner, i128 0, i128 %i.1
  %X26 = load i128, i128* %array_getter25, align 4
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_outter, i128 0, i128 %i.1
  %pX31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX31, i128 %X26, i1* @constraint.112)
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 5
  %bigmultshortlongunequal.b.read_input_outter34 = load [256 x i128]*, [256 x i128]** %struct_getter33, align 8
  %pX36 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.b.read_input_outter34, i128 0, i128 %i.1
  store i128 %X26, i128* %pX36, align 4
  br label %loop.latch37

loop.latch37:                                     ; preds = %loop.body23
  %add39 = add i128 %i.1, 1
  %slt42 = icmp slt i128 %add39, %checkcarrymodp.m.read_arg_inner
  br i1 %slt42, label %loop.body23, label %loop.exit43

loop.exit43:                                      ; preds = %loop.latch37
  %add46 = add i128 %checkcarrymodp.overflow.read_arg_inner, 1
  %add49 = add i128 %checkcarrymodp.k.read_arg_inner, %checkcarrymodp.m.read_arg_inner
  %sub = sub i128 %add49, 1
  %call50 = call %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %checkcarrymodp.n.read_arg_inner, i128 %add46, i128 %sub)
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch75, %loop.exit43
  %i.2 = phi i128 [ 0, %loop.exit43 ], [ %add77, %loop.latch75 ]
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_inner, i128 0, i128 %i.2
  %in54 = load i128, i128* %array_getter53, align 4
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 6
  %bigmultshortlongunequal.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.out.read_output_outter, i128 0, i128 %i.2
  %pX59 = load i128, i128* %array_getter58, align 4
  %sub60 = sub i128 %in54, %pX59
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_inner, i128 0, i128 %i.2
  %Y63 = load i128, i128* %array_getter62, align 4
  %sub64 = sub i128 %sub60, %Y63
  %struct_getter66 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call50, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter66, align 8
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter, i128 0, i128 %i.2
  %carry_check69 = load i128, i128* %array_getter68, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check69, i128 %sub64, i1* @constraint.113)
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call50, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter72 = load [256 x i128]*, [256 x i128]** %struct_getter71, align 8
  %carry_check74 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter72, i128 0, i128 %i.2
  store i128 %sub64, i128* %carry_check74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body51
  %add77 = add i128 %i.2, 1
  %slt80 = icmp slt i128 %add77, %checkcarrymodp.k.read_arg_inner
  br i1 %slt80, label %loop.body51, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch75
  br label %loop.body83

loop.body83:                                      ; preds = %loop.latch101, %loop.exit81
  %i.3 = phi i128 [ %checkcarrymodp.k.read_arg_inner, %loop.exit81 ], [ %add103, %loop.latch101 ]
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %call, i32 0, i32 6
  %bigmultshortlongunequal.out.read_output_outter86 = load [256 x i128]*, [256 x i128]** %struct_getter85, align 8
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlongunequal.out.read_output_outter86, i128 0, i128 %i.3
  %pX89 = load i128, i128* %array_getter88, align 4
  %neg = sub i128 0, %pX89
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call50, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %array_getter94 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter92, i128 0, i128 %i.3
  %carry_check95 = load i128, i128* %array_getter94, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check95, i128 %neg, i1* @constraint.114)
  %struct_getter97 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %call50, i32 0, i32 3
  %checkcarrytozero.in.read_input_outter98 = load [256 x i128]*, [256 x i128]** %struct_getter97, align 8
  %carry_check100 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrytozero.in.read_input_outter98, i128 0, i128 %i.3
  store i128 %neg, i128* %carry_check100, align 4
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.body83
  %add103 = add i128 %i.3, 1
  %add107 = add i128 %checkcarrymodp.k.read_arg_inner, %checkcarrymodp.m.read_arg_inner
  %sub108 = sub i128 %add107, 1
  %slt109 = icmp slt i128 %add103, %sub108
  br i1 %slt109, label %loop.body83, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch101
  br label %exit

exit:                                             ; preds = %loop.exit110
  ret void
}

define %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %0, i128 %1, i128 %2, i128 %3, [256 x i128]* %4) {
entry:
  %struct_template_circuit_checkcarrymodp = alloca %struct_template_circuit_checkcarrymodp, align 8
  %checkcarrymodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 0
  store i128 %0, i128* %checkcarrymodp.n.write_arg_inner, align 4
  %checkcarrymodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 1
  store i128 %1, i128* %checkcarrymodp.k.write_arg_inner, align 4
  %checkcarrymodp.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 2
  store i128 %2, i128* %checkcarrymodp.m.write_arg_inner, align 4
  %checkcarrymodp.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 3
  store i128 %3, i128* %checkcarrymodp.overflow.write_arg_inner, align 4
  %checkcarrymodp.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp, i32 0, i32 4
  store [256 x i128]* %4, [256 x i128]** %checkcarrymodp.p.write_arg_inner, align 8
  ret %struct_template_circuit_checkcarrymodp* %struct_template_circuit_checkcarrymodp
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %bits2num_strict.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %i1 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  %call2 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in4 = load i128, i128* %array_getter, align 4
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n9, i128 %in4, i1* @constraint.115)
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 1
  %bits2num.in.read_input_outter11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %b2n13 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter11, i128 0, i128 %i.0
  store i128 %in4, i128* %b2n13, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num_strict.in.read_input_inner, i128 0, i128 %i.0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter, i128 0, i128 %i.0
  %aliasCheck22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck22, i128 %in17, i1* @constraint.116)
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %call, i32 0, i32 0
  %aliascheck.in.read_input_outter25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %aliasCheck27 = getelementptr inbounds [256 x i128], [256 x i128]* %aliascheck.in.read_input_outter25, i128 0, i128 %i.0
  store i128 %in17, i128* %aliasCheck27, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call2, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %bits2num.out.read_output_outter, i1* @constraint.117)
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

define void @fn_template_init_modprod(%struct_template_circuit_modprod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 0
  %modprod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 1
  %modprod.a.read_input_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 2
  %modprod.b.read_input_inner = load i128, i128* %struct_getter2, align 4
  %carry = call i128 @fn_intrinsic_inline_init()
  %prod = call i128 @fn_intrinsic_inline_init()
  %i3 = call i128 @fn_intrinsic_inline_init()
  %mul = mul i128 2, %modprod.n.read_arg_inner
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %mul)
  %mul4 = mul i128 %modprod.a.read_input_inner, %modprod.b.read_input_inner
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %mul4, i1* @constraint.118)
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 1
  store i128 %mul4, i128* %num2bits.in.write_input_outter, align 4
  %call8 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %modprod.n.read_arg_inner)
  %call10 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %modprod.n.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add44, %loop.latch ]
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter, i128 0, i128 %i.0
  %n2b14 = load i128, i128* %array_getter, align 4
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call8, i32 0, i32 1
  %bits2num.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter, i128 0, i128 %i.0
  %b2n119 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n119, i128 %n2b14, i1* @constraint.119)
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call8, i32 0, i32 1
  %bits2num.in.read_input_outter22 = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %b2n124 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter22, i128 0, i128 %i.0
  store i128 %n2b14, i128* %b2n124, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %call, i32 0, i32 2
  %num2bits.out.read_output_outter27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %add = add i128 %i.0, %modprod.n.read_arg_inner
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %num2bits.out.read_output_outter27, i128 0, i128 %add
  %n2b31 = load i128, i128* %array_getter30, align 4
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call10, i32 0, i32 1
  %bits2num.in.read_input_outter34 = load [256 x i128]*, [256 x i128]** %struct_getter33, align 8
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter34, i128 0, i128 %i.0
  %b2n237 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n237, i128 %n2b31, i1* @constraint.120)
  %struct_getter39 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call10, i32 0, i32 1
  %bits2num.in.read_input_outter40 = load [256 x i128]*, [256 x i128]** %struct_getter39, align 8
  %b2n242 = getelementptr inbounds [256 x i128], [256 x i128]* %bits2num.in.read_input_outter40, i128 0, i128 %i.0
  store i128 %n2b31, i128* %b2n242, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add44 = add i128 %i.0, 1
  %slt = icmp slt i128 %add44, %modprod.n.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call8, i32 0, i32 2
  %bits2num.out.read_output_outter = load i128, i128* %struct_getter48, align 4
  call void @fn_intrinsic_add_constraint(i128 %prod, i128 %bits2num.out.read_output_outter, i1* @constraint.121)
  %modprod.prod.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %bits2num.out.read_output_outter, i128* %modprod.prod.write_output_inner, align 4
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  %modprod.prod.read_output_inner = load i128, i128* %struct_getter52, align 4
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %call10, i32 0, i32 2
  %bits2num.out.read_output_outter55 = load i128, i128* %struct_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry, i128 %bits2num.out.read_output_outter55, i1* @constraint.122)
  %modprod.carry.write_output_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %bits2num.out.read_output_outter55, i128* %modprod.carry.write_output_inner, align 4
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  %modprod.carry.read_output_inner = load i128, i128* %struct_getter59, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %modprod.prod.write_output_inner61 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %modprod.prod.read_output_inner, i128* %modprod.prod.write_output_inner61, align 4
  %modprod.carry.write_output_inner63 = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %modprod.carry.read_output_inner, i128* %modprod.carry.write_output_inner63, align 4
  ret void
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
  %struct_template_circuit_modprod = alloca %struct_template_circuit_modprod, align 8
  %modprod.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %struct_template_circuit_modprod, i32 0, i32 0
  store i128 %0, i128* %modprod.n.write_arg_inner, align 4
  ret %struct_template_circuit_modprod* %struct_template_circuit_modprod
}

define i128 @short_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %scale1 = call i128 @fn_intrinsic_inline_init()
  %ret4 = call i128 @fn_intrinsic_inline_init()
  %lshift = shl i128 1, %0
  %sub = sub i128 %1, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %sub
  %b5 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b5
  %sdiv = sdiv i128 %lshift, %add
  %add8 = add i128 %1, 1
  %call = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %add8, i128 %sdiv, [256 x i128]* %2)
  %call14 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %sdiv, [256 x i128]* %3)
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call14, i128 0, i128 %1
  %norm_b18 = load i128, i128* %array_getter17, align 4
  %ne = icmp ne i128 %norm_b18, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %add21 = add i128 %1, 1
  %call24 = call i128 @short_div_norm(i128 %0, i128 %add21, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.false:                                         ; preds = %entry
  %call29 = call i128 @short_div_norm(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %call14)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret.0 = phi i128 [ %call24, %if.true ], [ %call29, %if.false ]
  ret i128 %ret.0
}

define void @fn_template_init_fpnegate(%struct_template_circuit_fpnegate* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 0
  %fpnegate.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 1
  %fpnegate.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 2
  %fpnegate.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 3
  %fpnegate.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %idx4 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpnegate.n.read_arg_inner, i128 %fpnegate.k.read_arg_inner)
  %call6 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %fpnegate.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %idx.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpnegate.p.read_arg_inner, i128 0, i128 %idx.0
  %p8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %idx.0
  %neg13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg13, i128 %p8, i1* @constraint.123)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %neg17 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter15, i128 0, i128 %idx.0
  store i128 %p8, i128* %neg17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %fpnegate.in.read_input_inner, i128 0, i128 %idx.0
  %in20 = load i128, i128* %array_getter19, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %idx.0
  %neg25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg25, i128 %in20, i1* @constraint.124)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %neg30 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter28, i128 0, i128 %idx.0
  store i128 %in20, i128* %neg30, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %fpnegate.in.read_input_inner, i128 0, i128 %idx.0
  %in34 = load i128, i128* %array_getter33, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 1
  %bigiszero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter36, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter, i128 0, i128 %idx.0
  %is_zero39 = load i128, i128* %array_getter38, align 4
  call void @fn_intrinsic_add_constraint(i128 %is_zero39, i128 %in34, i1* @constraint.125)
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 1
  %bigiszero.in.read_input_outter42 = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %is_zero44 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter42, i128 0, i128 %idx.0
  store i128 %in34, i128* %is_zero44, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %fpnegate.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %bigsub.underflow.read_output_outter, i128 0, i1* @constraint.126)
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch65, %loop.exit
  %idx.1 = phi i128 [ 0, %loop.exit ], [ %add67, %loop.latch65 ]
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 2
  %bigiszero.out.read_output_outter = load i128, i128* %struct_getter52, align 4
  %sub = sub i128 1, %bigiszero.out.read_output_outter
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %idx.1
  %neg57 = load i128, i128* %array_getter56, align 4
  %mul = mul i128 %sub, %neg57
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %idx.1
  %out61 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_add_constraint(i128 %out61, i128 %mul, i1* @constraint.127)
  %out64 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %idx.1
  store i128 %mul, i128* %out64, align 4
  br label %loop.latch65

loop.latch65:                                     ; preds = %loop.body50
  %add67 = add i128 %idx.1, 1
  %slt70 = icmp slt i128 %add67, %fpnegate.k.read_arg_inner
  br i1 %slt70, label %loop.body50, label %loop.exit71

loop.exit71:                                      ; preds = %loop.latch65
  br label %exit

exit:                                             ; preds = %loop.exit71
  %fpnegate.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %fpnegate.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpnegate* @fn_template_build_fpnegate(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpnegate = alloca %struct_template_circuit_fpnegate, align 8
  %fpnegate.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 0
  store i128 %0, i128* %fpnegate.n.write_arg_inner, align 4
  %fpnegate.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 1
  store i128 %1, i128* %fpnegate.k.write_arg_inner, align 4
  %fpnegate.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpnegate, %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpnegate.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpnegate* %struct_template_circuit_fpnegate
}

define [256 x [256 x i128]]* @prod2D(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x [256 x i128]]* %4) {
entry:
  %j21 = call i128 @fn_intrinsic_inline_init()
  %j3 = call i128 @fn_intrinsic_inline_init()
  %i14 = call i128 @fn_intrinsic_inline_init()
  %i8 = call i128 @fn_intrinsic_inline_init()
  %i211 = call i128 @fn_intrinsic_inline_init()
  %j112 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch19, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add21, %loop.latch19 ]
  br label %loop.body13

loop.body13:                                      ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %prod_val16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.0, i128 %i.0
  store i128 0, i128* %prod_val16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body13
  %add = add i128 %j.0, 1
  %mul = mul i128 2, %2
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %add, %sub
  br i1 %slt, label %loop.body13, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch19

loop.latch19:                                     ; preds = %loop.exit
  %add21 = add i128 %i.0, 1
  %mul23 = mul i128 2, %1
  %sub24 = sub i128 %mul23, 1
  %slt25 = icmp slt i128 %add21, %sub24
  br i1 %slt25, label %loop.body, label %loop.exit26

loop.exit26:                                      ; preds = %loop.latch19
  br label %loop.body27

loop.body27:                                      ; preds = %loop.latch78, %loop.exit26
  %i1.0 = phi i128 [ 0, %loop.exit26 ], [ %add80, %loop.latch78 ]
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch71, %loop.body27
  %i2.0 = phi i128 [ 0, %loop.body27 ], [ %add73, %loop.latch71 ]
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch64, %loop.body28
  %j1.0 = phi i128 [ 0, %loop.body28 ], [ %add66, %loop.latch64 ]
  br label %loop.body30

loop.body30:                                      ; preds = %loop.latch57, %loop.body29
  %j2.0 = phi i128 [ 0, %loop.body29 ], [ %add59, %loop.latch57 ]
  %add34 = add i128 %j1.0, %j2.0
  %add37 = add i128 %i1.0, %i2.0
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add34, i128 %add37
  %prod_val38 = load i128, i128* %array_getter, align 4
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j1.0, i128 %i1.0
  %a42 = load i128, i128* %array_getter41, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %4, i128 0, i128 %j2.0, i128 %i2.0
  %b46 = load i128, i128* %array_getter45, align 4
  %mul47 = mul i128 %a42, %b46
  %add48 = add i128 %prod_val38, %mul47
  %add52 = add i128 %j1.0, %j2.0
  %add55 = add i128 %i1.0, %i2.0
  %prod_val56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %add52, i128 %add55
  store i128 %add48, i128* %prod_val56, align 4
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.body30
  %add59 = add i128 %j2.0, 1
  %slt62 = icmp slt i128 %add59, %2
  br i1 %slt62, label %loop.body30, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch57
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.exit63
  %add66 = add i128 %j1.0, 1
  %slt69 = icmp slt i128 %add66, %2
  br i1 %slt69, label %loop.body29, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.exit70
  %add73 = add i128 %i2.0, 1
  %slt76 = icmp slt i128 %add73, %1
  br i1 %slt76, label %loop.body28, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.exit77
  %add80 = add i128 %i1.0, 1
  %slt83 = icmp slt i128 %add80, %1
  br i1 %slt83, label %loop.body27, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %uniform_array85 = alloca [256 x [256 x i128]], align 8
  %uniform_array86 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body87

loop.body87:                                      ; preds = %loop.latch109, %loop.exit84
  %j.1 = phi i128 [ 0, %loop.exit84 ], [ %add111, %loop.latch109 ]
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch100, %loop.body87
  %i.1 = phi i128 [ 0, %loop.body87 ], [ %add102, %loop.latch100 ]
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 %j.1, i128 %i.1
  %prod_val93 = load i128, i128* %array_getter92, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val93, i128 %0, i128 %0, i128 %0)
  %split99 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.1, i128 %i.1
  %5 = bitcast [256 x i128]* %split99 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body88
  %add102 = add i128 %i.1, 1
  %mul105 = mul i128 2, %1
  %sub106 = sub i128 %mul105, 1
  %slt107 = icmp slt i128 %add102, %sub106
  br i1 %slt107, label %loop.body88, label %loop.exit108

loop.exit108:                                     ; preds = %loop.latch100
  br label %loop.latch109

loop.latch109:                                    ; preds = %loop.exit108
  %add111 = add i128 %j.1, 1
  %mul115 = mul i128 2, %2
  %sub116 = sub i128 %mul115, 1
  %slt117 = icmp slt i128 %add111, %sub116
  br i1 %slt117, label %loop.body87, label %loop.exit118

loop.exit118:                                     ; preds = %loop.latch109
  %uniform_array119 = alloca [256 x [256 x i128]], align 8
  %uniform_array120 = alloca [256 x [256 x i128]], align 8
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch258, %loop.exit118
  %j.2 = phi i128 [ 0, %loop.exit118 ], [ %add260, %loop.latch258 ]
  %carry124 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 0
  store i128 0, i128* %carry124, align 4
  %array_getter127 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 0
  %split128 = load i128, i128* %array_getter127, align 4
  %out131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 0
  store i128 %split128, i128* %out131, align 4
  %mul133 = mul i128 2, %1
  %sub134 = sub i128 %mul133, 1
  %sgt = icmp sgt i128 %sub134, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body121
  %array_getter137 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 0, i128 1
  %split138 = load i128, i128* %array_getter137, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 1, i128 0
  %split142 = load i128, i128* %array_getter141, align 4
  %add143 = add i128 %split138, %split142
  %call146 = call [2 x i128]* @SplitFn(i128 %add143, i128 %0, i128 %0)
  %sumAndCarry149 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2
  %7 = bitcast [256 x i128]* %sumAndCarry149 to i8*
  %8 = bitcast [2 x i128]* %call146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %array_getter152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 0
  %sumAndCarry153 = load i128, i128* %array_getter152, align 4
  %out156 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry153, i128* %out156, align 4
  %array_getter159 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 1
  %sumAndCarry160 = load i128, i128* %array_getter159, align 4
  %carry163 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 1
  store i128 %sumAndCarry160, i128* %carry163, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body121
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %mul167 = mul i128 2, %1
  %sub168 = sub i128 %mul167, 1
  %sgt169 = icmp sgt i128 %sub168, 2
  br i1 %sgt169, label %if.true164, label %if.false165

if.true164:                                       ; preds = %if.exit
  br label %loop.body170

if.false165:                                      ; preds = %if.exit
  br label %if.exit257

loop.body170:                                     ; preds = %loop.latch219, %if.true164
  %i.2 = phi i128 [ 2, %if.true164 ], [ %add221, %loop.latch219 ]
  %array_getter174 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %i.2, i128 0
  %split175 = load i128, i128* %array_getter174, align 4
  %sub179 = sub i128 %i.2, 1
  %array_getter180 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub179, i128 1
  %split181 = load i128, i128* %array_getter180, align 4
  %add182 = add i128 %split175, %split181
  %sub186 = sub i128 %i.2, 2
  %array_getter187 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub186, i128 2
  %split188 = load i128, i128* %array_getter187, align 4
  %add189 = add i128 %add182, %split188
  %sub193 = sub i128 %i.2, 1
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %sub193
  %carry195 = load i128, i128* %array_getter194, align 4
  %add196 = add i128 %add189, %carry195
  %call199 = call [2 x i128]* @SplitFn(i128 %add196, i128 %0, i128 %0)
  %sumAndCarry202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2
  %9 = bitcast [256 x i128]* %sumAndCarry202 to i8*
  %10 = bitcast [2 x i128]* %call199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %array_getter205 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 0
  %sumAndCarry206 = load i128, i128* %array_getter205, align 4
  %out210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry206, i128* %out210, align 4
  %array_getter213 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array120, i128 0, i128 %j.2, i128 1
  %sumAndCarry214 = load i128, i128* %array_getter213, align 4
  %carry218 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %i.2
  store i128 %sumAndCarry214, i128* %carry218, align 4
  br label %loop.latch219

loop.latch219:                                    ; preds = %loop.body170
  %add221 = add i128 %i.2, 1
  %mul224 = mul i128 2, %1
  %sub225 = sub i128 %mul224, 1
  %slt226 = icmp slt i128 %add221, %sub225
  br i1 %slt226, label %loop.body170, label %loop.exit227

loop.exit227:                                     ; preds = %loop.latch219
  %mul231 = mul i128 2, %1
  %sub232 = sub i128 %mul231, 2
  %array_getter233 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub232, i128 1
  %split234 = load i128, i128* %array_getter233, align 4
  %mul238 = mul i128 2, %1
  %sub239 = sub i128 %mul238, 3
  %array_getter240 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array86, i128 0, i128 %j.2, i128 %sub239, i128 2
  %split241 = load i128, i128* %array_getter240, align 4
  %add242 = add i128 %split234, %split241
  %mul246 = mul i128 2, %1
  %sub247 = sub i128 %mul246, 2
  %array_getter248 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array119, i128 0, i128 %j.2, i128 %sub247
  %carry249 = load i128, i128* %array_getter248, align 4
  %add250 = add i128 %add242, %carry249
  %mul254 = mul i128 2, %1
  %sub255 = sub i128 %mul254, 1
  %out256 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array85, i128 0, i128 %j.2, i128 %sub255
  store i128 %add250, i128* %out256, align 4
  br label %if.exit257

if.exit257:                                       ; preds = %loop.exit227, %if.false165
  br label %loop.latch258

loop.latch258:                                    ; preds = %if.exit257
  %add260 = add i128 %j.2, 1
  %mul263 = mul i128 2, %2
  %sub264 = sub i128 %mul263, 1
  %slt265 = icmp slt i128 %add260, %sub264
  br i1 %slt265, label %loop.body121, label %loop.exit266

loop.exit266:                                     ; preds = %loop.latch258
  ret [256 x [256 x i128]]* %uniform_array85
}

define void @fn_template_init_bigsubmodp(%struct_template_circuit_bigsubmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 0
  %bigsubmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 1
  %bigsubmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 2
  %bigsubmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 3
  %bigsubmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 4
  %bigsubmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %flag = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall to [256 x i128]*
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall6 to [256 x i128]*
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %bigsubmodp.n.read_arg_inner, i128 %bigsubmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add32, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigsubmodp.a.read_input_inner, i128 0, i128 %i.0
  %a8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.0
  %sub13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub13, i128 %a8, i1* @constraint.128)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %sub17 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter15, i128 0, i128 %i.0
  store i128 %a8, i128* %sub17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsubmodp.b.read_input_inner, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.0
  %sub25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub25, i128 %b20, i1* @constraint.129)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %sub30 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter28, i128 0, i128 %i.0
  store i128 %b20, i128* %sub30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add32 = add i128 %i.0, 1
  %slt = icmp slt i128 %add32, %bigsubmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag, i128 %bigsub.underflow.read_output_outter, i1* @constraint.130)
  %bigsubmodp.flag.write_inter_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_outter, i128* %bigsubmodp.flag.write_inter_inner, align 4
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  %bigsubmodp.flag.read_inter_inner = load i128, i128* %struct_getter40, align 4
  %call43 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigsubmodp.n.read_arg_inner, i128 %bigsubmodp.k.read_arg_inner)
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch73, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add75, %loop.latch73 ]
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %i.1
  %sub49 = load i128, i128* %array_getter48, align 4
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.1
  %add54 = load i128, i128* %array_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %add54, i128 %sub49, i1* @constraint.131)
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 2
  %bigadd.a.read_input_outter57 = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %add59 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter57, i128 0, i128 %i.1
  store i128 %sub49, i128* %add59, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsubmodp.p.read_input_inner, i128 0, i128 %i.1
  %p62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.1
  %add67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %add67, i128 %p62, i1* @constraint.132)
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 3
  %bigadd.b.read_input_outter70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %add72 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter70, i128 0, i128 %i.1
  store i128 %p62, i128* %add72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body44
  %add75 = add i128 %i.1, 1
  %slt78 = icmp slt i128 %add75, %bigsubmodp.k.read_arg_inner
  br i1 %slt78, label %loop.body44, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch115, %loop.exit79
  %i.2 = phi i128 [ 0, %loop.exit79 ], [ %add117, %loop.latch115 ]
  %sub82 = sub i128 1, %bigsubmodp.flag.read_inter_inner
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter85 = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter85, i128 0, i128 %i.2
  %sub88 = load i128, i128* %array_getter87, align 4
  %mul = mul i128 %sub82, %sub88
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  %tmp92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp92, i128 %mul, i1* @constraint.133)
  %tmp95 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  store i128 %mul, i128* %tmp95, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  %tmp99 = load i128, i128* %array_getter98, align 4
  %struct_getter102 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter102, align 8
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.2
  %add105 = load i128, i128* %array_getter104, align 4
  %mul106 = mul i128 %bigsubmodp.flag.read_inter_inner, %add105
  %add107 = add i128 %tmp99, %mul106
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out111 = load i128, i128* %array_getter110, align 4
  call void @fn_intrinsic_add_constraint(i128 %out111, i128 %add107, i1* @constraint.134)
  %out114 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  store i128 %add107, i128* %out114, align 4
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.body80
  %add117 = add i128 %i.2, 1
  %slt120 = icmp slt i128 %add117, %bigsubmodp.k.read_arg_inner
  br i1 %slt120, label %loop.body80, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch115
  br label %exit

exit:                                             ; preds = %loop.exit121
  %bigsubmodp.flag.write_inter_inner123 = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store i128 %bigsubmodp.flag.read_inter_inner, i128* %bigsubmodp.flag.write_inter_inner123, align 4
  %bigsubmodp.tmp.write_inter_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 6
  store [256 x i128]* %tmp, [256 x i128]** %bigsubmodp.tmp.write_inter_inner, align 8
  %bigsubmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 7
  store [256 x i128]* %out, [256 x i128]** %bigsubmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigsubmodp* @fn_template_build_bigsubmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigsubmodp = alloca %struct_template_circuit_bigsubmodp, align 8
  %bigsubmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 0
  store i128 %0, i128* %bigsubmodp.n.write_arg_inner, align 4
  %bigsubmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp, i32 0, i32 1
  store i128 %1, i128* %bigsubmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigsubmodp* %struct_template_circuit_bigsubmodp
}

define void @fn_template_init_fpsubtract(%struct_template_circuit_fpsubtract* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 0
  %fpsubtract.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 1
  %fpsubtract.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 2
  %fpsubtract.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 3
  %fpsubtract.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 4
  %fpsubtract.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall5 to [256 x i128]*
  %flag = call i128 @fn_intrinsic_inline_init()
  %i6 = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpsubtract.n.read_arg_inner, i128 %fpsubtract.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add32, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpsubtract.a.read_input_inner, i128 0, i128 %i.0
  %a8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.0
  %sub13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub13, i128 %a8, i1* @constraint.135)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 2
  %bigsub.a.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %sub17 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter15, i128 0, i128 %i.0
  store i128 %a8, i128* %sub17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsubtract.b.read_input_inner, i128 0, i128 %i.0
  %b20 = load i128, i128* %array_getter19, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.0
  %sub25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub25, i128 %b20, i1* @constraint.136)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 3
  %bigsub.b.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %sub30 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter28, i128 0, i128 %i.0
  store i128 %b20, i128* %sub30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add32 = add i128 %i.0, 1
  %slt = icmp slt i128 %add32, %fpsubtract.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 5
  %bigsub.underflow.read_output_outter = load i128, i128* %struct_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag, i128 %bigsub.underflow.read_output_outter, i1* @constraint.137)
  %fpsubtract.flag.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store i128 %bigsub.underflow.read_output_outter, i128* %fpsubtract.flag.write_inter_inner, align 4
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  %fpsubtract.flag.read_inter_inner = load i128, i128* %struct_getter40, align 4
  %call43 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %fpsubtract.n.read_arg_inner, i128 %fpsubtract.k.read_arg_inner)
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch73, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add75, %loop.latch73 ]
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %array_getter48 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %i.1
  %sub49 = load i128, i128* %array_getter48, align 4
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %array_getter53 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.1
  %add54 = load i128, i128* %array_getter53, align 4
  call void @fn_intrinsic_add_constraint(i128 %add54, i128 %sub49, i1* @constraint.138)
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 2
  %bigadd.a.read_input_outter57 = load [256 x i128]*, [256 x i128]** %struct_getter56, align 8
  %add59 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter57, i128 0, i128 %i.1
  store i128 %sub49, i128* %add59, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsubtract.p.read_arg_inner, i128 0, i128 %i.1
  %p62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.1
  %add67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %add67, i128 %p62, i1* @constraint.139)
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 3
  %bigadd.b.read_input_outter70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %add72 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter70, i128 0, i128 %i.1
  store i128 %p62, i128* %add72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body44
  %add75 = add i128 %i.1, 1
  %slt78 = icmp slt i128 %add75, %fpsubtract.k.read_arg_inner
  br i1 %slt78, label %loop.body44, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch115, %loop.exit79
  %i.2 = phi i128 [ 0, %loop.exit79 ], [ %add117, %loop.latch115 ]
  %sub82 = sub i128 1, %fpsubtract.flag.read_inter_inner
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call, i32 0, i32 4
  %bigsub.out.read_output_outter85 = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter85, i128 0, i128 %i.2
  %sub88 = load i128, i128* %array_getter87, align 4
  %mul = mul i128 %sub82, %sub88
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  %tmp92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp92, i128 %mul, i1* @constraint.140)
  %tmp95 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  store i128 %mul, i128* %tmp95, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp, i128 0, i128 %i.2
  %tmp99 = load i128, i128* %array_getter98, align 4
  %struct_getter102 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call43, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter102, align 8
  %array_getter104 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.2
  %add105 = load i128, i128* %array_getter104, align 4
  %mul106 = mul i128 %fpsubtract.flag.read_inter_inner, %add105
  %add107 = add i128 %tmp99, %mul106
  %array_getter110 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out111 = load i128, i128* %array_getter110, align 4
  call void @fn_intrinsic_add_constraint(i128 %out111, i128 %add107, i1* @constraint.141)
  %out114 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  store i128 %add107, i128* %out114, align 4
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.body80
  %add117 = add i128 %i.2, 1
  %slt120 = icmp slt i128 %add117, %fpsubtract.k.read_arg_inner
  br i1 %slt120, label %loop.body80, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch115
  br label %exit

exit:                                             ; preds = %loop.exit121
  %fpsubtract.flag.write_inter_inner123 = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store i128 %fpsubtract.flag.read_inter_inner, i128* %fpsubtract.flag.write_inter_inner123, align 4
  %fpsubtract.tmp.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 6
  store [256 x i128]* %tmp, [256 x i128]** %fpsubtract.tmp.write_inter_inner, align 8
  %fpsubtract.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 7
  store [256 x i128]* %out, [256 x i128]** %fpsubtract.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpsubtract* @fn_template_build_fpsubtract(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsubtract = alloca %struct_template_circuit_fpsubtract, align 8
  %fpsubtract.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 0
  store i128 %0, i128* %fpsubtract.n.write_arg_inner, align 4
  %fpsubtract.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 1
  store i128 %1, i128* %fpsubtract.k.write_arg_inner, align 4
  %fpsubtract.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpsubtract.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpsubtract* %struct_template_circuit_fpsubtract
}

define [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call i128 @long_gt(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %2)
  %eq = icmp eq i128 %call, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call7 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %3)
  %call8 = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %call7)
  ret [256 x i128]* %call8

if.false:                                         ; preds = %entry
  %call13 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x i128]* %call13
}

define void @fn_template_init_multiand(%struct_template_circuit_multiand* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 0
  %multiand.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 1
  %multiand.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter1, align 8
  %n12 = call i128 @fn_intrinsic_inline_init()
  %ands3 = alloca [256 x %struct_template_circuit_multiand*], align 8
  %n24 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %eq = icmp eq i128 %multiand.n.read_arg_inner, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner, i128 0, i128 0
  %in6 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %in6, i1* @constraint.142)
  %multiand.out.write_output_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %in6, i128* %multiand.out.write_output_inner, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner = load i128, i128* %struct_getter9, align 4
  br label %if.exit133

if.false:                                         ; preds = %entry
  %eq14 = icmp eq i128 %multiand.n.read_arg_inner, 2
  br i1 %eq14, label %if.true10, label %if.false11

if.true10:                                        ; preds = %if.false
  %call = call %struct_template_circuit_and* @fn_template_build_and()
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner, i128 0, i128 0
  %in17 = load i128, i128* %array_getter16, align 4
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter, i128 %in17, i1* @constraint.143)
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 0
  store i128 %in17, i128* %and.a.write_input_outter, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner, i128 0, i128 1
  %in23 = load i128, i128* %array_getter22, align 4
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter, i128 %in23, i1* @constraint.144)
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 1
  store i128 %in23, i128* %and.b.write_input_outter, align 4
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter28, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %and.out.read_output_outter, i1* @constraint.145)
  %multiand.out.write_output_inner31 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %and.out.read_output_outter, i128* %multiand.out.write_output_inner31, align 4
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner34 = load i128, i128* %struct_getter33, align 4
  br label %if.exit

if.false11:                                       ; preds = %if.false
  %call35 = call %struct_template_circuit_and* @fn_template_build_and()
  %sdiv = sdiv i128 %multiand.n.read_arg_inner, 2
  %sdiv39 = sdiv i128 %multiand.n.read_arg_inner, 2
  %sub = sub i128 %multiand.n.read_arg_inner, %sdiv39
  %call41 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %sdiv)
  %ands43 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 0
  store %struct_template_circuit_multiand* %call41, %struct_template_circuit_multiand** %ands43, align 8
  %call45 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %sub)
  %ands47 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 1
  store %struct_template_circuit_multiand* %call45, %struct_template_circuit_multiand** %ands47, align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false11
  %i.0 = phi i128 [ 0, %if.false11 ], [ %add, %loop.latch ]
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner, i128 0, i128 %i.0
  %in51 = load i128, i128* %array_getter50, align 4
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 0
  %ands54 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter53, align 8
  %ptr_cast = bitcast %struct_template_circuit_multiand* %ands54 to %struct_template_circuit_multiand*
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast, i32 0, i32 1
  %multiand.in.read_input_inner56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner56, i128 0, i128 %i.0
  %ands59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands59, i128 %in51, i1* @constraint.146)
  %array_getter61 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 0
  %ands62 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter61, align 8
  %ptr_cast63 = bitcast %struct_template_circuit_multiand* %ands62 to %struct_template_circuit_multiand*
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast63, i32 0, i32 1
  %multiand.in.read_input_inner65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %ands67 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner65, i128 0, i128 %i.0
  store i128 %in51, i128* %ands67, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %sdiv
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch95, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add97, %loop.latch95 ]
  %add75 = add i128 %sdiv, %i.1
  %array_getter76 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner, i128 0, i128 %add75
  %in77 = load i128, i128* %array_getter76, align 4
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 1
  %ands80 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter79, align 8
  %ptr_cast81 = bitcast %struct_template_circuit_multiand* %ands80 to %struct_template_circuit_multiand*
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast81, i32 0, i32 1
  %multiand.in.read_input_inner83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner83, i128 0, i128 %i.1
  %ands86 = load i128, i128* %array_getter85, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands86, i128 %in77, i1* @constraint.147)
  %array_getter88 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 1
  %ands89 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter88, align 8
  %ptr_cast90 = bitcast %struct_template_circuit_multiand* %ands89 to %struct_template_circuit_multiand*
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast90, i32 0, i32 1
  %multiand.in.read_input_inner92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %ands94 = getelementptr inbounds [256 x i128], [256 x i128]* %multiand.in.read_input_inner92, i128 0, i128 %i.1
  store i128 %in77, i128* %ands94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body71
  %add97 = add i128 %i.1, 1
  %slt100 = icmp slt i128 %add97, %sub
  br i1 %slt100, label %loop.body71, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch95
  %array_getter103 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 0
  %ands104 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter103, align 8
  %ptr_cast105 = bitcast %struct_template_circuit_multiand* %ands104 to %struct_template_circuit_multiand*
  %struct_getter106 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast105, i32 0, i32 2
  %multiand.out.read_output_inner107 = load i128, i128* %struct_getter106, align 4
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call35, i32 0, i32 0
  %and.a.read_input_outter110 = load i128, i128* %struct_getter109, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter110, i128 %multiand.out.read_output_inner107, i1* @constraint.148)
  %and.a.write_input_outter112 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call35, i32 0, i32 0
  store i128 %multiand.out.read_output_inner107, i128* %and.a.write_input_outter112, align 4
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands3, i128 0, i128 1
  %ands115 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter114, align 8
  %ptr_cast116 = bitcast %struct_template_circuit_multiand* %ands115 to %struct_template_circuit_multiand*
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast116, i32 0, i32 2
  %multiand.out.read_output_inner118 = load i128, i128* %struct_getter117, align 4
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call35, i32 0, i32 1
  %and.b.read_input_outter121 = load i128, i128* %struct_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter121, i128 %multiand.out.read_output_inner118, i1* @constraint.149)
  %and.b.write_input_outter123 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call35, i32 0, i32 1
  store i128 %multiand.out.read_output_inner118, i128* %and.b.write_input_outter123, align 4
  %struct_getter125 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %call35, i32 0, i32 2
  %and.out.read_output_outter126 = load i128, i128* %struct_getter125, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %and.out.read_output_outter126, i1* @constraint.150)
  %multiand.out.write_output_inner129 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %and.out.read_output_outter126, i128* %multiand.out.write_output_inner129, align 4
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  %multiand.out.read_output_inner132 = load i128, i128* %struct_getter131, align 4
  br label %if.exit

if.exit:                                          ; preds = %loop.exit101, %if.true10
  %multiand.out.declare_output.0 = phi i128 [ %multiand.out.read_output_inner34, %if.true10 ], [ %multiand.out.read_output_inner132, %loop.exit101 ]
  br label %if.exit133

if.exit133:                                       ; preds = %if.exit, %if.true
  %multiand.out.declare_output.1 = phi i128 [ %multiand.out.read_output_inner, %if.true ], [ %multiand.out.declare_output.0, %if.exit ]
  br label %exit

exit:                                             ; preds = %if.exit133
  %multiand.out.write_output_inner135 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %multiand.out.declare_output.1, i128* %multiand.out.write_output_inner135, align 4
  ret void
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
  %struct_template_circuit_multiand = alloca %struct_template_circuit_multiand, align 8
  %multiand.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %struct_template_circuit_multiand, i32 0, i32 0
  store i128 %0, i128* %multiand.n.write_arg_inner, align 4
  ret %struct_template_circuit_multiand* %struct_template_circuit_multiand
}

define void @fn_template_init_biglessthan(%struct_template_circuit_biglessthan* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 0
  %biglessthan.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 1
  %biglessthan.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 2
  %biglessthan.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 3
  %biglessthan.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %eq_ands4 = alloca [256 x %struct_template_circuit_and*], align 8
  %out = call i128 @fn_intrinsic_inline_init()
  %eq5 = alloca [256 x %struct_template_circuit_isequal*], align 8
  %ors6 = alloca [256 x %struct_template_circuit_or*], align 8
  %lt7 = alloca [256 x %struct_template_circuit_lessthan*], align 8
  %i8 = call i128 @fn_intrinsic_inline_init()
  %ands9 = alloca [256 x %struct_template_circuit_and*], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %biglessthan.n.read_arg_inner)
  %lt11 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.0
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt11, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_inner, i128 0, i128 %i.0
  %a13 = load i128, i128* %array_getter, align 4
  %array_getter16 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.0
  %lt17 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter16, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt17, i32 0, i32 1
  %lessthan.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter, i128 0, i128 0
  %lt20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt20, i128 %a13, i1* @constraint.151)
  %array_getter23 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.0
  %lt24 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter23, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt24, i32 0, i32 1
  %lessthan.in.read_input_outter26 = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %lt27 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter26, i128 0, i128 0
  store i128 %a13, i128* %lt27, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_inner, i128 0, i128 %i.0
  %b30 = load i128, i128* %array_getter29, align 4
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.0
  %lt34 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt34, i32 0, i32 1
  %lessthan.in.read_input_outter36 = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter36, i128 0, i128 1
  %lt38 = load i128, i128* %array_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt38, i128 %b30, i1* @constraint.152)
  %array_getter41 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.0
  %lt42 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter41, align 8
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt42, i32 0, i32 1
  %lessthan.in.read_input_outter44 = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %lt45 = getelementptr inbounds [256 x i128], [256 x i128]* %lessthan.in.read_input_outter44, i128 0, i128 1
  store i128 %b30, i128* %lt45, align 4
  %call46 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %eq49 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.0
  store %struct_template_circuit_isequal* %call46, %struct_template_circuit_isequal** %eq49, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_inner, i128 0, i128 %i.0
  %a53 = load i128, i128* %array_getter52, align 4
  %array_getter56 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.0
  %eq57 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter56, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq57, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %eq60 = load i128, i128* %array_getter59, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq60, i128 %a53, i1* @constraint.153)
  %array_getter63 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.0
  %eq64 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter63, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq64, i32 0, i32 0
  %isequal.in.read_input_outter66 = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %eq67 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter66, i128 0, i128 0
  store i128 %a53, i128* %eq67, align 4
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_inner, i128 0, i128 %i.0
  %b71 = load i128, i128* %array_getter70, align 4
  %array_getter74 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.0
  %eq75 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter74, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq75, i32 0, i32 0
  %isequal.in.read_input_outter77 = load [256 x i128]*, [256 x i128]** %struct_getter76, align 8
  %array_getter78 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter77, i128 0, i128 1
  %eq79 = load i128, i128* %array_getter78, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq79, i128 %b71, i1* @constraint.154)
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.0
  %eq83 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter82, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq83, i32 0, i32 0
  %isequal.in.read_input_outter85 = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %eq86 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter85, i128 0, i128 1
  store i128 %b71, i128* %eq86, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %biglessthan.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub = sub i128 %biglessthan.k.read_arg_inner, 2
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch307, %loop.exit
  %i.1 = phi i128 [ %sub, %loop.exit ], [ %sub309, %loop.latch307 ]
  %call91 = call %struct_template_circuit_and* @fn_template_build_and()
  %ands94 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  store %struct_template_circuit_and* %call91, %struct_template_circuit_and** %ands94, align 8
  %call95 = call %struct_template_circuit_and* @fn_template_build_and()
  %eq_ands98 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  store %struct_template_circuit_and* %call95, %struct_template_circuit_and** %eq_ands98, align 8
  %call99 = call %struct_template_circuit_or* @fn_template_build_or()
  %ors102 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  store %struct_template_circuit_or* %call99, %struct_template_circuit_or** %ors102, align 8
  %sub105 = sub i128 %biglessthan.k.read_arg_inner, 2
  %eq106 = icmp eq i128 %i.1, %sub105
  br i1 %eq106, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body90
  %sub109 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter110 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %sub109
  %eq111 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter110, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq111, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter112, align 4
  %array_getter115 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands116 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter115, align 8
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands116, i32 0, i32 0
  %and.a.read_input_outter = load i128, i128* %struct_getter117, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter, i128 %isequal.out.read_output_outter, i1* @constraint.155)
  %array_getter120 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands121 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter120, align 8
  %and.a.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands121, i32 0, i32 0
  store i128 %isequal.out.read_output_outter, i128* %and.a.write_input_outter, align 4
  %sub124 = sub i128 %biglessthan.k.read_arg_inner, 2
  %array_getter125 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %sub124
  %lt126 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter125, align 8
  %struct_getter127 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt126, i32 0, i32 2
  %lessthan.out.read_output_outter = load i128, i128* %struct_getter127, align 4
  %array_getter130 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands131 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter130, align 8
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands131, i32 0, i32 1
  %and.b.read_input_outter = load i128, i128* %struct_getter132, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter, i128 %lessthan.out.read_output_outter, i1* @constraint.156)
  %array_getter135 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands136 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter135, align 8
  %and.b.write_input_outter = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands136, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter, i128* %and.b.write_input_outter, align 4
  %sub139 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter140 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %sub139
  %eq141 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter140, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq141, i32 0, i32 1
  %isequal.out.read_output_outter143 = load i128, i128* %struct_getter142, align 4
  %array_getter146 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands147 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter146, align 8
  %struct_getter148 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands147, i32 0, i32 0
  %and.a.read_input_outter149 = load i128, i128* %struct_getter148, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter149, i128 %isequal.out.read_output_outter143, i1* @constraint.157)
  %array_getter152 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands153 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter152, align 8
  %and.a.write_input_outter154 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands153, i32 0, i32 0
  store i128 %isequal.out.read_output_outter143, i128* %and.a.write_input_outter154, align 4
  %sub157 = sub i128 %biglessthan.k.read_arg_inner, 2
  %array_getter158 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %sub157
  %eq159 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter158, align 8
  %struct_getter160 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq159, i32 0, i32 1
  %isequal.out.read_output_outter161 = load i128, i128* %struct_getter160, align 4
  %array_getter164 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands165 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter164, align 8
  %struct_getter166 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands165, i32 0, i32 1
  %and.b.read_input_outter167 = load i128, i128* %struct_getter166, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter167, i128 %isequal.out.read_output_outter161, i1* @constraint.158)
  %array_getter170 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands171 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter170, align 8
  %and.b.write_input_outter172 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands171, i32 0, i32 1
  store i128 %isequal.out.read_output_outter161, i128* %and.b.write_input_outter172, align 4
  %sub175 = sub i128 %biglessthan.k.read_arg_inner, 1
  %array_getter176 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %sub175
  %lt177 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter176, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt177, i32 0, i32 2
  %lessthan.out.read_output_outter179 = load i128, i128* %struct_getter178, align 4
  %array_getter182 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors183 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter182, align 8
  %struct_getter184 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors183, i32 0, i32 0
  %or.a.read_input_outter = load i128, i128* %struct_getter184, align 4
  call void @fn_intrinsic_add_constraint(i128 %or.a.read_input_outter, i128 %lessthan.out.read_output_outter179, i1* @constraint.159)
  %array_getter187 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors188 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter187, align 8
  %or.a.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors188, i32 0, i32 0
  store i128 %lessthan.out.read_output_outter179, i128* %or.a.write_input_outter, align 4
  %array_getter191 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands192 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter191, align 8
  %struct_getter193 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands192, i32 0, i32 2
  %and.out.read_output_outter = load i128, i128* %struct_getter193, align 4
  %array_getter196 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors197 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter196, align 8
  %struct_getter198 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors197, i32 0, i32 1
  %or.b.read_input_outter = load i128, i128* %struct_getter198, align 4
  call void @fn_intrinsic_add_constraint(i128 %or.b.read_input_outter, i128 %and.out.read_output_outter, i1* @constraint.160)
  %array_getter201 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors202 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter201, align 8
  %or.b.write_input_outter = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors202, i32 0, i32 1
  store i128 %and.out.read_output_outter, i128* %or.b.write_input_outter, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body90
  %add205 = add i128 %i.1, 1
  %array_getter206 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %add205
  %eq_ands207 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter206, align 8
  %struct_getter208 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands207, i32 0, i32 2
  %and.out.read_output_outter209 = load i128, i128* %struct_getter208, align 4
  %array_getter212 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands213 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter212, align 8
  %struct_getter214 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands213, i32 0, i32 0
  %and.a.read_input_outter215 = load i128, i128* %struct_getter214, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter215, i128 %and.out.read_output_outter209, i1* @constraint.161)
  %array_getter218 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands219 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter218, align 8
  %and.a.write_input_outter220 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands219, i32 0, i32 0
  store i128 %and.out.read_output_outter209, i128* %and.a.write_input_outter220, align 4
  %array_getter223 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt7, i128 0, i128 %i.1
  %lt224 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter223, align 8
  %struct_getter225 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt224, i32 0, i32 2
  %lessthan.out.read_output_outter226 = load i128, i128* %struct_getter225, align 4
  %array_getter229 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands230 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter229, align 8
  %struct_getter231 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands230, i32 0, i32 1
  %and.b.read_input_outter232 = load i128, i128* %struct_getter231, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter232, i128 %lessthan.out.read_output_outter226, i1* @constraint.162)
  %array_getter235 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands236 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter235, align 8
  %and.b.write_input_outter237 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands236, i32 0, i32 1
  store i128 %lessthan.out.read_output_outter226, i128* %and.b.write_input_outter237, align 4
  %add240 = add i128 %i.1, 1
  %array_getter241 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %add240
  %eq_ands242 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter241, align 8
  %struct_getter243 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands242, i32 0, i32 2
  %and.out.read_output_outter244 = load i128, i128* %struct_getter243, align 4
  %array_getter247 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands248 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter247, align 8
  %struct_getter249 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands248, i32 0, i32 0
  %and.a.read_input_outter250 = load i128, i128* %struct_getter249, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.a.read_input_outter250, i128 %and.out.read_output_outter244, i1* @constraint.163)
  %array_getter253 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands254 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter253, align 8
  %and.a.write_input_outter255 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands254, i32 0, i32 0
  store i128 %and.out.read_output_outter244, i128* %and.a.write_input_outter255, align 4
  %array_getter258 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq5, i128 0, i128 %i.1
  %eq259 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter258, align 8
  %struct_getter260 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq259, i32 0, i32 1
  %isequal.out.read_output_outter261 = load i128, i128* %struct_getter260, align 4
  %array_getter264 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands265 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter264, align 8
  %struct_getter266 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands265, i32 0, i32 1
  %and.b.read_input_outter267 = load i128, i128* %struct_getter266, align 4
  call void @fn_intrinsic_add_constraint(i128 %and.b.read_input_outter267, i128 %isequal.out.read_output_outter261, i1* @constraint.164)
  %array_getter270 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands4, i128 0, i128 %i.1
  %eq_ands271 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter270, align 8
  %and.b.write_input_outter272 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands271, i32 0, i32 1
  store i128 %isequal.out.read_output_outter261, i128* %and.b.write_input_outter272, align 4
  %add275 = add i128 %i.1, 1
  %array_getter276 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %add275
  %ors277 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter276, align 8
  %struct_getter278 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors277, i32 0, i32 2
  %or.out.read_output_outter = load i128, i128* %struct_getter278, align 4
  %array_getter281 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors282 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter281, align 8
  %struct_getter283 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors282, i32 0, i32 0
  %or.a.read_input_outter284 = load i128, i128* %struct_getter283, align 4
  call void @fn_intrinsic_add_constraint(i128 %or.a.read_input_outter284, i128 %or.out.read_output_outter, i1* @constraint.165)
  %array_getter287 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors288 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter287, align 8
  %or.a.write_input_outter289 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors288, i32 0, i32 0
  store i128 %or.out.read_output_outter, i128* %or.a.write_input_outter289, align 4
  %array_getter292 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands9, i128 0, i128 %i.1
  %ands293 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter292, align 8
  %struct_getter294 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands293, i32 0, i32 2
  %and.out.read_output_outter295 = load i128, i128* %struct_getter294, align 4
  %array_getter298 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors299 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter298, align 8
  %struct_getter300 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors299, i32 0, i32 1
  %or.b.read_input_outter301 = load i128, i128* %struct_getter300, align 4
  call void @fn_intrinsic_add_constraint(i128 %or.b.read_input_outter301, i128 %and.out.read_output_outter295, i1* @constraint.166)
  %array_getter304 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 %i.1
  %ors305 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter304, align 8
  %or.b.write_input_outter306 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors305, i32 0, i32 1
  store i128 %and.out.read_output_outter295, i128* %or.b.write_input_outter306, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch307

loop.latch307:                                    ; preds = %if.exit
  %sub309 = sub i128 %i.1, 1
  %sge = icmp sge i128 %sub309, 0
  br i1 %sge, label %loop.body90, label %loop.exit311

loop.exit311:                                     ; preds = %loop.latch307
  %array_getter313 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors6, i128 0, i128 0
  %ors314 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter313, align 8
  %struct_getter315 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors314, i32 0, i32 2
  %or.out.read_output_outter316 = load i128, i128* %struct_getter315, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %or.out.read_output_outter316, i1* @constraint.167)
  %biglessthan.out.write_output_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %or.out.read_output_outter316, i128* %biglessthan.out.write_output_inner, align 4
  %struct_getter320 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  %biglessthan.out.read_output_inner = load i128, i128* %struct_getter320, align 4
  br label %exit

exit:                                             ; preds = %loop.exit311
  %biglessthan.out.write_output_inner322 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %0, i32 0, i32 4
  store i128 %biglessthan.out.read_output_inner, i128* %biglessthan.out.write_output_inner322, align 4
  ret void
}

define %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_biglessthan = alloca %struct_template_circuit_biglessthan, align 8
  %biglessthan.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 0
  store i128 %0, i128* %biglessthan.n.write_arg_inner, align 4
  %biglessthan.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan, i32 0, i32 1
  store i128 %1, i128* %biglessthan.k.write_arg_inner, align 4
  ret %struct_template_circuit_biglessthan* %struct_template_circuit_biglessthan
}

define [256 x [256 x i128]]* @find_Fp2_diff(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_fpsgn0(%struct_template_circuit_fpsgn0* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 0
  %fpsgn0.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 1
  %fpsgn0.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 2
  %fpsgn0.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 3
  %fpsgn0.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %r4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %q6 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %div = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpsgn0.n.read_arg_inner, i128 %fpsgn0.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.in.read_input_inner, i128 0, i128 %i.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.0
  %lt13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt13, i128 %in8, i1* @constraint.168)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %lt17 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter15, i128 0, i128 %i.0
  store i128 %in8, i128* %lt17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.p.read_arg_inner, i128 0, i128 %i.0
  %p20 = load i128, i128* %array_getter19, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.0
  %lt25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt25, i128 %p20, i1* @constraint.169)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %lt30 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter28, i128 0, i128 %i.0
  store i128 %p20, i128* %lt30, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %fpsgn0.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.170)
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.in.read_input_inner, i128 0, i128 0
  %in38 = load i128, i128* %array_getter37, align 4
  %mod = srem i128 %in38, 2
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.in.read_input_inner, i128 0, i128 0
  %in41 = load i128, i128* %array_getter40, align 4
  %sub = sub i128 %in41, %mod
  %sdiv = sdiv i128 %sub, 2
  %fpsgn0.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  store i128 %mod, i128* %fpsgn0.out.write_output_inner, align 4
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  %fpsgn0.out.read_output_inner = load i128, i128* %struct_getter46, align 4
  %fpsgn0.div.write_inter_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %sdiv, i128* %fpsgn0.div.write_inter_inner, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  %fpsgn0.div.read_inter_inner = load i128, i128* %struct_getter50, align 4
  %sub53 = sub i128 1, %fpsgn0.out.read_output_inner
  %mul = mul i128 %fpsgn0.out.read_output_inner, %sub53
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.171)
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %fpsgn0.in.read_input_inner, i128 0, i128 0
  %in56 = load i128, i128* %array_getter55, align 4
  %mul58 = mul i128 2, %fpsgn0.div.read_inter_inner
  %add60 = add i128 %mul58, %fpsgn0.out.read_output_inner
  call void @fn_intrinsic_add_constraint(i128 %in56, i128 %add60, i1* @constraint.172)
  br label %exit

exit:                                             ; preds = %loop.exit
  %fpsgn0.div.write_inter_inner62 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %fpsgn0.div.read_inter_inner, i128* %fpsgn0.div.write_inter_inner62, align 4
  %fpsgn0.out.write_output_inner64 = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 5
  store i128 %fpsgn0.out.read_output_inner, i128* %fpsgn0.out.write_output_inner64, align 4
  ret void
}

define %struct_template_circuit_fpsgn0* @fn_template_build_fpsgn0(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpsgn0 = alloca %struct_template_circuit_fpsgn0, align 8
  %fpsgn0.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 0
  store i128 %0, i128* %fpsgn0.n.write_arg_inner, align 4
  %fpsgn0.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 1
  store i128 %1, i128* %fpsgn0.k.write_arg_inner, align 4
  %fpsgn0.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpsgn0.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpsgn0* %struct_template_circuit_fpsgn0
}

define void @fn_template_init_fpiszero(%struct_template_circuit_fpiszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 0
  %fpiszero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 1
  %fpiszero.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 2
  %fpiszero.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 3
  %fpiszero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpiszero.n.read_arg_inner, i128 %fpiszero.k.read_arg_inner)
  %call6 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %fpiszero.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpiszero.in.read_input_inner, i128 0, i128 %i.0
  %in8 = load i128, i128* %array_getter, align 4
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.0
  %lt13 = load i128, i128* %array_getter12, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt13, i128 %in8, i1* @constraint.173)
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 2
  %biglessthan.a.read_input_outter15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %lt17 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter15, i128 0, i128 %i.0
  store i128 %in8, i128* %lt17, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %fpiszero.p.read_arg_inner, i128 0, i128 %i.0
  %p20 = load i128, i128* %array_getter19, align 4
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %array_getter24 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.0
  %lt25 = load i128, i128* %array_getter24, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt25, i128 %p20, i1* @constraint.174)
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 3
  %biglessthan.b.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %lt30 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter28, i128 0, i128 %i.0
  store i128 %p20, i128* %lt30, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %fpiszero.in.read_input_inner, i128 0, i128 %i.0
  %in34 = load i128, i128* %array_getter33, align 4
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 1
  %bigiszero.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter36, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter, i128 0, i128 %i.0
  %isZero39 = load i128, i128* %array_getter38, align 4
  call void @fn_intrinsic_add_constraint(i128 %isZero39, i128 %in34, i1* @constraint.175)
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 1
  %bigiszero.in.read_input_outter42 = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %isZero44 = getelementptr inbounds [256 x i128], [256 x i128]* %bigiszero.in.read_input_outter42, i128 0, i128 %i.0
  store i128 %in34, i128* %isZero44, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %fpiszero.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %struct_getter49 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.176)
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %call6, i32 0, i32 2
  %bigiszero.out.read_output_outter = load i128, i128* %struct_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %bigiszero.out.read_output_outter, i1* @constraint.177)
  %fpiszero.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %bigiszero.out.read_output_outter, i128* %fpiszero.out.write_output_inner, align 4
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  %fpiszero.out.read_output_inner = load i128, i128* %struct_getter55, align 4
  br label %exit

exit:                                             ; preds = %loop.exit
  %fpiszero.out.write_output_inner57 = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %fpiszero.out.read_output_inner, i128* %fpiszero.out.write_output_inner57, align 4
  ret void
}

define %struct_template_circuit_fpiszero* @fn_template_build_fpiszero(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpiszero = alloca %struct_template_circuit_fpiszero, align 8
  %fpiszero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 0
  store i128 %0, i128* %fpiszero.n.write_arg_inner, align 4
  %fpiszero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 1
  store i128 %1, i128* %fpiszero.k.write_arg_inner, align 4
  %fpiszero.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpiszero.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpiszero* %struct_template_circuit_fpiszero
}

define void @fn_template_init_fpadd(%struct_template_circuit_fpadd* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 0
  %fpadd.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 1
  %fpadd.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 2
  %fpadd.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 3
  %fpadd.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 4
  %fpadd.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %fpadd.n.read_arg_inner, i128 %fpadd.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add31, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.a.read_input_inner, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.0
  %add12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %add12, i128 %a7, i1* @constraint.178)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %add16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter14, i128 0, i128 %i.0
  store i128 %a7, i128* %add16, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.b.read_input_inner, i128 0, i128 %i.0
  %b19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.0
  %add24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %add24, i128 %b19, i1* @constraint.179)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %add29 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter27, i128 0, i128 %i.0
  store i128 %b19, i128* %add29, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add31 = add i128 %i.0, 1
  %slt = icmp slt i128 %add31, %fpadd.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add36 = add i128 %fpadd.k.read_arg_inner, 1
  %call37 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpadd.n.read_arg_inner, i128 %add36)
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch67, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add69, %loop.latch67 ]
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.1
  %add43 = load i128, i128* %array_getter42, align 4
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.1
  %lt48 = load i128, i128* %array_getter47, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt48, i128 %add43, i1* @constraint.180)
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter51 = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %lt53 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter51, i128 0, i128 %i.1
  store i128 %add43, i128* %lt53, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.1
  %p56 = load i128, i128* %array_getter55, align 4
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.1
  %lt61 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt61, i128 %p56, i1* @constraint.181)
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter64 = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %lt66 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter64, i128 0, i128 %i.1
  store i128 %p56, i128* %lt66, align 4
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.body38
  %add69 = add i128 %i.1, 1
  %slt72 = icmp slt i128 %add69, %fpadd.k.read_arg_inner
  br i1 %slt72, label %loop.body38, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter76 = load [256 x i128]*, [256 x i128]** %struct_getter75, align 8
  %array_getter78 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter76, i128 0, i128 %fpadd.k.read_arg_inner
  %add79 = load i128, i128* %array_getter78, align 4
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter82 = load [256 x i128]*, [256 x i128]** %struct_getter81, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter82, i128 0, i128 %fpadd.k.read_arg_inner
  %lt85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt85, i128 %add79, i1* @constraint.182)
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter88 = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %lt90 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter88, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 %add79, i128* %lt90, align 4
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter93, i128 0, i128 %fpadd.k.read_arg_inner
  %lt96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt96, i128 0, i1* @constraint.183)
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter99 = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %lt101 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter99, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 0, i128* %lt101, align 4
  %add104 = add i128 %fpadd.k.read_arg_inner, 1
  %call105 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %fpadd.n.read_arg_inner, i128 %add104)
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch144, %loop.exit73
  %i.2 = phi i128 [ 0, %loop.exit73 ], [ %add146, %loop.latch144 ]
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter109 = load [256 x i128]*, [256 x i128]** %struct_getter108, align 8
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter109, i128 0, i128 %i.2
  %add112 = load i128, i128* %array_getter111, align 4
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter114, align 8
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.2
  %sub117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub117, i128 %add112, i1* @constraint.184)
  %struct_getter119 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter120 = load [256 x i128]*, [256 x i128]** %struct_getter119, align 8
  %sub122 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter120, i128 0, i128 %i.2
  store i128 %add112, i128* %sub122, align 4
  %array_getter125 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.2
  %p126 = load i128, i128* %array_getter125, align 4
  %struct_getter128 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter128, align 4
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %fpadd.p.read_arg_inner, i128 0, i128 %i.2
  %p132 = load i128, i128* %array_getter131, align 4
  %mul = mul i128 %biglessthan.out.read_output_outter, %p132
  %sub133 = sub i128 %p126, %mul
  %struct_getter135 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter135, align 8
  %array_getter137 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.2
  %sub138 = load i128, i128* %array_getter137, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub138, i128 %sub133, i1* @constraint.185)
  %struct_getter140 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter141 = load [256 x i128]*, [256 x i128]** %struct_getter140, align 8
  %sub143 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter141, i128 0, i128 %i.2
  store i128 %sub133, i128* %sub143, align 4
  br label %loop.latch144

loop.latch144:                                    ; preds = %loop.body106
  %add146 = add i128 %i.2, 1
  %slt149 = icmp slt i128 %add146, %fpadd.k.read_arg_inner
  br i1 %slt149, label %loop.body106, label %loop.exit150

loop.exit150:                                     ; preds = %loop.latch144
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter153 = load [256 x i128]*, [256 x i128]** %struct_getter152, align 8
  %array_getter155 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter153, i128 0, i128 %fpadd.k.read_arg_inner
  %add156 = load i128, i128* %array_getter155, align 4
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter159 = load [256 x i128]*, [256 x i128]** %struct_getter158, align 8
  %array_getter161 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter159, i128 0, i128 %fpadd.k.read_arg_inner
  %sub162 = load i128, i128* %array_getter161, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub162, i128 %add156, i1* @constraint.186)
  %struct_getter164 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter165 = load [256 x i128]*, [256 x i128]** %struct_getter164, align 8
  %sub167 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter165, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 %add156, i128* %sub167, align 4
  %struct_getter169 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter170 = load [256 x i128]*, [256 x i128]** %struct_getter169, align 8
  %array_getter172 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter170, i128 0, i128 %fpadd.k.read_arg_inner
  %sub173 = load i128, i128* %array_getter172, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub173, i128 0, i1* @constraint.187)
  %struct_getter175 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter176 = load [256 x i128]*, [256 x i128]** %struct_getter175, align 8
  %sub178 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter176, i128 0, i128 %fpadd.k.read_arg_inner
  store i128 0, i128* %sub178, align 4
  %struct_getter180 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter180, align 8
  %array_getter182 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %fpadd.k.read_arg_inner
  %sub183 = load i128, i128* %array_getter182, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub183, i128 0, i1* @constraint.188)
  br label %loop.body184

loop.body184:                                     ; preds = %loop.latch198, %loop.exit150
  %i.3 = phi i128 [ 0, %loop.exit150 ], [ %add200, %loop.latch198 ]
  %struct_getter186 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 4
  %bigsub.out.read_output_outter187 = load [256 x i128]*, [256 x i128]** %struct_getter186, align 8
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter187, i128 0, i128 %i.3
  %sub190 = load i128, i128* %array_getter189, align 4
  %array_getter193 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out194 = load i128, i128* %array_getter193, align 4
  call void @fn_intrinsic_add_constraint(i128 %out194, i128 %sub190, i1* @constraint.189)
  %out197 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  store i128 %sub190, i128* %out197, align 4
  br label %loop.latch198

loop.latch198:                                    ; preds = %loop.body184
  %add200 = add i128 %i.3, 1
  %slt203 = icmp slt i128 %add200, %fpadd.k.read_arg_inner
  br i1 %slt203, label %loop.body184, label %loop.exit204

loop.exit204:                                     ; preds = %loop.latch198
  br label %exit

exit:                                             ; preds = %loop.exit204
  %fpadd.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %fpadd.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpadd* @fn_template_build_fpadd(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpadd = alloca %struct_template_circuit_fpadd, align 8
  %fpadd.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 0
  store i128 %0, i128* %fpadd.n.write_arg_inner, align 4
  %fpadd.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 1
  store i128 %1, i128* %fpadd.k.write_arg_inner, align 4
  %fpadd.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %struct_template_circuit_fpadd, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpadd.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpadd* %struct_template_circuit_fpadd
}

define [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %i6 = call i128 @fn_intrinsic_inline_init()
  %j7 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array8 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %a10 = load i128, i128* %array_getter, align 4
  %remainder12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array8, i128 0, i128 %i.0
  store i128 %a10, i128* %remainder12, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add15 = add i128 %2, %1
  %slt = icmp slt i128 %add, %add15
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array16 = alloca [256 x i128], align 8
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch117, %loop.exit
  %remainder.0 = phi [256 x i128]* [ %uniform_array8, %loop.exit ], [ %call116, %loop.latch117 ]
  %i.1 = phi i128 [ %2, %loop.exit ], [ %sub119, %loop.latch117 ]
  %eq = icmp eq i128 %i.1, %2
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body18
  %dividend23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %1
  store i128 0, i128* %dividend23, align 4
  %sub = sub i128 %1, 1
  br label %loop.body25

if.false:                                         ; preds = %loop.body18
  br label %loop.body41

loop.body25:                                      ; preds = %loop.latch35, %if.true
  %j.0 = phi i128 [ %sub, %if.true ], [ %sub37, %loop.latch35 ]
  %add29 = add i128 %j.0, %2
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add29
  %remainder31 = load i128, i128* %array_getter30, align 4
  %dividend34 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.0
  store i128 %remainder31, i128* %dividend34, align 4
  br label %loop.latch35

loop.latch35:                                     ; preds = %loop.body25
  %sub37 = sub i128 %j.0, 1
  %sge = icmp sge i128 %sub37, 0
  br i1 %sge, label %loop.body25, label %loop.exit39

loop.exit39:                                      ; preds = %loop.latch35
  br label %if.exit

loop.body41:                                      ; preds = %loop.latch51, %if.false
  %j.1 = phi i128 [ %1, %if.false ], [ %sub53, %loop.latch51 ]
  %add45 = add i128 %j.1, %i.1
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder.0, i128 0, i128 %add45
  %remainder47 = load i128, i128* %array_getter46, align 4
  %dividend50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %j.1
  store i128 %remainder47, i128* %dividend50, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body41
  %sub53 = sub i128 %j.1, 1
  %sge55 = icmp sge i128 %sub53, 0
  br i1 %sge55, label %loop.body41, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %if.exit

if.exit:                                          ; preds = %loop.exit56, %loop.exit39
  %call = call i128 @short_div(i128 %0, i128 %1, [256 x i128]* %uniform_array16, [256 x i128]* %4)
  %out61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  store i128 %call, i128* %out61, align 4
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.1
  %out67 = load i128, i128* %array_getter66, align 4
  %call69 = call [256 x i128]* @long_scalar_mult(i128 %0, i128 %1, i128 %out67, [256 x i128]* %4)
  %uniform_array70 = alloca [256 x i128], align 8
  br label %loop.body71

loop.body71:                                      ; preds = %loop.latch75, %if.exit
  %j.2 = phi i128 [ 0, %if.exit ], [ %add77, %loop.latch75 ]
  %subtrahend74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %j.2
  store i128 0, i128* %subtrahend74, align 4
  br label %loop.latch75

loop.latch75:                                     ; preds = %loop.body71
  %add77 = add i128 %j.2, 1
  %add81 = add i128 %2, %1
  %slt82 = icmp slt i128 %add77, %add81
  br i1 %slt82, label %loop.body71, label %loop.exit83

loop.exit83:                                      ; preds = %loop.latch75
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch104, %loop.exit83
  %j.3 = phi i128 [ 0, %loop.exit83 ], [ %add106, %loop.latch104 ]
  %add89 = add i128 %i.1, %j.3
  %add92 = add i128 %2, %1
  %slt93 = icmp slt i128 %add89, %add92
  br i1 %slt93, label %if.true85, label %if.false86

if.true85:                                        ; preds = %loop.body84
  %array_getter96 = getelementptr inbounds [256 x i128], [256 x i128]* %call69, i128 0, i128 %j.3
  %mult_shift97 = load i128, i128* %array_getter96, align 4
  %add101 = add i128 %i.1, %j.3
  %subtrahend102 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array70, i128 0, i128 %add101
  store i128 %mult_shift97, i128* %subtrahend102, align 4
  br label %if.exit103

if.false86:                                       ; preds = %loop.body84
  br label %if.exit103

if.exit103:                                       ; preds = %if.false86, %if.true85
  br label %loop.latch104

loop.latch104:                                    ; preds = %if.exit103
  %add106 = add i128 %j.3, 1
  %sle = icmp sle i128 %add106, %1
  br i1 %sle, label %loop.body84, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch104
  %add113 = add i128 %2, %1
  %call116 = call [256 x i128]* @long_sub(i128 %0, i128 %add113, [256 x i128]* %remainder.0, [256 x i128]* %uniform_array70)
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.exit109
  %sub119 = sub i128 %i.1, 1
  %sge121 = icmp sge i128 %sub119, 0
  br i1 %sge121, label %loop.body18, label %loop.exit122

loop.exit122:                                     ; preds = %loop.latch117
  br label %loop.body123

loop.body123:                                     ; preds = %loop.latch131, %loop.exit122
  %i.2 = phi i128 [ 0, %loop.exit122 ], [ %add133, %loop.latch131 ]
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %call116, i128 0, i128 %i.2
  %remainder127 = load i128, i128* %array_getter126, align 4
  %out130 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %i.2
  store i128 %remainder127, i128* %out130, align 4
  br label %loop.latch131

loop.latch131:                                    ; preds = %loop.body123
  %add133 = add i128 %i.2, 1
  %slt136 = icmp slt i128 %add133, %1
  br i1 %slt136, label %loop.body123, label %loop.exit137

loop.exit137:                                     ; preds = %loop.latch131
  %out140 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1, i128 %1
  store i128 0, i128* %out140, align 4
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  ret [256 x [256 x i128]]* %call
}

define void @fn_template_init_bigaddmodp(%struct_template_circuit_bigaddmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 0
  %bigaddmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 1
  %bigaddmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 2
  %bigaddmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 3
  %bigaddmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 4
  %bigaddmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigaddmodp.n.read_arg_inner, i128 %bigaddmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add31, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigaddmodp.a.read_input_inner, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.0
  %add12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %add12, i128 %a7, i1* @constraint.190)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 2
  %bigadd.a.read_input_outter14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %add16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter14, i128 0, i128 %i.0
  store i128 %a7, i128* %add16, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %bigaddmodp.b.read_input_inner, i128 0, i128 %i.0
  %b19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.0
  %add24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %add24, i128 %b19, i1* @constraint.191)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 3
  %bigadd.b.read_input_outter27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %add29 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter27, i128 0, i128 %i.0
  store i128 %b19, i128* %add29, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add31 = add i128 %i.0, 1
  %slt = icmp slt i128 %add31, %bigaddmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %add36 = add i128 %bigaddmodp.k.read_arg_inner, 1
  %call37 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigaddmodp.n.read_arg_inner, i128 %add36)
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch67, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add69, %loop.latch67 ]
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.1
  %add43 = load i128, i128* %array_getter42, align 4
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.1
  %lt48 = load i128, i128* %array_getter47, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt48, i128 %add43, i1* @constraint.192)
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter51 = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %lt53 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter51, i128 0, i128 %i.1
  store i128 %add43, i128* %lt53, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %bigaddmodp.p.read_input_inner, i128 0, i128 %i.1
  %p56 = load i128, i128* %array_getter55, align 4
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.1
  %lt61 = load i128, i128* %array_getter60, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt61, i128 %p56, i1* @constraint.193)
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter64 = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %lt66 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter64, i128 0, i128 %i.1
  store i128 %p56, i128* %lt66, align 4
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.body38
  %add69 = add i128 %i.1, 1
  %slt72 = icmp slt i128 %add69, %bigaddmodp.k.read_arg_inner
  br i1 %slt72, label %loop.body38, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter76 = load [256 x i128]*, [256 x i128]** %struct_getter75, align 8
  %array_getter78 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter76, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %add79 = load i128, i128* %array_getter78, align 4
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter82 = load [256 x i128]*, [256 x i128]** %struct_getter81, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter82, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %lt85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt85, i128 %add79, i1* @constraint.194)
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 2
  %biglessthan.a.read_input_outter88 = load [256 x i128]*, [256 x i128]** %struct_getter87, align 8
  %lt90 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter88, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 %add79, i128* %lt90, align 4
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %array_getter95 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter93, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %lt96 = load i128, i128* %array_getter95, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt96, i128 0, i1* @constraint.195)
  %struct_getter98 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 3
  %biglessthan.b.read_input_outter99 = load [256 x i128]*, [256 x i128]** %struct_getter98, align 8
  %lt101 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter99, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 0, i128* %lt101, align 4
  %add104 = add i128 %bigaddmodp.k.read_arg_inner, 1
  %call105 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %bigaddmodp.n.read_arg_inner, i128 %add104)
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch140, %loop.exit73
  %i.2 = phi i128 [ 0, %loop.exit73 ], [ %add142, %loop.latch140 ]
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter109 = load [256 x i128]*, [256 x i128]** %struct_getter108, align 8
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter109, i128 0, i128 %i.2
  %add112 = load i128, i128* %array_getter111, align 4
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter114, align 8
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter, i128 0, i128 %i.2
  %sub117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub117, i128 %add112, i1* @constraint.196)
  %struct_getter119 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter120 = load [256 x i128]*, [256 x i128]** %struct_getter119, align 8
  %sub122 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter120, i128 0, i128 %i.2
  store i128 %add112, i128* %sub122, align 4
  %struct_getter124 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call37, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter124, align 4
  %sub125 = sub i128 1, %biglessthan.out.read_output_outter
  %array_getter128 = getelementptr inbounds [256 x i128], [256 x i128]* %bigaddmodp.p.read_input_inner, i128 0, i128 %i.2
  %p129 = load i128, i128* %array_getter128, align 4
  %mul = mul i128 %sub125, %p129
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter131, align 8
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter, i128 0, i128 %i.2
  %sub134 = load i128, i128* %array_getter133, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub134, i128 %mul, i1* @constraint.197)
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter137 = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %sub139 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter137, i128 0, i128 %i.2
  store i128 %mul, i128* %sub139, align 4
  br label %loop.latch140

loop.latch140:                                    ; preds = %loop.body106
  %add142 = add i128 %i.2, 1
  %slt145 = icmp slt i128 %add142, %bigaddmodp.k.read_arg_inner
  br i1 %slt145, label %loop.body106, label %loop.exit146

loop.exit146:                                     ; preds = %loop.latch140
  %struct_getter148 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call, i32 0, i32 4
  %bigadd.out.read_output_outter149 = load [256 x i128]*, [256 x i128]** %struct_getter148, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter149, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %add152 = load i128, i128* %array_getter151, align 4
  %struct_getter154 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter155 = load [256 x i128]*, [256 x i128]** %struct_getter154, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter155, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub158 = load i128, i128* %array_getter157, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub158, i128 %add152, i1* @constraint.198)
  %struct_getter160 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 2
  %bigsub.a.read_input_outter161 = load [256 x i128]*, [256 x i128]** %struct_getter160, align 8
  %sub163 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.a.read_input_outter161, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 %add152, i128* %sub163, align 4
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter166 = load [256 x i128]*, [256 x i128]** %struct_getter165, align 8
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter166, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub169 = load i128, i128* %array_getter168, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub169, i128 0, i1* @constraint.199)
  %struct_getter171 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 3
  %bigsub.b.read_input_outter172 = load [256 x i128]*, [256 x i128]** %struct_getter171, align 8
  %sub174 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.b.read_input_outter172, i128 0, i128 %bigaddmodp.k.read_arg_inner
  store i128 0, i128* %sub174, align 4
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 4
  %bigsub.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %array_getter178 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter, i128 0, i128 %bigaddmodp.k.read_arg_inner
  %sub179 = load i128, i128* %array_getter178, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub179, i128 0, i1* @constraint.200)
  br label %loop.body180

loop.body180:                                     ; preds = %loop.latch194, %loop.exit146
  %i.3 = phi i128 [ 0, %loop.exit146 ], [ %add196, %loop.latch194 ]
  %struct_getter182 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %call105, i32 0, i32 4
  %bigsub.out.read_output_outter183 = load [256 x i128]*, [256 x i128]** %struct_getter182, align 8
  %array_getter185 = getelementptr inbounds [256 x i128], [256 x i128]* %bigsub.out.read_output_outter183, i128 0, i128 %i.3
  %sub186 = load i128, i128* %array_getter185, align 4
  %array_getter189 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out190 = load i128, i128* %array_getter189, align 4
  call void @fn_intrinsic_add_constraint(i128 %out190, i128 %sub186, i1* @constraint.201)
  %out193 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  store i128 %sub186, i128* %out193, align 4
  br label %loop.latch194

loop.latch194:                                    ; preds = %loop.body180
  %add196 = add i128 %i.3, 1
  %slt199 = icmp slt i128 %add196, %bigaddmodp.k.read_arg_inner
  br i1 %slt199, label %loop.body180, label %loop.exit200

loop.exit200:                                     ; preds = %loop.latch194
  br label %exit

exit:                                             ; preds = %loop.exit200
  %bigaddmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %bigaddmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigaddmodp* @fn_template_build_bigaddmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigaddmodp = alloca %struct_template_circuit_bigaddmodp, align 8
  %bigaddmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 0
  store i128 %0, i128* %bigaddmodp.n.write_arg_inner, align 4
  %bigaddmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp, i32 0, i32 1
  store i128 %1, i128* %bigaddmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigaddmodp* %struct_template_circuit_bigaddmodp
}

define void @fn_template_init_fpisequal(%struct_template_circuit_fpisequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 0
  %fpisequal.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 1
  %fpisequal.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 2
  %fpisequal.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 3
  %fpisequal.in.read_input_inner = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %struct_getter3, align 8
  %idx4 = call i128 @fn_intrinsic_inline_init()
  %lt5 = alloca [256 x %struct_template_circuit_biglessthan*], align 8
  %isEqual6 = alloca [256 x %struct_template_circuit_isequal*], align 8
  %sum7 = call i128 @fn_intrinsic_inline_init()
  %i8 = call i128 @fn_intrinsic_inline_init()
  %out = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch58, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add60, %loop.latch58 ]
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %fpisequal.n.read_arg_inner, i128 %fpisequal.k.read_arg_inner)
  %lt10 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt10, align 8
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch, %loop.body
  %idx.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %fpisequal.in.read_input_inner, i128 0, i128 %i.0, i128 %idx.0
  %in14 = load i128, i128* %array_getter, align 4
  %array_getter17 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  %lt18 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter17, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt18, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %idx.0
  %lt22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt22, i128 %in14, i1* @constraint.202)
  %array_getter25 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  %lt26 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter25, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt26, i32 0, i32 2
  %biglessthan.a.read_input_outter28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %lt30 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter28, i128 0, i128 %idx.0
  store i128 %in14, i128* %lt30, align 4
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %fpisequal.p.read_arg_inner, i128 0, i128 %idx.0
  %p33 = load i128, i128* %array_getter32, align 4
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  %lt37 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter36, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt37, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %idx.0
  %lt41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt41, i128 %p33, i1* @constraint.203)
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  %lt45 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter44, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt45, i32 0, i32 3
  %biglessthan.b.read_input_outter47 = load [256 x i128]*, [256 x i128]** %struct_getter46, align 8
  %lt49 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter47, i128 0, i128 %idx.0
  store i128 %p33, i128* %lt49, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body11
  %add = add i128 %idx.0, 1
  %slt = icmp slt i128 %add, %fpisequal.k.read_arg_inner
  br i1 %slt, label %loop.body11, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %array_getter55 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt5, i128 0, i128 %i.0
  %lt56 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter55, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt56, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.204)
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.exit
  %add60 = add i128 %i.0, 1
  %slt62 = icmp slt i128 %add60, 2
  br i1 %slt62, label %loop.body, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch58
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch113, %loop.exit63
  %sum.0 = phi i128 [ 0, %loop.exit63 ], [ %add112, %loop.latch113 ]
  %i.1 = phi i128 [ 0, %loop.exit63 ], [ %add115, %loop.latch113 ]
  %call65 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %isEqual68 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  store %struct_template_circuit_isequal* %call65, %struct_template_circuit_isequal** %isEqual68, align 8
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %fpisequal.in.read_input_inner, i128 0, i128 0, i128 %i.1
  %in72 = load i128, i128* %array_getter71, align 4
  %array_getter75 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  %isEqual76 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter75, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual76, i32 0, i32 0
  %isequal.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter77, align 8
  %array_getter78 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter, i128 0, i128 0
  %isEqual79 = load i128, i128* %array_getter78, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual79, i128 %in72, i1* @constraint.205)
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  %isEqual83 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter82, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual83, i32 0, i32 0
  %isequal.in.read_input_outter85 = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %isEqual86 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter85, i128 0, i128 0
  store i128 %in72, i128* %isEqual86, align 4
  %array_getter89 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %fpisequal.in.read_input_inner, i128 0, i128 1, i128 %i.1
  %in90 = load i128, i128* %array_getter89, align 4
  %array_getter93 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  %isEqual94 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter93, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual94, i32 0, i32 0
  %isequal.in.read_input_outter96 = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter96, i128 0, i128 1
  %isEqual98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual98, i128 %in90, i1* @constraint.206)
  %array_getter101 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  %isEqual102 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter101, align 8
  %struct_getter103 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual102, i32 0, i32 0
  %isequal.in.read_input_outter104 = load [256 x i128]*, [256 x i128]** %struct_getter103, align 8
  %isEqual105 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter104, i128 0, i128 1
  store i128 %in90, i128* %isEqual105, align 4
  %array_getter109 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %i.1
  %isEqual110 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter109, align 8
  %struct_getter111 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual110, i32 0, i32 1
  %isequal.out.read_output_outter = load i128, i128* %struct_getter111, align 4
  %add112 = add i128 %sum.0, %isequal.out.read_output_outter
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.body64
  %add115 = add i128 %i.1, 1
  %slt118 = icmp slt i128 %add115, %fpisequal.k.read_arg_inner
  br i1 %slt118, label %loop.body64, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  %call120 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %isEqual123 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  store %struct_template_circuit_isequal* %call120, %struct_template_circuit_isequal** %isEqual123, align 8
  %array_getter127 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual128 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter127, align 8
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual128, i32 0, i32 0
  %isequal.in.read_input_outter130 = load [256 x i128]*, [256 x i128]** %struct_getter129, align 8
  %array_getter131 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter130, i128 0, i128 0
  %isEqual132 = load i128, i128* %array_getter131, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual132, i128 %add112, i1* @constraint.207)
  %array_getter135 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual136 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter135, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual136, i32 0, i32 0
  %isequal.in.read_input_outter138 = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %isEqual139 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter138, i128 0, i128 0
  store i128 %add112, i128* %isEqual139, align 4
  %array_getter143 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual144 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter143, align 8
  %struct_getter145 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual144, i32 0, i32 0
  %isequal.in.read_input_outter146 = load [256 x i128]*, [256 x i128]** %struct_getter145, align 8
  %array_getter147 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter146, i128 0, i128 1
  %isEqual148 = load i128, i128* %array_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual148, i128 %fpisequal.k.read_arg_inner, i1* @constraint.208)
  %array_getter151 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual152 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter151, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual152, i32 0, i32 0
  %isequal.in.read_input_outter154 = load [256 x i128]*, [256 x i128]** %struct_getter153, align 8
  %isEqual155 = getelementptr inbounds [256 x i128], [256 x i128]* %isequal.in.read_input_outter154, i128 0, i128 1
  store i128 %fpisequal.k.read_arg_inner, i128* %isEqual155, align 4
  %array_getter158 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual6, i128 0, i128 %fpisequal.k.read_arg_inner
  %isEqual159 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter158, align 8
  %struct_getter160 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual159, i32 0, i32 1
  %isequal.out.read_output_outter161 = load i128, i128* %struct_getter160, align 4
  call void @fn_intrinsic_add_constraint(i128 %out, i128 %isequal.out.read_output_outter161, i1* @constraint.209)
  %fpisequal.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %isequal.out.read_output_outter161, i128* %fpisequal.out.write_output_inner, align 4
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  %fpisequal.out.read_output_inner = load i128, i128* %struct_getter165, align 4
  br label %exit

exit:                                             ; preds = %loop.exit119
  %fpisequal.out.write_output_inner167 = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %fpisequal.out.read_output_inner, i128* %fpisequal.out.write_output_inner167, align 4
  ret void
}

define %struct_template_circuit_fpisequal* @fn_template_build_fpisequal(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpisequal = alloca %struct_template_circuit_fpisequal, align 8
  %fpisequal.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 0
  store i128 %0, i128* %fpisequal.n.write_arg_inner, align 4
  %fpisequal.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 1
  store i128 %1, i128* %fpisequal.k.write_arg_inner, align 4
  %fpisequal.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpisequal.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpisequal* %struct_template_circuit_fpisequal
}

define [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %j3 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %bitlength6 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch33, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add35, %loop.latch33 ]
  %bitlength.0 = phi i128 [ 0, %entry ], [ %bitlength.2, %loop.latch33 ]
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add30, %loop.latch ]
  %bitlength.1 = phi i128 [ %bitlength.0, %loop.body ], [ %bitlength.2, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e10 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e10, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits14 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits14, align 4
  %mul19 = mul i128 %0, %i.0
  %add20 = add i128 %j.0, %mul19
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add20
  %eBits22 = load i128, i128* %array_getter21, align 4
  %eq = icmp eq i128 %eBits22, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body8
  %mul26 = mul i128 %0, %i.0
  %add27 = add i128 %j.0, %mul26
  %add28 = add i128 %add27, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body8
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitlength.2 = phi i128 [ %add28, %if.true ], [ %bitlength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add30 = add i128 %j.0, 1
  %slt = icmp slt i128 %add30, %0
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch33

loop.latch33:                                     ; preds = %loop.exit
  %add35 = add i128 %i.0, 1
  %slt37 = icmp slt i128 %add35, %1
  br i1 %slt37, label %loop.body, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch33
  %uniform_array39 = alloca [256 x i128], align 8
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch44, %loop.exit38
  %i.1 = phi i128 [ 0, %loop.exit38 ], [ %add46, %loop.latch44 ]
  %out43 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 %i.1
  store i128 0, i128* %out43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body40
  %add46 = add i128 %i.1, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body40, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %out51 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array39, i128 0, i128 0
  store i128 1, i128* %out51, align 4
  %sub = sub i128 %bitlength.2, 1
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch94, %loop.exit49
  %out.0 = phi [256 x i128]* [ %uniform_array39, %loop.exit49 ], [ %out.2, %loop.latch94 ]
  %i.2 = phi i128 [ %sub, %loop.exit49 ], [ %sub96, %loop.latch94 ]
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits59 = load i128, i128* %array_getter58, align 4
  %eq60 = icmp eq i128 %eBits59, 1
  br i1 %eq60, label %if.true54, label %if.false55

if.true54:                                        ; preds = %loop.body53
  %uniform_array61 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.0, [256 x i128]* %2)
  %uniform_array65 = alloca [256 x [256 x i128]], align 8
  %call69 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %3)
  %array_getter71 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call69, i128 0, i128 1
  %temp272 = load [256 x i128], [256 x i128]* %array_getter71, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp272, [256 x i128]* %spice_inline_array, align 4
  br label %if.exit73

if.false55:                                       ; preds = %loop.body53
  br label %if.exit73

if.exit73:                                        ; preds = %if.false55, %if.true54
  %out.1 = phi [256 x i128]* [ %spice_inline_array, %if.true54 ], [ %out.0, %if.false55 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true74, label %if.false75

if.true74:                                        ; preds = %if.exit73
  %uniform_array77 = alloca [256 x i128], align 8
  %call82 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %out.1, [256 x i128]* %out.1)
  %uniform_array83 = alloca [256 x [256 x i128]], align 8
  %call88 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call82, [256 x i128]* %3)
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call88, i128 0, i128 1
  %temp291 = load [256 x i128], [256 x i128]* %array_getter90, align 4
  %spice_inline_array92 = alloca [256 x i128], align 8
  store [256 x i128] %temp291, [256 x i128]* %spice_inline_array92, align 4
  br label %if.exit93

if.false75:                                       ; preds = %if.exit73
  br label %if.exit93

if.exit93:                                        ; preds = %if.false75, %if.true74
  %out.2 = phi [256 x i128]* [ %spice_inline_array92, %if.true74 ], [ %out.1, %if.false75 ]
  br label %loop.latch94

loop.latch94:                                     ; preds = %if.exit93
  %sub96 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub96, 0
  br i1 %sge, label %loop.body53, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch94
  ret [256 x i128]* %out.2
}

define [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @long_add(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %carry3 = call i128 @fn_intrinsic_inline_init()
  %Y_is_zero5 = call i128 @fn_intrinsic_inline_init()
  %i6 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %3)
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 50
  %a_short9 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short9, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %call13 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %call, [256 x i128]* %4)
  br label %if.exit131

if.false:                                         ; preds = %entry
  %uniform_array14 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %i.0 = phi i128 [ 0, %if.false ], [ %add, %loop.latch ]
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 %i.0
  %a_short18 = load i128, i128* %array_getter17, align 4
  %neg = sub i128 0, %a_short18
  %a_pos20 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 %i.0
  store i128 %neg, i128* %a_pos20, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %add25 = add i128 %1, %2
  %slt = icmp slt i128 %add, %add25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call31 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %2, [256 x i128]* %uniform_array14, [256 x i128]* %4)
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch39, %loop.exit
  %Y_is_zero.0 = phi i128 [ 1, %loop.exit ], [ %Y_is_zero.1, %loop.latch39 ]
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add41, %loop.latch39 ]
  %array_getter37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1, i128 %i.1
  %X38 = load i128, i128* %array_getter37, align 4
  %ne = icmp ne i128 %X38, 0
  br i1 %ne, label %if.true33, label %if.false34

if.true33:                                        ; preds = %loop.body32
  br label %if.exit

if.false34:                                       ; preds = %loop.body32
  br label %if.exit

if.exit:                                          ; preds = %if.false34, %if.true33
  %Y_is_zero.1 = phi i128 [ 0, %if.true33 ], [ %Y_is_zero.0, %if.false34 ]
  br label %loop.latch39

loop.latch39:                                     ; preds = %if.exit
  %add41 = add i128 %i.1, 1
  %slt44 = icmp slt i128 %add41, %1
  br i1 %slt44, label %loop.body32, label %loop.exit45

loop.exit45:                                      ; preds = %loop.latch39
  %eq49 = icmp eq i128 %Y_is_zero.1, 1
  br i1 %eq49, label %if.true46, label %if.false47

if.true46:                                        ; preds = %loop.exit45
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X52 = load [256 x i128], [256 x i128]* %array_getter51, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X52, [256 x i128]* %spice_inline_array, align 4
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out54 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit114

if.false47:                                       ; preds = %loop.exit45
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 1
  %X60 = load [256 x i128], [256 x i128]* %array_getter59, align 4
  %spice_inline_array61 = alloca [256 x i128], align 8
  store [256 x i128] %X60, [256 x i128]* %spice_inline_array61, align 4
  %call62 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %4, [256 x i128]* %spice_inline_array61)
  %out64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out64 to i8*
  %8 = bitcast [256 x i128]* %call62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter66 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X67 = load i128, i128* %array_getter66, align 4
  %add68 = add i128 %X67, 1
  %X70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  store i128 %add68, i128* %X70, align 4
  %array_getter74 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 0
  %X75 = load i128, i128* %array_getter74, align 4
  %lshift = shl i128 1, %0
  %sge = icmp sge i128 %X75, %lshift
  br i1 %sge, label %if.true71, label %if.false72

if.true71:                                        ; preds = %if.false47
  br label %loop.body77

if.false72:                                       ; preds = %if.false47
  br label %if.exit113

loop.body77:                                      ; preds = %loop.latch105, %if.true71
  %i.2 = phi i128 [ 0, %if.true71 ], [ %add107, %loop.latch105 ]
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X81 = load i128, i128* %array_getter80, align 4
  %lshift83 = shl i128 1, %0
  %sdiv = sdiv i128 %X81, %lshift83
  %add86 = add i128 %i.2, 1
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add86
  %X88 = load i128, i128* %array_getter87, align 4
  %add90 = add i128 %X88, %sdiv
  %add93 = add i128 %i.2, 1
  %X94 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %add93
  store i128 %add90, i128* %X94, align 4
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  %X98 = load i128, i128* %array_getter97, align 4
  %lshift101 = shl i128 1, %0
  %mul = mul i128 %sdiv, %lshift101
  %sub = sub i128 %X98, %mul
  %X104 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.2
  store i128 %sub, i128* %X104, align 4
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.body77
  %add107 = add i128 %i.2, 1
  %sub110 = sub i128 %2, 1
  %slt111 = icmp slt i128 %add107, %sub110
  br i1 %slt111, label %loop.body77, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch105
  br label %if.exit113

if.exit113:                                       ; preds = %loop.exit112, %if.false72
  br label %if.exit114

if.exit114:                                       ; preds = %if.exit113, %if.true46
  br label %loop.body115

loop.body115:                                     ; preds = %loop.latch124, %if.exit114
  %i.3 = phi i128 [ 0, %if.exit114 ], [ %add126, %loop.latch124 ]
  %array_getter118 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call31, i128 0, i128 0, i128 %i.3
  %X119 = load i128, i128* %array_getter118, align 4
  %neg120 = sub i128 0, %X119
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0, i128 %i.3
  store i128 %neg120, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body115
  %add126 = add i128 %i.3, 1
  %slt129 = icmp slt i128 %add126, %2
  br i1 %slt129, label %loop.body115, label %loop.exit130

loop.exit130:                                     ; preds = %loop.latch124
  br label %if.exit131

if.exit131:                                       ; preds = %loop.exit130, %if.true
  %out.0 = phi [256 x [256 x i128]]* [ %call13, %if.true ], [ %uniform_array, %loop.exit130 ]
  ret [256 x [256 x i128]]* %out.0
}

define [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3)
  %call6 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call, [256 x i128]* %4)
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call6, i128 0, i128 1
  %temp8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp8, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
}

define void @fn_template_init_bigmod(%struct_template_circuit_bigmod* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 0
  %bigmod.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 1
  %bigmod.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 2
  %bigmod.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 3
  %bigmod.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %i4 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall to [256 x i128]*
  %div_range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall7 to [256 x i128]*
  %mod_range_checks8 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %call = call [256 x [256 x i128]]* @long_div(i128 %bigmod.n.read_arg_inner, i128 %bigmod.k.read_arg_inner, [256 x i128]* %bigmod.a.read_input_inner, [256 x i128]* %bigmod.b.read_input_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add22, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 0, i128 %i.0
  %longdiv11 = load i128, i128* %array_getter, align 4
  %div13 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.0
  store i128 %longdiv11, i128* %div13, align 4
  %array_getter16 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %longdiv17 = load i128, i128* %array_getter16, align 4
  %mod20 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.0
  store i128 %longdiv17, i128* %mod20, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add22 = add i128 %i.0, 1
  %slt = icmp slt i128 %add22, %bigmod.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %array_getter27 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 0, i128 %bigmod.k.read_arg_inner
  %longdiv28 = load i128, i128* %array_getter27, align 4
  %div31 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 %longdiv28, i128* %div31, align 4
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch51, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add53, %loop.latch51 ]
  %call34 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod.n.read_arg_inner)
  %div_range_checks37 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks5, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call34, %struct_template_circuit_num2bits** %div_range_checks37, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.1
  %div41 = load i128, i128* %array_getter40, align 4
  %array_getter44 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks5, i128 0, i128 %i.1
  %div_range_checks45 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter44, align 8
  %struct_getter46 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks45, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter46, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %div41, i1* @constraint.210)
  %array_getter49 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks5, i128 0, i128 %i.1
  %div_range_checks50 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter49, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks50, i32 0, i32 1
  store i128 %div41, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch51

loop.latch51:                                     ; preds = %loop.body32
  %add53 = add i128 %i.1, 1
  %sle = icmp sle i128 %add53, %bigmod.k.read_arg_inner
  br i1 %sle, label %loop.body32, label %loop.exit56

loop.exit56:                                      ; preds = %loop.latch51
  br label %loop.body57

loop.body57:                                      ; preds = %loop.latch78, %loop.exit56
  %i.2 = phi i128 [ 0, %loop.exit56 ], [ %add80, %loop.latch78 ]
  %call59 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod.n.read_arg_inner)
  %mod_range_checks62 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks8, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call59, %struct_template_circuit_num2bits** %mod_range_checks62, align 8
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.2
  %mod66 = load i128, i128* %array_getter65, align 4
  %array_getter69 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks8, i128 0, i128 %i.2
  %mod_range_checks70 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter69, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks70, i32 0, i32 1
  %num2bits.in.read_input_outter72 = load i128, i128* %struct_getter71, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter72, i128 %mod66, i1* @constraint.211)
  %array_getter75 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks8, i128 0, i128 %i.2
  %mod_range_checks76 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter75, align 8
  %num2bits.in.write_input_outter77 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks76, i32 0, i32 1
  store i128 %mod66, i128* %num2bits.in.write_input_outter77, align 4
  br label %loop.latch78

loop.latch78:                                     ; preds = %loop.body57
  %add80 = add i128 %i.2, 1
  %slt83 = icmp slt i128 %add80, %bigmod.k.read_arg_inner
  br i1 %slt83, label %loop.body57, label %loop.exit84

loop.exit84:                                      ; preds = %loop.latch78
  %add87 = add i128 %bigmod.k.read_arg_inner, 1
  %call88 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmod.n.read_arg_inner, i128 %add87)
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch118, %loop.exit84
  %i.3 = phi i128 [ 0, %loop.exit84 ], [ %add120, %loop.latch118 ]
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.3
  %div93 = load i128, i128* %array_getter92, align 4
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.3
  %mul98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul98, i128 %div93, i1* @constraint.212)
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 2
  %bigmult.a.read_input_outter101 = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %mul103 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter101, i128 0, i128 %i.3
  store i128 %div93, i128* %mul103, align 4
  %array_getter106 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_inner, i128 0, i128 %i.3
  %b107 = load i128, i128* %array_getter106, align 4
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.3
  %mul112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul112, i128 %b107, i1* @constraint.213)
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 3
  %bigmult.b.read_input_outter115 = load [256 x i128]*, [256 x i128]** %struct_getter114, align 8
  %mul117 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter115, i128 0, i128 %i.3
  store i128 %b107, i128* %mul117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body89
  %add120 = add i128 %i.3, 1
  %slt123 = icmp slt i128 %add120, %bigmod.k.read_arg_inner
  br i1 %slt123, label %loop.body89, label %loop.exit124

loop.exit124:                                     ; preds = %loop.latch118
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %bigmod.k.read_arg_inner
  %div128 = load i128, i128* %array_getter127, align 4
  %struct_getter130 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 2
  %bigmult.a.read_input_outter131 = load [256 x i128]*, [256 x i128]** %struct_getter130, align 8
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter131, i128 0, i128 %bigmod.k.read_arg_inner
  %mul134 = load i128, i128* %array_getter133, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul134, i128 %div128, i1* @constraint.214)
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 2
  %bigmult.a.read_input_outter137 = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %mul139 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter137, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 %div128, i128* %mul139, align 4
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 3
  %bigmult.b.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter142, i128 0, i128 %bigmod.k.read_arg_inner
  %mul145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul145, i128 0, i1* @constraint.215)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 3
  %bigmult.b.read_input_outter148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %mul150 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter148, i128 0, i128 %bigmod.k.read_arg_inner
  store i128 0, i128* %mul150, align 4
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch152, %loop.exit124
  %i.4 = phi i128 [ 0, %loop.exit124 ], [ %add154, %loop.latch152 ]
  br label %loop.latch152

loop.latch152:                                    ; preds = %loop.body151
  %add154 = add i128 %i.4, 1
  %mul157 = mul i128 2, %bigmod.k.read_arg_inner
  %add158 = add i128 %mul157, 2
  %slt159 = icmp slt i128 %add154, %add158
  br i1 %slt159, label %loop.body151, label %loop.exit160

loop.exit160:                                     ; preds = %loop.latch152
  %mul163 = mul i128 2, %bigmod.k.read_arg_inner
  %add164 = add i128 %mul163, 2
  %call165 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigmod.n.read_arg_inner, i128 %add164)
  br label %loop.body166

loop.body166:                                     ; preds = %loop.latch210, %loop.exit160
  %i.5 = phi i128 [ 0, %loop.exit160 ], [ %add212, %loop.latch210 ]
  %struct_getter168 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter168, align 8
  %array_getter170 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.5
  %mul171 = load i128, i128* %array_getter170, align 4
  %struct_getter173 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter173, align 8
  %array_getter175 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.5
  %add176 = load i128, i128* %array_getter175, align 4
  call void @fn_intrinsic_add_constraint(i128 %add176, i128 %mul171, i1* @constraint.216)
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter179 = load [256 x i128]*, [256 x i128]** %struct_getter178, align 8
  %add181 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter179, i128 0, i128 %i.5
  store i128 %mul171, i128* %add181, align 4
  %slt184 = icmp slt i128 %i.5, %bigmod.k.read_arg_inner
  br i1 %slt184, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body166
  %array_getter187 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.5
  %mod188 = load i128, i128* %array_getter187, align 4
  %struct_getter190 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter190, align 8
  %array_getter192 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.5
  %add193 = load i128, i128* %array_getter192, align 4
  call void @fn_intrinsic_add_constraint(i128 %add193, i128 %mod188, i1* @constraint.217)
  %struct_getter195 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter196 = load [256 x i128]*, [256 x i128]** %struct_getter195, align 8
  %add198 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter196, i128 0, i128 %i.5
  store i128 %mod188, i128* %add198, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body166
  %struct_getter200 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter201 = load [256 x i128]*, [256 x i128]** %struct_getter200, align 8
  %array_getter203 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter201, i128 0, i128 %i.5
  %add204 = load i128, i128* %array_getter203, align 4
  call void @fn_intrinsic_add_constraint(i128 %add204, i128 0, i1* @constraint.218)
  %struct_getter206 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter207 = load [256 x i128]*, [256 x i128]** %struct_getter206, align 8
  %add209 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter207, i128 0, i128 %i.5
  store i128 0, i128* %add209, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch210

loop.latch210:                                    ; preds = %if.exit
  %add212 = add i128 %i.5, 1
  %mul215 = mul i128 2, %bigmod.k.read_arg_inner
  %slt216 = icmp slt i128 %add212, %mul215
  br i1 %slt216, label %loop.body166, label %loop.exit217

loop.exit217:                                     ; preds = %loop.latch210
  %struct_getter219 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 4
  %bigmult.out.read_output_outter220 = load [256 x i128]*, [256 x i128]** %struct_getter219, align 8
  %mul222 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter223 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter220, i128 0, i128 %mul222
  %mul224 = load i128, i128* %array_getter223, align 4
  %struct_getter226 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter227 = load [256 x i128]*, [256 x i128]** %struct_getter226, align 8
  %mul229 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter230 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter227, i128 0, i128 %mul229
  %add231 = load i128, i128* %array_getter230, align 4
  call void @fn_intrinsic_add_constraint(i128 %add231, i128 %mul224, i1* @constraint.219)
  %struct_getter233 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter234 = load [256 x i128]*, [256 x i128]** %struct_getter233, align 8
  %mul236 = mul i128 2, %bigmod.k.read_arg_inner
  %add237 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter234, i128 0, i128 %mul236
  store i128 %mul224, i128* %add237, align 4
  %struct_getter239 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call88, i32 0, i32 4
  %bigmult.out.read_output_outter240 = load [256 x i128]*, [256 x i128]** %struct_getter239, align 8
  %mul242 = mul i128 2, %bigmod.k.read_arg_inner
  %add243 = add i128 %mul242, 1
  %array_getter244 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter240, i128 0, i128 %add243
  %mul245 = load i128, i128* %array_getter244, align 4
  %struct_getter247 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter248 = load [256 x i128]*, [256 x i128]** %struct_getter247, align 8
  %mul250 = mul i128 2, %bigmod.k.read_arg_inner
  %add251 = add i128 %mul250, 1
  %array_getter252 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter248, i128 0, i128 %add251
  %add253 = load i128, i128* %array_getter252, align 4
  call void @fn_intrinsic_add_constraint(i128 %add253, i128 %mul245, i1* @constraint.220)
  %struct_getter255 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 2
  %bigadd.a.read_input_outter256 = load [256 x i128]*, [256 x i128]** %struct_getter255, align 8
  %mul258 = mul i128 2, %bigmod.k.read_arg_inner
  %add259 = add i128 %mul258, 1
  %add260 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter256, i128 0, i128 %add259
  store i128 %mul245, i128* %add260, align 4
  %struct_getter262 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter263 = load [256 x i128]*, [256 x i128]** %struct_getter262, align 8
  %mul265 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter266 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter263, i128 0, i128 %mul265
  %add267 = load i128, i128* %array_getter266, align 4
  call void @fn_intrinsic_add_constraint(i128 %add267, i128 0, i1* @constraint.221)
  %struct_getter269 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter270 = load [256 x i128]*, [256 x i128]** %struct_getter269, align 8
  %mul272 = mul i128 2, %bigmod.k.read_arg_inner
  %add273 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter270, i128 0, i128 %mul272
  store i128 0, i128* %add273, align 4
  %struct_getter275 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter276 = load [256 x i128]*, [256 x i128]** %struct_getter275, align 8
  %mul278 = mul i128 2, %bigmod.k.read_arg_inner
  %add279 = add i128 %mul278, 1
  %array_getter280 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter276, i128 0, i128 %add279
  %add281 = load i128, i128* %array_getter280, align 4
  call void @fn_intrinsic_add_constraint(i128 %add281, i128 0, i1* @constraint.222)
  %struct_getter283 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 3
  %bigadd.b.read_input_outter284 = load [256 x i128]*, [256 x i128]** %struct_getter283, align 8
  %mul286 = mul i128 2, %bigmod.k.read_arg_inner
  %add287 = add i128 %mul286, 1
  %add288 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter284, i128 0, i128 %add287
  store i128 0, i128* %add288, align 4
  br label %loop.body289

loop.body289:                                     ; preds = %loop.latch290, %loop.exit217
  %i.6 = phi i128 [ 0, %loop.exit217 ], [ %add292, %loop.latch290 ]
  br label %loop.latch290

loop.latch290:                                    ; preds = %loop.body289
  %add292 = add i128 %i.6, 1
  %mul295 = mul i128 2, %bigmod.k.read_arg_inner
  %add296 = add i128 %mul295, 2
  %slt297 = icmp slt i128 %add292, %add296
  br i1 %slt297, label %loop.body289, label %loop.exit298

loop.exit298:                                     ; preds = %loop.latch290
  br label %loop.body299

loop.body299:                                     ; preds = %loop.latch309, %loop.exit298
  %i.7 = phi i128 [ 0, %loop.exit298 ], [ %add311, %loop.latch309 ]
  %struct_getter301 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter301, align 8
  %array_getter303 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.7
  %add304 = load i128, i128* %array_getter303, align 4
  %array_getter307 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_inner, i128 0, i128 %i.7
  %a308 = load i128, i128* %array_getter307, align 4
  call void @fn_intrinsic_add_constraint(i128 %add304, i128 %a308, i1* @constraint.223)
  br label %loop.latch309

loop.latch309:                                    ; preds = %loop.body299
  %add311 = add i128 %i.7, 1
  %mul314 = mul i128 2, %bigmod.k.read_arg_inner
  %slt315 = icmp slt i128 %add311, %mul314
  br i1 %slt315, label %loop.body299, label %loop.exit316

loop.exit316:                                     ; preds = %loop.latch309
  %struct_getter318 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 4
  %bigadd.out.read_output_outter319 = load [256 x i128]*, [256 x i128]** %struct_getter318, align 8
  %mul321 = mul i128 2, %bigmod.k.read_arg_inner
  %array_getter322 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter319, i128 0, i128 %mul321
  %add323 = load i128, i128* %array_getter322, align 4
  call void @fn_intrinsic_add_constraint(i128 %add323, i128 0, i1* @constraint.224)
  %struct_getter325 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call165, i32 0, i32 4
  %bigadd.out.read_output_outter326 = load [256 x i128]*, [256 x i128]** %struct_getter325, align 8
  %mul328 = mul i128 2, %bigmod.k.read_arg_inner
  %add329 = add i128 %mul328, 1
  %array_getter330 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter326, i128 0, i128 %add329
  %add331 = load i128, i128* %array_getter330, align 4
  call void @fn_intrinsic_add_constraint(i128 %add331, i128 0, i1* @constraint.225)
  %call334 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigmod.n.read_arg_inner, i128 %bigmod.k.read_arg_inner)
  br label %loop.body335

loop.body335:                                     ; preds = %loop.latch364, %loop.exit316
  %i.8 = phi i128 [ 0, %loop.exit316 ], [ %add366, %loop.latch364 ]
  %array_getter338 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.8
  %mod339 = load i128, i128* %array_getter338, align 4
  %struct_getter341 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call334, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter341, align 8
  %array_getter343 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.8
  %lt344 = load i128, i128* %array_getter343, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt344, i128 %mod339, i1* @constraint.226)
  %struct_getter346 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call334, i32 0, i32 2
  %biglessthan.a.read_input_outter347 = load [256 x i128]*, [256 x i128]** %struct_getter346, align 8
  %lt349 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter347, i128 0, i128 %i.8
  store i128 %mod339, i128* %lt349, align 4
  %array_getter352 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_inner, i128 0, i128 %i.8
  %b353 = load i128, i128* %array_getter352, align 4
  %struct_getter355 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call334, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter355, align 8
  %array_getter357 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.8
  %lt358 = load i128, i128* %array_getter357, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt358, i128 %b353, i1* @constraint.227)
  %struct_getter360 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call334, i32 0, i32 3
  %biglessthan.b.read_input_outter361 = load [256 x i128]*, [256 x i128]** %struct_getter360, align 8
  %lt363 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter361, i128 0, i128 %i.8
  store i128 %b353, i128* %lt363, align 4
  br label %loop.latch364

loop.latch364:                                    ; preds = %loop.body335
  %add366 = add i128 %i.8, 1
  %slt369 = icmp slt i128 %add366, %bigmod.k.read_arg_inner
  br i1 %slt369, label %loop.body335, label %loop.exit370

loop.exit370:                                     ; preds = %loop.latch364
  %struct_getter372 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call334, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter372, align 4
  call void @fn_intrinsic_add_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.228)
  br label %exit

exit:                                             ; preds = %loop.exit370
  %bigmod.div.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 4
  store [256 x i128]* %div, [256 x i128]** %bigmod.div.write_output_inner, align 8
  %bigmod.mod.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 5
  store [256 x i128]* %mod, [256 x i128]** %bigmod.mod.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmod = alloca %struct_template_circuit_bigmod, align 8
  %bigmod.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 0
  store i128 %0, i128* %bigmod.n.write_arg_inner, align 4
  %bigmod.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %struct_template_circuit_bigmod, i32 0, i32 1
  store i128 %1, i128* %bigmod.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmod* %struct_template_circuit_bigmod
}

define void @fn_template_init_bigmod2(%struct_template_circuit_bigmod2* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 0
  %bigmod2.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 1
  %bigmod2.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 2
  %bigmod2.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 3
  %bigmod2.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 4
  %bigmod2.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %mod = bitcast i8* %malloccall to [256 x i128]*
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %div = bitcast i8* %malloccall6 to [256 x i128]*
  %div_range_checks7 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %mod_range_checks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %sub = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %call = call [256 x [256 x i128]]* @long_div2(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.k.read_arg_inner, i128 %sub, [256 x i128]* %bigmod2.a.read_input_inner, [256 x i128]* %bigmod2.b.read_input_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add17, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %longdiv13 = load i128, i128* %array_getter, align 4
  %mod15 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.0
  store i128 %longdiv13, i128* %mod15, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add17 = add i128 %i.0, 1
  %slt = icmp slt i128 %add17, %bigmod2.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch28, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add30, %loop.latch28 ]
  %array_getter23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 0, i128 %i.1
  %longdiv24 = load i128, i128* %array_getter23, align 4
  %div27 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.1
  store i128 %longdiv24, i128* %div27, align 4
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.body20
  %add30 = add i128 %i.1, 1
  %sub34 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle = icmp sle i128 %add30, %sub34
  br i1 %sle, label %loop.body20, label %loop.exit35

loop.exit35:                                      ; preds = %loop.latch28
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch55, %loop.exit35
  %i.2 = phi i128 [ 0, %loop.exit35 ], [ %add57, %loop.latch55 ]
  %call38 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod2.n.read_arg_inner)
  %div_range_checks41 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks7, i128 0, i128 %i.2
  store %struct_template_circuit_num2bits* %call38, %struct_template_circuit_num2bits** %div_range_checks41, align 8
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.2
  %div45 = load i128, i128* %array_getter44, align 4
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks7, i128 0, i128 %i.2
  %div_range_checks49 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter48, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks49, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %div45, i1* @constraint.229)
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks7, i128 0, i128 %i.2
  %div_range_checks54 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter53, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks54, i32 0, i32 1
  store i128 %div45, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body36
  %add57 = add i128 %i.2, 1
  %sub61 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle62 = icmp sle i128 %add57, %sub61
  br i1 %sle62, label %loop.body36, label %loop.exit63

loop.exit63:                                      ; preds = %loop.latch55
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch85, %loop.exit63
  %i.3 = phi i128 [ 0, %loop.exit63 ], [ %add87, %loop.latch85 ]
  %call66 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmod2.n.read_arg_inner)
  %mod_range_checks69 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks9, i128 0, i128 %i.3
  store %struct_template_circuit_num2bits* %call66, %struct_template_circuit_num2bits** %mod_range_checks69, align 8
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.3
  %mod73 = load i128, i128* %array_getter72, align 4
  %array_getter76 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks9, i128 0, i128 %i.3
  %mod_range_checks77 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter76, align 8
  %struct_getter78 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks77, i32 0, i32 1
  %num2bits.in.read_input_outter79 = load i128, i128* %struct_getter78, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter79, i128 %mod73, i1* @constraint.230)
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks9, i128 0, i128 %i.3
  %mod_range_checks83 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter82, align 8
  %num2bits.in.write_input_outter84 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks83, i32 0, i32 1
  store i128 %mod73, i128* %num2bits.in.write_input_outter84, align 4
  br label %loop.latch85

loop.latch85:                                     ; preds = %loop.body64
  %add87 = add i128 %i.3, 1
  %slt90 = icmp slt i128 %add87, %bigmod2.k.read_arg_inner
  br i1 %slt90, label %loop.body64, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch85
  %sub95 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %add96 = add i128 %sub95, 1
  %call97 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmod2.n.read_arg_inner, i128 %add96)
  br label %loop.body98

loop.body98:                                      ; preds = %loop.latch127, %loop.exit91
  %i.4 = phi i128 [ 0, %loop.exit91 ], [ %add129, %loop.latch127 ]
  %array_getter101 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.4
  %div102 = load i128, i128* %array_getter101, align 4
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter104, align 8
  %array_getter106 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.4
  %mul107 = load i128, i128* %array_getter106, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul107, i128 %div102, i1* @constraint.231)
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 2
  %bigmult.a.read_input_outter110 = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %mul112 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter110, i128 0, i128 %i.4
  store i128 %div102, i128* %mul112, align 4
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod2.b.read_input_inner, i128 0, i128 %i.4
  %b116 = load i128, i128* %array_getter115, align 4
  %struct_getter118 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter118, align 8
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.4
  %mul121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul121, i128 %b116, i1* @constraint.232)
  %struct_getter123 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 3
  %bigmult.b.read_input_outter124 = load [256 x i128]*, [256 x i128]** %struct_getter123, align 8
  %mul126 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter124, i128 0, i128 %i.4
  store i128 %b116, i128* %mul126, align 4
  br label %loop.latch127

loop.latch127:                                    ; preds = %loop.body98
  %add129 = add i128 %i.4, 1
  %slt132 = icmp slt i128 %add129, %bigmod2.k.read_arg_inner
  br i1 %slt132, label %loop.body98, label %loop.exit133

loop.exit133:                                     ; preds = %loop.latch127
  br label %loop.body135

loop.body135:                                     ; preds = %loop.latch162, %loop.exit133
  %i.5 = phi i128 [ %bigmod2.k.read_arg_inner, %loop.exit133 ], [ %add164, %loop.latch162 ]
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %div, i128 0, i128 %i.5
  %div139 = load i128, i128* %array_getter138, align 4
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 2
  %bigmult.a.read_input_outter142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter142, i128 0, i128 %i.5
  %mul145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul145, i128 %div139, i1* @constraint.233)
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 2
  %bigmult.a.read_input_outter148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %mul150 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter148, i128 0, i128 %i.5
  store i128 %div139, i128* %mul150, align 4
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 3
  %bigmult.b.read_input_outter153 = load [256 x i128]*, [256 x i128]** %struct_getter152, align 8
  %array_getter155 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter153, i128 0, i128 %i.5
  %mul156 = load i128, i128* %array_getter155, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul156, i128 0, i1* @constraint.234)
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 3
  %bigmult.b.read_input_outter159 = load [256 x i128]*, [256 x i128]** %struct_getter158, align 8
  %mul161 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter159, i128 0, i128 %i.5
  store i128 0, i128* %mul161, align 4
  br label %loop.latch162

loop.latch162:                                    ; preds = %loop.body135
  %add164 = add i128 %i.5, 1
  %sub168 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %sle169 = icmp sle i128 %add164, %sub168
  br i1 %sle169, label %loop.body135, label %loop.exit170

loop.exit170:                                     ; preds = %loop.latch162
  br label %loop.body172

loop.body172:                                     ; preds = %loop.latch178, %loop.exit170
  %i.6 = phi i128 [ %bigmod2.m.read_arg_inner, %loop.exit170 ], [ %add180, %loop.latch178 ]
  %struct_getter174 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter174, align 8
  %array_getter176 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.6
  %mul177 = load i128, i128* %array_getter176, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul177, i128 0, i1* @constraint.235)
  br label %loop.latch178

loop.latch178:                                    ; preds = %loop.body172
  %add180 = add i128 %i.6, 1
  %sub184 = sub i128 %bigmod2.m.read_arg_inner, %bigmod2.k.read_arg_inner
  %mul185 = mul i128 2, %sub184
  %add186 = add i128 %mul185, 2
  %slt187 = icmp slt i128 %add180, %add186
  br i1 %slt187, label %loop.body172, label %loop.exit188

loop.exit188:                                     ; preds = %loop.latch178
  %call191 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.m.read_arg_inner)
  br label %loop.body192

loop.body192:                                     ; preds = %loop.latch237, %loop.exit188
  %i.7 = phi i128 [ 0, %loop.exit188 ], [ %add239, %loop.latch237 ]
  %struct_getter194 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call97, i32 0, i32 4
  %bigmult.out.read_output_outter195 = load [256 x i128]*, [256 x i128]** %struct_getter194, align 8
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter195, i128 0, i128 %i.7
  %mul198 = load i128, i128* %array_getter197, align 4
  %struct_getter200 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 2
  %bigadd.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter200, align 8
  %array_getter202 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter, i128 0, i128 %i.7
  %add203 = load i128, i128* %array_getter202, align 4
  call void @fn_intrinsic_add_constraint(i128 %add203, i128 %mul198, i1* @constraint.236)
  %struct_getter205 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 2
  %bigadd.a.read_input_outter206 = load [256 x i128]*, [256 x i128]** %struct_getter205, align 8
  %add208 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.a.read_input_outter206, i128 0, i128 %i.7
  store i128 %mul198, i128* %add208, align 4
  %slt211 = icmp slt i128 %i.7, %bigmod2.k.read_arg_inner
  br i1 %slt211, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body192
  %array_getter214 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.7
  %mod215 = load i128, i128* %array_getter214, align 4
  %struct_getter217 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 3
  %bigadd.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter217, align 8
  %array_getter219 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter, i128 0, i128 %i.7
  %add220 = load i128, i128* %array_getter219, align 4
  call void @fn_intrinsic_add_constraint(i128 %add220, i128 %mod215, i1* @constraint.237)
  %struct_getter222 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 3
  %bigadd.b.read_input_outter223 = load [256 x i128]*, [256 x i128]** %struct_getter222, align 8
  %add225 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter223, i128 0, i128 %i.7
  store i128 %mod215, i128* %add225, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body192
  %struct_getter227 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 3
  %bigadd.b.read_input_outter228 = load [256 x i128]*, [256 x i128]** %struct_getter227, align 8
  %array_getter230 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter228, i128 0, i128 %i.7
  %add231 = load i128, i128* %array_getter230, align 4
  call void @fn_intrinsic_add_constraint(i128 %add231, i128 0, i1* @constraint.238)
  %struct_getter233 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 3
  %bigadd.b.read_input_outter234 = load [256 x i128]*, [256 x i128]** %struct_getter233, align 8
  %add236 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.b.read_input_outter234, i128 0, i128 %i.7
  store i128 0, i128* %add236, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch237

loop.latch237:                                    ; preds = %if.exit
  %add239 = add i128 %i.7, 1
  %slt242 = icmp slt i128 %add239, %bigmod2.m.read_arg_inner
  br i1 %slt242, label %loop.body192, label %loop.exit243

loop.exit243:                                     ; preds = %loop.latch237
  br label %loop.body244

loop.body244:                                     ; preds = %loop.latch254, %loop.exit243
  %i.8 = phi i128 [ 0, %loop.exit243 ], [ %add256, %loop.latch254 ]
  %struct_getter246 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 4
  %bigadd.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter246, align 8
  %array_getter248 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter, i128 0, i128 %i.8
  %add249 = load i128, i128* %array_getter248, align 4
  %array_getter252 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod2.a.read_input_inner, i128 0, i128 %i.8
  %a253 = load i128, i128* %array_getter252, align 4
  call void @fn_intrinsic_add_constraint(i128 %add249, i128 %a253, i1* @constraint.239)
  br label %loop.latch254

loop.latch254:                                    ; preds = %loop.body244
  %add256 = add i128 %i.8, 1
  %slt259 = icmp slt i128 %add256, %bigmod2.m.read_arg_inner
  br i1 %slt259, label %loop.body244, label %loop.exit260

loop.exit260:                                     ; preds = %loop.latch254
  %struct_getter262 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %call191, i32 0, i32 4
  %bigadd.out.read_output_outter263 = load [256 x i128]*, [256 x i128]** %struct_getter262, align 8
  %array_getter265 = getelementptr inbounds [256 x i128], [256 x i128]* %bigadd.out.read_output_outter263, i128 0, i128 %bigmod2.m.read_arg_inner
  %add266 = load i128, i128* %array_getter265, align 4
  call void @fn_intrinsic_add_constraint(i128 %add266, i128 0, i1* @constraint.240)
  %call269 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %bigmod2.n.read_arg_inner, i128 %bigmod2.k.read_arg_inner)
  br label %loop.body270

loop.body270:                                     ; preds = %loop.latch299, %loop.exit260
  %i.9 = phi i128 [ 0, %loop.exit260 ], [ %add301, %loop.latch299 ]
  %array_getter273 = getelementptr inbounds [256 x i128], [256 x i128]* %mod, i128 0, i128 %i.9
  %mod274 = load i128, i128* %array_getter273, align 4
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call269, i32 0, i32 2
  %biglessthan.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter276, align 8
  %array_getter278 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter, i128 0, i128 %i.9
  %lt279 = load i128, i128* %array_getter278, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt279, i128 %mod274, i1* @constraint.241)
  %struct_getter281 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call269, i32 0, i32 2
  %biglessthan.a.read_input_outter282 = load [256 x i128]*, [256 x i128]** %struct_getter281, align 8
  %lt284 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.a.read_input_outter282, i128 0, i128 %i.9
  store i128 %mod274, i128* %lt284, align 4
  %array_getter287 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod2.b.read_input_inner, i128 0, i128 %i.9
  %b288 = load i128, i128* %array_getter287, align 4
  %struct_getter290 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call269, i32 0, i32 3
  %biglessthan.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter290, align 8
  %array_getter292 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter, i128 0, i128 %i.9
  %lt293 = load i128, i128* %array_getter292, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt293, i128 %b288, i1* @constraint.242)
  %struct_getter295 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call269, i32 0, i32 3
  %biglessthan.b.read_input_outter296 = load [256 x i128]*, [256 x i128]** %struct_getter295, align 8
  %lt298 = getelementptr inbounds [256 x i128], [256 x i128]* %biglessthan.b.read_input_outter296, i128 0, i128 %i.9
  store i128 %b288, i128* %lt298, align 4
  br label %loop.latch299

loop.latch299:                                    ; preds = %loop.body270
  %add301 = add i128 %i.9, 1
  %slt304 = icmp slt i128 %add301, %bigmod2.k.read_arg_inner
  br i1 %slt304, label %loop.body270, label %loop.exit305

loop.exit305:                                     ; preds = %loop.latch299
  %struct_getter307 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %call269, i32 0, i32 4
  %biglessthan.out.read_output_outter = load i128, i128* %struct_getter307, align 4
  call void @fn_intrinsic_add_constraint(i128 %biglessthan.out.read_output_outter, i128 1, i1* @constraint.243)
  br label %exit

exit:                                             ; preds = %loop.exit305
  %bigmod2.div.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 5
  store [256 x i128]* %div, [256 x i128]** %bigmod2.div.write_output_inner, align 8
  %bigmod2.mod.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 6
  store [256 x i128]* %mod, [256 x i128]** %bigmod2.mod.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmod2* @fn_template_build_bigmod2(i128 %0, i128 %1, i128 %2) {
entry:
  %struct_template_circuit_bigmod2 = alloca %struct_template_circuit_bigmod2, align 8
  %bigmod2.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 0
  store i128 %0, i128* %bigmod2.n.write_arg_inner, align 4
  %bigmod2.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 1
  store i128 %1, i128* %bigmod2.k.write_arg_inner, align 4
  %bigmod2.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2, i32 0, i32 2
  store i128 %2, i128* %bigmod2.m.write_arg_inner, align 4
  ret %struct_template_circuit_bigmod2* %struct_template_circuit_bigmod2
}

define void @fn_template_init_signedfpcarrymodp(%struct_template_circuit_signedfpcarrymodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 0
  %signedfpcarrymodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 1
  %signedfpcarrymodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 2
  %signedfpcarrymodp.overflow.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 3
  %signedfpcarrymodp.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X = bitcast i8* %malloccall to [256 x i128]*
  %X_range_checks5 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %m6 = call i128 @fn_intrinsic_inline_init()
  %i7 = call i128 @fn_intrinsic_inline_init()
  %range_checks9 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall10 to [256 x i128]*
  %add = add i128 %signedfpcarrymodp.overflow.read_arg_inner, %signedfpcarrymodp.n.read_arg_inner
  %sub = sub i128 %add, 1
  %sdiv = sdiv i128 %sub, %signedfpcarrymodp.n.read_arg_inner
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %signedfpcarrymodp.n.read_arg_inner, i128 %signedfpcarrymodp.k.read_arg_inner, i128 %sdiv, [256 x i128]* %signedfpcarrymodp.in.read_input_inner, [256 x i128]* %signedfpcarrymodp.p.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add38, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %Xvar16 = load i128, i128* %array_getter, align 4
  %out18 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %Xvar16, i128* %out18, align 4
  %call20 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %signedfpcarrymodp.n.read_arg_inner)
  %range_checks23 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks9, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call20, %struct_template_circuit_num2bits** %range_checks23, align 8
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  %out27 = load i128, i128* %array_getter26, align 4
  %array_getter30 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks9, i128 0, i128 %i.0
  %range_checks31 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter30, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks31, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %out27, i1* @constraint.244)
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks9, i128 0, i128 %i.0
  %range_checks36 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter35, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks36, i32 0, i32 1
  store i128 %out27, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add38 = add i128 %i.0, 1
  %slt = icmp slt i128 %add38, %signedfpcarrymodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body41

loop.body41:                                      ; preds = %loop.latch72, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add74, %loop.latch72 ]
  %array_getter44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 0, i128 %i.1
  %Xvar45 = load i128, i128* %array_getter44, align 4
  %X48 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.1
  store i128 %Xvar45, i128* %X48, align 4
  %add50 = add i128 %signedfpcarrymodp.n.read_arg_inner, 1
  %call51 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add50)
  %X_range_checks54 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks5, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call51, %struct_template_circuit_num2bits** %X_range_checks54, align 8
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.1
  %X58 = load i128, i128* %array_getter57, align 4
  %lshift = shl i128 1, %signedfpcarrymodp.n.read_arg_inner
  %add60 = add i128 %X58, %lshift
  %array_getter63 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks5, i128 0, i128 %i.1
  %X_range_checks64 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter63, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks64, i32 0, i32 1
  %num2bits.in.read_input_outter66 = load i128, i128* %struct_getter65, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter66, i128 %add60, i1* @constraint.245)
  %array_getter69 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks5, i128 0, i128 %i.1
  %X_range_checks70 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter69, align 8
  %num2bits.in.write_input_outter71 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks70, i32 0, i32 1
  store i128 %add60, i128* %num2bits.in.write_input_outter71, align 4
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.body41
  %add74 = add i128 %i.1, 1
  %slt77 = icmp slt i128 %add74, %sdiv
  br i1 %slt77, label %loop.body41, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  %call84 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %signedfpcarrymodp.n.read_arg_inner, i128 %signedfpcarrymodp.k.read_arg_inner, i128 %sdiv, i128 %signedfpcarrymodp.overflow.read_arg_inner, [256 x i128]* %signedfpcarrymodp.p.read_arg_inner)
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch114, %loop.exit78
  %i.2 = phi i128 [ 0, %loop.exit78 ], [ %add116, %loop.latch114 ]
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.in.read_input_inner, i128 0, i128 %i.2
  %in89 = load i128, i128* %array_getter88, align 4
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter, i128 0, i128 %i.2
  %mod_check94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check94, i128 %in89, i1* @constraint.246)
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter97 = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %mod_check99 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter97, i128 0, i128 %i.2
  store i128 %in89, i128* %mod_check99, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out103 = load i128, i128* %array_getter102, align 4
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter105, align 8
  %array_getter107 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter, i128 0, i128 %i.2
  %mod_check108 = load i128, i128* %array_getter107, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check108, i128 %out103, i1* @constraint.247)
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter111 = load [256 x i128]*, [256 x i128]** %struct_getter110, align 8
  %mod_check113 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter111, i128 0, i128 %i.2
  store i128 %out103, i128* %mod_check113, align 4
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body85
  %add116 = add i128 %i.2, 1
  %slt119 = icmp slt i128 %add116, %signedfpcarrymodp.k.read_arg_inner
  br i1 %slt119, label %loop.body85, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch136, %loop.exit120
  %i.3 = phi i128 [ 0, %loop.exit120 ], [ %add138, %loop.latch136 ]
  %array_getter124 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.3
  %X125 = load i128, i128* %array_getter124, align 4
  %struct_getter127 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter127, align 8
  %array_getter129 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter, i128 0, i128 %i.3
  %mod_check130 = load i128, i128* %array_getter129, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check130, i128 %X125, i1* @constraint.248)
  %struct_getter132 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call84, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter133 = load [256 x i128]*, [256 x i128]** %struct_getter132, align 8
  %mod_check135 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter133, i128 0, i128 %i.3
  store i128 %X125, i128* %mod_check135, align 4
  br label %loop.latch136

loop.latch136:                                    ; preds = %loop.body121
  %add138 = add i128 %i.3, 1
  %slt141 = icmp slt i128 %add138, %sdiv
  br i1 %slt141, label %loop.body121, label %loop.exit142

loop.exit142:                                     ; preds = %loop.latch136
  br label %exit

exit:                                             ; preds = %loop.exit142
  %signedfpcarrymodp.x.write_output_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 5
  store [256 x i128]* %X, [256 x i128]** %signedfpcarrymodp.x.write_output_inner, align 8
  %signedfpcarrymodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 6
  store [256 x i128]* %out, [256 x i128]** %signedfpcarrymodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedfpcarrymodp = alloca %struct_template_circuit_signedfpcarrymodp, align 8
  %signedfpcarrymodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 0
  store i128 %0, i128* %signedfpcarrymodp.n.write_arg_inner, align 4
  %signedfpcarrymodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 1
  store i128 %1, i128* %signedfpcarrymodp.k.write_arg_inner, align 4
  %signedfpcarrymodp.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 2
  store i128 %2, i128* %signedfpcarrymodp.overflow.write_arg_inner, align 4
  %signedfpcarrymodp.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %signedfpcarrymodp.p.write_arg_inner, align 8
  ret %struct_template_circuit_signedfpcarrymodp* %struct_template_circuit_signedfpcarrymodp
}

define void @fn_template_init_signedcheckcarrymodtozero(%struct_template_circuit_signedcheckcarrymodtozero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 0
  %signedcheckcarrymodtozero.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 1
  %signedcheckcarrymodtozero.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 2
  %signedcheckcarrymodtozero.overflow.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 3
  %signedcheckcarrymodtozero.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 4
  %signedcheckcarrymodtozero.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %m5 = call i128 @fn_intrinsic_inline_init()
  %X_range_checks7 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %i8 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %X = bitcast i8* %malloccall to [256 x i128]*
  %add = add i128 %signedcheckcarrymodtozero.overflow.read_arg_inner, %signedcheckcarrymodtozero.n.read_arg_inner
  %sub = sub i128 %add, 1
  %sdiv = sdiv i128 %sub, %signedcheckcarrymodtozero.n.read_arg_inner
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %signedcheckcarrymodtozero.n.read_arg_inner, i128 %signedcheckcarrymodtozero.k.read_arg_inner, i128 %sdiv, [256 x i128]* %signedcheckcarrymodtozero.in.read_input_inner, [256 x i128]* %signedcheckcarrymodtozero.p.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add39, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 0, i128 %i.0
  %Xvar14 = load i128, i128* %array_getter, align 4
  %X16 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.0
  store i128 %Xvar14, i128* %X16, align 4
  %add18 = add i128 %signedcheckcarrymodtozero.n.read_arg_inner, 1
  %call19 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add18)
  %X_range_checks22 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks7, i128 0, i128 %i.0
  store %struct_template_circuit_num2bits* %call19, %struct_template_circuit_num2bits** %X_range_checks22, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.0
  %X26 = load i128, i128* %array_getter25, align 4
  %lshift = shl i128 1, %signedcheckcarrymodtozero.n.read_arg_inner
  %add28 = add i128 %X26, %lshift
  %array_getter31 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks7, i128 0, i128 %i.0
  %X_range_checks32 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter31, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks32, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %add28, i1* @constraint.249)
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks7, i128 0, i128 %i.0
  %X_range_checks37 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter36, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks37, i32 0, i32 1
  store i128 %add28, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add39 = add i128 %i.0, 1
  %slt = icmp slt i128 %add39, %sdiv
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call47 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %signedcheckcarrymodtozero.n.read_arg_inner, i128 %signedcheckcarrymodtozero.k.read_arg_inner, i128 %sdiv, i128 %signedcheckcarrymodtozero.overflow.read_arg_inner, [256 x i128]* %signedcheckcarrymodtozero.p.read_arg_inner)
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch73, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add75, %loop.latch73 ]
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %signedcheckcarrymodtozero.in.read_input_inner, i128 0, i128 %i.1
  %in52 = load i128, i128* %array_getter51, align 4
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter, i128 0, i128 %i.1
  %mod_check57 = load i128, i128* %array_getter56, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check57, i128 %in52, i1* @constraint.250)
  %struct_getter59 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 5
  %checkcarrymodp.in.read_input_outter60 = load [256 x i128]*, [256 x i128]** %struct_getter59, align 8
  %mod_check62 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.in.read_input_outter60, i128 0, i128 %i.1
  store i128 %in52, i128* %mod_check62, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter, i128 0, i128 %i.1
  %mod_check67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check67, i128 0, i1* @constraint.251)
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 7
  %checkcarrymodp.y.read_input_outter70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %mod_check72 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.y.read_input_outter70, i128 0, i128 %i.1
  store i128 0, i128* %mod_check72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body48
  %add75 = add i128 %i.1, 1
  %slt78 = icmp slt i128 %add75, %signedcheckcarrymodtozero.k.read_arg_inner
  br i1 %slt78, label %loop.body48, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch95, %loop.exit79
  %i.2 = phi i128 [ 0, %loop.exit79 ], [ %add97, %loop.latch95 ]
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i.2
  %X84 = load i128, i128* %array_getter83, align 4
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter, i128 0, i128 %i.2
  %mod_check89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check89, i128 %X84, i1* @constraint.252)
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %call47, i32 0, i32 6
  %checkcarrymodp.x.read_input_outter92 = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %mod_check94 = getelementptr inbounds [256 x i128], [256 x i128]* %checkcarrymodp.x.read_input_outter92, i128 0, i128 %i.2
  store i128 %X84, i128* %mod_check94, align 4
  br label %loop.latch95

loop.latch95:                                     ; preds = %loop.body80
  %add97 = add i128 %i.2, 1
  %slt100 = icmp slt i128 %add97, %sdiv
  br i1 %slt100, label %loop.body80, label %loop.exit101

loop.exit101:                                     ; preds = %loop.latch95
  br label %exit

exit:                                             ; preds = %loop.exit101
  %signedcheckcarrymodtozero.x.write_output_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %0, i32 0, i32 5
  store [256 x i128]* %X, [256 x i128]** %signedcheckcarrymodtozero.x.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_signedcheckcarrymodtozero* @fn_template_build_signedcheckcarrymodtozero(i128 %0, i128 %1, i128 %2, [256 x i128]* %3) {
entry:
  %struct_template_circuit_signedcheckcarrymodtozero = alloca %struct_template_circuit_signedcheckcarrymodtozero, align 8
  %signedcheckcarrymodtozero.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 0
  store i128 %0, i128* %signedcheckcarrymodtozero.n.write_arg_inner, align 4
  %signedcheckcarrymodtozero.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 1
  store i128 %1, i128* %signedcheckcarrymodtozero.k.write_arg_inner, align 4
  %signedcheckcarrymodtozero.overflow.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 2
  store i128 %2, i128* %signedcheckcarrymodtozero.overflow.write_arg_inner, align 4
  %signedcheckcarrymodtozero.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_signedcheckcarrymodtozero, %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %signedcheckcarrymodtozero.p.write_arg_inner, align 8
  ret %struct_template_circuit_signedcheckcarrymodtozero* %struct_template_circuit_signedcheckcarrymodtozero
}

define [256 x i128]* @find_Fp_inverse(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %ka4 = call i128 @fn_intrinsic_inline_init()
  %i7 = call i128 @fn_intrinsic_inline_init()
  %l13 = call i128 @fn_intrinsic_inline_init()
  %call = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 0, [256 x i128]* %2, [256 x i128]* %3)
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array16 = alloca [256 x i128], align 8
  %uniform_array17 = alloca [256 x i128], align 8
  %uniform_array18 = alloca [256 x i128], align 8
  %uniform_array19 = alloca [256 x i128], align 8
  %uniform_array20 = alloca [256 x i128], align 8
  %uniform_array21 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call, i128 0, i128 1, i128 %i.0
  %amodp24 = load i128, i128* %array_getter, align 4
  %a26 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 %amodp24, i128* %a26, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.0
  %p30 = load i128, i128* %array_getter29, align 4
  %b33 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.0
  store i128 %p30, i128* %b33, align 4
  %x36 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.0
  store i128 0, i128* %x36, align 4
  %y39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.0
  store i128 0, i128* %y39, align 4
  %u42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.0
  store i128 0, i128* %u42, align 4
  %v45 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.0
  store i128 0, i128* %v45, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %y50 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 0
  store i128 1, i128* %y50, align 4
  %u52 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 0
  store i128 1, i128* %u52, align 4
  br label %loop.body53

loop.body53:                                      ; preds = %loop.latch210, %loop.exit
  %l.0 = phi i128 [ 0, %loop.exit ], [ %add212, %loop.latch210 ]
  br label %loop.body54

loop.body54:                                      ; preds = %loop.latch61, %loop.body53
  %i.1 = phi i128 [ 0, %loop.body53 ], [ %add63, %loop.latch61 ]
  %ka.0 = phi i128 [ 0, %loop.body53 ], [ %ka.1, %loop.latch61 ]
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  %a58 = load i128, i128* %array_getter57, align 4
  %ne = icmp ne i128 %a58, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body54
  %add60 = add i128 %i.1, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body54
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ka.1 = phi i128 [ %add60, %if.true ], [ %ka.0, %if.false ]
  br label %loop.latch61

loop.latch61:                                     ; preds = %if.exit
  %add63 = add i128 %i.1, 1
  %slt66 = icmp slt i128 %add63, %1
  br i1 %slt66, label %loop.body54, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch61
  %eq = icmp eq i128 %ka.1, 0
  br i1 %eq, label %if.true68, label %if.false69

if.true68:                                        ; preds = %loop.exit67
  br label %loop.body71

if.false69:                                       ; preds = %loop.exit67
  br label %if.exit87

loop.body71:                                      ; preds = %loop.latch79, %if.true68
  %i.2 = phi i128 [ 0, %if.true68 ], [ %add81, %loop.latch79 ]
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.2
  %x75 = load i128, i128* %array_getter74, align 4
  %ret78 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array21, i128 0, i128 %i.2
  store i128 %x75, i128* %ret78, align 4
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body71
  %add81 = add i128 %i.2, 1
  %slt84 = icmp slt i128 %add81, %1
  br i1 %slt84, label %loop.body71, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  ret [256 x i128]* %uniform_array21

if.exit87:                                        ; preds = %if.false69
  %sub = sub i128 %1, %ka.1
  %call94 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %ka.1, i128 %sub, [256 x i128]* %uniform_array16, [256 x i128]* %uniform_array)
  %uniform_array95 = alloca [256 x i128], align 8
  br label %loop.body96

loop.body96:                                      ; preds = %loop.latch104, %if.exit87
  %i.3 = phi i128 [ 0, %if.exit87 ], [ %add106, %loop.latch104 ]
  %array_getter99 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 0, i128 %i.3
  %r100 = load i128, i128* %array_getter99, align 4
  %q103 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.3
  store i128 %r100, i128* %q103, align 4
  br label %loop.latch104

loop.latch104:                                    ; preds = %loop.body96
  %add106 = add i128 %i.3, 1
  %sub110 = sub i128 %1, %ka.1
  %add111 = add i128 %sub110, 1
  %slt112 = icmp slt i128 %add106, %add111
  br i1 %slt112, label %loop.body96, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch104
  %sub116 = sub i128 %1, %ka.1
  %add117 = add i128 %sub116, 1
  br label %loop.body118

loop.body118:                                     ; preds = %loop.latch122, %loop.exit113
  %i.4 = phi i128 [ %add117, %loop.exit113 ], [ %add124, %loop.latch122 ]
  %q121 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array95, i128 0, i128 %i.4
  store i128 0, i128* %q121, align 4
  br label %loop.latch122

loop.latch122:                                    ; preds = %loop.body118
  %add124 = add i128 %i.4, 1
  %slt127 = icmp slt i128 %add124, %1
  br i1 %slt127, label %loop.body118, label %loop.exit128

loop.exit128:                                     ; preds = %loop.latch122
  %call137 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array19, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call139 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array17, [256 x i128]* %call137, [256 x i128]* %3)
  %call148 = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array20, [256 x i128]* %uniform_array95, [256 x i128]* %3)
  %call150 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %uniform_array18, [256 x i128]* %call148, [256 x i128]* %3)
  br label %loop.body151

loop.body151:                                     ; preds = %loop.latch203, %loop.exit128
  %i.5 = phi i128 [ 0, %loop.exit128 ], [ %add205, %loop.latch203 ]
  %array_getter154 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  %a155 = load i128, i128* %array_getter154, align 4
  %b158 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array16, i128 0, i128 %i.5
  store i128 %a155, i128* %b158, align 4
  %slt163 = icmp slt i128 %i.5, %ka.1
  br i1 %slt163, label %if.true159, label %if.false160

if.true159:                                       ; preds = %loop.body151
  %array_getter166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call94, i128 0, i128 1, i128 %i.5
  %r167 = load i128, i128* %array_getter166, align 4
  %a170 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 %r167, i128* %a170, align 4
  br label %if.exit174

if.false160:                                      ; preds = %loop.body151
  %a173 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.5
  store i128 0, i128* %a173, align 4
  br label %if.exit174

if.exit174:                                       ; preds = %if.false160, %if.true159
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  %u178 = load i128, i128* %array_getter177, align 4
  %x181 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array17, i128 0, i128 %i.5
  store i128 %u178, i128* %x181, align 4
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  %v185 = load i128, i128* %array_getter184, align 4
  %y188 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array18, i128 0, i128 %i.5
  store i128 %v185, i128* %y188, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %call139, i128 0, i128 %i.5
  %newu192 = load i128, i128* %array_getter191, align 4
  %u195 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array19, i128 0, i128 %i.5
  store i128 %newu192, i128* %u195, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %call150, i128 0, i128 %i.5
  %newv199 = load i128, i128* %array_getter198, align 4
  %v202 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array20, i128 0, i128 %i.5
  store i128 %newv199, i128* %v202, align 4
  br label %loop.latch203

loop.latch203:                                    ; preds = %if.exit174
  %add205 = add i128 %i.5, 1
  %slt208 = icmp slt i128 %add205, %1
  br i1 %slt208, label %loop.body151, label %loop.exit209

loop.exit209:                                     ; preds = %loop.latch203
  br label %loop.latch210

loop.latch210:                                    ; preds = %loop.exit209
  %add212 = add i128 %l.0, 1
  %slt214 = icmp slt i128 %add212, 1000
  br i1 %slt214, label %loop.body53, label %loop.exit215

loop.exit215:                                     ; preds = %loop.latch210
  ret [256 x i128]* %uniform_array21
}

define [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %3) {
entry:
  %isZero4 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %isZero.0 = phi i128 [ 1, %entry ], [ %isZero.1, %loop.latch ]
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %2, i128 0, i128 %i.0
  %a9 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a9, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %isZero.1 = phi i128 [ 0, %if.true ], [ %isZero.0, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %1
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %eq = icmp eq i128 %isZero.1, 1
  br i1 %eq, label %if.true12, label %if.false13

if.true12:                                        ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body15

if.false13:                                       ; preds = %loop.exit
  br label %if.exit26

loop.body15:                                      ; preds = %loop.latch18, %if.true12
  %i.1 = phi i128 [ 0, %if.true12 ], [ %add20, %loop.latch18 ]
  %ret17 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.1
  store i128 0, i128* %ret17, align 4
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.body15
  %add20 = add i128 %i.1, 1
  %slt23 = icmp slt i128 %add20, %1
  br i1 %slt23, label %loop.body15, label %loop.exit24

loop.exit24:                                      ; preds = %loop.latch18
  ret [256 x i128]* %uniform_array

if.exit26:                                        ; preds = %if.false13
  %uniform_array27 = alloca [256 x i128], align 8
  br label %loop.body28

loop.body28:                                      ; preds = %loop.latch44, %if.exit26
  %i.2 = phi i128 [ 0, %if.exit26 ], [ %add46, %loop.latch44 ]
  %slt33 = icmp slt i128 %i.2, %1
  br i1 %slt33, label %if.true29, label %if.false30

if.true29:                                        ; preds = %loop.body28
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %3, i128 0, i128 %i.2
  %p36 = load i128, i128* %array_getter35, align 4
  %pCopy39 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 %p36, i128* %pCopy39, align 4
  br label %if.exit43

if.false30:                                       ; preds = %loop.body28
  %pCopy42 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array27, i128 0, i128 %i.2
  store i128 0, i128* %pCopy42, align 4
  br label %if.exit43

if.exit43:                                        ; preds = %if.false30, %if.true29
  br label %loop.latch44

loop.latch44:                                     ; preds = %if.exit43
  %add46 = add i128 %i.2, 1
  %slt48 = icmp slt i128 %add46, 50
  br i1 %slt48, label %loop.body28, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  %uniform_array50 = alloca [256 x i128], align 8
  br label %loop.body51

loop.body51:                                      ; preds = %loop.latch55, %loop.exit49
  %i.3 = phi i128 [ 0, %loop.exit49 ], [ %add57, %loop.latch55 ]
  %two54 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 %i.3
  store i128 0, i128* %two54, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body51
  %add57 = add i128 %i.3, 1
  %slt59 = icmp slt i128 %add57, 50
  br i1 %slt59, label %loop.body51, label %loop.exit60

loop.exit60:                                      ; preds = %loop.latch55
  %two62 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array50, i128 0, i128 0
  store i128 2, i128* %two62, align 4
  %uniform_array63 = alloca [256 x i128], align 8
  %call = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %uniform_array27, [256 x i128]* %uniform_array50)
  %uniform_array67 = alloca [256 x i128], align 8
  %call73 = call [256 x i128]* @mod_exp(i128 %0, i128 %1, [256 x i128]* %2, [256 x i128]* %uniform_array27, [256 x i128]* %call)
  ret [256 x i128]* %call73
}

define void @fn_template_init_bigmultmodp(%struct_template_circuit_bigmultmodp* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 0
  %bigmultmodp.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 1
  %bigmultmodp.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 2
  %bigmultmodp.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 3
  %bigmultmodp.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 4
  %bigmultmodp.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %i5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %call = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmultmodp.n.read_arg_inner, i128 %bigmultmodp.k.read_arg_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultmodp.a.read_input_inner, i128 0, i128 %i.0
  %a7 = load i128, i128* %array_getter, align 4
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.0
  %big_mult12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult12, i128 %a7, i1* @constraint.253)
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 2
  %bigmult.a.read_input_outter14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %big_mult16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter14, i128 0, i128 %i.0
  store i128 %a7, i128* %big_mult16, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultmodp.b.read_input_inner, i128 0, i128 %i.0
  %b19 = load i128, i128* %array_getter18, align 4
  %struct_getter21 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter21, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.0
  %big_mult24 = load i128, i128* %array_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult24, i128 %b19, i1* @constraint.254)
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 3
  %bigmult.b.read_input_outter27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %big_mult29 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter27, i128 0, i128 %i.0
  store i128 %b19, i128* %big_mult29, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigmultmodp.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call35 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %bigmultmodp.n.read_arg_inner, i128 %bigmultmodp.k.read_arg_inner)
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch52, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add54, %loop.latch52 ]
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.1
  %big_mult41 = load i128, i128* %array_getter40, align 4
  %struct_getter43 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call35, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter43, align 8
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i.1
  %big_mod46 = load i128, i128* %array_getter45, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod46, i128 %big_mult41, i1* @constraint.255)
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call35, i32 0, i32 2
  %bigmod.a.read_input_outter49 = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %big_mod51 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter49, i128 0, i128 %i.1
  store i128 %big_mult41, i128* %big_mod51, align 4
  br label %loop.latch52

loop.latch52:                                     ; preds = %loop.body36
  %add54 = add i128 %i.1, 1
  %mul = mul i128 2, %bigmultmodp.k.read_arg_inner
  %slt57 = icmp slt i128 %add54, %mul
  br i1 %slt57, label %loop.body36, label %loop.exit58

loop.exit58:                                      ; preds = %loop.latch52
  br label %loop.body59

loop.body59:                                      ; preds = %loop.latch73, %loop.exit58
  %i.2 = phi i128 [ 0, %loop.exit58 ], [ %add75, %loop.latch73 ]
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultmodp.p.read_input_inner, i128 0, i128 %i.2
  %p62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call35, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i.2
  %big_mod67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod67, i128 %p62, i1* @constraint.256)
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call35, i32 0, i32 3
  %bigmod.b.read_input_outter70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %big_mod72 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter70, i128 0, i128 %i.2
  store i128 %p62, i128* %big_mod72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body59
  %add75 = add i128 %i.2, 1
  %slt78 = icmp slt i128 %add75, %bigmultmodp.k.read_arg_inner
  br i1 %slt78, label %loop.body59, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  br label %loop.body80

loop.body80:                                      ; preds = %loop.latch93, %loop.exit79
  %i.3 = phi i128 [ 0, %loop.exit79 ], [ %add95, %loop.latch93 ]
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call35, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 %i.3
  %big_mod85 = load i128, i128* %array_getter84, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out89 = load i128, i128* %array_getter88, align 4
  call void @fn_intrinsic_add_constraint(i128 %out89, i128 %big_mod85, i1* @constraint.257)
  %out92 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  store i128 %big_mod85, i128* %out92, align 4
  br label %loop.latch93

loop.latch93:                                     ; preds = %loop.body80
  %add95 = add i128 %i.3, 1
  %slt98 = icmp slt i128 %add95, %bigmultmodp.k.read_arg_inner
  br i1 %slt98, label %loop.body80, label %loop.exit99

loop.exit99:                                      ; preds = %loop.latch93
  br label %exit

exit:                                             ; preds = %loop.exit99
  %bigmultmodp.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %bigmultmodp.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmultmodp* @fn_template_build_bigmultmodp(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmultmodp = alloca %struct_template_circuit_bigmultmodp, align 8
  %bigmultmodp.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 0
  store i128 %0, i128* %bigmultmodp.n.write_arg_inner, align 4
  %bigmultmodp.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmultmodp, %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp, i32 0, i32 1
  store i128 %1, i128* %bigmultmodp.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmultmodp* %struct_template_circuit_bigmultmodp
}

define [256 x [256 x [256 x i128]]]* @get_signed_Fp2_carry_witness(i128 %0, i128 %1, i128 %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %i1 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %i.0
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %0, i128 %1, i128 %2, [256 x i128]* %spice_inline_array, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array, i128 0, i128 %i.0
  %5 = bitcast [256 x [256 x i128]]* %out6 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  ret [256 x [256 x [256 x i128]]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %j2 = call i128 @fn_intrinsic_inline_init()
  %i4 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %uniform_array5 = alloca [256 x [256 x [256 x i128]]], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch18, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add20, %loop.latch18 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %j.0 = phi i128 [ 0, %loop.body ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 %i.0
  %a8 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a8, [256 x i128]* %spice_inline_array, align 4
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 %j.0
  %b11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %b11, [256 x i128]* %spice_inline_array12, align 4
  %call = call [256 x i128]* @prod_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array12, [256 x i128]* %4)
  %ab15 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 %i.0, i128 %j.0
  %5 = bitcast [256 x i128]* %ab15 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body6
  %add = add i128 %j.0, 1
  %slt = icmp slt i128 %add, 2
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch18

loop.latch18:                                     ; preds = %loop.exit
  %add20 = add i128 %i.0, 1
  %slt22 = icmp slt i128 %add20, 2
  br i1 %slt22, label %loop.body, label %loop.exit23

loop.exit23:                                      ; preds = %loop.latch18
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 0
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %array_getter31 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 1
  %ab32 = load [256 x i128], [256 x i128]* %array_getter31, align 4
  %spice_inline_array33 = alloca [256 x i128], align 8
  store [256 x i128] %ab32, [256 x i128]* %spice_inline_array33, align 4
  %call35 = call [256 x i128]* @long_sub_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array29, [256 x i128]* %spice_inline_array33, [256 x i128]* %4)
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out37 to i8*
  %8 = bitcast [256 x i128]* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 0, i128 1
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %array_getter45 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %uniform_array5, i128 0, i128 1, i128 0
  %ab46 = load [256 x i128], [256 x i128]* %array_getter45, align 4
  %spice_inline_array47 = alloca [256 x i128], align 8
  store [256 x i128] %ab46, [256 x i128]* %spice_inline_array47, align 4
  %call49 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %spice_inline_array47, [256 x i128]* %4)
  %out51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out51 to i8*
  %10 = bitcast [256 x i128]* %call49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define void @fn_template_init_bigmodinv(%struct_template_circuit_bigmodinv* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 0
  %bigmodinv.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 1
  %bigmodinv.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 2
  %bigmodinv.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 3
  %bigmodinv.p.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %range_checks4 = alloca [256 x %struct_template_circuit_num2bits*], align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %i6 = call i128 @fn_intrinsic_inline_init()
  %call = call [256 x i128]* @mod_inv(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner, [256 x i128]* %bigmodinv.in.read_input_inner, [256 x i128]* %bigmodinv.p.read_input_inner)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %call, i128 0, i128 %i.0
  %inv9 = load i128, i128* %array_getter, align 4
  %out11 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.0
  store i128 %inv9, i128* %out11, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %bigmodinv.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.body15

loop.body15:                                      ; preds = %loop.latch34, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add36, %loop.latch34 ]
  %call17 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %bigmodinv.n.read_arg_inner)
  %range_checks20 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks4, i128 0, i128 %i.1
  store %struct_template_circuit_num2bits* %call17, %struct_template_circuit_num2bits** %range_checks20, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.1
  %out24 = load i128, i128* %array_getter23, align 4
  %array_getter27 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks4, i128 0, i128 %i.1
  %range_checks28 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter27, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks28, i32 0, i32 1
  %num2bits.in.read_input_outter = load i128, i128* %struct_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %num2bits.in.read_input_outter, i128 %out24, i1* @constraint.258)
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks4, i128 0, i128 %i.1
  %range_checks33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter32, align 8
  %num2bits.in.write_input_outter = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks33, i32 0, i32 1
  store i128 %out24, i128* %num2bits.in.write_input_outter, align 4
  br label %loop.latch34

loop.latch34:                                     ; preds = %loop.body15
  %add36 = add i128 %i.1, 1
  %slt39 = icmp slt i128 %add36, %bigmodinv.k.read_arg_inner
  br i1 %slt39, label %loop.body15, label %loop.exit40

loop.exit40:                                      ; preds = %loop.latch34
  %call43 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner)
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch73, %loop.exit40
  %i.2 = phi i128 [ 0, %loop.exit40 ], [ %add75, %loop.latch73 ]
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmodinv.in.read_input_inner, i128 0, i128 %i.2
  %in48 = load i128, i128* %array_getter47, align 4
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call43, i32 0, i32 2
  %bigmult.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter, i128 0, i128 %i.2
  %mult53 = load i128, i128* %array_getter52, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult53, i128 %in48, i1* @constraint.259)
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call43, i32 0, i32 2
  %bigmult.a.read_input_outter56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %mult58 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.a.read_input_outter56, i128 0, i128 %i.2
  store i128 %in48, i128* %mult58, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.2
  %out62 = load i128, i128* %array_getter61, align 4
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call43, i32 0, i32 3
  %bigmult.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter, i128 0, i128 %i.2
  %mult67 = load i128, i128* %array_getter66, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult67, i128 %out62, i1* @constraint.260)
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call43, i32 0, i32 3
  %bigmult.b.read_input_outter70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %mult72 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.b.read_input_outter70, i128 0, i128 %i.2
  store i128 %out62, i128* %mult72, align 4
  br label %loop.latch73

loop.latch73:                                     ; preds = %loop.body44
  %add75 = add i128 %i.2, 1
  %slt78 = icmp slt i128 %add75, %bigmodinv.k.read_arg_inner
  br i1 %slt78, label %loop.body44, label %loop.exit79

loop.exit79:                                      ; preds = %loop.latch73
  %call82 = call %struct_template_circuit_bigmod* @fn_template_build_bigmod(i128 %bigmodinv.n.read_arg_inner, i128 %bigmodinv.k.read_arg_inner)
  br label %loop.body83

loop.body83:                                      ; preds = %loop.latch99, %loop.exit79
  %i.3 = phi i128 [ 0, %loop.exit79 ], [ %add101, %loop.latch99 ]
  %struct_getter85 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %call43, i32 0, i32 4
  %bigmult.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter85, align 8
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmult.out.read_output_outter, i128 0, i128 %i.3
  %mult88 = load i128, i128* %array_getter87, align 4
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 2
  %bigmod.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter, i128 0, i128 %i.3
  %mod93 = load i128, i128* %array_getter92, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod93, i128 %mult88, i1* @constraint.261)
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 2
  %bigmod.a.read_input_outter96 = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %mod98 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.a.read_input_outter96, i128 0, i128 %i.3
  store i128 %mult88, i128* %mod98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body83
  %add101 = add i128 %i.3, 1
  %mul = mul i128 2, %bigmodinv.k.read_arg_inner
  %slt104 = icmp slt i128 %add101, %mul
  br i1 %slt104, label %loop.body83, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch99
  br label %loop.body106

loop.body106:                                     ; preds = %loop.latch121, %loop.exit105
  %i.4 = phi i128 [ 0, %loop.exit105 ], [ %add123, %loop.latch121 ]
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmodinv.p.read_input_inner, i128 0, i128 %i.4
  %p110 = load i128, i128* %array_getter109, align 4
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 3
  %bigmod.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter112, align 8
  %array_getter114 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter, i128 0, i128 %i.4
  %mod115 = load i128, i128* %array_getter114, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod115, i128 %p110, i1* @constraint.262)
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 3
  %bigmod.b.read_input_outter118 = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %mod120 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.b.read_input_outter118, i128 0, i128 %i.4
  store i128 %p110, i128* %mod120, align 4
  br label %loop.latch121

loop.latch121:                                    ; preds = %loop.body106
  %add123 = add i128 %i.4, 1
  %slt126 = icmp slt i128 %add123, %bigmodinv.k.read_arg_inner
  br i1 %slt126, label %loop.body106, label %loop.exit127

loop.exit127:                                     ; preds = %loop.latch121
  %struct_getter129 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 5
  %bigmod.mod.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter129, align 8
  %array_getter130 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter, i128 0, i128 0
  %mod131 = load i128, i128* %array_getter130, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod131, i128 1, i1* @constraint.263)
  br label %loop.body132

loop.body132:                                     ; preds = %loop.latch139, %loop.exit127
  %i.5 = phi i128 [ 1, %loop.exit127 ], [ %add141, %loop.latch139 ]
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %call82, i32 0, i32 5
  %bigmod.mod.read_output_outter135 = load [256 x i128]*, [256 x i128]** %struct_getter134, align 8
  %array_getter137 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmod.mod.read_output_outter135, i128 0, i128 %i.5
  %mod138 = load i128, i128* %array_getter137, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod138, i128 0, i1* @constraint.264)
  br label %loop.latch139

loop.latch139:                                    ; preds = %loop.body132
  %add141 = add i128 %i.5, 1
  %slt144 = icmp slt i128 %add141, %bigmodinv.k.read_arg_inner
  br i1 %slt144, label %loop.body132, label %loop.exit145

loop.exit145:                                     ; preds = %loop.latch139
  br label %exit

exit:                                             ; preds = %loop.exit145
  %bigmodinv.out.write_output_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %0, i32 0, i32 4
  store [256 x i128]* %out, [256 x i128]** %bigmodinv.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_bigmodinv* @fn_template_build_bigmodinv(i128 %0, i128 %1) {
entry:
  %struct_template_circuit_bigmodinv = alloca %struct_template_circuit_bigmodinv, align 8
  %bigmodinv.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 0
  store i128 %0, i128* %bigmodinv.n.write_arg_inner, align 4
  %bigmodinv.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_bigmodinv, %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv, i32 0, i32 1
  store i128 %1, i128* %bigmodinv.k.write_arg_inner, align 4
  ret %struct_template_circuit_bigmodinv* %struct_template_circuit_bigmodinv
}

define void @fn_template_init_primereduce(%struct_template_circuit_primereduce* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 0
  %primereduce.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 1
  %primereduce.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 2
  %primereduce.m.read_arg_inner = load i128, i128* %struct_getter2, align 4
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 3
  %primereduce.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 4
  %primereduce.m_out.read_arg_inner = load i128, i128* %struct_getter4, align 4
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 5
  %primereduce.in.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter5, align 8
  %i10 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %j11 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  %uniform_array14 = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 1, %entry ], [ %add, %loop.latch ]
  %two16 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.0
  store i128 0, i128* %two16, align 4
  %e19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 %i.0
  store i128 0, i128* %e19, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add = add i128 %i.0, 1
  %slt = icmp slt i128 %add, %primereduce.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %two23 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 0
  store i128 2, i128* %two23, align 4
  %e25 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 0
  store i128 %primereduce.n.read_arg_inner, i128* %e25, align 4
  %call = call [256 x i128]* @mod_exp(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %uniform_array, [256 x i128]* %primereduce.p.read_arg_inner, [256 x i128]* %uniform_array14)
  %e32 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array14, i128 0, i128 0
  store i128 %primereduce.k.read_arg_inner, i128* %e32, align 4
  %call38 = call [256 x i128]* @mod_exp(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %call, [256 x i128]* %primereduce.p.read_arg_inner, [256 x i128]* %uniform_array14)
  %uniform_array39 = alloca [256 x [256 x i128]], align 8
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch57, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add59, %loop.latch57 ]
  %eq = icmp eq i128 %i.1, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body40
  %r45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array39, i128 0, i128 %i.1
  %1 = bitcast [256 x i128]* %r45 to i8*
  %2 = bitcast [256 x i128]* %call38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body40
  %sub = sub i128 %i.1, 1
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array39, i128 0, i128 %sub
  %r50 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %r50, [256 x i128]* %spice_inline_array, align 4
  %call53 = call [256 x i128]* @prod_mod(i128 %primereduce.n.read_arg_inner, i128 %primereduce.k.read_arg_inner, [256 x i128]* %spice_inline_array, [256 x i128]* %call, [256 x i128]* %primereduce.p.read_arg_inner)
  %r56 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array39, i128 0, i128 %i.1
  %3 = bitcast [256 x i128]* %r56 to i8*
  %4 = bitcast [256 x i128]* %call53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch57

loop.latch57:                                     ; preds = %if.exit
  %add59 = add i128 %i.1, 1
  %slt61 = icmp slt i128 %add59, %primereduce.m.read_arg_inner
  br i1 %slt61, label %loop.body40, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch57
  %uniform_array63 = alloca [256 x i128], align 8
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch71, %loop.exit62
  %i.2 = phi i128 [ 0, %loop.exit62 ], [ %add73, %loop.latch71 ]
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_inner, i128 0, i128 %i.2
  %in67 = load i128, i128* %array_getter66, align 4
  %out_sum70 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array63, i128 0, i128 %i.2
  store i128 %in67, i128* %out_sum70, align 4
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body64
  %add73 = add i128 %i.2, 1
  %slt76 = icmp slt i128 %add73, %primereduce.k.read_arg_inner
  br i1 %slt76, label %loop.body64, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch106, %loop.exit77
  %i.3 = phi i128 [ 0, %loop.exit77 ], [ %add108, %loop.latch106 ]
  br label %loop.body79

loop.body79:                                      ; preds = %loop.latch99, %loop.body78
  %j.0 = phi i128 [ 0, %loop.body78 ], [ %add101, %loop.latch99 ]
  %array_getter82 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array63, i128 0, i128 %j.0
  %out_sum83 = load i128, i128* %array_getter82, align 4
  %add87 = add i128 %i.3, %primereduce.k.read_arg_inner
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_inner, i128 0, i128 %add87
  %in89 = load i128, i128* %array_getter88, align 4
  %array_getter93 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array39, i128 0, i128 %i.3, i128 %j.0
  %r94 = load i128, i128* %array_getter93, align 4
  %mul = mul i128 %in89, %r94
  %add95 = add i128 %out_sum83, %mul
  %out_sum98 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array63, i128 0, i128 %j.0
  store i128 %add95, i128* %out_sum98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body79
  %add101 = add i128 %j.0, 1
  %slt104 = icmp slt i128 %add101, %primereduce.k.read_arg_inner
  br i1 %slt104, label %loop.body79, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch99
  br label %loop.latch106

loop.latch106:                                    ; preds = %loop.exit105
  %add108 = add i128 %i.3, 1
  %slt111 = icmp slt i128 %add108, %primereduce.m.read_arg_inner
  br i1 %slt111, label %loop.body78, label %loop.exit112

loop.exit112:                                     ; preds = %loop.latch106
  br label %loop.body113

loop.body113:                                     ; preds = %loop.latch125, %loop.exit112
  %i.4 = phi i128 [ 0, %loop.exit112 ], [ %add127, %loop.latch125 ]
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array63, i128 0, i128 %i.4
  %out_sum117 = load i128, i128* %array_getter116, align 4
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.4
  %out121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %out121, i128 %out_sum117, i1* @constraint.265)
  %out124 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.4
  store i128 %out_sum117, i128* %out124, align 4
  br label %loop.latch125

loop.latch125:                                    ; preds = %loop.body113
  %add127 = add i128 %i.4, 1
  %slt130 = icmp slt i128 %add127, %primereduce.k.read_arg_inner
  br i1 %slt130, label %loop.body113, label %loop.exit131

loop.exit131:                                     ; preds = %loop.latch125
  br label %exit

exit:                                             ; preds = %loop.exit131
  %primereduce.out.write_output_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 6
  store [256 x i128]* %out, [256 x i128]** %primereduce.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %0, i128 %1, i128 %2, [256 x i128]* %3, i128 %4) {
entry:
  %struct_template_circuit_primereduce = alloca %struct_template_circuit_primereduce, align 8
  %primereduce.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 0
  store i128 %0, i128* %primereduce.n.write_arg_inner, align 4
  %primereduce.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 1
  store i128 %1, i128* %primereduce.k.write_arg_inner, align 4
  %primereduce.m.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 2
  store i128 %2, i128* %primereduce.m.write_arg_inner, align 4
  %primereduce.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 3
  store [256 x i128]* %3, [256 x i128]** %primereduce.p.write_arg_inner, align 8
  %primereduce.m_out.write_arg_inner = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %struct_template_circuit_primereduce, i32 0, i32 4
  store i128 %4, i128* %primereduce.m_out.write_arg_inner, align 4
  ret %struct_template_circuit_primereduce* %struct_template_circuit_primereduce
}

define [256 x [256 x i128]]* @find_Fp2_sum(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x [256 x i128]]* %3, [256 x i128]* %4) {
entry:
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 0
  %b4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %b4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5, [256 x i128]* %4)
  %out6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out6 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter10 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a11 = load [256 x i128], [256 x i128]* %array_getter10, align 4
  %spice_inline_array12 = alloca [256 x i128], align 8
  store [256 x i128] %a11, [256 x i128]* %spice_inline_array12, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %3, i128 0, i128 1
  %b15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %b15, [256 x i128]* %spice_inline_array16, align 4
  %call18 = call [256 x i128]* @long_add_mod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array12, [256 x i128]* %spice_inline_array16, [256 x i128]* %4)
  %out20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out20 to i8*
  %8 = bitcast [256 x i128]* %call18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

define [256 x [256 x i128]]* @find_Fp2_exp(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3, [256 x i128]* %4) {
entry:
  %bitLength1 = call i128 @fn_intrinsic_inline_init()
  %j3 = call i128 @fn_intrinsic_inline_init()
  %i5 = call i128 @fn_intrinsic_inline_init()
  %uniform_array = alloca [256 x i128], align 8
  br label %loop.body

loop.body:                                        ; preds = %loop.latch31, %entry
  %bitLength.0 = phi i128 [ 0, %entry ], [ %bitLength.2, %loop.latch31 ]
  %i.0 = phi i128 [ 0, %entry ], [ %add33, %loop.latch31 ]
  br label %loop.body6

loop.body6:                                       ; preds = %loop.latch, %loop.body
  %bitLength.1 = phi i128 [ %bitLength.0, %loop.body ], [ %bitLength.2, %loop.latch ]
  %j.0 = phi i128 [ 0, %loop.body ], [ %add28, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %4, i128 0, i128 %i.0
  %e8 = load i128, i128* %array_getter, align 4
  %rshift = lshr i128 %e8, %j.0
  %and = and i128 %rshift, 1
  %mul = mul i128 %0, %i.0
  %add = add i128 %j.0, %mul
  %eBits12 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add
  store i128 %and, i128* %eBits12, align 4
  %mul17 = mul i128 %0, %i.0
  %add18 = add i128 %j.0, %mul17
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %add18
  %eBits20 = load i128, i128* %array_getter19, align 4
  %eq = icmp eq i128 %eBits20, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body6
  %mul24 = mul i128 %0, %i.0
  %add25 = add i128 %j.0, %mul24
  %add26 = add i128 %add25, 1
  br label %if.exit

if.false:                                         ; preds = %loop.body6
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %bitLength.2 = phi i128 [ %add26, %if.true ], [ %bitLength.1, %if.false ]
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %add28 = add i128 %j.0, 1
  %slt = icmp slt i128 %add28, %0
  br i1 %slt, label %loop.body6, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch31

loop.latch31:                                     ; preds = %loop.exit
  %add33 = add i128 %i.0, 1
  %mul35 = mul i128 2, %1
  %slt36 = icmp slt i128 %add33, %mul35
  br i1 %slt36, label %loop.body, label %loop.exit37

loop.exit37:                                      ; preds = %loop.latch31
  %uniform_array38 = alloca [256 x [256 x i128]], align 8
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.exit37
  %i.1 = phi i128 [ 0, %loop.exit37 ], [ %add48, %loop.latch46 ]
  %out42 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 %i.1
  store i128 0, i128* %out42, align 4
  %out45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 1, i128 %i.1
  store i128 0, i128* %out45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body39
  %add48 = add i128 %i.1, 1
  %slt50 = icmp slt i128 %add48, 50
  br i1 %slt50, label %loop.body39, label %loop.exit51

loop.exit51:                                      ; preds = %loop.latch46
  %out53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array38, i128 0, i128 0, i128 0
  store i128 1, i128* %out53, align 4
  %sub = sub i128 %bitLength.2, 1
  br label %loop.body55

loop.body55:                                      ; preds = %loop.latch77, %loop.exit51
  %out.0 = phi [256 x [256 x i128]]* [ %uniform_array38, %loop.exit51 ], [ %out.2, %loop.latch77 ]
  %i.2 = phi i128 [ %sub, %loop.exit51 ], [ %sub79, %loop.latch77 ]
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %uniform_array, i128 0, i128 %i.2
  %eBits61 = load i128, i128* %array_getter60, align 4
  %eq62 = icmp eq i128 %eBits61, 1
  br i1 %eq62, label %if.true56, label %if.false57

if.true56:                                        ; preds = %loop.body55
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.0, [256 x [256 x i128]]* %2, [256 x i128]* %3)
  br label %if.exit66

if.false57:                                       ; preds = %loop.body55
  br label %if.exit66

if.exit66:                                        ; preds = %if.false57, %if.true56
  %out.1 = phi [256 x [256 x i128]]* [ %call, %if.true56 ], [ %out.0, %if.false57 ]
  %sgt = icmp sgt i128 %i.2, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %call75 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %0, i128 %1, [256 x [256 x i128]]* %out.1, [256 x [256 x i128]]* %out.1, [256 x i128]* %3)
  br label %if.exit76

if.false68:                                       ; preds = %if.exit66
  br label %if.exit76

if.exit76:                                        ; preds = %if.false68, %if.true67
  %out.2 = phi [256 x [256 x i128]]* [ %call75, %if.true67 ], [ %out.1, %if.false68 ]
  br label %loop.latch77

loop.latch77:                                     ; preds = %if.exit76
  %sub79 = sub i128 %i.2, 1
  %sge = icmp sge i128 %sub79, 0
  br i1 %sge, label %loop.body55, label %loop.exit81

loop.exit81:                                      ; preds = %loop.latch77
  ret [256 x [256 x i128]]* %out.2
}

define void @fn_template_init_fpmultiply(%struct_template_circuit_fpmultiply* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 0
  %fpmultiply.n.read_arg_inner = load i128, i128* %struct_getter, align 4
  %struct_getter1 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 1
  %fpmultiply.k.read_arg_inner = load i128, i128* %struct_getter1, align 4
  %struct_getter2 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 2
  %fpmultiply.p.read_arg_inner = load [256 x i128]*, [256 x i128]** %struct_getter2, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 3
  %fpmultiply.a.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 4
  %fpmultiply.b.read_input_inner = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %LOGK5 = call i128 @fn_intrinsic_inline_init()
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i32))
  %out = bitcast i8* %malloccall to [256 x i128]*
  %i6 = call i128 @fn_intrinsic_inline_init()
  %call = call i128 @log_ceil(i128 %fpmultiply.k.read_arg_inner)
  %mul = mul i128 2, %fpmultiply.n.read_arg_inner
  %add = add i128 %mul, %call
  %call10 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %add)
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i.0 = phi i128 [ 0, %entry ], [ %add36, %loop.latch ]
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %fpmultiply.a.read_input_inner, i128 0, i128 %i.0
  %a12 = load i128, i128* %array_getter, align 4
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call10, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter, i128 0, i128 %i.0
  %nocarry17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry17, i128 %a12, i1* @constraint.266)
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call10, i32 0, i32 3
  %bigmultshortlong.a.read_input_outter19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %nocarry21 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.a.read_input_outter19, i128 0, i128 %i.0
  store i128 %a12, i128* %nocarry21, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %fpmultiply.b.read_input_inner, i128 0, i128 %i.0
  %b24 = load i128, i128* %array_getter23, align 4
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call10, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter, i128 0, i128 %i.0
  %nocarry29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry29, i128 %b24, i1* @constraint.267)
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call10, i32 0, i32 4
  %bigmultshortlong.b.read_input_outter32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %nocarry34 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.b.read_input_outter32, i128 0, i128 %i.0
  store i128 %b24, i128* %nocarry34, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %add36 = add i128 %i.0, 1
  %slt = icmp slt i128 %add36, %fpmultiply.k.read_arg_inner
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub = sub i128 %fpmultiply.k.read_arg_inner, 1
  %mul43 = mul i128 3, %fpmultiply.n.read_arg_inner
  %mul45 = mul i128 2, %call
  %add46 = add i128 %mul43, %mul45
  %call47 = call %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %sub, [256 x i128]* %fpmultiply.p.read_arg_inner, i128 %add46)
  br label %loop.body48

loop.body48:                                      ; preds = %loop.latch64, %loop.exit
  %i.1 = phi i128 [ 0, %loop.exit ], [ %add66, %loop.latch64 ]
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %call10, i32 0, i32 5
  %bigmultshortlong.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %array_getter52 = getelementptr inbounds [256 x i128], [256 x i128]* %bigmultshortlong.out.read_output_outter, i128 0, i128 %i.1
  %nocarry53 = load i128, i128* %array_getter52, align 4
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call47, i32 0, i32 5
  %primereduce.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_outter, i128 0, i128 %i.1
  %red58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %red58, i128 %nocarry53, i1* @constraint.268)
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call47, i32 0, i32 5
  %primereduce.in.read_input_outter61 = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %red63 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.in.read_input_outter61, i128 0, i128 %i.1
  store i128 %nocarry53, i128* %red63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body48
  %add66 = add i128 %i.1, 1
  %mul69 = mul i128 2, %fpmultiply.k.read_arg_inner
  %sub70 = sub i128 %mul69, 1
  %slt71 = icmp slt i128 %add66, %sub70
  br i1 %slt71, label %loop.body48, label %loop.exit72

loop.exit72:                                      ; preds = %loop.latch64
  %mul76 = mul i128 3, %fpmultiply.n.read_arg_inner
  %mul78 = mul i128 2, %call
  %add79 = add i128 %mul76, %mul78
  %call81 = call %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %fpmultiply.n.read_arg_inner, i128 %fpmultiply.k.read_arg_inner, i128 %add79, [256 x i128]* %fpmultiply.p.read_arg_inner)
  br label %loop.body82

loop.body82:                                      ; preds = %loop.latch98, %loop.exit72
  %i.2 = phi i128 [ 0, %loop.exit72 ], [ %add100, %loop.latch98 ]
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %call47, i32 0, i32 6
  %primereduce.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter84, align 8
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %primereduce.out.read_output_outter, i128 0, i128 %i.2
  %red87 = load i128, i128* %array_getter86, align 4
  %struct_getter89 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call81, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_outter = load [256 x i128]*, [256 x i128]** %struct_getter89, align 8
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.in.read_input_outter, i128 0, i128 %i.2
  %big_mod92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod92, i128 %red87, i1* @constraint.269)
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call81, i32 0, i32 4
  %signedfpcarrymodp.in.read_input_outter95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %big_mod97 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.in.read_input_outter95, i128 0, i128 %i.2
  store i128 %red87, i128* %big_mod97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body82
  %add100 = add i128 %i.2, 1
  %slt103 = icmp slt i128 %add100, %fpmultiply.k.read_arg_inner
  br i1 %slt103, label %loop.body82, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  br label %loop.body105

loop.body105:                                     ; preds = %loop.latch118, %loop.exit104
  %i.3 = phi i128 [ 0, %loop.exit104 ], [ %add120, %loop.latch118 ]
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %call81, i32 0, i32 6
  %signedfpcarrymodp.out.read_output_outter = load [256 x i128]*, [256 x i128]** %struct_getter107, align 8
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %signedfpcarrymodp.out.read_output_outter, i128 0, i128 %i.3
  %big_mod110 = load i128, i128* %array_getter109, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  %out114 = load i128, i128* %array_getter113, align 4
  call void @fn_intrinsic_add_constraint(i128 %out114, i128 %big_mod110, i1* @constraint.270)
  %out117 = getelementptr inbounds [256 x i128], [256 x i128]* %out, i128 0, i128 %i.3
  store i128 %big_mod110, i128* %out117, align 4
  br label %loop.latch118

loop.latch118:                                    ; preds = %loop.body105
  %add120 = add i128 %i.3, 1
  %slt123 = icmp slt i128 %add120, %fpmultiply.k.read_arg_inner
  br i1 %slt123, label %loop.body105, label %loop.exit124

loop.exit124:                                     ; preds = %loop.latch118
  br label %exit

exit:                                             ; preds = %loop.exit124
  %fpmultiply.out.write_output_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 5
  store [256 x i128]* %out, [256 x i128]** %fpmultiply.out.write_output_inner, align 8
  ret void
}

define %struct_template_circuit_fpmultiply* @fn_template_build_fpmultiply(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %struct_template_circuit_fpmultiply = alloca %struct_template_circuit_fpmultiply, align 8
  %fpmultiply.n.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 0
  store i128 %0, i128* %fpmultiply.n.write_arg_inner, align 4
  %fpmultiply.k.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 1
  store i128 %1, i128* %fpmultiply.k.write_arg_inner, align 4
  %fpmultiply.p.write_arg_inner = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply, i32 0, i32 2
  store [256 x i128]* %2, [256 x i128]** %fpmultiply.p.write_arg_inner, align 8
  ret %struct_template_circuit_fpmultiply* %struct_template_circuit_fpmultiply
}

define [256 x [256 x i128]]* @find_Fp2_inverse(i128 %0, i128 %1, [256 x [256 x i128]]* %2, [256 x i128]* %3) {
entry:
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a12 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a12, [256 x i128]* %spice_inline_array, align 4
  %array_getter14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a15 = load [256 x i128], [256 x i128]* %array_getter14, align 4
  %spice_inline_array16 = alloca [256 x i128], align 8
  store [256 x i128] %a15, [256 x i128]* %spice_inline_array16, align 4
  %call = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array16)
  %array_getter20 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a21 = load [256 x i128], [256 x i128]* %array_getter20, align 4
  %spice_inline_array22 = alloca [256 x i128], align 8
  store [256 x i128] %a21, [256 x i128]* %spice_inline_array22, align 4
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a25 = load [256 x i128], [256 x i128]* %array_getter24, align 4
  %spice_inline_array26 = alloca [256 x i128], align 8
  store [256 x i128] %a25, [256 x i128]* %spice_inline_array26, align 4
  %call27 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %spice_inline_array22, [256 x i128]* %spice_inline_array26)
  %mul = mul i128 2, %1
  %call32 = call [256 x i128]* @long_add(i128 %0, i128 %mul, [256 x i128]* %call, [256 x i128]* %call27)
  %add = add i128 %1, 1
  %call37 = call [256 x [256 x i128]]* @long_div2(i128 %0, i128 %1, i128 %add, [256 x i128]* %call32, [256 x i128]* %3)
  %array_getter41 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call37, i128 0, i128 1
  %sq_sum_div42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div42, [256 x i128]* %spice_inline_array43, align 4
  %call45 = call [256 x i128]* @mod_inv(i128 %0, i128 %1, [256 x i128]* %spice_inline_array43, [256 x i128]* %3)
  %array_getter50 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 0
  %a51 = load [256 x i128], [256 x i128]* %array_getter50, align 4
  %spice_inline_array52 = alloca [256 x i128], align 8
  store [256 x i128] %a51, [256 x i128]* %spice_inline_array52, align 4
  %call53 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %spice_inline_array52)
  %call58 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call53, [256 x i128]* %3)
  %uniform_array = alloca [256 x [256 x i128]], align 8
  %array_getter60 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call58, i128 0, i128 1
  %out0_div61 = load [256 x i128], [256 x i128]* %array_getter60, align 4
  %spice_inline_array62 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div61, [256 x i128]* %spice_inline_array62, align 4
  %out63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out63 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %array_getter68 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %2, i128 0, i128 1
  %a69 = load [256 x i128], [256 x i128]* %array_getter68, align 4
  %spice_inline_array70 = alloca [256 x i128], align 8
  store [256 x i128] %a69, [256 x i128]* %spice_inline_array70, align 4
  %call71 = call [256 x i128]* @long_sub(i128 %0, i128 %1, [256 x i128]* %3, [256 x i128]* %spice_inline_array70)
  %call76 = call [256 x i128]* @prod(i128 %0, i128 %1, [256 x i128]* %call45, [256 x i128]* %call71)
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %0, i128 %1, [256 x i128]* %call76, [256 x i128]* %3)
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %call81, i128 0, i128 1
  %out1_div84 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div84, [256 x i128]* %spice_inline_array85, align 4
  %out87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %uniform_array, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out87 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  ret [256 x [256 x i128]]* %uniform_array
}

declare noalias i8* @malloc(i32)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
