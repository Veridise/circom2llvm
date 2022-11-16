; ModuleID = 'fp.circom'
source_filename = "/Users/hongbo/code/circom-pairing/circuits/fp.circom"

%struct_template_circuit_bigmultshortlong2d = type { i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_bits2num = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_not = type { i128, i128 }
%struct_template_circuit_nand = type { i128, i128, i128 }
%struct_template_circuit_and = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlongunequal = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_nor = type { i128, i128, i128 }
%struct_template_circuit_multiand = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_num2bits = type { i128, i128, [256 x i128]* }
%struct_template_circuit_iszero = type { i128, i128 }
%struct_template_circuit_num2bitsneg = type { i128, i128, [256 x i128]* }
%struct_template_circuit_modsum = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_xor = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong2dunequal = type { i128, i128, i128, i128, i128, [256 x [256 x i128]]*, [256 x [256 x i128]]*, [256 x [256 x i128]]* }
%struct_template_circuit_compconstant = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_binsum = type { i128, i128, [256 x [256 x i128]]*, [256 x i128]* }
%struct_template_circuit_or = type { i128, i128, i128 }
%struct_template_circuit_bigmultshortlong = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigiszero = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_isequal = type { [256 x i128]*, i128 }
%struct_template_circuit_checkcarrytozero = type { i128, i128, i128, [256 x i128]* }
%struct_template_circuit_forceequalifenabled = type { i128, [256 x i128]* }
%struct_template_circuit_splitthree = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_lessthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_split = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_aliascheck = type { [256 x i128]* }
%struct_template_circuit_modsumthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_modprod = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_checkcarrymodp = type { i128, i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_greaterthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_modsumfour = type { i128, i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_bigisequal = type { i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bits2num_strict = type { [256 x i128]*, i128 }
%struct_template_circuit_longtoshortnoendcarry = type { i128, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_modsub = type { i128, i128, i128, i128, i128 }
%struct_template_circuit_lesseqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_greatereqthan = type { i128, [256 x i128]*, i128 }
%struct_template_circuit_bigadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_modsubthree = type { i128, i128, i128, i128, i128, i128 }
%struct_template_circuit_bigmult = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_biglessthan = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpisequal = type { i128, i128, [256 x i128]*, [256 x [256 x i128]]*, i128 }
%struct_template_circuit_num2bits_strict = type { i128, [256 x i128]* }
%struct_template_circuit_fpiszero = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_bigsub = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpnegate = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsubtract = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod2 = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigaddmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpsgn0 = type { i128, i128, [256 x i128]*, [256 x i128]*, i128 }
%struct_template_circuit_fpadd = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigsubmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmod = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedcheckcarrymodtozero = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_signedfpcarrymodp = type { i128, i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmultmodp = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_primereduce = type { i128, i128, i128, [256 x i128]*, i128, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_fpmultiply = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]* }
%struct_template_circuit_bigmodinv = type { i128, i128, [256 x i128]*, [256 x i128]*, [256 x i128]* }

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

define [256 x i128]* @signed_long_to_short(i128 %0, i128 %1, [256 x i128]* %2) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %k.bind = alloca i128, align 8
  store i128 %1, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %2, [256 x i128]** %a.bind, align 8
  %carry = alloca i128, align 8
  %MAXL = alloca i128, align 8
  %out = alloca [256 x i128]*, align 8
  %borrow = alloca i128, align 8
  %i = alloca i128, align 8
  %temp = alloca [256 x i128]*, align 8
  %X = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 50, i128* %MAXL, align 4
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %temp, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i4 = load i128, i128* %i, align 4
  %temp5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 %a3, i128* %temp5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i7, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %k8 = load i128, i128* %k.bind, align 4
  store i128 %k8, i128* %i, align 4
  br label %loop.body9

loop.body9:                                       ; preds = %loop.latch13, %loop.exit
  %ptr_getter10 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i11 = load i128, i128* %i, align 4
  %temp12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter10, i128 0, i128 %i11
  store i128 0, i128* %temp12, align 4
  br label %loop.latch13

loop.latch13:                                     ; preds = %loop.body9
  %i14 = load i128, i128* %i, align 4
  %add15 = add i128 %i14, 1
  store i128 %add15, i128* %i, align 4
  %i16 = load i128, i128* %i, align 4
  %MAXL17 = load i128, i128* %MAXL, align 4
  %sle = icmp sle i128 %i16, %MAXL17
  br i1 %sle, label %loop.body9, label %loop.exit18

loop.exit18:                                      ; preds = %loop.latch13
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  store i128 %lshift, i128* %X, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch76, %loop.exit18
  %temp20 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %temp20, i128 0, i128 %i21
  %temp23 = load i128, i128* %array_getter22, align 4
  %sge = icmp sge i128 %temp23, 0
  br i1 %sge, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body19
  %temp24 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %temp24, i128 0, i128 %i25
  %temp27 = load i128, i128* %array_getter26, align 4
  %X28 = load i128, i128* %X, align 4
  %mod = srem i128 %temp27, %X28
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i30 = load i128, i128* %i, align 4
  %out31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %i30
  store i128 %mod, i128* %out31, align 4
  %temp32 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %temp32, i128 0, i128 %add34
  %temp36 = load i128, i128* %array_getter35, align 4
  %temp37 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i38 = load i128, i128* %i, align 4
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %temp37, i128 0, i128 %i38
  %temp40 = load i128, i128* %array_getter39, align 4
  %X41 = load i128, i128* %X, align 4
  %sdiv = sdiv i128 %temp40, %X41
  %add42 = add i128 %temp36, %sdiv
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  %temp46 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %add45
  store i128 %add42, i128* %temp46, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body19
  %temp47 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %temp47, i128 0, i128 %i48
  %temp50 = load i128, i128* %array_getter49, align 4
  %neg = sub i128 0, %temp50
  %X51 = load i128, i128* %X, align 4
  %add52 = add i128 %neg, %X51
  %sub = sub i128 %add52, 1
  %X53 = load i128, i128* %X, align 4
  %sdiv54 = sdiv i128 %sub, %X53
  store i128 %sdiv54, i128* %borrow, align 4
  %temp55 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %temp55, i128 0, i128 %i56
  %temp58 = load i128, i128* %array_getter57, align 4
  %borrow59 = load i128, i128* %borrow, align 4
  %X60 = load i128, i128* %X, align 4
  %mul = mul i128 %borrow59, %X60
  %add61 = add i128 %temp58, %mul
  %ptr_getter62 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i63 = load i128, i128* %i, align 4
  %out64 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter62, i128 0, i128 %i63
  store i128 %add61, i128* %out64, align 4
  %temp65 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i66 = load i128, i128* %i, align 4
  %add67 = add i128 %i66, 1
  %array_getter68 = getelementptr inbounds [256 x i128], [256 x i128]* %temp65, i128 0, i128 %add67
  %temp69 = load i128, i128* %array_getter68, align 4
  %borrow70 = load i128, i128* %borrow, align 4
  %sub71 = sub i128 %temp69, %borrow70
  %ptr_getter72 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  %temp75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter72, i128 0, i128 %add74
  store i128 %sub71, i128* %temp75, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch76

loop.latch76:                                     ; preds = %if.exit
  %i77 = load i128, i128* %i, align 4
  %add78 = add i128 %i77, 1
  store i128 %add78, i128* %i, align 4
  %i79 = load i128, i128* %i, align 4
  %MAXL80 = load i128, i128* %MAXL, align 4
  %slt81 = icmp slt i128 %i79, %MAXL80
  br i1 %slt81, label %loop.body19, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  %temp85 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %MAXL86 = load i128, i128* %MAXL, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %temp85, i128 0, i128 %MAXL86
  %temp88 = load i128, i128* %array_getter87, align 4
  %sge89 = icmp sge i128 %temp88, 0
  br i1 %sge89, label %if.true83, label %if.false84

if.true83:                                        ; preds = %loop.exit82
  %ptr_getter90 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL91 = load i128, i128* %MAXL, align 4
  %out92 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter90, i128 0, i128 %MAXL91
  store i128 0, i128* %out92, align 4
  %out93 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out93

if.false84:                                       ; preds = %loop.exit82
  br label %if.exit94

if.exit94:                                        ; preds = %if.false84
  store i128 0, i128* %i, align 4
  br label %loop.body95

loop.body95:                                      ; preds = %loop.latch103, %if.exit94
  %a96 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %a96, i128 0, i128 %i97
  %a99 = load i128, i128* %array_getter98, align 4
  %ptr_getter100 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i101 = load i128, i128* %i, align 4
  %temp102 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter100, i128 0, i128 %i101
  store i128 %a99, i128* %temp102, align 4
  br label %loop.latch103

loop.latch103:                                    ; preds = %loop.body95
  %i104 = load i128, i128* %i, align 4
  %add105 = add i128 %i104, 1
  store i128 %add105, i128* %i, align 4
  %i106 = load i128, i128* %i, align 4
  %k107 = load i128, i128* %k.bind, align 4
  %slt108 = icmp slt i128 %i106, %k107
  br i1 %slt108, label %loop.body95, label %loop.exit109

loop.exit109:                                     ; preds = %loop.latch103
  %k110 = load i128, i128* %k.bind, align 4
  store i128 %k110, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch115, %loop.exit109
  %ptr_getter112 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i113 = load i128, i128* %i, align 4
  %temp114 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter112, i128 0, i128 %i113
  store i128 0, i128* %temp114, align 4
  br label %loop.latch115

loop.latch115:                                    ; preds = %loop.body111
  %i116 = load i128, i128* %i, align 4
  %add117 = add i128 %i116, 1
  store i128 %add117, i128* %i, align 4
  %i118 = load i128, i128* %i, align 4
  %MAXL119 = load i128, i128* %MAXL, align 4
  %sle120 = icmp sle i128 %i118, %MAXL119
  br i1 %sle120, label %loop.body111, label %loop.exit121

loop.exit121:                                     ; preds = %loop.latch115
  store i128 0, i128* %i, align 4
  br label %loop.body122

loop.body122:                                     ; preds = %loop.latch191, %loop.exit121
  %temp125 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i126 = load i128, i128* %i, align 4
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %temp125, i128 0, i128 %i126
  %temp128 = load i128, i128* %array_getter127, align 4
  %slt129 = icmp slt i128 %temp128, 0
  br i1 %slt129, label %if.true123, label %if.false124

if.true123:                                       ; preds = %loop.body122
  %temp130 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i131 = load i128, i128* %i, align 4
  %array_getter132 = getelementptr inbounds [256 x i128], [256 x i128]* %temp130, i128 0, i128 %i131
  %temp133 = load i128, i128* %array_getter132, align 4
  %neg134 = sub i128 0, %temp133
  %X135 = load i128, i128* %X, align 4
  %sdiv136 = sdiv i128 %neg134, %X135
  store i128 %sdiv136, i128* %carry, align 4
  %temp137 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %temp137, i128 0, i128 %i138
  %temp140 = load i128, i128* %array_getter139, align 4
  %carry141 = load i128, i128* %carry, align 4
  %X142 = load i128, i128* %X, align 4
  %mul143 = mul i128 %carry141, %X142
  %add144 = add i128 %temp140, %mul143
  %ptr_getter145 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i146 = load i128, i128* %i, align 4
  %out147 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter145, i128 0, i128 %i146
  store i128 %add144, i128* %out147, align 4
  %temp148 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i149 = load i128, i128* %i, align 4
  %add150 = add i128 %i149, 1
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %temp148, i128 0, i128 %add150
  %temp152 = load i128, i128* %array_getter151, align 4
  %carry153 = load i128, i128* %carry, align 4
  %sub154 = sub i128 %temp152, %carry153
  %ptr_getter155 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  %temp158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter155, i128 0, i128 %add157
  store i128 %sub154, i128* %temp158, align 4
  br label %if.exit190

if.false124:                                      ; preds = %loop.body122
  %temp159 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i160 = load i128, i128* %i, align 4
  %array_getter161 = getelementptr inbounds [256 x i128], [256 x i128]* %temp159, i128 0, i128 %i160
  %temp162 = load i128, i128* %array_getter161, align 4
  %X163 = load i128, i128* %X, align 4
  %add164 = add i128 %temp162, %X163
  %sub165 = sub i128 %add164, 1
  %X166 = load i128, i128* %X, align 4
  %sdiv167 = sdiv i128 %sub165, %X166
  store i128 %sdiv167, i128* %borrow, align 4
  %temp168 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i169 = load i128, i128* %i, align 4
  %array_getter170 = getelementptr inbounds [256 x i128], [256 x i128]* %temp168, i128 0, i128 %i169
  %temp171 = load i128, i128* %array_getter170, align 4
  %borrow172 = load i128, i128* %borrow, align 4
  %X173 = load i128, i128* %X, align 4
  %mul174 = mul i128 %borrow172, %X173
  %sub175 = sub i128 %temp171, %mul174
  %ptr_getter176 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i177 = load i128, i128* %i, align 4
  %out178 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter176, i128 0, i128 %i177
  store i128 %sub175, i128* %out178, align 4
  %temp179 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i180 = load i128, i128* %i, align 4
  %add181 = add i128 %i180, 1
  %array_getter182 = getelementptr inbounds [256 x i128], [256 x i128]* %temp179, i128 0, i128 %add181
  %temp183 = load i128, i128* %array_getter182, align 4
  %borrow184 = load i128, i128* %borrow, align 4
  %add185 = add i128 %temp183, %borrow184
  %ptr_getter186 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %i187 = load i128, i128* %i, align 4
  %add188 = add i128 %i187, 1
  %temp189 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter186, i128 0, i128 %add188
  store i128 %add185, i128* %temp189, align 4
  br label %if.exit190

if.exit190:                                       ; preds = %if.false124, %if.true123
  br label %loop.latch191

loop.latch191:                                    ; preds = %if.exit190
  %i192 = load i128, i128* %i, align 4
  %add193 = add i128 %i192, 1
  store i128 %add193, i128* %i, align 4
  %i194 = load i128, i128* %i, align 4
  %MAXL195 = load i128, i128* %MAXL, align 4
  %slt196 = icmp slt i128 %i194, %MAXL195
  br i1 %slt196, label %loop.body122, label %loop.exit197

loop.exit197:                                     ; preds = %loop.latch191
  %ptr_getter198 = load [256 x i128]*, [256 x i128]** %out, align 8
  %MAXL199 = load i128, i128* %MAXL, align 4
  %out200 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter198, i128 0, i128 %MAXL199
  store i128 1, i128* %out200, align 4
  %out201 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out201
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %a_poly = bitcast i8* %malloccall to [256 x [256 x i128]]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg2 = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k2 = bitcast i8* %malloccall6 to i128*
  %out = alloca [256 x [256 x i128]]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %pow = bitcast i8* %malloccall7 to [256 x [256 x i128]]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j1 = bitcast i8* %malloccall8 to i128*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i2 = bitcast i8* %malloccall10 to i128*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j2 = bitcast i8* %malloccall11 to i128*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall12 to i128*
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %out_poly = bitcast i8* %malloccall13 to [256 x [256 x i128]]**
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg1 = bitcast i8* %malloccall14 to i128*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i1 = bitcast i8* %malloccall15 to i128*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %prod_val = bitcast i8* %malloccall16 to [256 x [256 x i128]]**
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %b_poly = bitcast i8* %malloccall17 to [256 x [256 x i128]]**
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch24, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i19 = load i128, i128* %i, align 4
  %j20 = load i128, i128* %j, align 4
  %prod_val21 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i19, i128 %j20
  store i128 0, i128* %prod_val21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body18
  %j22 = load i128, i128* %j, align 4
  %add = add i128 %j22, 1
  store i128 %add, i128* %j, align 4
  %j23 = load i128, i128* %j, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j23, %sub
  br i1 %slt, label %loop.body18, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch24

loop.latch24:                                     ; preds = %loop.exit
  %i25 = load i128, i128* %i, align 4
  %add26 = add i128 %i25, 1
  store i128 %add26, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul28 = mul i128 2, %l
  %sub29 = sub i128 %mul28, 1
  %slt30 = icmp slt i128 %i27, %sub29
  br i1 %slt30, label %loop.body, label %loop.exit31

loop.exit31:                                      ; preds = %loop.latch24
  store i128 0, i128* %i1, align 4
  br label %loop.body32

loop.body32:                                      ; preds = %loop.latch81, %loop.exit31
  store i128 0, i128* %i2, align 4
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch74, %loop.body32
  store i128 0, i128* %j1, align 4
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch67, %loop.body33
  store i128 0, i128* %j2, align 4
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch60, %loop.body34
  %i136 = load i128, i128* %i1, align 4
  %i237 = load i128, i128* %i2, align 4
  %add38 = add i128 %i136, %i237
  store i128 %add38, i128* %i, align 4
  %j139 = load i128, i128* %j1, align 4
  %j240 = load i128, i128* %j2, align 4
  %add41 = add i128 %j139, %j240
  store i128 %add41, i128* %j, align 4
  %prod_val42 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i43 = load i128, i128* %i, align 4
  %j44 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val42, i128 0, i128 %i43, i128 %j44
  %prod_val45 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i146 = load i128, i128* %i1, align 4
  %j147 = load i128, i128* %j1, align 4
  %array_getter48 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i146, i128 %j147
  %a49 = load i128, i128* %array_getter48, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i250 = load i128, i128* %i2, align 4
  %j251 = load i128, i128* %j2, align 4
  %array_getter52 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i250, i128 %j251
  %b53 = load i128, i128* %array_getter52, align 4
  %mul54 = mul i128 %a49, %b53
  %add55 = add i128 %prod_val45, %mul54
  %ptr_getter56 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i57 = load i128, i128* %i, align 4
  %j58 = load i128, i128* %j, align 4
  %prod_val59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter56, i128 0, i128 %i57, i128 %j58
  store i128 %add55, i128* %prod_val59, align 4
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.body35
  %j261 = load i128, i128* %j2, align 4
  %add62 = add i128 %j261, 1
  store i128 %add62, i128* %j2, align 4
  %j263 = load i128, i128* %j2, align 4
  %k64 = load i128, i128* %k.bind, align 4
  %slt65 = icmp slt i128 %j263, %k64
  br i1 %slt65, label %loop.body35, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch60
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.exit66
  %j168 = load i128, i128* %j1, align 4
  %add69 = add i128 %j168, 1
  store i128 %add69, i128* %j1, align 4
  %j170 = load i128, i128* %j1, align 4
  %k71 = load i128, i128* %k.bind, align 4
  %slt72 = icmp slt i128 %j170, %k71
  br i1 %slt72, label %loop.body34, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.exit73
  %i275 = load i128, i128* %i2, align 4
  %add76 = add i128 %i275, 1
  store i128 %add76, i128* %i2, align 4
  %i277 = load i128, i128* %i2, align 4
  %l78 = load i128, i128* %l.bind, align 4
  %slt79 = icmp slt i128 %i277, %l78
  br i1 %slt79, label %loop.body33, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch74
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.exit80
  %i182 = load i128, i128* %i1, align 4
  %add83 = add i128 %i182, 1
  store i128 %add83, i128* %i1, align 4
  %i184 = load i128, i128* %i1, align 4
  %l85 = load i128, i128* %l.bind, align 4
  %slt86 = icmp slt i128 %i184, %l85
  br i1 %slt86, label %loop.body32, label %loop.exit87

loop.exit87:                                      ; preds = %loop.latch81
  store i128 0, i128* %i, align 4
  br label %loop.body88

loop.body88:                                      ; preds = %loop.latch108, %loop.exit87
  store i128 0, i128* %j, align 4
  br label %loop.body89

loop.body89:                                      ; preds = %loop.latch99, %loop.body88
  %prod_val90 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i91 = load i128, i128* %i, align 4
  %j92 = load i128, i128* %j, align 4
  %array_getter93 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val90, i128 0, i128 %i91, i128 %j92
  %prod_val94 = load i128, i128* %array_getter93, align 4
  %ptr_getter95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i96 = load i128, i128* %i, align 4
  %j97 = load i128, i128* %j, align 4
  %out98 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter95, i128 0, i128 %i96, i128 %j97
  store i128 %prod_val94, i128* %out98, align 4
  br label %loop.latch99

loop.latch99:                                     ; preds = %loop.body89
  %j100 = load i128, i128* %j, align 4
  %add101 = add i128 %j100, 1
  store i128 %add101, i128* %j, align 4
  %j102 = load i128, i128* %j, align 4
  %k103 = load i128, i128* %k.bind, align 4
  %mul104 = mul i128 2, %k103
  %sub105 = sub i128 %mul104, 1
  %slt106 = icmp slt i128 %j102, %sub105
  br i1 %slt106, label %loop.body89, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch99
  br label %loop.latch108

loop.latch108:                                    ; preds = %loop.exit107
  %i109 = load i128, i128* %i, align 4
  %add110 = add i128 %i109, 1
  store i128 %add110, i128* %i, align 4
  %i111 = load i128, i128* %i, align 4
  %l112 = load i128, i128* %l.bind, align 4
  %mul113 = mul i128 2, %l112
  %sub114 = sub i128 %mul113, 1
  %slt115 = icmp slt i128 %i111, %sub114
  br i1 %slt115, label %loop.body88, label %loop.exit116

loop.exit116:                                     ; preds = %loop.latch108
  %k117 = load i128, i128* %k.bind, align 4
  %mul118 = mul i128 2, %k117
  %sub119 = sub i128 %mul118, 1
  %l120 = load i128, i128* %l.bind, align 4
  %mul121 = mul i128 2, %l120
  %sub122 = sub i128 %mul121, 1
  %sgt = icmp sgt i128 %sub119, %sub122
  %k123 = load i128, i128* %k.bind, align 4
  %mul124 = mul i128 2, %k123
  %sub125 = sub i128 %mul124, 1
  %l126 = load i128, i128* %l.bind, align 4
  %mul127 = mul i128 2, %l126
  %sub128 = sub i128 %mul127, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub125, i128 %sub128)
  store i128 %inline_switch, i128* %k2, align 4
  %uniform_array129 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array129, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body130

loop.body130:                                     ; preds = %loop.latch147, %loop.exit116
  store i128 0, i128* %j, align 4
  br label %loop.body131

loop.body131:                                     ; preds = %loop.latch140, %loop.body130
  %i132 = load i128, i128* %i, align 4
  %j133 = load i128, i128* %j, align 4
  %pow134 = call i128 @fn_intrinsic_inline_powi(i128 %i132, i128 %j133)
  %ptr_getter135 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i137 = load i128, i128* %i, align 4
  %j138 = load i128, i128* %j, align 4
  %pow139 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter135, i128 0, i128 %i137, i128 %j138
  store i128 %pow134, i128* %pow139, align 4
  br label %loop.latch140

loop.latch140:                                    ; preds = %loop.body131
  %j141 = load i128, i128* %j, align 4
  %add142 = add i128 %j141, 1
  store i128 %add142, i128* %j, align 4
  %j143 = load i128, i128* %j, align 4
  %k2144 = load i128, i128* %k2, align 4
  %slt145 = icmp slt i128 %j143, %k2144
  br i1 %slt145, label %loop.body131, label %loop.exit146

loop.exit146:                                     ; preds = %loop.latch140
  br label %loop.latch147

loop.latch147:                                    ; preds = %loop.exit146
  %i148 = load i128, i128* %i, align 4
  %add149 = add i128 %i148, 1
  store i128 %add149, i128* %i, align 4
  %i150 = load i128, i128* %i, align 4
  %k2151 = load i128, i128* %k2, align 4
  %slt152 = icmp slt i128 %i150, %k2151
  br i1 %slt152, label %loop.body130, label %loop.exit153

loop.exit153:                                     ; preds = %loop.latch147
  %uniform_array154 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array154, [256 x [256 x i128]]** %a_poly, align 8
  %uniform_array155 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array155, [256 x [256 x i128]]** %b_poly, align 8
  %uniform_array156 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array156, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body157

loop.body157:                                     ; preds = %loop.latch299, %loop.exit153
  store i128 0, i128* %j, align 4
  br label %loop.body158

loop.body158:                                     ; preds = %loop.latch290, %loop.body157
  %ptr_getter159 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i160 = load i128, i128* %i, align 4
  %j161 = load i128, i128* %j, align 4
  %a_poly162 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter159, i128 0, i128 %i160, i128 %j161
  store i128 0, i128* %a_poly162, align 4
  %ptr_getter163 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i164 = load i128, i128* %i, align 4
  %j165 = load i128, i128* %j, align 4
  %b_poly166 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter163, i128 0, i128 %i164, i128 %j165
  store i128 0, i128* %b_poly166, align 4
  %ptr_getter167 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i168 = load i128, i128* %i, align 4
  %j169 = load i128, i128* %j, align 4
  %out_poly170 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter167, i128 0, i128 %i168, i128 %j169
  store i128 0, i128* %out_poly170, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body171

loop.body171:                                     ; preds = %loop.latch235, %loop.body158
  store i128 0, i128* %deg2, align 4
  br label %loop.body172

loop.body172:                                     ; preds = %loop.latch228, %loop.body171
  %a_poly173 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i174 = load i128, i128* %i, align 4
  %j175 = load i128, i128* %j, align 4
  %array_getter176 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly173, i128 0, i128 %i174, i128 %j175
  %a_poly177 = load i128, i128* %array_getter176, align 4
  %a178 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %deg1179 = load i128, i128* %deg1, align 4
  %deg2180 = load i128, i128* %deg2, align 4
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a178, i128 0, i128 %deg1179, i128 %deg2180
  %a182 = load i128, i128* %array_getter181, align 4
  %pow183 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i185 = load i128, i128* %i, align 4
  %deg1186 = load i128, i128* %deg1, align 4
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow183, i128 0, i128 %i185, i128 %deg1186
  %pow188 = load i128, i128* %array_getter187, align 4
  %mul189 = mul i128 %a182, %pow188
  %pow190 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j191 = load i128, i128* %j, align 4
  %deg2192 = load i128, i128* %deg2, align 4
  %array_getter193 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow190, i128 0, i128 %j191, i128 %deg2192
  %pow194 = load i128, i128* %array_getter193, align 4
  %mul195 = mul i128 %mul189, %pow194
  %add196 = add i128 %a_poly177, %mul195
  %ptr_getter197 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i198 = load i128, i128* %i, align 4
  %j199 = load i128, i128* %j, align 4
  %a_poly200 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter197, i128 0, i128 %i198, i128 %j199
  store i128 %add196, i128* %a_poly200, align 4
  %b_poly201 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i202 = load i128, i128* %i, align 4
  %j203 = load i128, i128* %j, align 4
  %array_getter204 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly201, i128 0, i128 %i202, i128 %j203
  %b_poly205 = load i128, i128* %array_getter204, align 4
  %b206 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %deg1207 = load i128, i128* %deg1, align 4
  %deg2208 = load i128, i128* %deg2, align 4
  %array_getter209 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b206, i128 0, i128 %deg1207, i128 %deg2208
  %b210 = load i128, i128* %array_getter209, align 4
  %pow211 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i212 = load i128, i128* %i, align 4
  %deg1213 = load i128, i128* %deg1, align 4
  %array_getter214 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow211, i128 0, i128 %i212, i128 %deg1213
  %pow215 = load i128, i128* %array_getter214, align 4
  %mul216 = mul i128 %b210, %pow215
  %pow217 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j218 = load i128, i128* %j, align 4
  %deg2219 = load i128, i128* %deg2, align 4
  %array_getter220 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow217, i128 0, i128 %j218, i128 %deg2219
  %pow221 = load i128, i128* %array_getter220, align 4
  %mul222 = mul i128 %mul216, %pow221
  %add223 = add i128 %b_poly205, %mul222
  %ptr_getter224 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i225 = load i128, i128* %i, align 4
  %j226 = load i128, i128* %j, align 4
  %b_poly227 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter224, i128 0, i128 %i225, i128 %j226
  store i128 %add223, i128* %b_poly227, align 4
  br label %loop.latch228

loop.latch228:                                    ; preds = %loop.body172
  %deg2229 = load i128, i128* %deg2, align 4
  %add230 = add i128 %deg2229, 1
  store i128 %add230, i128* %deg2, align 4
  %deg2231 = load i128, i128* %deg2, align 4
  %k232 = load i128, i128* %k.bind, align 4
  %slt233 = icmp slt i128 %deg2231, %k232
  br i1 %slt233, label %loop.body172, label %loop.exit234

loop.exit234:                                     ; preds = %loop.latch228
  br label %loop.latch235

loop.latch235:                                    ; preds = %loop.exit234
  %deg1236 = load i128, i128* %deg1, align 4
  %add237 = add i128 %deg1236, 1
  store i128 %add237, i128* %deg1, align 4
  %deg1238 = load i128, i128* %deg1, align 4
  %l239 = load i128, i128* %l.bind, align 4
  %slt240 = icmp slt i128 %deg1238, %l239
  br i1 %slt240, label %loop.body171, label %loop.exit241

loop.exit241:                                     ; preds = %loop.latch235
  store i128 0, i128* %deg1, align 4
  br label %loop.body242

loop.body242:                                     ; preds = %loop.latch281, %loop.exit241
  store i128 0, i128* %deg2, align 4
  br label %loop.body243

loop.body243:                                     ; preds = %loop.latch272, %loop.body242
  %out_poly244 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i245 = load i128, i128* %i, align 4
  %j246 = load i128, i128* %j, align 4
  %array_getter247 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly244, i128 0, i128 %i245, i128 %j246
  %out_poly248 = load i128, i128* %array_getter247, align 4
  %out249 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %deg1250 = load i128, i128* %deg1, align 4
  %deg2251 = load i128, i128* %deg2, align 4
  %array_getter252 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out249, i128 0, i128 %deg1250, i128 %deg2251
  %out253 = load i128, i128* %array_getter252, align 4
  %pow254 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i255 = load i128, i128* %i, align 4
  %deg1256 = load i128, i128* %deg1, align 4
  %array_getter257 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow254, i128 0, i128 %i255, i128 %deg1256
  %pow258 = load i128, i128* %array_getter257, align 4
  %mul259 = mul i128 %out253, %pow258
  %pow260 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j262 = load i128, i128* %j, align 4
  %deg2263 = load i128, i128* %deg2, align 4
  %array_getter264 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow260, i128 0, i128 %j262, i128 %deg2263
  %pow265 = load i128, i128* %array_getter264, align 4
  %mul266 = mul i128 %mul259, %pow265
  %add267 = add i128 %out_poly248, %mul266
  %ptr_getter268 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i269 = load i128, i128* %i, align 4
  %j270 = load i128, i128* %j, align 4
  %out_poly271 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter268, i128 0, i128 %i269, i128 %j270
  store i128 %add267, i128* %out_poly271, align 4
  br label %loop.latch272

loop.latch272:                                    ; preds = %loop.body243
  %deg2273 = load i128, i128* %deg2, align 4
  %add274 = add i128 %deg2273, 1
  store i128 %add274, i128* %deg2, align 4
  %deg2275 = load i128, i128* %deg2, align 4
  %k276 = load i128, i128* %k.bind, align 4
  %mul277 = mul i128 2, %k276
  %sub278 = sub i128 %mul277, 1
  %slt279 = icmp slt i128 %deg2275, %sub278
  br i1 %slt279, label %loop.body243, label %loop.exit280

loop.exit280:                                     ; preds = %loop.latch272
  br label %loop.latch281

loop.latch281:                                    ; preds = %loop.exit280
  %deg1282 = load i128, i128* %deg1, align 4
  %add283 = add i128 %deg1282, 1
  store i128 %add283, i128* %deg1, align 4
  %deg1284 = load i128, i128* %deg1, align 4
  %l285 = load i128, i128* %l.bind, align 4
  %mul286 = mul i128 2, %l285
  %sub287 = sub i128 %mul286, 1
  %slt288 = icmp slt i128 %deg1284, %sub287
  br i1 %slt288, label %loop.body242, label %loop.exit289

loop.exit289:                                     ; preds = %loop.latch281
  br label %loop.latch290

loop.latch290:                                    ; preds = %loop.exit289
  %j291 = load i128, i128* %j, align 4
  %add292 = add i128 %j291, 1
  store i128 %add292, i128* %j, align 4
  %j293 = load i128, i128* %j, align 4
  %k294 = load i128, i128* %k.bind, align 4
  %mul295 = mul i128 2, %k294
  %sub296 = sub i128 %mul295, 1
  %slt297 = icmp slt i128 %j293, %sub296
  br i1 %slt297, label %loop.body158, label %loop.exit298

loop.exit298:                                     ; preds = %loop.latch290
  br label %loop.latch299

loop.latch299:                                    ; preds = %loop.exit298
  %i300 = load i128, i128* %i, align 4
  %add301 = add i128 %i300, 1
  store i128 %add301, i128* %i, align 4
  %i302 = load i128, i128* %i, align 4
  %l303 = load i128, i128* %l.bind, align 4
  %mul304 = mul i128 2, %l303
  %sub305 = sub i128 %mul304, 1
  %slt306 = icmp slt i128 %i302, %sub305
  br i1 %slt306, label %loop.body157, label %loop.exit307

loop.exit307:                                     ; preds = %loop.latch299
  store i128 0, i128* %i, align 4
  br label %loop.body308

loop.body308:                                     ; preds = %loop.latch335, %loop.exit307
  store i128 0, i128* %j, align 4
  br label %loop.body309

loop.body309:                                     ; preds = %loop.latch326, %loop.body308
  %out_poly310 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i311 = load i128, i128* %i, align 4
  %j312 = load i128, i128* %j, align 4
  %array_getter313 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly310, i128 0, i128 %i311, i128 %j312
  %out_poly314 = load i128, i128* %array_getter313, align 4
  %a_poly315 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i316 = load i128, i128* %i, align 4
  %j317 = load i128, i128* %j, align 4
  %array_getter318 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly315, i128 0, i128 %i316, i128 %j317
  %a_poly319 = load i128, i128* %array_getter318, align 4
  %b_poly320 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i321 = load i128, i128* %i, align 4
  %j322 = load i128, i128* %j, align 4
  %array_getter323 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly320, i128 0, i128 %i321, i128 %j322
  %b_poly324 = load i128, i128* %array_getter323, align 4
  %mul325 = mul i128 %a_poly319, %b_poly324
  call void @fn_intrinsic_add_constraint(i128 %out_poly314, i128 %mul325, i1* @constraint)
  br label %loop.latch326

loop.latch326:                                    ; preds = %loop.body309
  %j327 = load i128, i128* %j, align 4
  %add328 = add i128 %j327, 1
  store i128 %add328, i128* %j, align 4
  %j329 = load i128, i128* %j, align 4
  %k330 = load i128, i128* %k.bind, align 4
  %mul331 = mul i128 2, %k330
  %sub332 = sub i128 %mul331, 1
  %slt333 = icmp slt i128 %j329, %sub332
  br i1 %slt333, label %loop.body309, label %loop.exit334

loop.exit334:                                     ; preds = %loop.latch326
  br label %loop.latch335

loop.latch335:                                    ; preds = %loop.exit334
  %i336 = load i128, i128* %i, align 4
  %add337 = add i128 %i336, 1
  store i128 %add337, i128* %i, align 4
  %i338 = load i128, i128* %i, align 4
  %l339 = load i128, i128* %l.bind, align 4
  %mul340 = mul i128 2, %l339
  %sub341 = sub i128 %mul340, 1
  %slt342 = icmp slt i128 %i338, %sub341
  br i1 %slt342, label %loop.body308, label %loop.exit343

loop.exit343:                                     ; preds = %loop.latch335
  br label %exit

exit:                                             ; preds = %loop.exit343
  %out344 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %write_output_inner.bigmultshortlong2d.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong2d, %struct_template_circuit_bigmultshortlong2d* %0, i32 0, i32 5
  store [256 x [256 x i128]]* %out344, [256 x [256 x i128]]** %write_output_inner.bigmultshortlong2d.out, align 8
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lc1 = bitcast i8* %malloccall2 to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %e2 = bitcast i8* %malloccall3 to i128*
  store i128 0, i128* %lc1, align 4
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %lc14 = load i128, i128* %lc1, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i5
  %in6 = load i128, i128* %array_getter, align 4
  %e27 = load i128, i128* %e2, align 4
  %mul = mul i128 %in6, %e27
  %add = add i128 %lc14, %mul
  store i128 %add, i128* %lc1, align 4
  %e28 = load i128, i128* %e2, align 4
  %e29 = load i128, i128* %e2, align 4
  %add10 = add i128 %e28, %e29
  store i128 %add10, i128* %e2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i11 = load i128, i128* %i, align 4
  %add12 = add i128 %i11, 1
  store i128 %add12, i128* %i, align 4
  %i13 = load i128, i128* %i, align 4
  %n = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i13, %n
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lc114 = load i128, i128* %lc1, align 4
  store i128 %lc114, i128* %out, align 4
  %out15 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out15, i128 %lc114, i1* @constraint.1)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out16 = load i128, i128* %out, align 4
  %write_output_inner.bits2num.out = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %0, i32 0, i32 2
  store i128 %out16, i128* %write_output_inner.bits2num.out, align 4
  ret void
}

define %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %0) {
entry:
  %struct_template_circuit_bits2num = alloca %struct_template_circuit_bits2num, align 8
  %write_arg_inner.bits2num.n = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %struct_template_circuit_bits2num, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bits2num.n, align 4
  ret %struct_template_circuit_bits2num* %struct_template_circuit_bits2num
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
  %i = alloca i128, align 8
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

define [256 x [256 x i128]]* @signed_Fp2_mult_w6(i128 %0, [256 x [256 x i128]]* %1, i128 %2) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %XI0.bind = alloca i128, align 8
  store i128 %2, i128* %XI0.bind, align 4
  %out = alloca [256 x [256 x i128]]*, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %XI0 = load i128, i128* %XI0.bind, align 4
  %mul = mul i128 %a2, %XI0
  %a3 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a3, i128 0, i128 1, i128 %i4
  %a6 = load i128, i128* %array_getter5, align 4
  %sub = sub i128 %mul, %a6
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i7 = load i128, i128* %i, align 4
  %out8 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0, i128 %i7
  store i128 %sub, i128* %out8, align 4
  %a9 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a9, i128 0, i128 0, i128 %i10
  %a12 = load i128, i128* %array_getter11, align 4
  %a13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a13, i128 0, i128 1, i128 %i14
  %a16 = load i128, i128* %array_getter15, align 4
  %XI017 = load i128, i128* %XI0.bind, align 4
  %mul18 = mul i128 %a16, %XI017
  %add = add i128 %a12, %mul18
  %ptr_getter19 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i20 = load i128, i128* %i, align 4
  %out21 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter19, i128 0, i128 1, i128 %i20
  store i128 %add, i128* %out21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i24, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out25 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out25
}

define void @fn_template_init_not(%struct_template_circuit_not* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_not, %struct_template_circuit_not* %0, i32 0, i32 0
  %read_input_inner.not.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.not.in, i128* %in.bind, align 4
  %out = alloca i128, align 8
  %in = load i128, i128* %in.bind, align 4
  %add = add i128 1, %in
  %in1 = load i128, i128* %in.bind, align 4
  %mul = mul i128 2, %in1
  %sub = sub i128 %add, %mul
  store i128 %sub, i128* %out, align 4
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %sub, i1* @constraint.2)
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
  %out = alloca [256 x i128]*, align 8
  %temp = alloca i128, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i1 = load i128, i128* %i, align 4
  %out2 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i1
  store i128 0, i128* %out2, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i3 = load i128, i128* %i, align 4
  %add = add i128 %i3, 1
  store i128 %add, i128* %i, align 4
  %i4 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i4, 50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body5

loop.body5:                                       ; preds = %loop.latch30, %loop.exit
  %out6 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out6, i128 0, i128 %i7
  %out8 = load i128, i128* %array_getter, align 4
  %a = load i128, i128* %a.bind, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i9
  %b11 = load i128, i128* %array_getter10, align 4
  %mul = mul i128 %a, %b11
  %add12 = add i128 %out8, %mul
  store i128 %add12, i128* %temp, align 4
  %temp13 = load i128, i128* %temp, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mod = srem i128 %temp13, %lshift
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i15 = load i128, i128* %i, align 4
  %out16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %i15
  store i128 %mod, i128* %out16, align 4
  %out17 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i18 = load i128, i128* %i, align 4
  %add19 = add i128 %i18, 1
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %out17, i128 0, i128 %add19
  %out21 = load i128, i128* %array_getter20, align 4
  %temp22 = load i128, i128* %temp, align 4
  %n23 = load i128, i128* %n.bind, align 4
  %lshift24 = shl i128 1, %n23
  %sdiv = sdiv i128 %temp22, %lshift24
  %add25 = add i128 %out21, %sdiv
  %ptr_getter26 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  %out29 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter26, i128 0, i128 %add28
  store i128 %add25, i128* %out29, align 4
  br label %loop.latch30

loop.latch30:                                     ; preds = %loop.body5
  %i31 = load i128, i128* %i, align 4
  %add32 = add i128 %i31, 1
  store i128 %add32, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt34 = icmp slt i128 %i33, %k
  br i1 %slt34, label %loop.body5, label %loop.exit35

loop.exit35:                                      ; preds = %loop.latch30
  %out36 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out36
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
  %out = alloca i128, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  %sub = sub i128 1, %mul
  store i128 %sub, i128* %out, align 4
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %sub, i1* @constraint.3)
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
  %out = alloca i128, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  store i128 %mul, i128* %out, align 4
  %out2 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out2, i128 %mul, i1* @constraint.4)
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

define i128 @long_is_zero(i128 %0, [256 x i128]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %1, [256 x i128]** %a.bind, align 8
  %idx = alloca i128, align 8
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

define i128 @log_ceil(i128 %0) {
entry:
  %n.bind = alloca i128, align 8
  store i128 %0, i128* %n.bind, align 4
  %i = alloca i128, align 8
  %n_temp = alloca i128, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %b_poly = bitcast i8* %malloccall to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %prod_val = bitcast i8* %malloccall6 to [256 x i128]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %pow = bitcast i8* %malloccall7 to [256 x [256 x i128]]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %a_poly = bitcast i8* %malloccall8 to [256 x i128]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k2 = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall10 to i128*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall11 to i128*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out_poly = bitcast i8* %malloccall12 to [256 x i128]**
  %out = alloca [256 x i128]*, align 8
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
  call void @fn_intrinsic_add_constraint(i128 %out_poly205, i128 %mul214, i1* @constraint.5)
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
  %diff = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %borrow = alloca [256 x i128]*, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %diff, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %borrow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i2 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i2, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i5 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i5
  %a6 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i7
  %b9 = load i128, i128* %array_getter8, align 4
  %sge = icmp sge i128 %a6, %b9
  br i1 %sge, label %if.true3, label %if.false4

if.false:                                         ; preds = %loop.body
  %a40 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %a40, i128 0, i128 %i41
  %a43 = load i128, i128* %array_getter42, align 4
  %b44 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i45 = load i128, i128* %i, align 4
  %array_getter46 = getelementptr inbounds [256 x i128], [256 x i128]* %b44, i128 0, i128 %i45
  %b47 = load i128, i128* %array_getter46, align 4
  %borrow48 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i49 = load i128, i128* %i, align 4
  %sub50 = sub i128 %i49, 1
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow48, i128 0, i128 %sub50
  %borrow52 = load i128, i128* %array_getter51, align 4
  %add53 = add i128 %b47, %borrow52
  %sge54 = icmp sge i128 %a43, %add53
  br i1 %sge54, label %if.true38, label %if.false39

if.true3:                                         ; preds = %if.true
  %a10 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x i128], [256 x i128]* %a10, i128 0, i128 %i11
  %a13 = load i128, i128* %array_getter12, align 4
  %b14 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %b14, i128 0, i128 %i15
  %b17 = load i128, i128* %array_getter16, align 4
  %sub = sub i128 %a13, %b17
  %ptr_getter = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i18 = load i128, i128* %i, align 4
  %diff19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i18
  store i128 %sub, i128* %diff19, align 4
  %ptr_getter20 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i21 = load i128, i128* %i, align 4
  %borrow22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter20, i128 0, i128 %i21
  store i128 0, i128* %borrow22, align 4
  br label %if.exit

if.false4:                                        ; preds = %if.true
  %a23 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %a23, i128 0, i128 %i24
  %a26 = load i128, i128* %array_getter25, align 4
  %b27 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %b27, i128 0, i128 %i28
  %b30 = load i128, i128* %array_getter29, align 4
  %sub31 = sub i128 %a26, %b30
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %add = add i128 %sub31, %lshift
  %ptr_getter32 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i33 = load i128, i128* %i, align 4
  %diff34 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter32, i128 0, i128 %i33
  store i128 %add, i128* %diff34, align 4
  %ptr_getter35 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i36 = load i128, i128* %i, align 4
  %borrow37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter35, i128 0, i128 %i36
  store i128 1, i128* %borrow37, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false4, %if.true3
  br label %if.exit101

if.true38:                                        ; preds = %if.false
  %a55 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %a55, i128 0, i128 %i56
  %a58 = load i128, i128* %array_getter57, align 4
  %b59 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %b59, i128 0, i128 %i60
  %b62 = load i128, i128* %array_getter61, align 4
  %sub63 = sub i128 %a58, %b62
  %borrow64 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow64, i128 0, i128 %sub66
  %borrow68 = load i128, i128* %array_getter67, align 4
  %sub69 = sub i128 %sub63, %borrow68
  %ptr_getter70 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i71 = load i128, i128* %i, align 4
  %diff72 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter70, i128 0, i128 %i71
  store i128 %sub69, i128* %diff72, align 4
  %ptr_getter73 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i74 = load i128, i128* %i, align 4
  %borrow75 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter73, i128 0, i128 %i74
  store i128 0, i128* %borrow75, align 4
  br label %if.exit100

if.false39:                                       ; preds = %if.false
  %n76 = load i128, i128* %n.bind, align 4
  %lshift77 = shl i128 1, %n76
  %a78 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x i128], [256 x i128]* %a78, i128 0, i128 %i79
  %a81 = load i128, i128* %array_getter80, align 4
  %add82 = add i128 %lshift77, %a81
  %b83 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i84 = load i128, i128* %i, align 4
  %array_getter85 = getelementptr inbounds [256 x i128], [256 x i128]* %b83, i128 0, i128 %i84
  %b86 = load i128, i128* %array_getter85, align 4
  %sub87 = sub i128 %add82, %b86
  %borrow88 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i89 = load i128, i128* %i, align 4
  %sub90 = sub i128 %i89, 1
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %borrow88, i128 0, i128 %sub90
  %borrow92 = load i128, i128* %array_getter91, align 4
  %sub93 = sub i128 %sub87, %borrow92
  %ptr_getter94 = load [256 x i128]*, [256 x i128]** %diff, align 8
  %i95 = load i128, i128* %i, align 4
  %diff96 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter94, i128 0, i128 %i95
  store i128 %sub93, i128* %diff96, align 4
  %ptr_getter97 = load [256 x i128]*, [256 x i128]** %borrow, align 8
  %i98 = load i128, i128* %i, align 4
  %borrow99 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter97, i128 0, i128 %i98
  store i128 1, i128* %borrow99, align 4
  br label %if.exit100

if.exit100:                                       ; preds = %if.false39, %if.true38
  br label %if.exit101

if.exit101:                                       ; preds = %if.exit100, %if.exit
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit101
  %i102 = load i128, i128* %i, align 4
  %add103 = add i128 %i102, 1
  store i128 %add103, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i104, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %diff105 = load [256 x i128]*, [256 x i128]** %diff, align 8
  ret [256 x i128]* %diff105
}

define i128 @nbits(i128 %0) {
entry:
  %a.bind = alloca i128, align 8
  store i128 %0, i128* %a.bind, align 4
  %n = alloca i128, align 8
  %r = alloca i128, align 8
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
  %out = alloca i128, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a, %b
  %add = add i128 %mul, 1
  %a2 = load i128, i128* %a.bind, align 4
  %sub = sub i128 %add, %a2
  %b3 = load i128, i128* %b.bind, align 4
  %sub4 = sub i128 %sub, %b3
  store i128 %sub4, i128* %out, align 4
  %out5 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %sub4, i1* @constraint.6)
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
  %n2 = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %n1 = bitcast i8* %malloccall2 to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_and** getelementptr (%struct_template_circuit_and*, %struct_template_circuit_and** null, i32 1) to i32))
  %and1 = bitcast i8* %malloccall3 to %struct_template_circuit_and**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_multiand*]** getelementptr ([256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** null, i32 1) to i32))
  %ands = bitcast i8* %malloccall4 to [256 x %struct_template_circuit_multiand*]**
  %out = alloca i128, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_and** getelementptr (%struct_template_circuit_and*, %struct_template_circuit_and** null, i32 1) to i32))
  %and2 = bitcast i8* %malloccall5 to %struct_template_circuit_and**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %n = load i128, i128* %n.bind, align 4
  %eq = icmp eq i128 %n, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in7 = load i128, i128* %array_getter, align 4
  store i128 %in7, i128* %out, align 4
  %out8 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out8, i128 %in7, i1* @constraint.7)
  br label %if.exit118

if.false:                                         ; preds = %entry
  %n11 = load i128, i128* %n.bind, align 4
  %eq12 = icmp eq i128 %n11, 2
  br i1 %eq12, label %if.true9, label %if.false10

if.true9:                                         ; preds = %if.false
  %call = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call, %struct_template_circuit_and** %and1, align 8
  %in13 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %in13, i128 0, i128 0
  %in15 = load i128, i128* %array_getter14, align 4
  %ptr_getter = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %write_input_outter.and.a = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter, i32 0, i32 0
  store i128 %in15, i128* %write_input_outter.and.a, align 4
  %and116 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and116, i32 0, i32 0
  %read_input_outter.and.a = load i128, i128* %struct_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a, i128 %in15, i1* @constraint.8)
  %in18 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %in18, i128 0, i128 1
  %in20 = load i128, i128* %array_getter19, align 4
  %ptr_getter21 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %write_input_outter.and.b = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter21, i32 0, i32 1
  store i128 %in20, i128* %write_input_outter.and.b, align 4
  %and122 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and122, i32 0, i32 1
  %read_input_outter.and.b = load i128, i128* %struct_getter23, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b, i128 %in20, i1* @constraint.9)
  %and124 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and1, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and124, i32 0, i32 2
  %read_output_outter.and.out = load i128, i128* %struct_getter25, align 4
  store i128 %read_output_outter.and.out, i128* %out, align 4
  %out26 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out26, i128 %read_output_outter.and.out, i1* @constraint.10)
  br label %if.exit

if.false10:                                       ; preds = %if.false
  %call27 = call %struct_template_circuit_and* @fn_template_build_and()
  store %struct_template_circuit_and* %call27, %struct_template_circuit_and** %and2, align 8
  %n28 = load i128, i128* %n.bind, align 4
  %sdiv = sdiv i128 %n28, 2
  store i128 %sdiv, i128* %n1, align 4
  %n29 = load i128, i128* %n.bind, align 4
  %n30 = load i128, i128* %n.bind, align 4
  %sdiv31 = sdiv i128 %n30, 2
  %sub = sub i128 %n29, %sdiv31
  store i128 %sub, i128* %n2, align 4
  %n132 = load i128, i128* %n1, align 4
  %call33 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n132)
  %ptr_getter34 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands35 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter34, i128 0, i128 0
  store %struct_template_circuit_multiand* %call33, %struct_template_circuit_multiand** %ands35, align 8
  %n236 = load i128, i128* %n2, align 4
  %call37 = call %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %n236)
  %ptr_getter38 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %ands39 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter38, i128 0, i128 1
  store %struct_template_circuit_multiand* %call37, %struct_template_circuit_multiand** %ands39, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false10
  %in40 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %in40, i128 0, i128 %i41
  %in43 = load i128, i128* %array_getter42, align 4
  %ptr_getter44 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter45 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter44, i128 0, i128 0
  %ands46 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter45, align 8
  %ptr_cast = bitcast %struct_template_circuit_multiand* %ands46 to %struct_template_circuit_multiand*
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast, i32 0, i32 1
  %read_input_outter.multiand.in = load [256 x i128]*, [256 x i128]** %struct_getter47, align 8
  %i48 = load i128, i128* %i, align 4
  %ands49 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in, i128 0, i128 %i48
  store i128 %in43, i128* %ands49, align 4
  %ands50 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter51 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands50, i128 0, i128 0
  %ands52 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter51, align 8
  %ptr_cast53 = bitcast %struct_template_circuit_multiand* %ands52 to %struct_template_circuit_multiand*
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast53, i32 0, i32 1
  %read_input_outter.multiand.in55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in55, i128 0, i128 %i56
  %ands58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands58, i128 %in43, i1* @constraint.11)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i59 = load i128, i128* %i, align 4
  %add = add i128 %i59, 1
  store i128 %add, i128* %i, align 4
  %i60 = load i128, i128* %i, align 4
  %n161 = load i128, i128* %n1, align 4
  %slt = icmp slt i128 %i60, %n161
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body62

loop.body62:                                      ; preds = %loop.latch86, %loop.exit
  %in63 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %n164 = load i128, i128* %n1, align 4
  %i65 = load i128, i128* %i, align 4
  %add66 = add i128 %n164, %i65
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %in63, i128 0, i128 %add66
  %in68 = load i128, i128* %array_getter67, align 4
  %ptr_getter69 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter70 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ptr_getter69, i128 0, i128 1
  %ands71 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter70, align 8
  %ptr_cast72 = bitcast %struct_template_circuit_multiand* %ands71 to %struct_template_circuit_multiand*
  %struct_getter73 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast72, i32 0, i32 1
  %read_input_outter.multiand.in74 = load [256 x i128]*, [256 x i128]** %struct_getter73, align 8
  %i75 = load i128, i128* %i, align 4
  %ands76 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in74, i128 0, i128 %i75
  store i128 %in68, i128* %ands76, align 4
  %ands77 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands77, i128 0, i128 1
  %ands79 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter78, align 8
  %ptr_cast80 = bitcast %struct_template_circuit_multiand* %ands79 to %struct_template_circuit_multiand*
  %struct_getter81 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast80, i32 0, i32 1
  %read_input_outter.multiand.in82 = load [256 x i128]*, [256 x i128]** %struct_getter81, align 8
  %i83 = load i128, i128* %i, align 4
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.multiand.in82, i128 0, i128 %i83
  %ands85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %ands85, i128 %in68, i1* @constraint.12)
  br label %loop.latch86

loop.latch86:                                     ; preds = %loop.body62
  %i87 = load i128, i128* %i, align 4
  %add88 = add i128 %i87, 1
  store i128 %add88, i128* %i, align 4
  %i89 = load i128, i128* %i, align 4
  %n290 = load i128, i128* %n2, align 4
  %slt91 = icmp slt i128 %i89, %n290
  br i1 %slt91, label %loop.body62, label %loop.exit92

loop.exit92:                                      ; preds = %loop.latch86
  %ands93 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter94 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands93, i128 0, i128 0
  %ands95 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter94, align 8
  %ptr_cast96 = bitcast %struct_template_circuit_multiand* %ands95 to %struct_template_circuit_multiand*
  %struct_getter97 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast96, i32 0, i32 2
  %read_output_outter.multiand.out = load i128, i128* %struct_getter97, align 4
  %ptr_getter98 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %write_input_outter.and.a99 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter98, i32 0, i32 0
  store i128 %read_output_outter.multiand.out, i128* %write_input_outter.and.a99, align 4
  %and2100 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2100, i32 0, i32 0
  %read_input_outter.and.a102 = load i128, i128* %struct_getter101, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a102, i128 %read_output_outter.multiand.out, i1* @constraint.13)
  %ands103 = load [256 x %struct_template_circuit_multiand*]*, [256 x %struct_template_circuit_multiand*]** %ands, align 8
  %array_getter104 = getelementptr inbounds [256 x %struct_template_circuit_multiand*], [256 x %struct_template_circuit_multiand*]* %ands103, i128 0, i128 1
  %ands105 = load %struct_template_circuit_multiand*, %struct_template_circuit_multiand** %array_getter104, align 8
  %ptr_cast106 = bitcast %struct_template_circuit_multiand* %ands105 to %struct_template_circuit_multiand*
  %struct_getter107 = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %ptr_cast106, i32 0, i32 2
  %read_output_outter.multiand.out108 = load i128, i128* %struct_getter107, align 4
  %ptr_getter109 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %write_input_outter.and.b110 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ptr_getter109, i32 0, i32 1
  store i128 %read_output_outter.multiand.out108, i128* %write_input_outter.and.b110, align 4
  %and2111 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter112 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2111, i32 0, i32 1
  %read_input_outter.and.b113 = load i128, i128* %struct_getter112, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b113, i128 %read_output_outter.multiand.out108, i1* @constraint.14)
  %and2114 = load %struct_template_circuit_and*, %struct_template_circuit_and** %and2, align 8
  %struct_getter115 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %and2114, i32 0, i32 2
  %read_output_outter.and.out116 = load i128, i128* %struct_getter115, align 4
  store i128 %read_output_outter.and.out116, i128* %out, align 4
  %out117 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out117, i128 %read_output_outter.and.out116, i1* @constraint.15)
  br label %if.exit

if.exit:                                          ; preds = %loop.exit92, %if.true9
  br label %if.exit118

if.exit118:                                       ; preds = %if.exit, %if.true
  br label %exit

exit:                                             ; preds = %if.exit118
  %out119 = load i128, i128* %out, align 4
  %write_output_inner.multiand.out = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %0, i32 0, i32 2
  store i128 %out119, i128* %write_output_inner.multiand.out, align 4
  ret void
}

define %struct_template_circuit_multiand* @fn_template_build_multiand(i128 %0) {
entry:
  %struct_template_circuit_multiand = alloca %struct_template_circuit_multiand, align 8
  %write_arg_inner.multiand.n = getelementptr inbounds %struct_template_circuit_multiand, %struct_template_circuit_multiand* %struct_template_circuit_multiand, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.multiand.n, align 4
  ret %struct_template_circuit_multiand* %struct_template_circuit_multiand
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lc1 = bitcast i8* %malloccall2 to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %e2 = bitcast i8* %malloccall3 to i128*
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
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.16)
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
  call void @fn_intrinsic_add_constraint(i128 %lc127, i128 %in28, i1* @constraint.17)
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

define void @fn_template_init_iszero(%struct_template_circuit_iszero* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %0, i32 0, i32 0
  %read_input_inner.iszero.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.iszero.in, i128* %in.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %inv = bitcast i8* %malloccall to i128*
  %out = alloca i128, align 8
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
  store i128 %add, i128* %out, align 4
  %out4 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out4, i128 %add, i1* @constraint.18)
  %in5 = load i128, i128* %in.bind, align 4
  %out6 = load i128, i128* %out, align 4
  %mul7 = mul i128 %in5, %out6
  call void @fn_intrinsic_add_constraint(i128 %mul7, i128 0, i1* @constraint.19)
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lc1 = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_iszero** getelementptr (%struct_template_circuit_iszero*, %struct_template_circuit_iszero** null, i32 1) to i32))
  %isZero = bitcast i8* %malloccall2 to %struct_template_circuit_iszero**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %neg = bitcast i8* %malloccall3 to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall4 to i128*
  store i128 0, i128* %lc1, align 4
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZero, align 8
  %n = load i128, i128* %n.bind, align 4
  %eq = icmp eq i128 %n, 0
  %n5 = load i128, i128* %n.bind, align 4
  %pow = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n5)
  %in = load i128, i128* %in.bind, align 4
  %sub = sub i128 %pow, %in
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %eq, i128 0, i128 %sub)
  store i128 %inline_switch, i128* %neg, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %neg6 = load i128, i128* %neg, align 4
  %i7 = load i128, i128* %i, align 4
  %rshift = lshr i128 %neg6, %i7
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i8 = load i128, i128* %i, align 4
  %out9 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i8
  store i128 %and, i128* %out9, align 4
  %out10 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %out10, i128 0, i128 %i11
  %out12 = load i128, i128* %array_getter, align 4
  %out13 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %out13, i128 0, i128 %i14
  %out16 = load i128, i128* %array_getter15, align 4
  %sub17 = sub i128 %out16, 1
  %mul = mul i128 %out12, %sub17
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.20)
  %lc118 = load i128, i128* %lc1, align 4
  %out19 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %out19, i128 0, i128 %i20
  %out22 = load i128, i128* %array_getter21, align 4
  %i23 = load i128, i128* %i, align 4
  %pow24 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %i23)
  %mul25 = mul i128 %out22, %pow24
  %add = add i128 %lc118, %mul25
  store i128 %add, i128* %lc1, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i26 = load i128, i128* %i, align 4
  %add27 = add i128 %i26, 1
  store i128 %add27, i128* %i, align 4
  %i28 = load i128, i128* %i, align 4
  %n29 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i28, %n29
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in30 = load i128, i128* %in.bind, align 4
  %ptr_getter31 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter31, i32 0, i32 0
  store i128 %in30, i128* %write_input_outter.iszero.in, align 4
  %isZero32 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero32, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %in30, i1* @constraint.21)
  %lc134 = load i128, i128* %lc1, align 4
  %isZero35 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isZero, align 8
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZero35, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter36, align 4
  %n37 = load i128, i128* %n.bind, align 4
  %pow38 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n37)
  %mul39 = mul i128 %read_output_outter.iszero.out, %pow38
  %add40 = add i128 %lc134, %mul39
  %n41 = load i128, i128* %n.bind, align 4
  %pow42 = call i128 @fn_intrinsic_inline_powi(i128 2, i128 %n41)
  %in43 = load i128, i128* %in.bind, align 4
  %sub44 = sub i128 %pow42, %in43
  call void @fn_intrinsic_add_constraint(i128 %add40, i128 %sub44, i1* @constraint.22)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out45 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.num2bitsneg.out = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %0, i32 0, i32 2
  store [256 x i128]* %out45, [256 x i128]** %write_output_inner.num2bitsneg.out, align 8
  ret void
}

define %struct_template_circuit_num2bitsneg* @fn_template_build_num2bitsneg(i128 %0) {
entry:
  %struct_template_circuit_num2bitsneg = alloca %struct_template_circuit_num2bitsneg, align 8
  %write_arg_inner.num2bitsneg.n = getelementptr inbounds %struct_template_circuit_num2bitsneg, %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.num2bitsneg.n, align 4
  ret %struct_template_circuit_num2bitsneg* %struct_template_circuit_num2bitsneg
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
  %sum = alloca i128, align 8
  %carry = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 1
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add3 = add i128 %a, %b
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add3, i128* %write_input_outter.num2bits.in, align 4
  %n2b4 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b4, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add3, i1* @constraint.23)
  %n2b6 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b6, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %n8 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n8
  %n2b9 = load i128, i128* %array_getter, align 4
  store i128 %n2b9, i128* %carry, align 4
  %carry10 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry10, i128 %n2b9, i1* @constraint.24)
  %a11 = load i128, i128* %a.bind, align 4
  %b12 = load i128, i128* %b.bind, align 4
  %add13 = add i128 %a11, %b12
  %carry14 = load i128, i128* %carry, align 4
  %n15 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n15
  %mul = mul i128 %carry14, %lshift
  %sub = sub i128 %add13, %mul
  store i128 %sub, i128* %sum, align 4
  %sum16 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum16, i128 %sub, i1* @constraint.25)
  br label %exit

exit:                                             ; preds = %entry
  %sum17 = load i128, i128* %sum, align 4
  %write_output_inner.modsum.sum = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 3
  store i128 %sum17, i128* %write_output_inner.modsum.sum, align 4
  %carry18 = load i128, i128* %carry, align 4
  %write_output_inner.modsum.carry = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %0, i32 0, i32 4
  store i128 %carry18, i128* %write_output_inner.modsum.carry, align 4
  ret void
}

define %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %0) {
entry:
  %struct_template_circuit_modsum = alloca %struct_template_circuit_modsum, align 8
  %write_arg_inner.modsum.n = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %struct_template_circuit_modsum, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsum.n, align 4
  ret %struct_template_circuit_modsum* %struct_template_circuit_modsum
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
  %out = alloca i128, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %a.bind, align 4
  %mul = mul i128 2, %a2
  %b3 = load i128, i128* %b.bind, align 4
  %mul4 = mul i128 %mul, %b3
  %sub = sub i128 %add, %mul4
  store i128 %sub, i128* %out, align 4
  %out5 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out5, i128 %sub, i1* @constraint.26)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %pow = bitcast i8* %malloccall7 to [256 x [256 x i128]]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %out_poly = bitcast i8* %malloccall8 to [256 x [256 x i128]]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i1 = bitcast i8* %malloccall10 to i128*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j2 = bitcast i8* %malloccall11 to i128*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg2 = bitcast i8* %malloccall12 to i128*
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %b_poly = bitcast i8* %malloccall13 to [256 x [256 x i128]]**
  %malloccall14 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %deg1 = bitcast i8* %malloccall14 to i128*
  %malloccall15 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k2 = bitcast i8* %malloccall15 to i128*
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %a_poly = bitcast i8* %malloccall16 to [256 x [256 x i128]]**
  %malloccall17 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %prod_val = bitcast i8* %malloccall17 to [256 x [256 x i128]]**
  %malloccall18 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i2 = bitcast i8* %malloccall18 to i128*
  %malloccall19 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j1 = bitcast i8* %malloccall19 to i128*
  %out = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch27, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body20

loop.body20:                                      ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i21 = load i128, i128* %i, align 4
  %j22 = load i128, i128* %j, align 4
  %prod_val23 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i21, i128 %j22
  store i128 0, i128* %prod_val23, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body20
  %j24 = load i128, i128* %j, align 4
  %add = add i128 %j24, 1
  store i128 %add, i128* %j, align 4
  %j25 = load i128, i128* %j, align 4
  %ka = load i128, i128* %ka.bind, align 4
  %kb = load i128, i128* %kb.bind, align 4
  %add26 = add i128 %ka, %kb
  %sub = sub i128 %add26, 1
  %slt = icmp slt i128 %j25, %sub
  br i1 %slt, label %loop.body20, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch27

loop.latch27:                                     ; preds = %loop.exit
  %i28 = load i128, i128* %i, align 4
  %add29 = add i128 %i28, 1
  store i128 %add29, i128* %i, align 4
  %i30 = load i128, i128* %i, align 4
  %la = load i128, i128* %la.bind, align 4
  %lb = load i128, i128* %lb.bind, align 4
  %add31 = add i128 %la, %lb
  %sub32 = sub i128 %add31, 1
  %slt33 = icmp slt i128 %i30, %sub32
  br i1 %slt33, label %loop.body, label %loop.exit34

loop.exit34:                                      ; preds = %loop.latch27
  store i128 0, i128* %i1, align 4
  br label %loop.body35

loop.body35:                                      ; preds = %loop.latch83, %loop.exit34
  store i128 0, i128* %i2, align 4
  br label %loop.body36

loop.body36:                                      ; preds = %loop.latch76, %loop.body35
  store i128 0, i128* %j1, align 4
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch69, %loop.body36
  store i128 0, i128* %j2, align 4
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch62, %loop.body37
  %i139 = load i128, i128* %i1, align 4
  %i240 = load i128, i128* %i2, align 4
  %add41 = add i128 %i139, %i240
  store i128 %add41, i128* %i, align 4
  %j142 = load i128, i128* %j1, align 4
  %j243 = load i128, i128* %j2, align 4
  %add44 = add i128 %j142, %j243
  store i128 %add44, i128* %j, align 4
  %prod_val45 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i46 = load i128, i128* %i, align 4
  %j47 = load i128, i128* %j, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val45, i128 0, i128 %i46, i128 %j47
  %prod_val48 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i149 = load i128, i128* %i1, align 4
  %j150 = load i128, i128* %j1, align 4
  %array_getter51 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i149, i128 %j150
  %a52 = load i128, i128* %array_getter51, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %i253 = load i128, i128* %i2, align 4
  %j254 = load i128, i128* %j2, align 4
  %array_getter55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %i253, i128 %j254
  %b56 = load i128, i128* %array_getter55, align 4
  %mul = mul i128 %a52, %b56
  %add57 = add i128 %prod_val48, %mul
  %ptr_getter58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i59 = load i128, i128* %i, align 4
  %j60 = load i128, i128* %j, align 4
  %prod_val61 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter58, i128 0, i128 %i59, i128 %j60
  store i128 %add57, i128* %prod_val61, align 4
  br label %loop.latch62

loop.latch62:                                     ; preds = %loop.body38
  %j263 = load i128, i128* %j2, align 4
  %add64 = add i128 %j263, 1
  store i128 %add64, i128* %j2, align 4
  %j265 = load i128, i128* %j2, align 4
  %kb66 = load i128, i128* %kb.bind, align 4
  %slt67 = icmp slt i128 %j265, %kb66
  br i1 %slt67, label %loop.body38, label %loop.exit68

loop.exit68:                                      ; preds = %loop.latch62
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.exit68
  %j170 = load i128, i128* %j1, align 4
  %add71 = add i128 %j170, 1
  store i128 %add71, i128* %j1, align 4
  %j172 = load i128, i128* %j1, align 4
  %ka73 = load i128, i128* %ka.bind, align 4
  %slt74 = icmp slt i128 %j172, %ka73
  br i1 %slt74, label %loop.body37, label %loop.exit75

loop.exit75:                                      ; preds = %loop.latch69
  br label %loop.latch76

loop.latch76:                                     ; preds = %loop.exit75
  %i277 = load i128, i128* %i2, align 4
  %add78 = add i128 %i277, 1
  store i128 %add78, i128* %i2, align 4
  %i279 = load i128, i128* %i2, align 4
  %lb80 = load i128, i128* %lb.bind, align 4
  %slt81 = icmp slt i128 %i279, %lb80
  br i1 %slt81, label %loop.body36, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  br label %loop.latch83

loop.latch83:                                     ; preds = %loop.exit82
  %i184 = load i128, i128* %i1, align 4
  %add85 = add i128 %i184, 1
  store i128 %add85, i128* %i1, align 4
  %i186 = load i128, i128* %i1, align 4
  %la87 = load i128, i128* %la.bind, align 4
  %slt88 = icmp slt i128 %i186, %la87
  br i1 %slt88, label %loop.body35, label %loop.exit89

loop.exit89:                                      ; preds = %loop.latch83
  store i128 0, i128* %i, align 4
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch111, %loop.exit89
  store i128 0, i128* %j, align 4
  br label %loop.body91

loop.body91:                                      ; preds = %loop.latch101, %loop.body90
  %prod_val92 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %i93 = load i128, i128* %i, align 4
  %j94 = load i128, i128* %j, align 4
  %array_getter95 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val92, i128 0, i128 %i93, i128 %j94
  %prod_val96 = load i128, i128* %array_getter95, align 4
  %ptr_getter97 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i98 = load i128, i128* %i, align 4
  %j99 = load i128, i128* %j, align 4
  %out100 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter97, i128 0, i128 %i98, i128 %j99
  store i128 %prod_val96, i128* %out100, align 4
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.body91
  %j102 = load i128, i128* %j, align 4
  %add103 = add i128 %j102, 1
  store i128 %add103, i128* %j, align 4
  %j104 = load i128, i128* %j, align 4
  %ka105 = load i128, i128* %ka.bind, align 4
  %kb106 = load i128, i128* %kb.bind, align 4
  %add107 = add i128 %ka105, %kb106
  %sub108 = sub i128 %add107, 1
  %slt109 = icmp slt i128 %j104, %sub108
  br i1 %slt109, label %loop.body91, label %loop.exit110

loop.exit110:                                     ; preds = %loop.latch101
  br label %loop.latch111

loop.latch111:                                    ; preds = %loop.exit110
  %i112 = load i128, i128* %i, align 4
  %add113 = add i128 %i112, 1
  store i128 %add113, i128* %i, align 4
  %i114 = load i128, i128* %i, align 4
  %la115 = load i128, i128* %la.bind, align 4
  %lb116 = load i128, i128* %lb.bind, align 4
  %add117 = add i128 %la115, %lb116
  %sub118 = sub i128 %add117, 1
  %slt119 = icmp slt i128 %i114, %sub118
  br i1 %slt119, label %loop.body90, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch111
  %ka121 = load i128, i128* %ka.bind, align 4
  %kb122 = load i128, i128* %kb.bind, align 4
  %add123 = add i128 %ka121, %kb122
  %sub124 = sub i128 %add123, 1
  %la125 = load i128, i128* %la.bind, align 4
  %lb126 = load i128, i128* %lb.bind, align 4
  %add127 = add i128 %la125, %lb126
  %sub128 = sub i128 %add127, 1
  %sgt = icmp sgt i128 %sub124, %sub128
  %ka129 = load i128, i128* %ka.bind, align 4
  %kb130 = load i128, i128* %kb.bind, align 4
  %add131 = add i128 %ka129, %kb130
  %sub132 = sub i128 %add131, 1
  %la133 = load i128, i128* %la.bind, align 4
  %lb134 = load i128, i128* %lb.bind, align 4
  %add135 = add i128 %la133, %lb134
  %sub136 = sub i128 %add135, 1
  %inline_switch = call i128 @fn_intrinsic_inline_switch(i1 %sgt, i128 %sub132, i128 %sub136)
  store i128 %inline_switch, i128* %k2, align 4
  %uniform_array137 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array137, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body138

loop.body138:                                     ; preds = %loop.latch155, %loop.exit120
  store i128 0, i128* %j, align 4
  br label %loop.body139

loop.body139:                                     ; preds = %loop.latch147, %loop.body138
  %i140 = load i128, i128* %i, align 4
  %j141 = load i128, i128* %j, align 4
  %pow142 = call i128 @fn_intrinsic_inline_powi(i128 %i140, i128 %j141)
  %ptr_getter143 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i144 = load i128, i128* %i, align 4
  %j145 = load i128, i128* %j, align 4
  %pow146 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter143, i128 0, i128 %i144, i128 %j145
  store i128 %pow142, i128* %pow146, align 4
  br label %loop.latch147

loop.latch147:                                    ; preds = %loop.body139
  %j148 = load i128, i128* %j, align 4
  %add149 = add i128 %j148, 1
  store i128 %add149, i128* %j, align 4
  %j151 = load i128, i128* %j, align 4
  %k2152 = load i128, i128* %k2, align 4
  %slt153 = icmp slt i128 %j151, %k2152
  br i1 %slt153, label %loop.body139, label %loop.exit154

loop.exit154:                                     ; preds = %loop.latch147
  br label %loop.latch155

loop.latch155:                                    ; preds = %loop.exit154
  %i156 = load i128, i128* %i, align 4
  %add157 = add i128 %i156, 1
  store i128 %add157, i128* %i, align 4
  %i158 = load i128, i128* %i, align 4
  %k2159 = load i128, i128* %k2, align 4
  %slt160 = icmp slt i128 %i158, %k2159
  br i1 %slt160, label %loop.body138, label %loop.exit161

loop.exit161:                                     ; preds = %loop.latch155
  %uniform_array162 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array162, [256 x [256 x i128]]** %a_poly, align 8
  %uniform_array163 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array163, [256 x [256 x i128]]** %b_poly, align 8
  %uniform_array164 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array164, [256 x [256 x i128]]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body165

loop.body165:                                     ; preds = %loop.latch317, %loop.exit161
  store i128 0, i128* %j, align 4
  br label %loop.body166

loop.body166:                                     ; preds = %loop.latch307, %loop.body165
  %ptr_getter167 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i168 = load i128, i128* %i, align 4
  %j169 = load i128, i128* %j, align 4
  %a_poly170 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter167, i128 0, i128 %i168, i128 %j169
  store i128 0, i128* %a_poly170, align 4
  %ptr_getter171 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i172 = load i128, i128* %i, align 4
  %j173 = load i128, i128* %j, align 4
  %b_poly174 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter171, i128 0, i128 %i172, i128 %j173
  store i128 0, i128* %b_poly174, align 4
  %ptr_getter175 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i176 = load i128, i128* %i, align 4
  %j177 = load i128, i128* %j, align 4
  %out_poly178 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter175, i128 0, i128 %i176, i128 %j177
  store i128 0, i128* %out_poly178, align 4
  store i128 0, i128* %deg1, align 4
  br label %loop.body179

loop.body179:                                     ; preds = %loop.latch297, %loop.body166
  %deg1180 = load i128, i128* %deg1, align 4
  %la181 = load i128, i128* %la.bind, align 4
  %slt182 = icmp slt i128 %deg1180, %la181
  br i1 %slt182, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body179
  store i128 0, i128* %deg2, align 4
  br label %loop.body183

if.false:                                         ; preds = %loop.body179
  br label %if.exit

loop.body183:                                     ; preds = %loop.latch211, %if.true
  %a_poly184 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i185 = load i128, i128* %i, align 4
  %j186 = load i128, i128* %j, align 4
  %array_getter187 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly184, i128 0, i128 %i185, i128 %j186
  %a_poly188 = load i128, i128* %array_getter187, align 4
  %a189 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %deg1190 = load i128, i128* %deg1, align 4
  %deg2191 = load i128, i128* %deg2, align 4
  %array_getter192 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a189, i128 0, i128 %deg1190, i128 %deg2191
  %a193 = load i128, i128* %array_getter192, align 4
  %pow194 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i195 = load i128, i128* %i, align 4
  %deg1196 = load i128, i128* %deg1, align 4
  %array_getter197 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow194, i128 0, i128 %i195, i128 %deg1196
  %pow198 = load i128, i128* %array_getter197, align 4
  %mul199 = mul i128 %a193, %pow198
  %pow200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j201 = load i128, i128* %j, align 4
  %deg2202 = load i128, i128* %deg2, align 4
  %array_getter203 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow200, i128 0, i128 %j201, i128 %deg2202
  %pow204 = load i128, i128* %array_getter203, align 4
  %mul205 = mul i128 %mul199, %pow204
  %add206 = add i128 %a_poly188, %mul205
  %ptr_getter207 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i208 = load i128, i128* %i, align 4
  %j209 = load i128, i128* %j, align 4
  %a_poly210 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter207, i128 0, i128 %i208, i128 %j209
  store i128 %add206, i128* %a_poly210, align 4
  br label %loop.latch211

loop.latch211:                                    ; preds = %loop.body183
  %deg2212 = load i128, i128* %deg2, align 4
  %add213 = add i128 %deg2212, 1
  store i128 %add213, i128* %deg2, align 4
  %deg2214 = load i128, i128* %deg2, align 4
  %ka215 = load i128, i128* %ka.bind, align 4
  %slt216 = icmp slt i128 %deg2214, %ka215
  br i1 %slt216, label %loop.body183, label %loop.exit217

loop.exit217:                                     ; preds = %loop.latch211
  br label %if.exit

if.exit:                                          ; preds = %if.false, %loop.exit217
  %deg1220 = load i128, i128* %deg1, align 4
  %lb221 = load i128, i128* %lb.bind, align 4
  %slt222 = icmp slt i128 %deg1220, %lb221
  br i1 %slt222, label %if.true218, label %if.false219

if.true218:                                       ; preds = %if.exit
  store i128 0, i128* %deg2, align 4
  br label %loop.body223

if.false219:                                      ; preds = %if.exit
  br label %if.exit258

loop.body223:                                     ; preds = %loop.latch251, %if.true218
  %b_poly224 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i225 = load i128, i128* %i, align 4
  %j226 = load i128, i128* %j, align 4
  %array_getter227 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly224, i128 0, i128 %i225, i128 %j226
  %b_poly228 = load i128, i128* %array_getter227, align 4
  %b229 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %deg1230 = load i128, i128* %deg1, align 4
  %deg2231 = load i128, i128* %deg2, align 4
  %array_getter232 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b229, i128 0, i128 %deg1230, i128 %deg2231
  %b233 = load i128, i128* %array_getter232, align 4
  %pow234 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i235 = load i128, i128* %i, align 4
  %deg1236 = load i128, i128* %deg1, align 4
  %array_getter237 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow234, i128 0, i128 %i235, i128 %deg1236
  %pow238 = load i128, i128* %array_getter237, align 4
  %mul239 = mul i128 %b233, %pow238
  %pow240 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j241 = load i128, i128* %j, align 4
  %deg2242 = load i128, i128* %deg2, align 4
  %array_getter243 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow240, i128 0, i128 %j241, i128 %deg2242
  %pow244 = load i128, i128* %array_getter243, align 4
  %mul245 = mul i128 %mul239, %pow244
  %add246 = add i128 %b_poly228, %mul245
  %ptr_getter247 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i248 = load i128, i128* %i, align 4
  %j249 = load i128, i128* %j, align 4
  %b_poly250 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter247, i128 0, i128 %i248, i128 %j249
  store i128 %add246, i128* %b_poly250, align 4
  br label %loop.latch251

loop.latch251:                                    ; preds = %loop.body223
  %deg2252 = load i128, i128* %deg2, align 4
  %add253 = add i128 %deg2252, 1
  store i128 %add253, i128* %deg2, align 4
  %deg2254 = load i128, i128* %deg2, align 4
  %kb255 = load i128, i128* %kb.bind, align 4
  %slt256 = icmp slt i128 %deg2254, %kb255
  br i1 %slt256, label %loop.body223, label %loop.exit257

loop.exit257:                                     ; preds = %loop.latch251
  br label %if.exit258

if.exit258:                                       ; preds = %if.false219, %loop.exit257
  store i128 0, i128* %deg2, align 4
  br label %loop.body259

loop.body259:                                     ; preds = %loop.latch287, %if.exit258
  %out_poly260 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i261 = load i128, i128* %i, align 4
  %j262 = load i128, i128* %j, align 4
  %array_getter263 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly260, i128 0, i128 %i261, i128 %j262
  %out_poly264 = load i128, i128* %array_getter263, align 4
  %out265 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %deg1266 = load i128, i128* %deg1, align 4
  %deg2267 = load i128, i128* %deg2, align 4
  %array_getter268 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out265, i128 0, i128 %deg1266, i128 %deg2267
  %out269 = load i128, i128* %array_getter268, align 4
  %pow270 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i271 = load i128, i128* %i, align 4
  %deg1272 = load i128, i128* %deg1, align 4
  %array_getter273 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow270, i128 0, i128 %i271, i128 %deg1272
  %pow274 = load i128, i128* %array_getter273, align 4
  %mul275 = mul i128 %out269, %pow274
  %pow276 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %j277 = load i128, i128* %j, align 4
  %deg2278 = load i128, i128* %deg2, align 4
  %array_getter279 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow276, i128 0, i128 %j277, i128 %deg2278
  %pow280 = load i128, i128* %array_getter279, align 4
  %mul281 = mul i128 %mul275, %pow280
  %add282 = add i128 %out_poly264, %mul281
  %ptr_getter283 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i284 = load i128, i128* %i, align 4
  %j285 = load i128, i128* %j, align 4
  %out_poly286 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter283, i128 0, i128 %i284, i128 %j285
  store i128 %add282, i128* %out_poly286, align 4
  br label %loop.latch287

loop.latch287:                                    ; preds = %loop.body259
  %deg2288 = load i128, i128* %deg2, align 4
  %add289 = add i128 %deg2288, 1
  store i128 %add289, i128* %deg2, align 4
  %deg2290 = load i128, i128* %deg2, align 4
  %ka291 = load i128, i128* %ka.bind, align 4
  %kb292 = load i128, i128* %kb.bind, align 4
  %add293 = add i128 %ka291, %kb292
  %sub294 = sub i128 %add293, 1
  %slt295 = icmp slt i128 %deg2290, %sub294
  br i1 %slt295, label %loop.body259, label %loop.exit296

loop.exit296:                                     ; preds = %loop.latch287
  br label %loop.latch297

loop.latch297:                                    ; preds = %loop.exit296
  %deg1298 = load i128, i128* %deg1, align 4
  %add299 = add i128 %deg1298, 1
  store i128 %add299, i128* %deg1, align 4
  %deg1300 = load i128, i128* %deg1, align 4
  %la301 = load i128, i128* %la.bind, align 4
  %lb302 = load i128, i128* %lb.bind, align 4
  %add303 = add i128 %la301, %lb302
  %sub304 = sub i128 %add303, 1
  %slt305 = icmp slt i128 %deg1300, %sub304
  br i1 %slt305, label %loop.body179, label %loop.exit306

loop.exit306:                                     ; preds = %loop.latch297
  br label %loop.latch307

loop.latch307:                                    ; preds = %loop.exit306
  %j308 = load i128, i128* %j, align 4
  %add309 = add i128 %j308, 1
  store i128 %add309, i128* %j, align 4
  %j310 = load i128, i128* %j, align 4
  %ka311 = load i128, i128* %ka.bind, align 4
  %kb312 = load i128, i128* %kb.bind, align 4
  %add313 = add i128 %ka311, %kb312
  %sub314 = sub i128 %add313, 1
  %slt315 = icmp slt i128 %j310, %sub314
  br i1 %slt315, label %loop.body166, label %loop.exit316

loop.exit316:                                     ; preds = %loop.latch307
  br label %loop.latch317

loop.latch317:                                    ; preds = %loop.exit316
  %i318 = load i128, i128* %i, align 4
  %add319 = add i128 %i318, 1
  store i128 %add319, i128* %i, align 4
  %i320 = load i128, i128* %i, align 4
  %la321 = load i128, i128* %la.bind, align 4
  %lb322 = load i128, i128* %lb.bind, align 4
  %add323 = add i128 %la321, %lb322
  %sub324 = sub i128 %add323, 1
  %slt325 = icmp slt i128 %i320, %sub324
  br i1 %slt325, label %loop.body165, label %loop.exit326

loop.exit326:                                     ; preds = %loop.latch317
  store i128 0, i128* %i, align 4
  br label %loop.body327

loop.body327:                                     ; preds = %loop.latch355, %loop.exit326
  store i128 0, i128* %j, align 4
  br label %loop.body328

loop.body328:                                     ; preds = %loop.latch345, %loop.body327
  %out_poly329 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out_poly, align 8
  %i330 = load i128, i128* %i, align 4
  %j331 = load i128, i128* %j, align 4
  %array_getter332 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out_poly329, i128 0, i128 %i330, i128 %j331
  %out_poly333 = load i128, i128* %array_getter332, align 4
  %a_poly334 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a_poly, align 8
  %i335 = load i128, i128* %i, align 4
  %j336 = load i128, i128* %j, align 4
  %array_getter337 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a_poly334, i128 0, i128 %i335, i128 %j336
  %a_poly338 = load i128, i128* %array_getter337, align 4
  %b_poly339 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b_poly, align 8
  %i340 = load i128, i128* %i, align 4
  %j341 = load i128, i128* %j, align 4
  %array_getter342 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b_poly339, i128 0, i128 %i340, i128 %j341
  %b_poly343 = load i128, i128* %array_getter342, align 4
  %mul344 = mul i128 %a_poly338, %b_poly343
  call void @fn_intrinsic_add_constraint(i128 %out_poly333, i128 %mul344, i1* @constraint.27)
  br label %loop.latch345

loop.latch345:                                    ; preds = %loop.body328
  %j346 = load i128, i128* %j, align 4
  %add347 = add i128 %j346, 1
  store i128 %add347, i128* %j, align 4
  %j348 = load i128, i128* %j, align 4
  %ka349 = load i128, i128* %ka.bind, align 4
  %kb350 = load i128, i128* %kb.bind, align 4
  %add351 = add i128 %ka349, %kb350
  %sub352 = sub i128 %add351, 1
  %slt353 = icmp slt i128 %j348, %sub352
  br i1 %slt353, label %loop.body328, label %loop.exit354

loop.exit354:                                     ; preds = %loop.latch345
  br label %loop.latch355

loop.latch355:                                    ; preds = %loop.exit354
  %i356 = load i128, i128* %i, align 4
  %add357 = add i128 %i356, 1
  store i128 %add357, i128* %i, align 4
  %i358 = load i128, i128* %i, align 4
  %la359 = load i128, i128* %la.bind, align 4
  %lb360 = load i128, i128* %lb.bind, align 4
  %add361 = add i128 %la359, %lb360
  %sub362 = sub i128 %add361, 1
  %slt363 = icmp slt i128 %i358, %sub362
  br i1 %slt363, label %loop.body327, label %loop.exit364

loop.exit364:                                     ; preds = %loop.latch355
  br label %exit

exit:                                             ; preds = %loop.exit364
  %out365 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %write_output_inner.bigmultshortlong2dunequal.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong2dunequal, %struct_template_circuit_bigmultshortlong2dunequal* %0, i32 0, i32 7
  store [256 x [256 x i128]]* %out365, [256 x [256 x i128]]** %write_output_inner.bigmultshortlong2dunequal.out, align 8
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

define i128 @get_fp2_sgn0(i128 %0, [256 x [256 x i128]]* %1) {
entry:
  %k.bind = alloca i128, align 8
  store i128 %0, i128* %k.bind, align 4
  %a.bind = alloca [256 x [256 x i128]]*, align 8
  store [256 x [256 x i128]]* %1, [256 x [256 x i128]]** %a.bind, align 8
  %sgn1 = alloca i128, align 8
  %z = alloca i128, align 8
  %sgn0 = alloca i128, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sum = bitcast i8* %malloccall to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %smsb = bitcast i8* %malloccall2 to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %e = bitcast i8* %malloccall3 to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %num2bits = bitcast i8* %malloccall4 to %struct_template_circuit_num2bits**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %parts = bitcast i8* %malloccall5 to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %cmsb = bitcast i8* %malloccall6 to i128*
  %out = alloca i128, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %a = bitcast i8* %malloccall7 to i128*
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall8 to i128*
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %slsb = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %clsb = bitcast i8* %malloccall10 to i128*
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sout = bitcast i8* %malloccall11 to i128*
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %b = bitcast i8* %malloccall12 to i128*
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
  %i13 = load i128, i128* %i, align 4
  %mul = mul i128 %i13, 2
  %rshift = lshr i128 %ct, %mul
  %and = and i128 %rshift, 1
  store i128 %and, i128* %clsb, align 4
  %ct14 = load i128, i128* %ct.bind, align 4
  %i15 = load i128, i128* %i, align 4
  %mul16 = mul i128 %i15, 2
  %add = add i128 %mul16, 1
  %rshift17 = lshr i128 %ct14, %add
  %and18 = and i128 %rshift17, 1
  store i128 %and18, i128* %cmsb, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %mul20 = mul i128 %i19, 2
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %mul20
  %in21 = load i128, i128* %array_getter, align 4
  store i128 %in21, i128* %slsb, align 4
  %in22 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i23 = load i128, i128* %i, align 4
  %mul24 = mul i128 %i23, 2
  %add25 = add i128 %mul24, 1
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %in22, i128 0, i128 %add25
  %in27 = load i128, i128* %array_getter26, align 4
  store i128 %in27, i128* %smsb, align 4
  %cmsb28 = load i128, i128* %cmsb, align 4
  %eq = icmp eq i128 %cmsb28, 0
  %clsb29 = load i128, i128* %clsb, align 4
  %eq30 = icmp eq i128 %clsb29, 0
  %and31 = and i1 %eq, %eq30
  br i1 %and31, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %b32 = load i128, i128* %b, align 4
  %neg = sub i128 0, %b32
  %smsb33 = load i128, i128* %smsb, align 4
  %mul34 = mul i128 %neg, %smsb33
  %slsb35 = load i128, i128* %slsb, align 4
  %mul36 = mul i128 %mul34, %slsb35
  %b37 = load i128, i128* %b, align 4
  %smsb38 = load i128, i128* %smsb, align 4
  %mul39 = mul i128 %b37, %smsb38
  %add40 = add i128 %mul36, %mul39
  %b41 = load i128, i128* %b, align 4
  %slsb42 = load i128, i128* %slsb, align 4
  %mul43 = mul i128 %b41, %slsb42
  %add44 = add i128 %add40, %mul43
  %ptr_getter = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i45 = load i128, i128* %i, align 4
  %parts46 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i45
  store i128 %add44, i128* %parts46, align 4
  %parts47 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x i128], [256 x i128]* %parts47, i128 0, i128 %i48
  %parts50 = load i128, i128* %array_getter49, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts50, i128 %add44, i1* @constraint.28)
  br label %if.exit124

if.false:                                         ; preds = %loop.body
  %cmsb53 = load i128, i128* %cmsb, align 4
  %eq54 = icmp eq i128 %cmsb53, 0
  %clsb55 = load i128, i128* %clsb, align 4
  %eq56 = icmp eq i128 %clsb55, 1
  %and57 = and i1 %eq54, %eq56
  br i1 %and57, label %if.true51, label %if.false52

if.true51:                                        ; preds = %if.false
  %a58 = load i128, i128* %a, align 4
  %smsb59 = load i128, i128* %smsb, align 4
  %mul60 = mul i128 %a58, %smsb59
  %slsb61 = load i128, i128* %slsb, align 4
  %mul62 = mul i128 %mul60, %slsb61
  %a63 = load i128, i128* %a, align 4
  %slsb64 = load i128, i128* %slsb, align 4
  %mul65 = mul i128 %a63, %slsb64
  %sub = sub i128 %mul62, %mul65
  %b66 = load i128, i128* %b, align 4
  %smsb67 = load i128, i128* %smsb, align 4
  %mul68 = mul i128 %b66, %smsb67
  %add69 = add i128 %sub, %mul68
  %a70 = load i128, i128* %a, align 4
  %smsb71 = load i128, i128* %smsb, align 4
  %mul72 = mul i128 %a70, %smsb71
  %sub73 = sub i128 %add69, %mul72
  %a74 = load i128, i128* %a, align 4
  %add75 = add i128 %sub73, %a74
  %ptr_getter76 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i77 = load i128, i128* %i, align 4
  %parts78 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter76, i128 0, i128 %i77
  store i128 %add75, i128* %parts78, align 4
  %parts79 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i80 = load i128, i128* %i, align 4
  %array_getter81 = getelementptr inbounds [256 x i128], [256 x i128]* %parts79, i128 0, i128 %i80
  %parts82 = load i128, i128* %array_getter81, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts82, i128 %add75, i1* @constraint.29)
  br label %if.exit123

if.false52:                                       ; preds = %if.false
  %cmsb85 = load i128, i128* %cmsb, align 4
  %eq86 = icmp eq i128 %cmsb85, 1
  %clsb87 = load i128, i128* %clsb, align 4
  %eq88 = icmp eq i128 %clsb87, 0
  %and89 = and i1 %eq86, %eq88
  br i1 %and89, label %if.true83, label %if.false84

if.true83:                                        ; preds = %if.false52
  %b90 = load i128, i128* %b, align 4
  %smsb91 = load i128, i128* %smsb, align 4
  %mul92 = mul i128 %b90, %smsb91
  %slsb93 = load i128, i128* %slsb, align 4
  %mul94 = mul i128 %mul92, %slsb93
  %a95 = load i128, i128* %a, align 4
  %smsb96 = load i128, i128* %smsb, align 4
  %mul97 = mul i128 %a95, %smsb96
  %sub98 = sub i128 %mul94, %mul97
  %a99 = load i128, i128* %a, align 4
  %add100 = add i128 %sub98, %a99
  %ptr_getter101 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i102 = load i128, i128* %i, align 4
  %parts103 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter101, i128 0, i128 %i102
  store i128 %add100, i128* %parts103, align 4
  %parts104 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i105 = load i128, i128* %i, align 4
  %array_getter106 = getelementptr inbounds [256 x i128], [256 x i128]* %parts104, i128 0, i128 %i105
  %parts107 = load i128, i128* %array_getter106, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts107, i128 %add100, i1* @constraint.30)
  br label %if.exit

if.false84:                                       ; preds = %if.false52
  %a108 = load i128, i128* %a, align 4
  %neg109 = sub i128 0, %a108
  %smsb110 = load i128, i128* %smsb, align 4
  %mul111 = mul i128 %neg109, %smsb110
  %slsb112 = load i128, i128* %slsb, align 4
  %mul113 = mul i128 %mul111, %slsb112
  %a114 = load i128, i128* %a, align 4
  %add115 = add i128 %mul113, %a114
  %ptr_getter116 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i117 = load i128, i128* %i, align 4
  %parts118 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter116, i128 0, i128 %i117
  store i128 %add115, i128* %parts118, align 4
  %parts119 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i120 = load i128, i128* %i, align 4
  %array_getter121 = getelementptr inbounds [256 x i128], [256 x i128]* %parts119, i128 0, i128 %i120
  %parts122 = load i128, i128* %array_getter121, align 4
  call void @fn_intrinsic_add_constraint(i128 %parts122, i128 %add115, i1* @constraint.31)
  br label %if.exit

if.exit:                                          ; preds = %if.false84, %if.true83
  br label %if.exit123

if.exit123:                                       ; preds = %if.exit, %if.true51
  br label %if.exit124

if.exit124:                                       ; preds = %if.exit123, %if.true
  %sum125 = load i128, i128* %sum, align 4
  %parts126 = load [256 x i128]*, [256 x i128]** %parts, align 8
  %i127 = load i128, i128* %i, align 4
  %array_getter128 = getelementptr inbounds [256 x i128], [256 x i128]* %parts126, i128 0, i128 %i127
  %parts129 = load i128, i128* %array_getter128, align 4
  %add130 = add i128 %sum125, %parts129
  store i128 %add130, i128* %sum, align 4
  %b131 = load i128, i128* %b, align 4
  %e132 = load i128, i128* %e, align 4
  %sub133 = sub i128 %b131, %e132
  store i128 %sub133, i128* %b, align 4
  %a134 = load i128, i128* %a, align 4
  %e135 = load i128, i128* %e, align 4
  %add136 = add i128 %a134, %e135
  store i128 %add136, i128* %a, align 4
  %e137 = load i128, i128* %e, align 4
  %mul138 = mul i128 %e137, 2
  store i128 %mul138, i128* %e, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit124
  %i139 = load i128, i128* %i, align 4
  %add140 = add i128 %i139, 1
  store i128 %add140, i128* %i, align 4
  %i141 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i141, 127
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sum142 = load i128, i128* %sum, align 4
  store i128 %sum142, i128* %sout, align 4
  %sout143 = load i128, i128* %sout, align 4
  call void @fn_intrinsic_add_constraint(i128 %sout143, i128 %sum142, i1* @constraint.32)
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 135)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %num2bits, align 8
  %sout144 = load i128, i128* %sout, align 4
  %ptr_getter145 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter145, i32 0, i32 1
  store i128 %sout144, i128* %write_input_outter.num2bits.in, align 4
  %num2bits146 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits146, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter147, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %sout144, i1* @constraint.33)
  %num2bits148 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %num2bits, align 8
  %struct_getter149 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %num2bits148, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter149, align 8
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 127
  %num2bits151 = load i128, i128* %array_getter150, align 4
  store i128 %num2bits151, i128* %out, align 4
  %out152 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out152, i128 %num2bits151, i1* @constraint.34)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out153 = load i128, i128* %out, align 4
  %write_output_inner.compconstant.out = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %0, i32 0, i32 2
  store i128 %out153, i128* %write_output_inner.compconstant.out, align 4
  ret void
}

define %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 %0) {
entry:
  %struct_template_circuit_compconstant = alloca %struct_template_circuit_compconstant, align 8
  %write_arg_inner.compconstant.ct = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %struct_template_circuit_compconstant, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.compconstant.ct, align 4
  ret %struct_template_circuit_compconstant* %struct_template_circuit_compconstant
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lin = bitcast i8* %malloccall to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %lout = bitcast i8* %malloccall3 to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k = bitcast i8* %malloccall4 to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %e2 = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %nout = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall7 to i128*
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

loop.body:                                        ; preds = %loop.latch22, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body8

loop.body8:                                       ; preds = %loop.latch, %loop.body
  %lin9 = load i128, i128* %lin, align 4
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %j10 = load i128, i128* %j, align 4
  %k11 = load i128, i128* %k, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %j10, i128 %k11
  %in12 = load i128, i128* %array_getter, align 4
  %e213 = load i128, i128* %e2, align 4
  %mul14 = mul i128 %in12, %e213
  %add = add i128 %lin9, %mul14
  store i128 %add, i128* %lin, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body8
  %j15 = load i128, i128* %j, align 4
  %add16 = add i128 %j15, 1
  store i128 %add16, i128* %j, align 4
  %j17 = load i128, i128* %j, align 4
  %ops18 = load i128, i128* %ops.bind, align 4
  %slt = icmp slt i128 %j17, %ops18
  br i1 %slt, label %loop.body8, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %e219 = load i128, i128* %e2, align 4
  %e220 = load i128, i128* %e2, align 4
  %add21 = add i128 %e219, %e220
  store i128 %add21, i128* %e2, align 4
  br label %loop.latch22

loop.latch22:                                     ; preds = %loop.exit
  %k23 = load i128, i128* %k, align 4
  %add24 = add i128 %k23, 1
  store i128 %add24, i128* %k, align 4
  %k25 = load i128, i128* %k, align 4
  %n26 = load i128, i128* %n.bind, align 4
  %slt27 = icmp slt i128 %k25, %n26
  br i1 %slt27, label %loop.body, label %loop.exit28

loop.exit28:                                      ; preds = %loop.latch22
  store i128 1, i128* %e2, align 4
  store i128 0, i128* %k, align 4
  br label %loop.body29

loop.body29:                                      ; preds = %loop.latch55, %loop.exit28
  %lin30 = load i128, i128* %lin, align 4
  %k31 = load i128, i128* %k, align 4
  %rshift = lshr i128 %lin30, %k31
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %k32 = load i128, i128* %k, align 4
  %out33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %k32
  store i128 %and, i128* %out33, align 4
  %out34 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k35 = load i128, i128* %k, align 4
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %out34, i128 0, i128 %k35
  %out37 = load i128, i128* %array_getter36, align 4
  %out38 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k39 = load i128, i128* %k, align 4
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %out38, i128 0, i128 %k39
  %out41 = load i128, i128* %array_getter40, align 4
  %sub42 = sub i128 %out41, 1
  %mul43 = mul i128 %out37, %sub42
  call void @fn_intrinsic_add_constraint(i128 %mul43, i128 0, i1* @constraint.35)
  %lout44 = load i128, i128* %lout, align 4
  %out45 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k46 = load i128, i128* %k, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %out45, i128 0, i128 %k46
  %out48 = load i128, i128* %array_getter47, align 4
  %e249 = load i128, i128* %e2, align 4
  %mul50 = mul i128 %out48, %e249
  %add51 = add i128 %lout44, %mul50
  store i128 %add51, i128* %lout, align 4
  %e252 = load i128, i128* %e2, align 4
  %e253 = load i128, i128* %e2, align 4
  %add54 = add i128 %e252, %e253
  store i128 %add54, i128* %e2, align 4
  br label %loop.latch55

loop.latch55:                                     ; preds = %loop.body29
  %k56 = load i128, i128* %k, align 4
  %add57 = add i128 %k56, 1
  store i128 %add57, i128* %k, align 4
  %k58 = load i128, i128* %k, align 4
  %nout59 = load i128, i128* %nout, align 4
  %slt60 = icmp slt i128 %k58, %nout59
  br i1 %slt60, label %loop.body29, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch55
  %lin62 = load i128, i128* %lin, align 4
  %lout63 = load i128, i128* %lout, align 4
  call void @fn_intrinsic_add_constraint(i128 %lin62, i128 %lout63, i1* @constraint.36)
  br label %exit

exit:                                             ; preds = %loop.exit61
  %out64 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.binsum.out = getelementptr inbounds %struct_template_circuit_binsum, %struct_template_circuit_binsum* %0, i32 0, i32 3
  store [256 x i128]* %out64, [256 x i128]** %write_output_inner.binsum.out, align 8
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
  %out = alloca i128, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add = add i128 %a, %b
  %a2 = load i128, i128* %a.bind, align 4
  %b3 = load i128, i128* %b.bind, align 4
  %mul = mul i128 %a2, %b3
  %sub = sub i128 %add, %mul
  store i128 %sub, i128* %out, align 4
  %out4 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out4, i128 %sub, i1* @constraint.37)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %k2 = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %a_poly = bitcast i8* %malloccall7 to [256 x i128]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %b_poly = bitcast i8* %malloccall8 to [256 x i128]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %a_idx = bitcast i8* %malloccall9 to i128*
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %pow = bitcast i8* %malloccall10 to [256 x [256 x i128]]**
  %out = alloca [256 x i128]*, align 8
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out_poly = bitcast i8* %malloccall11 to [256 x i128]**
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %prod_val = bitcast i8* %malloccall12 to [256 x i128]**
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch72, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i13 = load i128, i128* %i, align 4
  %prod_val14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 0, i128* %prod_val14, align 4
  %i15 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i15, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body16

if.false:                                         ; preds = %loop.body
  %i34 = load i128, i128* %i, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %sub36 = sub i128 %i34, %k35
  %add37 = add i128 %sub36, 1
  store i128 %add37, i128* %a_idx, align 4
  br label %loop.body38

loop.body16:                                      ; preds = %loop.latch, %if.true
  %prod_val17 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val17, i128 0, i128 %i18
  %prod_val19 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx20 = load i128, i128* %a_idx, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx20
  %a22 = load i128, i128* %array_getter21, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i23 = load i128, i128* %i, align 4
  %a_idx24 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i23, %a_idx24
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b26 = load i128, i128* %array_getter25, align 4
  %mul = mul i128 %a22, %b26
  %add = add i128 %prod_val19, %mul
  %ptr_getter27 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i28 = load i128, i128* %i, align 4
  %prod_val29 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter27, i128 0, i128 %i28
  store i128 %add, i128* %prod_val29, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body16
  %a_idx30 = load i128, i128* %a_idx, align 4
  %add31 = add i128 %a_idx30, 1
  store i128 %add31, i128* %a_idx, align 4
  %a_idx32 = load i128, i128* %a_idx, align 4
  %i33 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx32, %i33
  br i1 %sle, label %loop.body16, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body38:                                      ; preds = %loop.latch58, %if.false
  %prod_val39 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val39, i128 0, i128 %i40
  %prod_val42 = load i128, i128* %array_getter41, align 4
  %a43 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx44 = load i128, i128* %a_idx, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %a43, i128 0, i128 %a_idx44
  %a46 = load i128, i128* %array_getter45, align 4
  %b47 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i48 = load i128, i128* %i, align 4
  %a_idx49 = load i128, i128* %a_idx, align 4
  %sub50 = sub i128 %i48, %a_idx49
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %b47, i128 0, i128 %sub50
  %b52 = load i128, i128* %array_getter51, align 4
  %mul53 = mul i128 %a46, %b52
  %add54 = add i128 %prod_val42, %mul53
  %ptr_getter55 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i56 = load i128, i128* %i, align 4
  %prod_val57 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter55, i128 0, i128 %i56
  store i128 %add54, i128* %prod_val57, align 4
  br label %loop.latch58

loop.latch58:                                     ; preds = %loop.body38
  %a_idx59 = load i128, i128* %a_idx, align 4
  %add60 = add i128 %a_idx59, 1
  store i128 %add60, i128* %a_idx, align 4
  %a_idx61 = load i128, i128* %a_idx, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %slt63 = icmp slt i128 %a_idx61, %k62
  br i1 %slt63, label %loop.body38, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch58
  br label %if.exit

if.exit:                                          ; preds = %loop.exit64, %loop.exit
  %prod_val65 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val65, i128 0, i128 %i66
  %prod_val68 = load i128, i128* %array_getter67, align 4
  %ptr_getter69 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i70 = load i128, i128* %i, align 4
  %out71 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter69, i128 0, i128 %i70
  store i128 %prod_val68, i128* %out71, align 4
  br label %loop.latch72

loop.latch72:                                     ; preds = %if.exit
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  store i128 %add74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %k76 = load i128, i128* %k.bind, align 4
  %mul77 = mul i128 2, %k76
  %sub78 = sub i128 %mul77, 1
  %slt79 = icmp slt i128 %i75, %sub78
  br i1 %slt79, label %loop.body, label %loop.exit80

loop.exit80:                                      ; preds = %loop.latch72
  %k81 = load i128, i128* %k.bind, align 4
  %mul82 = mul i128 2, %k81
  %sub83 = sub i128 %mul82, 1
  store i128 %sub83, i128* %k2, align 4
  %uniform_array84 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array84, [256 x [256 x i128]]** %pow, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body85

loop.body85:                                      ; preds = %loop.latch101, %loop.exit80
  store i128 0, i128* %j, align 4
  br label %loop.body86

loop.body86:                                      ; preds = %loop.latch94, %loop.body85
  %i87 = load i128, i128* %i, align 4
  %j88 = load i128, i128* %j, align 4
  %pow89 = call i128 @fn_intrinsic_inline_powi(i128 %i87, i128 %j88)
  %ptr_getter90 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i91 = load i128, i128* %i, align 4
  %j92 = load i128, i128* %j, align 4
  %pow93 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter90, i128 0, i128 %i91, i128 %j92
  store i128 %pow89, i128* %pow93, align 4
  br label %loop.latch94

loop.latch94:                                     ; preds = %loop.body86
  %j95 = load i128, i128* %j, align 4
  %add96 = add i128 %j95, 1
  store i128 %add96, i128* %j, align 4
  %j97 = load i128, i128* %j, align 4
  %k298 = load i128, i128* %k2, align 4
  %slt99 = icmp slt i128 %j97, %k298
  br i1 %slt99, label %loop.body86, label %loop.exit100

loop.exit100:                                     ; preds = %loop.latch94
  br label %loop.latch101

loop.latch101:                                    ; preds = %loop.exit100
  %i102 = load i128, i128* %i, align 4
  %add103 = add i128 %i102, 1
  store i128 %add103, i128* %i, align 4
  %i104 = load i128, i128* %i, align 4
  %k2105 = load i128, i128* %k2, align 4
  %slt106 = icmp slt i128 %i104, %k2105
  br i1 %slt106, label %loop.body85, label %loop.exit107

loop.exit107:                                     ; preds = %loop.latch101
  %uniform_array108 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array108, [256 x i128]** %a_poly, align 8
  %uniform_array109 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array109, [256 x i128]** %b_poly, align 8
  %uniform_array110 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array110, [256 x i128]** %out_poly, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body111

loop.body111:                                     ; preds = %loop.latch193, %loop.exit107
  %ptr_getter112 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i113 = load i128, i128* %i, align 4
  %out_poly114 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter112, i128 0, i128 %i113
  store i128 0, i128* %out_poly114, align 4
  %ptr_getter115 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i116 = load i128, i128* %i, align 4
  %a_poly117 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter115, i128 0, i128 %i116
  store i128 0, i128* %a_poly117, align 4
  %ptr_getter118 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i119 = load i128, i128* %i, align 4
  %b_poly120 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter118, i128 0, i128 %i119
  store i128 0, i128* %b_poly120, align 4
  store i128 0, i128* %j, align 4
  br label %loop.body121

loop.body121:                                     ; preds = %loop.latch140, %loop.body111
  %out_poly122 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i123 = load i128, i128* %i, align 4
  %array_getter124 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly122, i128 0, i128 %i123
  %out_poly125 = load i128, i128* %array_getter124, align 4
  %out126 = load [256 x i128]*, [256 x i128]** %out, align 8
  %j127 = load i128, i128* %j, align 4
  %array_getter128 = getelementptr inbounds [256 x i128], [256 x i128]* %out126, i128 0, i128 %j127
  %out129 = load i128, i128* %array_getter128, align 4
  %pow130 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i131 = load i128, i128* %i, align 4
  %j132 = load i128, i128* %j, align 4
  %array_getter133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow130, i128 0, i128 %i131, i128 %j132
  %pow134 = load i128, i128* %array_getter133, align 4
  %mul135 = mul i128 %out129, %pow134
  %add136 = add i128 %out_poly125, %mul135
  %ptr_getter137 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i138 = load i128, i128* %i, align 4
  %out_poly139 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter137, i128 0, i128 %i138
  store i128 %add136, i128* %out_poly139, align 4
  br label %loop.latch140

loop.latch140:                                    ; preds = %loop.body121
  %j141 = load i128, i128* %j, align 4
  %add142 = add i128 %j141, 1
  store i128 %add142, i128* %j, align 4
  %j143 = load i128, i128* %j, align 4
  %k144 = load i128, i128* %k.bind, align 4
  %mul145 = mul i128 2, %k144
  %sub146 = sub i128 %mul145, 1
  %slt147 = icmp slt i128 %j143, %sub146
  br i1 %slt147, label %loop.body121, label %loop.exit148

loop.exit148:                                     ; preds = %loop.latch140
  store i128 0, i128* %j, align 4
  br label %loop.body149

loop.body149:                                     ; preds = %loop.latch186, %loop.exit148
  %a_poly150 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i151 = load i128, i128* %i, align 4
  %array_getter152 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly150, i128 0, i128 %i151
  %a_poly153 = load i128, i128* %array_getter152, align 4
  %a154 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %j155 = load i128, i128* %j, align 4
  %array_getter156 = getelementptr inbounds [256 x i128], [256 x i128]* %a154, i128 0, i128 %j155
  %a157 = load i128, i128* %array_getter156, align 4
  %pow158 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i159 = load i128, i128* %i, align 4
  %j160 = load i128, i128* %j, align 4
  %array_getter161 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow158, i128 0, i128 %i159, i128 %j160
  %pow162 = load i128, i128* %array_getter161, align 4
  %mul163 = mul i128 %a157, %pow162
  %add164 = add i128 %a_poly153, %mul163
  %ptr_getter165 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i166 = load i128, i128* %i, align 4
  %a_poly167 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter165, i128 0, i128 %i166
  store i128 %add164, i128* %a_poly167, align 4
  %b_poly168 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i169 = load i128, i128* %i, align 4
  %array_getter170 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly168, i128 0, i128 %i169
  %b_poly171 = load i128, i128* %array_getter170, align 4
  %b172 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %j173 = load i128, i128* %j, align 4
  %array_getter174 = getelementptr inbounds [256 x i128], [256 x i128]* %b172, i128 0, i128 %j173
  %b175 = load i128, i128* %array_getter174, align 4
  %pow176 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %pow, align 8
  %i177 = load i128, i128* %i, align 4
  %j178 = load i128, i128* %j, align 4
  %array_getter179 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %pow176, i128 0, i128 %i177, i128 %j178
  %pow180 = load i128, i128* %array_getter179, align 4
  %mul181 = mul i128 %b175, %pow180
  %add182 = add i128 %b_poly171, %mul181
  %ptr_getter183 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i184 = load i128, i128* %i, align 4
  %b_poly185 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter183, i128 0, i128 %i184
  store i128 %add182, i128* %b_poly185, align 4
  br label %loop.latch186

loop.latch186:                                    ; preds = %loop.body149
  %j187 = load i128, i128* %j, align 4
  %add188 = add i128 %j187, 1
  store i128 %add188, i128* %j, align 4
  %j189 = load i128, i128* %j, align 4
  %k190 = load i128, i128* %k.bind, align 4
  %slt191 = icmp slt i128 %j189, %k190
  br i1 %slt191, label %loop.body149, label %loop.exit192

loop.exit192:                                     ; preds = %loop.latch186
  br label %loop.latch193

loop.latch193:                                    ; preds = %loop.exit192
  %i194 = load i128, i128* %i, align 4
  %add195 = add i128 %i194, 1
  store i128 %add195, i128* %i, align 4
  %i196 = load i128, i128* %i, align 4
  %k197 = load i128, i128* %k.bind, align 4
  %mul198 = mul i128 2, %k197
  %sub199 = sub i128 %mul198, 1
  %slt200 = icmp slt i128 %i196, %sub199
  br i1 %slt200, label %loop.body111, label %loop.exit201

loop.exit201:                                     ; preds = %loop.latch193
  store i128 0, i128* %i, align 4
  br label %loop.body202

loop.body202:                                     ; preds = %loop.latch216, %loop.exit201
  %out_poly203 = load [256 x i128]*, [256 x i128]** %out_poly, align 8
  %i204 = load i128, i128* %i, align 4
  %array_getter205 = getelementptr inbounds [256 x i128], [256 x i128]* %out_poly203, i128 0, i128 %i204
  %out_poly206 = load i128, i128* %array_getter205, align 4
  %a_poly207 = load [256 x i128]*, [256 x i128]** %a_poly, align 8
  %i208 = load i128, i128* %i, align 4
  %array_getter209 = getelementptr inbounds [256 x i128], [256 x i128]* %a_poly207, i128 0, i128 %i208
  %a_poly210 = load i128, i128* %array_getter209, align 4
  %b_poly211 = load [256 x i128]*, [256 x i128]** %b_poly, align 8
  %i212 = load i128, i128* %i, align 4
  %array_getter213 = getelementptr inbounds [256 x i128], [256 x i128]* %b_poly211, i128 0, i128 %i212
  %b_poly214 = load i128, i128* %array_getter213, align 4
  %mul215 = mul i128 %a_poly210, %b_poly214
  call void @fn_intrinsic_add_constraint(i128 %out_poly206, i128 %mul215, i1* @constraint.38)
  br label %loop.latch216

loop.latch216:                                    ; preds = %loop.body202
  %i217 = load i128, i128* %i, align 4
  %add218 = add i128 %i217, 1
  store i128 %add218, i128* %i, align 4
  %i219 = load i128, i128* %i, align 4
  %k220 = load i128, i128* %k.bind, align 4
  %mul221 = mul i128 2, %k220
  %sub222 = sub i128 %mul221, 1
  %slt223 = icmp slt i128 %i219, %sub222
  br i1 %slt223, label %loop.body202, label %loop.exit224

loop.exit224:                                     ; preds = %loop.latch216
  br label %exit

exit:                                             ; preds = %loop.exit224
  %out225 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmultshortlong.out = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %0, i32 0, i32 5
  store [256 x i128]* %out225, [256 x i128]** %write_output_inner.bigmultshortlong.out, align 8
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
  %a_idx = alloca i128, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %carry = alloca [256 x i128]*, align 8
  %out = alloca [256 x i128]*, align 8
  %prod_val = alloca [256 x i128]*, align 8
  %split = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch53, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i1 = load i128, i128* %i, align 4
  %prod_val2 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i1
  store i128 0, i128* %prod_val2, align 4
  %i3 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i3, %k
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %a_idx, align 4
  br label %loop.body4

if.false:                                         ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %sub24 = sub i128 %i22, %k23
  %add25 = add i128 %sub24, 1
  store i128 %add25, i128* %a_idx, align 4
  br label %loop.body26

loop.body4:                                       ; preds = %loop.latch, %if.true
  %prod_val5 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val5, i128 0, i128 %i6
  %prod_val7 = load i128, i128* %array_getter, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx8 = load i128, i128* %a_idx, align 4
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %a_idx8
  %a10 = load i128, i128* %array_getter9, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %a_idx12 = load i128, i128* %a_idx, align 4
  %sub = sub i128 %i11, %a_idx12
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b14 = load i128, i128* %array_getter13, align 4
  %mul = mul i128 %a10, %b14
  %add = add i128 %prod_val7, %mul
  %ptr_getter15 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i16 = load i128, i128* %i, align 4
  %prod_val17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter15, i128 0, i128 %i16
  store i128 %add, i128* %prod_val17, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body4
  %a_idx18 = load i128, i128* %a_idx, align 4
  %add19 = add i128 %a_idx18, 1
  store i128 %add19, i128* %a_idx, align 4
  %a_idx20 = load i128, i128* %a_idx, align 4
  %i21 = load i128, i128* %i, align 4
  %sle = icmp sle i128 %a_idx20, %i21
  br i1 %sle, label %loop.body4, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %if.exit

loop.body26:                                      ; preds = %loop.latch46, %if.false
  %prod_val27 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val27, i128 0, i128 %i28
  %prod_val30 = load i128, i128* %array_getter29, align 4
  %a31 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %a_idx32 = load i128, i128* %a_idx, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %a31, i128 0, i128 %a_idx32
  %a34 = load i128, i128* %array_getter33, align 4
  %b35 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i36 = load i128, i128* %i, align 4
  %a_idx37 = load i128, i128* %a_idx, align 4
  %sub38 = sub i128 %i36, %a_idx37
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %b35, i128 0, i128 %sub38
  %b40 = load i128, i128* %array_getter39, align 4
  %mul41 = mul i128 %a34, %b40
  %add42 = add i128 %prod_val30, %mul41
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i44 = load i128, i128* %i, align 4
  %prod_val45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 %i44
  store i128 %add42, i128* %prod_val45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body26
  %a_idx47 = load i128, i128* %a_idx, align 4
  %add48 = add i128 %a_idx47, 1
  store i128 %add48, i128* %a_idx, align 4
  %a_idx49 = load i128, i128* %a_idx, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %slt51 = icmp slt i128 %a_idx49, %k50
  br i1 %slt51, label %loop.body26, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  br label %if.exit

if.exit:                                          ; preds = %loop.exit52, %loop.exit
  br label %loop.latch53

loop.latch53:                                     ; preds = %if.exit
  %i54 = load i128, i128* %i, align 4
  %add55 = add i128 %i54, 1
  store i128 %add55, i128* %i, align 4
  %i56 = load i128, i128* %i, align 4
  %k57 = load i128, i128* %k.bind, align 4
  %mul58 = mul i128 2, %k57
  %sub59 = sub i128 %mul58, 1
  %slt60 = icmp slt i128 %i56, %sub59
  br i1 %slt60, label %loop.body, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch53
  %uniform_array62 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array62, [256 x i128]** %out, align 8
  %uniform_array63 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array63, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch74, %loop.exit61
  %prod_val65 = load [256 x i128]*, [256 x i128]** %prod_val, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %prod_val65, i128 0, i128 %i66
  %prod_val68 = load i128, i128* %array_getter67, align 4
  %n = load i128, i128* %n.bind, align 4
  %n69 = load i128, i128* %n.bind, align 4
  %n70 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val68, i128 %n, i128 %n69, i128 %n70)
  %ptr_getter71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i72 = load i128, i128* %i, align 4
  %split73 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter71, i128 0, i128 %i72
  %4 = bitcast [256 x i128]* %split73 to i8*
  %5 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch74

loop.latch74:                                     ; preds = %loop.body64
  %i75 = load i128, i128* %i, align 4
  %add76 = add i128 %i75, 1
  store i128 %add76, i128* %i, align 4
  %i77 = load i128, i128* %i, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %mul79 = mul i128 2, %k78
  %sub80 = sub i128 %mul79, 1
  %slt81 = icmp slt i128 %i77, %sub80
  br i1 %slt81, label %loop.body64, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch74
  %uniform_array83 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array83, [256 x i128]** %carry, align 8
  %ptr_getter84 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry85 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter84, i128 0, i128 0
  store i128 0, i128* %carry85, align 4
  %split86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split86, i128 0, i128 0, i128 0
  %split88 = load i128, i128* %array_getter87, align 4
  %ptr_getter89 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter89, i128 0, i128 0
  store i128 %split88, i128* %out90, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %mul94 = mul i128 2, %k93
  %sub95 = sub i128 %mul94, 1
  %sgt = icmp sgt i128 %sub95, 1
  br i1 %sgt, label %if.true91, label %if.false92

if.true91:                                        ; preds = %loop.exit82
  %split96 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split96, i128 0, i128 0, i128 1
  %split98 = load i128, i128* %array_getter97, align 4
  %split99 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter100 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split99, i128 0, i128 1, i128 0
  %split101 = load i128, i128* %array_getter100, align 4
  %add102 = add i128 %split98, %split101
  %n103 = load i128, i128* %n.bind, align 4
  %n104 = load i128, i128* %n.bind, align 4
  %call105 = call [2 x i128]* @SplitFn(i128 %add102, i128 %n103, i128 %n104)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry106 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter107 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry106, i128 0, i128 0
  %sumAndCarry108 = load i128, i128* %array_getter107, align 4
  %ptr_getter109 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out110 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter109, i128 0, i128 1
  store i128 %sumAndCarry108, i128* %out110, align 4
  %sumAndCarry111 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry111, i128 0, i128 1
  %sumAndCarry113 = load i128, i128* %array_getter112, align 4
  %ptr_getter114 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry115 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter114, i128 0, i128 1
  store i128 %sumAndCarry113, i128* %carry115, align 4
  br label %if.exit116

if.false92:                                       ; preds = %loop.exit82
  br label %if.exit116

if.exit116:                                       ; preds = %if.false92, %if.true91
  %k119 = load i128, i128* %k.bind, align 4
  %mul120 = mul i128 2, %k119
  %sub121 = sub i128 %mul120, 1
  %sgt122 = icmp sgt i128 %sub121, 2
  br i1 %sgt122, label %if.true117, label %if.false118

if.true117:                                       ; preds = %if.exit116
  store i128 2, i128* %i, align 4
  br label %loop.body123

if.false118:                                      ; preds = %if.exit116
  br label %if.exit196

loop.body123:                                     ; preds = %loop.latch162, %if.true117
  %split124 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split124, i128 0, i128 %i125, i128 0
  %split127 = load i128, i128* %array_getter126, align 4
  %split128 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i129 = load i128, i128* %i, align 4
  %sub130 = sub i128 %i129, 1
  %array_getter131 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split128, i128 0, i128 %sub130, i128 1
  %split132 = load i128, i128* %array_getter131, align 4
  %add133 = add i128 %split127, %split132
  %split134 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i135 = load i128, i128* %i, align 4
  %sub136 = sub i128 %i135, 2
  %array_getter137 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split134, i128 0, i128 %sub136, i128 2
  %split138 = load i128, i128* %array_getter137, align 4
  %add139 = add i128 %add133, %split138
  %carry140 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i141 = load i128, i128* %i, align 4
  %sub142 = sub i128 %i141, 1
  %array_getter143 = getelementptr inbounds [256 x i128], [256 x i128]* %carry140, i128 0, i128 %sub142
  %carry144 = load i128, i128* %array_getter143, align 4
  %add145 = add i128 %add139, %carry144
  %n146 = load i128, i128* %n.bind, align 4
  %n147 = load i128, i128* %n.bind, align 4
  %call148 = call [2 x i128]* @SplitFn(i128 %add145, i128 %n146, i128 %n147)
  %memcpy_ptr149 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %8 = bitcast [256 x i128]** %memcpy_ptr149 to i8*
  %9 = bitcast [2 x i128]* %call148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry150 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter151 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry150, i128 0, i128 0
  %sumAndCarry152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i154 = load i128, i128* %i, align 4
  %out155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %sumAndCarry152, i128* %out155, align 4
  %sumAndCarry156 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry156, i128 0, i128 1
  %sumAndCarry158 = load i128, i128* %array_getter157, align 4
  %ptr_getter159 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i160 = load i128, i128* %i, align 4
  %carry161 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter159, i128 0, i128 %i160
  store i128 %sumAndCarry158, i128* %carry161, align 4
  br label %loop.latch162

loop.latch162:                                    ; preds = %loop.body123
  %i163 = load i128, i128* %i, align 4
  %add164 = add i128 %i163, 1
  store i128 %add164, i128* %i, align 4
  %i165 = load i128, i128* %i, align 4
  %k166 = load i128, i128* %k.bind, align 4
  %mul167 = mul i128 2, %k166
  %sub168 = sub i128 %mul167, 1
  %slt169 = icmp slt i128 %i165, %sub168
  br i1 %slt169, label %loop.body123, label %loop.exit170

loop.exit170:                                     ; preds = %loop.latch162
  %split171 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k172 = load i128, i128* %k.bind, align 4
  %mul173 = mul i128 2, %k172
  %sub174 = sub i128 %mul173, 2
  %array_getter175 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split171, i128 0, i128 %sub174, i128 1
  %split176 = load i128, i128* %array_getter175, align 4
  %split177 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k178 = load i128, i128* %k.bind, align 4
  %mul179 = mul i128 2, %k178
  %sub180 = sub i128 %mul179, 3
  %array_getter181 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split177, i128 0, i128 %sub180, i128 2
  %split182 = load i128, i128* %array_getter181, align 4
  %add183 = add i128 %split176, %split182
  %carry184 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k185 = load i128, i128* %k.bind, align 4
  %mul186 = mul i128 2, %k185
  %sub187 = sub i128 %mul186, 2
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %carry184, i128 0, i128 %sub187
  %carry189 = load i128, i128* %array_getter188, align 4
  %add190 = add i128 %add183, %carry189
  %ptr_getter191 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k192 = load i128, i128* %k.bind, align 4
  %mul193 = mul i128 2, %k192
  %sub194 = sub i128 %mul193, 1
  %out195 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter191, i128 0, i128 %sub194
  store i128 %add190, i128* %out195, align 4
  br label %if.exit196

if.exit196:                                       ; preds = %if.false118, %loop.exit170
  %out197 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out197
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_iszero*]** getelementptr ([256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** null, i32 1) to i32))
  %isZeros = bitcast i8* %malloccall to [256 x %struct_template_circuit_iszero*]**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %total = bitcast i8* %malloccall2 to i128*
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall3 to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_iszero** getelementptr (%struct_template_circuit_iszero*, %struct_template_circuit_iszero** null, i32 1) to i32))
  %checkZero = bitcast i8* %malloccall4 to %struct_template_circuit_iszero**
  %k = load i128, i128* %k.bind, align 4
  store i128 %k, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  %ptr_getter = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i5 = load i128, i128* %i, align 4
  %isZeros6 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter, i128 0, i128 %i5
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isZeros6, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i7 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i7
  %in8 = load i128, i128* %array_getter, align 4
  %ptr_getter9 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %ptr_getter9, i128 0, i128 %i10
  %isZeros12 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter11, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros12, i32 0, i32 0
  store i128 %in8, i128* %write_input_outter.iszero.in, align 4
  %isZeros13 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros13, i128 0, i128 %i14
  %isZeros16 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter15, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros16, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %in8, i1* @constraint.39)
  %total18 = load i128, i128* %total, align 4
  %isZeros19 = load [256 x %struct_template_circuit_iszero*]*, [256 x %struct_template_circuit_iszero*]** %isZeros, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x %struct_template_circuit_iszero*], [256 x %struct_template_circuit_iszero*]* %isZeros19, i128 0, i128 %i20
  %isZeros22 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %array_getter21, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isZeros22, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter23, align 4
  %sub = sub i128 %total18, %read_output_outter.iszero.out
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i24 = load i128, i128* %i, align 4
  %add = add i128 %i24, 1
  store i128 %add, i128* %i, align 4
  %i25 = load i128, i128* %i, align 4
  %k26 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i25, %k26
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call27 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call27, %struct_template_circuit_iszero** %checkZero, align 8
  %total28 = load i128, i128* %total, align 4
  %ptr_getter29 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %write_input_outter.iszero.in30 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter29, i32 0, i32 0
  store i128 %total28, i128* %write_input_outter.iszero.in30, align 4
  %checkZero31 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero31, i32 0, i32 0
  %read_input_outter.iszero.in33 = load i128, i128* %struct_getter32, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in33, i128 %total28, i1* @constraint.40)
  %checkZero34 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero34, i32 0, i32 1
  %read_output_outter.iszero.out36 = load i128, i128* %struct_getter35, align 4
  store i128 %read_output_outter.iszero.out36, i128* %out, align 4
  %out37 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out37, i128 %read_output_outter.iszero.out36, i1* @constraint.41)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out38 = load i128, i128* %out, align 4
  %write_output_inner.bigiszero.out = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %0, i32 0, i32 2
  store i128 %out38, i128* %write_output_inner.bigiszero.out, align 4
  ret void
}

define %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %0) {
entry:
  %struct_template_circuit_bigiszero = alloca %struct_template_circuit_bigiszero, align 8
  %write_arg_inner.bigiszero.k = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigiszero.k, align 4
  ret %struct_template_circuit_bigiszero* %struct_template_circuit_bigiszero
}

define void @fn_template_init_isequal(%struct_template_circuit_isequal* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %0, i32 0, i32 0
  %read_input_inner.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.isequal.in, [256 x i128]** %in.bind, align 8
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_iszero** getelementptr (%struct_template_circuit_iszero*, %struct_template_circuit_iszero** null, i32 1) to i32))
  %isz = bitcast i8* %malloccall to %struct_template_circuit_iszero**
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in1 = load i128, i128* %array_getter, align 4
  %in2 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x i128], [256 x i128]* %in2, i128 0, i128 0
  %in4 = load i128, i128* %array_getter3, align 4
  %sub = sub i128 %in1, %in4
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %write_input_outter.iszero.in, align 4
  %isz5 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz5, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter6, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %sub, i1* @constraint.42)
  %isz7 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz7, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter8, align 4
  store i128 %read_output_outter.iszero.out, i128* %out, align 4
  %out9 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out9, i128 %read_output_outter.iszero.out, i1* @constraint.43)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %carryRangeChecks = bitcast i8* %malloccall4 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %carry = bitcast i8* %malloccall5 to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %EPSILON = bitcast i8* %malloccall6 to i128*
  store i128 1, i128* %EPSILON, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %m = load i128, i128* %m.bind, align 4
  %EPSILON7 = load i128, i128* %EPSILON, align 4
  %add = add i128 %m, %EPSILON7
  %n = load i128, i128* %n.bind, align 4
  %sub = sub i128 %add, %n
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %sub)
  %ptr_getter = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i8 = load i128, i128* %i, align 4
  %carryRangeChecks9 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter, i128 0, i128 %i8
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %carryRangeChecks9, align 8
  %i10 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i10, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i11
  %in12 = load i128, i128* %array_getter, align 4
  %n13 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n13
  %sdiv = sdiv i128 %in12, %lshift
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i15 = load i128, i128* %i, align 4
  %carry16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %i15
  store i128 %sdiv, i128* %carry16, align 4
  %in17 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %in17, i128 0, i128 %i18
  %in20 = load i128, i128* %array_getter19, align 4
  %carry21 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %carry21, i128 0, i128 %i22
  %carry24 = load i128, i128* %array_getter23, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %lshift26 = shl i128 1, %n25
  %mul = mul i128 %carry24, %lshift26
  call void @fn_intrinsic_add_constraint(i128 %in20, i128 %mul, i1* @constraint.44)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %in27 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %in27, i128 0, i128 %i28
  %in30 = load i128, i128* %array_getter29, align 4
  %carry31 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i32 = load i128, i128* %i, align 4
  %sub33 = sub i128 %i32, 1
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %carry31, i128 0, i128 %sub33
  %carry35 = load i128, i128* %array_getter34, align 4
  %add36 = add i128 %in30, %carry35
  %n37 = load i128, i128* %n.bind, align 4
  %lshift38 = shl i128 1, %n37
  %sdiv39 = sdiv i128 %add36, %lshift38
  %ptr_getter40 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i41 = load i128, i128* %i, align 4
  %carry42 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter40, i128 0, i128 %i41
  store i128 %sdiv39, i128* %carry42, align 4
  %in43 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %in43, i128 0, i128 %i44
  %in46 = load i128, i128* %array_getter45, align 4
  %carry47 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i48 = load i128, i128* %i, align 4
  %sub49 = sub i128 %i48, 1
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %carry47, i128 0, i128 %sub49
  %carry51 = load i128, i128* %array_getter50, align 4
  %add52 = add i128 %in46, %carry51
  %carry53 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %carry53, i128 0, i128 %i54
  %carry56 = load i128, i128* %array_getter55, align 4
  %n57 = load i128, i128* %n.bind, align 4
  %lshift58 = shl i128 1, %n57
  %mul59 = mul i128 %carry56, %lshift58
  call void @fn_intrinsic_add_constraint(i128 %add52, i128 %mul59, i1* @constraint.45)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %carry60 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %carry60, i128 0, i128 %i61
  %carry63 = load i128, i128* %array_getter62, align 4
  %m64 = load i128, i128* %m.bind, align 4
  %EPSILON65 = load i128, i128* %EPSILON, align 4
  %add66 = add i128 %m64, %EPSILON65
  %n67 = load i128, i128* %n.bind, align 4
  %sub68 = sub i128 %add66, %n67
  %sub69 = sub i128 %sub68, 1
  %lshift70 = shl i128 1, %sub69
  %add71 = add i128 %carry63, %lshift70
  %ptr_getter72 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter72, i128 0, i128 %i73
  %carryRangeChecks75 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter74, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks75, i32 0, i32 1
  store i128 %add71, i128* %write_input_outter.num2bits.in, align 4
  %carryRangeChecks76 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %carryRangeChecks, align 8
  %i77 = load i128, i128* %i, align 4
  %array_getter78 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %carryRangeChecks76, i128 0, i128 %i77
  %carryRangeChecks79 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter78, align 8
  %struct_getter80 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %carryRangeChecks79, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter80, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add71, i1* @constraint.46)
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i81 = load i128, i128* %i, align 4
  %add82 = add i128 %i81, 1
  store i128 %add82, i128* %i, align 4
  %i83 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %sub84 = sub i128 %k, 1
  %slt = icmp slt i128 %i83, %sub84
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %in85 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %k86 = load i128, i128* %k.bind, align 4
  %sub87 = sub i128 %k86, 1
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %in85, i128 0, i128 %sub87
  %in89 = load i128, i128* %array_getter88, align 4
  %carry90 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k91 = load i128, i128* %k.bind, align 4
  %sub92 = sub i128 %k91, 2
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %carry90, i128 0, i128 %sub92
  %carry94 = load i128, i128* %array_getter93, align 4
  %add95 = add i128 %in89, %carry94
  call void @fn_intrinsic_add_constraint(i128 %add95, i128 0, i1* @constraint.47)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_iszero** getelementptr (%struct_template_circuit_iszero*, %struct_template_circuit_iszero** null, i32 1) to i32))
  %isz = bitcast i8* %malloccall to %struct_template_circuit_iszero**
  %call = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call, %struct_template_circuit_iszero** %isz, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %in3 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %in3, i128 0, i128 0
  %in5 = load i128, i128* %array_getter4, align 4
  %sub = sub i128 %in2, %in5
  %ptr_getter = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter, i32 0, i32 0
  store i128 %sub, i128* %write_input_outter.iszero.in, align 4
  %isz6 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz6, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %sub, i1* @constraint.48)
  %isz8 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %isz, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %isz8, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter9, align 4
  %sub10 = sub i128 1, %read_output_outter.iszero.out
  %enabled = load i128, i128* %enabled.bind, align 4
  %mul = mul i128 %sub10, %enabled
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.49)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define %struct_template_circuit_forceequalifenabled* @fn_template_build_forceequalifenabled() {
entry:
  %struct_template_circuit_forceequalifenabled = alloca %struct_template_circuit_forceequalifenabled, align 8
  ret %struct_template_circuit_forceequalifenabled* %struct_template_circuit_forceequalifenabled
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
  %i = alloca i128, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  %sum = alloca [256 x i128]*, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %i1 = load i128, i128* %i, align 4
  %k2 = load i128, i128* %k2.bind, align 4
  %slt = icmp slt i128 %i1, %k2
  br i1 %slt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter5 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i4
  %b6 = load i128, i128* %array_getter5, align 4
  %add = add i128 %a3, %b6
  %carry7 = load i128, i128* %carry, align 4
  %add8 = add i128 %add, %carry7
  %n = load i128, i128* %n.bind, align 4
  %n9 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add8, i128 %n, i128 %n9)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %6 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry10 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry10, i128 0, i128 0
  %sumAndCarry12 = load i128, i128* %array_getter11, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i13 = load i128, i128* %i, align 4
  %sum14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 %sumAndCarry12, i128* %sum14, align 4
  %sumAndCarry15 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry15, i128 0, i128 1
  %sumAndCarry17 = load i128, i128* %array_getter16, align 4
  store i128 %sumAndCarry17, i128* %carry, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %a18 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %a18, i128 0, i128 %i19
  %a21 = load i128, i128* %array_getter20, align 4
  %carry22 = load i128, i128* %carry, align 4
  %add23 = add i128 %a21, %carry22
  %n24 = load i128, i128* %n.bind, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %call26 = call [2 x i128]* @SplitFn(i128 %add23, i128 %n24, i128 %n25)
  %memcpy_ptr27 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %7 = bitcast [256 x i128]** %memcpy_ptr27 to i8*
  %8 = bitcast [2 x i128]* %call26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry28 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry28, i128 0, i128 0
  %sumAndCarry30 = load i128, i128* %array_getter29, align 4
  %ptr_getter31 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i32 = load i128, i128* %i, align 4
  %sum33 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter31, i128 0, i128 %i32
  store i128 %sumAndCarry30, i128* %sum33, align 4
  %sumAndCarry34 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry34, i128 0, i128 1
  %sumAndCarry36 = load i128, i128* %array_getter35, align 4
  store i128 %sumAndCarry36, i128* %carry, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %k1 = load i128, i128* %k1.bind, align 4
  %slt40 = icmp slt i128 %i39, %k1
  br i1 %slt40, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry41 = load i128, i128* %carry, align 4
  %ptr_getter42 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k143 = load i128, i128* %k1.bind, align 4
  %sum44 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter42, i128 0, i128 %k143
  store i128 %carry41, i128* %sum44, align 4
  %sum45 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum45
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
  %small = alloca i128, align 8
  %big = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b_small = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b_big = bitcast i8* %malloccall4 to %struct_template_circuit_num2bits**
  %medium = alloca i128, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b_medium = bitcast i8* %malloccall5 to %struct_template_circuit_num2bits**
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
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %small17, i128* %write_input_outter.num2bits.in, align 4
  %n2b_small18 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small18, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %small17, i1* @constraint.50)
  %m20 = load i128, i128* %m.bind, align 4
  %call21 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m20)
  store %struct_template_circuit_num2bits* %call21, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %medium22 = load i128, i128* %medium, align 4
  %ptr_getter23 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %write_input_outter.num2bits.in24 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter23, i32 0, i32 1
  store i128 %medium22, i128* %write_input_outter.num2bits.in24, align 4
  %n2b_medium25 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_medium, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_medium25, i32 0, i32 1
  %read_input_outter.num2bits.in27 = load i128, i128* %struct_getter26, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in27, i128 %medium22, i1* @constraint.51)
  %k = load i128, i128* %k.bind, align 4
  %call28 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %k)
  store %struct_template_circuit_num2bits* %call28, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big29 = load i128, i128* %big, align 4
  %ptr_getter30 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %write_input_outter.num2bits.in31 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter30, i32 0, i32 1
  store i128 %big29, i128* %write_input_outter.num2bits.in31, align 4
  %n2b_big32 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big32, i32 0, i32 1
  %read_input_outter.num2bits.in34 = load i128, i128* %struct_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in34, i128 %big29, i1* @constraint.52)
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
  call void @fn_intrinsic_add_constraint(i128 %in35, i128 %add47, i1* @constraint.53)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %out = alloca i128, align 8
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
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %sub, i128* %write_input_outter.num2bits.in, align 4
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %sub, i1* @constraint.54)
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %n12 = load i128, i128* %n.bind, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n12
  %n2b14 = load i128, i128* %array_getter13, align 4
  %sub15 = sub i128 1, %n2b14
  store i128 %sub15, i128* %out, align 4
  %out16 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out16, i128 %sub15, i1* @constraint.55)
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
  %sumAndCarry = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %carry = alloca i128, align 8
  %sum = alloca [256 x i128]*, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
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
  %add = add i128 %a2, %b5
  %carry6 = load i128, i128* %carry, align 4
  %add7 = add i128 %add, %carry6
  %n = load i128, i128* %n.bind, align 4
  %n8 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add7, i128 %n, i128 %n8)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %4 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %5 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry9 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry9, i128 0, i128 0
  %sumAndCarry11 = load i128, i128* %array_getter10, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i12 = load i128, i128* %i, align 4
  %sum13 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i12
  store i128 %sumAndCarry11, i128* %sum13, align 4
  %sumAndCarry14 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry14, i128 0, i128 1
  %sumAndCarry16 = load i128, i128* %array_getter15, align 4
  store i128 %sumAndCarry16, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i19, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry20 = load i128, i128* %carry, align 4
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k22 = load i128, i128* %k.bind, align 4
  %sum23 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 %k22
  store i128 %carry20, i128* %sum23, align 4
  %sum24 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum24
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
  %j1 = alloca i128, align 8
  %i = alloca i128, align 8
  %j2 = alloca i128, align 8
  %prod_val = alloca [256 x [256 x i128]]*, align 8
  %i1 = alloca i128, align 8
  %i2 = alloca i128, align 8
  %carry = alloca [256 x [256 x i128]]*, align 8
  %sumAndCarry = alloca [256 x [256 x i128]]*, align 8
  %j = alloca i128, align 8
  %split = alloca [256 x [256 x [256 x i128]]]*, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %prod_val, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch8, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j3 = load i128, i128* %j, align 4
  %i4 = load i128, i128* %i, align 4
  %prod_val5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %j3, i128 %i4
  store i128 0, i128* %prod_val5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body1
  %j6 = load i128, i128* %j, align 4
  %add = add i128 %j6, 1
  store i128 %add, i128* %j, align 4
  %j7 = load i128, i128* %j, align 4
  %l = load i128, i128* %l.bind, align 4
  %mul = mul i128 2, %l
  %sub = sub i128 %mul, 1
  %slt = icmp slt i128 %j7, %sub
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch8

loop.latch8:                                      ; preds = %loop.exit
  %i9 = load i128, i128* %i, align 4
  %add10 = add i128 %i9, 1
  store i128 %add10, i128* %i, align 4
  %i11 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul12 = mul i128 2, %k
  %sub13 = sub i128 %mul12, 1
  %slt14 = icmp slt i128 %i11, %sub13
  br i1 %slt14, label %loop.body, label %loop.exit15

loop.exit15:                                      ; preds = %loop.latch8
  store i128 0, i128* %i1, align 4
  br label %loop.body16

loop.body16:                                      ; preds = %loop.latch67, %loop.exit15
  store i128 0, i128* %i2, align 4
  br label %loop.body17

loop.body17:                                      ; preds = %loop.latch60, %loop.body16
  store i128 0, i128* %j1, align 4
  br label %loop.body18

loop.body18:                                      ; preds = %loop.latch53, %loop.body17
  store i128 0, i128* %j2, align 4
  br label %loop.body19

loop.body19:                                      ; preds = %loop.latch46, %loop.body18
  %prod_val20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j121 = load i128, i128* %j1, align 4
  %j222 = load i128, i128* %j2, align 4
  %add23 = add i128 %j121, %j222
  %i124 = load i128, i128* %i1, align 4
  %i225 = load i128, i128* %i2, align 4
  %add26 = add i128 %i124, %i225
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val20, i128 0, i128 %add23, i128 %add26
  %prod_val27 = load i128, i128* %array_getter, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %j128 = load i128, i128* %j1, align 4
  %i129 = load i128, i128* %i1, align 4
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %j128, i128 %i129
  %a31 = load i128, i128* %array_getter30, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j232 = load i128, i128* %j2, align 4
  %i233 = load i128, i128* %i2, align 4
  %array_getter34 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j232, i128 %i233
  %b35 = load i128, i128* %array_getter34, align 4
  %mul36 = mul i128 %a31, %b35
  %add37 = add i128 %prod_val27, %mul36
  %ptr_getter38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j139 = load i128, i128* %j1, align 4
  %j240 = load i128, i128* %j2, align 4
  %add41 = add i128 %j139, %j240
  %i142 = load i128, i128* %i1, align 4
  %i243 = load i128, i128* %i2, align 4
  %add44 = add i128 %i142, %i243
  %prod_val45 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter38, i128 0, i128 %add41, i128 %add44
  store i128 %add37, i128* %prod_val45, align 4
  br label %loop.latch46

loop.latch46:                                     ; preds = %loop.body19
  %j247 = load i128, i128* %j2, align 4
  %add48 = add i128 %j247, 1
  store i128 %add48, i128* %j2, align 4
  %j249 = load i128, i128* %j2, align 4
  %l50 = load i128, i128* %l.bind, align 4
  %slt51 = icmp slt i128 %j249, %l50
  br i1 %slt51, label %loop.body19, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  br label %loop.latch53

loop.latch53:                                     ; preds = %loop.exit52
  %j154 = load i128, i128* %j1, align 4
  %add55 = add i128 %j154, 1
  store i128 %add55, i128* %j1, align 4
  %j156 = load i128, i128* %j1, align 4
  %l57 = load i128, i128* %l.bind, align 4
  %slt58 = icmp slt i128 %j156, %l57
  br i1 %slt58, label %loop.body18, label %loop.exit59

loop.exit59:                                      ; preds = %loop.latch53
  br label %loop.latch60

loop.latch60:                                     ; preds = %loop.exit59
  %i261 = load i128, i128* %i2, align 4
  %add62 = add i128 %i261, 1
  store i128 %add62, i128* %i2, align 4
  %i263 = load i128, i128* %i2, align 4
  %k64 = load i128, i128* %k.bind, align 4
  %slt65 = icmp slt i128 %i263, %k64
  br i1 %slt65, label %loop.body17, label %loop.exit66

loop.exit66:                                      ; preds = %loop.latch60
  br label %loop.latch67

loop.latch67:                                     ; preds = %loop.exit66
  %i168 = load i128, i128* %i1, align 4
  %add69 = add i128 %i168, 1
  store i128 %add69, i128* %i1, align 4
  %i170 = load i128, i128* %i1, align 4
  %k71 = load i128, i128* %k.bind, align 4
  %slt72 = icmp slt i128 %i170, %k71
  br i1 %slt72, label %loop.body16, label %loop.exit73

loop.exit73:                                      ; preds = %loop.latch67
  %uniform_array74 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array74, [256 x [256 x i128]]** %out, align 8
  %uniform_array75 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array75, [256 x [256 x [256 x i128]]]** %split, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body76

loop.body76:                                      ; preds = %loop.latch98, %loop.exit73
  store i128 0, i128* %i, align 4
  br label %loop.body77

loop.body77:                                      ; preds = %loop.latch89, %loop.body76
  %prod_val78 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %prod_val, align 8
  %j79 = load i128, i128* %j, align 4
  %i80 = load i128, i128* %i, align 4
  %array_getter81 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %prod_val78, i128 0, i128 %j79, i128 %i80
  %prod_val82 = load i128, i128* %array_getter81, align 4
  %n = load i128, i128* %n.bind, align 4
  %n83 = load i128, i128* %n.bind, align 4
  %n84 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %prod_val82, i128 %n, i128 %n83, i128 %n84)
  %ptr_getter85 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j86 = load i128, i128* %j, align 4
  %i87 = load i128, i128* %i, align 4
  %split88 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter85, i128 0, i128 %j86, i128 %i87
  %5 = bitcast [256 x i128]* %split88 to i8*
  %6 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body77
  %i90 = load i128, i128* %i, align 4
  %add91 = add i128 %i90, 1
  store i128 %add91, i128* %i, align 4
  %i92 = load i128, i128* %i, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %mul94 = mul i128 2, %k93
  %sub95 = sub i128 %mul94, 1
  %slt96 = icmp slt i128 %i92, %sub95
  br i1 %slt96, label %loop.body77, label %loop.exit97

loop.exit97:                                      ; preds = %loop.latch89
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.exit97
  %j99 = load i128, i128* %j, align 4
  %add100 = add i128 %j99, 1
  store i128 %add100, i128* %j, align 4
  %j101 = load i128, i128* %j, align 4
  %l102 = load i128, i128* %l.bind, align 4
  %mul103 = mul i128 2, %l102
  %sub104 = sub i128 %mul103, 1
  %slt105 = icmp slt i128 %j101, %sub104
  br i1 %slt105, label %loop.body76, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch98
  %uniform_array107 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array107, [256 x [256 x i128]]** %carry, align 8
  %uniform_array108 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array108, [256 x [256 x i128]]** %sumAndCarry, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body109

loop.body109:                                     ; preds = %loop.latch247, %loop.exit106
  %ptr_getter110 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j111 = load i128, i128* %j, align 4
  %carry112 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter110, i128 0, i128 %j111, i128 0
  store i128 0, i128* %carry112, align 4
  %split113 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j114 = load i128, i128* %j, align 4
  %array_getter115 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split113, i128 0, i128 %j114, i128 0, i128 0
  %split116 = load i128, i128* %array_getter115, align 4
  %ptr_getter117 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j118 = load i128, i128* %j, align 4
  %out119 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter117, i128 0, i128 %j118, i128 0
  store i128 %split116, i128* %out119, align 4
  %k120 = load i128, i128* %k.bind, align 4
  %mul121 = mul i128 2, %k120
  %sub122 = sub i128 %mul121, 1
  %sgt = icmp sgt i128 %sub122, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body109
  %split123 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j124 = load i128, i128* %j, align 4
  %array_getter125 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split123, i128 0, i128 %j124, i128 0, i128 1
  %split126 = load i128, i128* %array_getter125, align 4
  %split127 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j129 = load i128, i128* %j, align 4
  %array_getter130 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split127, i128 0, i128 %j129, i128 1, i128 0
  %split131 = load i128, i128* %array_getter130, align 4
  %add132 = add i128 %split126, %split131
  %n133 = load i128, i128* %n.bind, align 4
  %n134 = load i128, i128* %n.bind, align 4
  %call135 = call [2 x i128]* @SplitFn(i128 %add132, i128 %n133, i128 %n134)
  %ptr_getter136 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j137 = load i128, i128* %j, align 4
  %sumAndCarry138 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter136, i128 0, i128 %j137
  %7 = bitcast [256 x i128]* %sumAndCarry138 to i8*
  %8 = bitcast [2 x i128]* %call135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry139 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j140 = load i128, i128* %j, align 4
  %array_getter141 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry139, i128 0, i128 %j140, i128 0
  %sumAndCarry142 = load i128, i128* %array_getter141, align 4
  %ptr_getter143 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j144 = load i128, i128* %j, align 4
  %out145 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter143, i128 0, i128 %j144, i128 1
  store i128 %sumAndCarry142, i128* %out145, align 4
  %sumAndCarry146 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j147 = load i128, i128* %j, align 4
  %array_getter148 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry146, i128 0, i128 %j147, i128 1
  %sumAndCarry149 = load i128, i128* %array_getter148, align 4
  %ptr_getter150 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j151 = load i128, i128* %j, align 4
  %carry152 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter150, i128 0, i128 %j151, i128 1
  store i128 %sumAndCarry149, i128* %carry152, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body109
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k155 = load i128, i128* %k.bind, align 4
  %mul156 = mul i128 2, %k155
  %sub157 = sub i128 %mul156, 1
  %sgt158 = icmp sgt i128 %sub157, 2
  br i1 %sgt158, label %if.true153, label %if.false154

if.true153:                                       ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body159

if.false154:                                      ; preds = %if.exit
  br label %if.exit246

loop.body159:                                     ; preds = %loop.latch208, %if.true153
  %split160 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j161 = load i128, i128* %j, align 4
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split160, i128 0, i128 %j161, i128 %i162, i128 0
  %split164 = load i128, i128* %array_getter163, align 4
  %split165 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j166 = load i128, i128* %j, align 4
  %i167 = load i128, i128* %i, align 4
  %sub168 = sub i128 %i167, 1
  %array_getter169 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split165, i128 0, i128 %j166, i128 %sub168, i128 1
  %split170 = load i128, i128* %array_getter169, align 4
  %add171 = add i128 %split164, %split170
  %split172 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j173 = load i128, i128* %j, align 4
  %i174 = load i128, i128* %i, align 4
  %sub175 = sub i128 %i174, 2
  %array_getter176 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split172, i128 0, i128 %j173, i128 %sub175, i128 2
  %split177 = load i128, i128* %array_getter176, align 4
  %add178 = add i128 %add171, %split177
  %carry179 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j180 = load i128, i128* %j, align 4
  %i181 = load i128, i128* %i, align 4
  %sub182 = sub i128 %i181, 1
  %array_getter183 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry179, i128 0, i128 %j180, i128 %sub182
  %carry184 = load i128, i128* %array_getter183, align 4
  %add185 = add i128 %add178, %carry184
  %n186 = load i128, i128* %n.bind, align 4
  %n187 = load i128, i128* %n.bind, align 4
  %call188 = call [2 x i128]* @SplitFn(i128 %add185, i128 %n186, i128 %n187)
  %ptr_getter189 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j190 = load i128, i128* %j, align 4
  %sumAndCarry191 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter189, i128 0, i128 %j190
  %9 = bitcast [256 x i128]* %sumAndCarry191 to i8*
  %10 = bitcast [2 x i128]* %call188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry192 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j193 = load i128, i128* %j, align 4
  %array_getter194 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry192, i128 0, i128 %j193, i128 0
  %sumAndCarry195 = load i128, i128* %array_getter194, align 4
  %ptr_getter196 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j197 = load i128, i128* %j, align 4
  %i198 = load i128, i128* %i, align 4
  %out199 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter196, i128 0, i128 %j197, i128 %i198
  store i128 %sumAndCarry195, i128* %out199, align 4
  %sumAndCarry200 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sumAndCarry, align 8
  %j201 = load i128, i128* %j, align 4
  %array_getter202 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sumAndCarry200, i128 0, i128 %j201, i128 1
  %sumAndCarry203 = load i128, i128* %array_getter202, align 4
  %ptr_getter204 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j205 = load i128, i128* %j, align 4
  %i206 = load i128, i128* %i, align 4
  %carry207 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter204, i128 0, i128 %j205, i128 %i206
  store i128 %sumAndCarry203, i128* %carry207, align 4
  br label %loop.latch208

loop.latch208:                                    ; preds = %loop.body159
  %i209 = load i128, i128* %i, align 4
  %add210 = add i128 %i209, 1
  store i128 %add210, i128* %i, align 4
  %i211 = load i128, i128* %i, align 4
  %k212 = load i128, i128* %k.bind, align 4
  %mul213 = mul i128 2, %k212
  %sub214 = sub i128 %mul213, 1
  %slt215 = icmp slt i128 %i211, %sub214
  br i1 %slt215, label %loop.body159, label %loop.exit216

loop.exit216:                                     ; preds = %loop.latch208
  %split217 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j218 = load i128, i128* %j, align 4
  %k219 = load i128, i128* %k.bind, align 4
  %mul220 = mul i128 2, %k219
  %sub221 = sub i128 %mul220, 2
  %array_getter222 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split217, i128 0, i128 %j218, i128 %sub221, i128 1
  %split223 = load i128, i128* %array_getter222, align 4
  %split224 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %split, align 8
  %j225 = load i128, i128* %j, align 4
  %k226 = load i128, i128* %k.bind, align 4
  %mul227 = mul i128 2, %k226
  %sub228 = sub i128 %mul227, 3
  %array_getter229 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %split224, i128 0, i128 %j225, i128 %sub228, i128 2
  %split230 = load i128, i128* %array_getter229, align 4
  %add231 = add i128 %split223, %split230
  %carry232 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %carry, align 8
  %j233 = load i128, i128* %j, align 4
  %k234 = load i128, i128* %k.bind, align 4
  %mul235 = mul i128 2, %k234
  %sub236 = sub i128 %mul235, 2
  %array_getter237 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %carry232, i128 0, i128 %j233, i128 %sub236
  %carry238 = load i128, i128* %array_getter237, align 4
  %add239 = add i128 %add231, %carry238
  %ptr_getter240 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %j241 = load i128, i128* %j, align 4
  %k242 = load i128, i128* %k.bind, align 4
  %mul243 = mul i128 2, %k242
  %sub244 = sub i128 %mul243, 1
  %out245 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter240, i128 0, i128 %j241, i128 %sub244
  store i128 %add239, i128* %out245, align 4
  br label %if.exit246

if.exit246:                                       ; preds = %if.false154, %loop.exit216
  br label %loop.latch247

loop.latch247:                                    ; preds = %if.exit246
  %j248 = load i128, i128* %j, align 4
  %add249 = add i128 %j248, 1
  store i128 %add249, i128* %j, align 4
  %j250 = load i128, i128* %j, align 4
  %l251 = load i128, i128* %l.bind, align 4
  %mul252 = mul i128 2, %l251
  %sub253 = sub i128 %mul252, 1
  %slt254 = icmp slt i128 %j250, %sub253
  br i1 %slt254, label %loop.body109, label %loop.exit255

loop.exit255:                                     ; preds = %loop.latch247
  %out256 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out256
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b_big = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b_small = bitcast i8* %malloccall3 to %struct_template_circuit_num2bits**
  %big = alloca i128, align 8
  %small = alloca i128, align 8
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
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %small8, i128* %write_input_outter.num2bits.in, align 4
  %n2b_small9 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_small, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_small9, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter10, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %small8, i1* @constraint.56)
  %m = load i128, i128* %m.bind, align 4
  %call11 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %m)
  store %struct_template_circuit_num2bits* %call11, %struct_template_circuit_num2bits** %n2b_big, align 8
  %big12 = load i128, i128* %big, align 4
  %ptr_getter13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %write_input_outter.num2bits.in14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter13, i32 0, i32 1
  store i128 %big12, i128* %write_input_outter.num2bits.in14, align 4
  %n2b_big15 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b_big, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b_big15, i32 0, i32 1
  %read_input_outter.num2bits.in17 = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in17, i128 %big12, i1* @constraint.57)
  %in18 = load i128, i128* %in.bind, align 4
  %small19 = load i128, i128* %small, align 4
  %big20 = load i128, i128* %big, align 4
  %n21 = load i128, i128* %n.bind, align 4
  %lshift22 = shl i128 1, %n21
  %mul = mul i128 %big20, %lshift22
  %add = add i128 %small19, %mul
  call void @fn_intrinsic_add_constraint(i128 %in18, i128 %add, i1* @constraint.58)
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

define void @fn_template_init_aliascheck(%struct_template_circuit_aliascheck* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %0, i32 0, i32 0
  %read_input_inner.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.aliascheck.in, [256 x i128]** %in.bind, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_compconstant** getelementptr (%struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** null, i32 1) to i32))
  %compConstant = bitcast i8* %malloccall1 to %struct_template_circuit_compconstant**
  %call = call %struct_template_circuit_compconstant* @fn_template_build_compconstant(i128 -1)
  store %struct_template_circuit_compconstant* %call, %struct_template_circuit_compconstant** %compConstant, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i2
  %in3 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter4 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %ptr_getter, i32 0, i32 1
  %read_input_outter.compconstant.in = load [256 x i128]*, [256 x i128]** %struct_getter4, align 8
  %i5 = load i128, i128* %i, align 4
  %compConstant6 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.compconstant.in, i128 0, i128 %i5
  store i128 %in3, i128* %compConstant6, align 4
  %compConstant7 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant7, i32 0, i32 1
  %read_input_outter.compconstant.in9 = load [256 x i128]*, [256 x i128]** %struct_getter8, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.compconstant.in9, i128 0, i128 %i10
  %compConstant12 = load i128, i128* %array_getter11, align 4
  call void @fn_intrinsic_add_constraint(i128 %compConstant12, i128 %in3, i1* @constraint.59)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i13 = load i128, i128* %i, align 4
  %add = add i128 %i13, 1
  store i128 %add, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i14, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %compConstant15 = load %struct_template_circuit_compconstant*, %struct_template_circuit_compconstant** %compConstant, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_compconstant, %struct_template_circuit_compconstant* %compConstant15, i32 0, i32 2
  %read_output_outter.compconstant.out = load i128, i128* %struct_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.compconstant.out, i128 0, i1* @constraint.60)
  br label %exit

exit:                                             ; preds = %loop.exit
  ret void
}

define %struct_template_circuit_aliascheck* @fn_template_build_aliascheck() {
entry:
  %struct_template_circuit_aliascheck = alloca %struct_template_circuit_aliascheck, align 8
  ret %struct_template_circuit_aliascheck* %struct_template_circuit_aliascheck
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
  %qhat = alloca i128, align 8
  %mult = alloca [256 x i128]*, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %k
  %a1 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %mul = mul i128 %a1, %lshift
  %a2 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %k3 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k3, 1
  %array_getter4 = getelementptr inbounds [256 x i128], [256 x i128]* %a2, i128 0, i128 %sub
  %a5 = load i128, i128* %array_getter4, align 4
  %add = add i128 %mul, %a5
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k6 = load i128, i128* %k.bind, align 4
  %sub7 = sub i128 %k6, 1
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub7
  %b9 = load i128, i128* %array_getter8, align 4
  %sdiv = sdiv i128 %add, %b9
  store i128 %sdiv, i128* %qhat, align 4
  %qhat10 = load i128, i128* %qhat, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %lshift12 = shl i128 1, %n11
  %sub13 = sub i128 %lshift12, 1
  %sgt = icmp sgt i128 %qhat10, %sub13
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n14 = load i128, i128* %n.bind, align 4
  %lshift15 = shl i128 1, %n14
  %sub16 = sub i128 %lshift15, 1
  store i128 %sub16, i128* %qhat, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %qhat19 = load i128, i128* %qhat, align 4
  %b20 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n17, i128 %k18, i128 %qhat19, [256 x i128]* %b20)
  store [256 x i128]* %call, [256 x i128]** %mult, align 8
  %n23 = load i128, i128* %n.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %add25 = add i128 %k24, 1
  %mult26 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a27 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call28 = call i128 @long_gt(i128 %n23, i128 %add25, [256 x i128]* %mult26, [256 x i128]* %a27)
  %eq = icmp eq i128 %call28, 1
  br i1 %eq, label %if.true21, label %if.false22

if.true21:                                        ; preds = %if.exit
  %n29 = load i128, i128* %n.bind, align 4
  %k30 = load i128, i128* %k.bind, align 4
  %add31 = add i128 %k30, 1
  %mult32 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %b33 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call34 = call [256 x i128]* @long_sub(i128 %n29, i128 %add31, [256 x i128]* %mult32, [256 x i128]* %b33)
  store [256 x i128]* %call34, [256 x i128]** %mult, align 8
  %n37 = load i128, i128* %n.bind, align 4
  %k38 = load i128, i128* %k.bind, align 4
  %add39 = add i128 %k38, 1
  %mult40 = load [256 x i128]*, [256 x i128]** %mult, align 8
  %a41 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call42 = call i128 @long_gt(i128 %n37, i128 %add39, [256 x i128]* %mult40, [256 x i128]* %a41)
  %eq43 = icmp eq i128 %call42, 1
  br i1 %eq43, label %if.true35, label %if.false36

if.false22:                                       ; preds = %if.exit
  %qhat48 = load i128, i128* %qhat, align 4
  ret i128 %qhat48

if.true35:                                        ; preds = %if.true21
  %qhat44 = load i128, i128* %qhat, align 4
  %sub45 = sub i128 %qhat44, 2
  ret i128 %sub45

if.false36:                                       ; preds = %if.true21
  %qhat46 = load i128, i128* %qhat, align 4
  %sub47 = sub i128 %qhat46, 1
  ret i128 %sub47
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
  %carry = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %sum = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add4 = add i128 %a, %b
  %c = load i128, i128* %c.bind, align 4
  %add5 = add i128 %add4, %c
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add5, i128* %write_input_outter.num2bits.in, align 4
  %n2b6 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b6, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter7, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add5, i1* @constraint.61)
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %n10 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n10
  %n2b11 = load i128, i128* %array_getter, align 4
  %n2b12 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b12, i32 0, i32 2
  %read_output_outter.num2bits.out14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %n15 = load i128, i128* %n.bind, align 4
  %add16 = add i128 %n15, 1
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out14, i128 0, i128 %add16
  %n2b18 = load i128, i128* %array_getter17, align 4
  %mul = mul i128 2, %n2b18
  %add19 = add i128 %n2b11, %mul
  store i128 %add19, i128* %carry, align 4
  %carry20 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry20, i128 %add19, i1* @constraint.62)
  %a21 = load i128, i128* %a.bind, align 4
  %b22 = load i128, i128* %b.bind, align 4
  %add23 = add i128 %a21, %b22
  %c24 = load i128, i128* %c.bind, align 4
  %add25 = add i128 %add23, %c24
  %carry26 = load i128, i128* %carry, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n27
  %mul28 = mul i128 %carry26, %lshift
  %sub = sub i128 %add25, %mul28
  store i128 %sub, i128* %sum, align 4
  %sum29 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum29, i128 %sub, i1* @constraint.63)
  br label %exit

exit:                                             ; preds = %entry
  %sum30 = load i128, i128* %sum, align 4
  %write_output_inner.modsumthree.sum = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 4
  store i128 %sum30, i128* %write_output_inner.modsumthree.sum, align 4
  %carry31 = load i128, i128* %carry, align 4
  %write_output_inner.modsumthree.carry = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %0, i32 0, i32 5
  store i128 %carry31, i128* %write_output_inner.modsumthree.carry, align 4
  ret void
}

define %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %0) {
entry:
  %struct_template_circuit_modsumthree = alloca %struct_template_circuit_modsumthree, align 8
  %write_arg_inner.modsumthree.n = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsumthree.n, align 4
  ret %struct_template_circuit_modsumthree* %struct_template_circuit_modsumthree
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bits2num** getelementptr (%struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** null, i32 1) to i32))
  %b2n1 = bitcast i8* %malloccall to %struct_template_circuit_bits2num**
  %carry = alloca i128, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bits2num** getelementptr (%struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** null, i32 1) to i32))
  %b2n2 = bitcast i8* %malloccall3 to %struct_template_circuit_bits2num**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall4 to i128*
  %prod = alloca i128, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall5 to %struct_template_circuit_num2bits**
  %n = load i128, i128* %n.bind, align 4
  %mul = mul i128 2, %n
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %mul)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %mul6 = mul i128 %a, %b
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %mul6, i128* %write_input_outter.num2bits.in, align 4
  %n2b7 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b7, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %mul6, i1* @constraint.64)
  %n9 = load i128, i128* %n.bind, align 4
  %call10 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n9)
  store %struct_template_circuit_bits2num* %call10, %struct_template_circuit_bits2num** %b2n1, align 8
  %n11 = load i128, i128* %n.bind, align 4
  %call12 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 %n11)
  store %struct_template_circuit_bits2num* %call12, %struct_template_circuit_bits2num** %b2n2, align 8
  store i128 0, i128* %i, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b13 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b13, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %i15
  %n2b16 = load i128, i128* %array_getter, align 4
  %ptr_getter17 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter17, i32 0, i32 1
  %read_input_outter.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i19 = load i128, i128* %i, align 4
  %b2n120 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in, i128 0, i128 %i19
  store i128 %n2b16, i128* %b2n120, align 4
  %b2n121 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n121, i32 0, i32 1
  %read_input_outter.bits2num.in23 = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in23, i128 0, i128 %i24
  %b2n126 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n126, i128 %n2b16, i1* @constraint.65)
  %n2b27 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b27, i32 0, i32 2
  %read_output_outter.num2bits.out29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %n31 = load i128, i128* %n.bind, align 4
  %add = add i128 %i30, %n31
  %array_getter32 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out29, i128 0, i128 %add
  %n2b33 = load i128, i128* %array_getter32, align 4
  %ptr_getter34 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter34, i32 0, i32 1
  %read_input_outter.bits2num.in36 = load [256 x i128]*, [256 x i128]** %struct_getter35, align 8
  %i37 = load i128, i128* %i, align 4
  %b2n238 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in36, i128 0, i128 %i37
  store i128 %n2b33, i128* %b2n238, align 4
  %b2n239 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n239, i32 0, i32 1
  %read_input_outter.bits2num.in41 = load [256 x i128]*, [256 x i128]** %struct_getter40, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in41, i128 0, i128 %i42
  %b2n244 = load i128, i128* %array_getter43, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n244, i128 %n2b33, i1* @constraint.66)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i45 = load i128, i128* %i, align 4
  %add46 = add i128 %i45, 1
  store i128 %add46, i128* %i, align 4
  %i47 = load i128, i128* %i, align 4
  %n48 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %i47, %n48
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n149 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n1, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n149, i32 0, i32 2
  %read_output_outter.bits2num.out = load i128, i128* %struct_getter50, align 4
  store i128 %read_output_outter.bits2num.out, i128* %prod, align 4
  %prod51 = load i128, i128* %prod, align 4
  call void @fn_intrinsic_add_constraint(i128 %prod51, i128 %read_output_outter.bits2num.out, i1* @constraint.67)
  %b2n252 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n2, align 8
  %struct_getter53 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n252, i32 0, i32 2
  %read_output_outter.bits2num.out54 = load i128, i128* %struct_getter53, align 4
  store i128 %read_output_outter.bits2num.out54, i128* %carry, align 4
  %carry55 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry55, i128 %read_output_outter.bits2num.out54, i1* @constraint.68)
  br label %exit

exit:                                             ; preds = %loop.exit
  %prod56 = load i128, i128* %prod, align 4
  %write_output_inner.modprod.prod = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 3
  store i128 %prod56, i128* %write_output_inner.modprod.prod, align 4
  %carry57 = load i128, i128* %carry, align 4
  %write_output_inner.modprod.carry = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %0, i32 0, i32 4
  store i128 %carry57, i128* %write_output_inner.modprod.carry, align 4
  ret void
}

define %struct_template_circuit_modprod* @fn_template_build_modprod(i128 %0) {
entry:
  %struct_template_circuit_modprod = alloca %struct_template_circuit_modprod, align 8
  %write_arg_inner.modprod.n = getelementptr inbounds %struct_template_circuit_modprod, %struct_template_circuit_modprod* %struct_template_circuit_modprod, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modprod.n, align 4
  ret %struct_template_circuit_modprod* %struct_template_circuit_modprod
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_checkcarrytozero** getelementptr (%struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** null, i32 1) to i32))
  %carry_check = bitcast i8* %malloccall to %struct_template_circuit_checkcarrytozero**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmultshortlongunequal** getelementptr (%struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** null, i32 1) to i32))
  %pX = bitcast i8* %malloccall8 to %struct_template_circuit_bigmultshortlongunequal**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall9 to i128*
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
  %i10 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i10
  %p11 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter12 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %ptr_getter, i32 0, i32 4
  %read_input_outter.bigmultshortlongunequal.a = load [256 x i128]*, [256 x i128]** %struct_getter12, align 8
  %i13 = load i128, i128* %i, align 4
  %pX14 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.a, i128 0, i128 %i13
  store i128 %p11, i128* %pX14, align 4
  %pX15 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter16 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX15, i32 0, i32 4
  %read_input_outter.bigmultshortlongunequal.a17 = load [256 x i128]*, [256 x i128]** %struct_getter16, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.a17, i128 0, i128 %i18
  %pX20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX20, i128 %p11, i1* @constraint.69)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i21 = load i128, i128* %i, align 4
  %add = add i128 %i21, 1
  store i128 %add, i128* %i, align 4
  %i22 = load i128, i128* %i, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i22, %k23
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body24

loop.body24:                                      ; preds = %loop.latch38, %loop.exit
  %X = load [256 x i128]*, [256 x i128]** %X.bind, align 8
  %i25 = load i128, i128* %i, align 4
  %array_getter26 = getelementptr inbounds [256 x i128], [256 x i128]* %X, i128 0, i128 %i25
  %X27 = load i128, i128* %array_getter26, align 4
  %ptr_getter28 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter29 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %ptr_getter28, i32 0, i32 5
  %read_input_outter.bigmultshortlongunequal.b = load [256 x i128]*, [256 x i128]** %struct_getter29, align 8
  %i30 = load i128, i128* %i, align 4
  %pX31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.b, i128 0, i128 %i30
  store i128 %X27, i128* %pX31, align 4
  %pX32 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter33 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX32, i32 0, i32 5
  %read_input_outter.bigmultshortlongunequal.b34 = load [256 x i128]*, [256 x i128]** %struct_getter33, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlongunequal.b34, i128 0, i128 %i35
  %pX37 = load i128, i128* %array_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %pX37, i128 %X27, i1* @constraint.70)
  br label %loop.latch38

loop.latch38:                                     ; preds = %loop.body24
  %i39 = load i128, i128* %i, align 4
  %add40 = add i128 %i39, 1
  store i128 %add40, i128* %i, align 4
  %i41 = load i128, i128* %i, align 4
  %m42 = load i128, i128* %m.bind, align 4
  %slt43 = icmp slt i128 %i41, %m42
  br i1 %slt43, label %loop.body24, label %loop.exit44

loop.exit44:                                      ; preds = %loop.latch38
  %n45 = load i128, i128* %n.bind, align 4
  %overflow46 = load i128, i128* %overflow.bind, align 4
  %add47 = add i128 %overflow46, 1
  %k48 = load i128, i128* %k.bind, align 4
  %m49 = load i128, i128* %m.bind, align 4
  %add50 = add i128 %k48, %m49
  %sub = sub i128 %add50, 1
  %call51 = call %struct_template_circuit_checkcarrytozero* @fn_template_build_checkcarrytozero(i128 %n45, i128 %add47, i128 %sub)
  store %struct_template_circuit_checkcarrytozero* %call51, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body52

loop.body52:                                      ; preds = %loop.latch76, %loop.exit44
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i53
  %in55 = load i128, i128* %array_getter54, align 4
  %pX56 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX56, i32 0, i32 6
  %read_output_outter.bigmultshortlongunequal.out = load [256 x i128]*, [256 x i128]** %struct_getter57, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlongunequal.out, i128 0, i128 %i58
  %pX60 = load i128, i128* %array_getter59, align 4
  %sub61 = sub i128 %in55, %pX60
  %Y = load [256 x i128]*, [256 x i128]** %Y.bind, align 8
  %i62 = load i128, i128* %i, align 4
  %array_getter63 = getelementptr inbounds [256 x i128], [256 x i128]* %Y, i128 0, i128 %i62
  %Y64 = load i128, i128* %array_getter63, align 4
  %sub65 = sub i128 %sub61, %Y64
  %ptr_getter66 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %ptr_getter66, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %i68 = load i128, i128* %i, align 4
  %carry_check69 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in, i128 0, i128 %i68
  store i128 %sub65, i128* %carry_check69, align 4
  %carry_check70 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter71 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %carry_check70, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in72 = load [256 x i128]*, [256 x i128]** %struct_getter71, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in72, i128 0, i128 %i73
  %carry_check75 = load i128, i128* %array_getter74, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check75, i128 %sub65, i1* @constraint.71)
  br label %loop.latch76

loop.latch76:                                     ; preds = %loop.body52
  %i77 = load i128, i128* %i, align 4
  %add78 = add i128 %i77, 1
  store i128 %add78, i128* %i, align 4
  %i79 = load i128, i128* %i, align 4
  %k80 = load i128, i128* %k.bind, align 4
  %slt81 = icmp slt i128 %i79, %k80
  br i1 %slt81, label %loop.body52, label %loop.exit82

loop.exit82:                                      ; preds = %loop.latch76
  %k83 = load i128, i128* %k.bind, align 4
  store i128 %k83, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch102, %loop.exit82
  %pX85 = load %struct_template_circuit_bigmultshortlongunequal*, %struct_template_circuit_bigmultshortlongunequal** %pX, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_bigmultshortlongunequal, %struct_template_circuit_bigmultshortlongunequal* %pX85, i32 0, i32 6
  %read_output_outter.bigmultshortlongunequal.out87 = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %i88 = load i128, i128* %i, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlongunequal.out87, i128 0, i128 %i88
  %pX90 = load i128, i128* %array_getter89, align 4
  %neg = sub i128 0, %pX90
  %ptr_getter91 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter92 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %ptr_getter91, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in93 = load [256 x i128]*, [256 x i128]** %struct_getter92, align 8
  %i94 = load i128, i128* %i, align 4
  %carry_check95 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in93, i128 0, i128 %i94
  store i128 %neg, i128* %carry_check95, align 4
  %carry_check96 = load %struct_template_circuit_checkcarrytozero*, %struct_template_circuit_checkcarrytozero** %carry_check, align 8
  %struct_getter97 = getelementptr inbounds %struct_template_circuit_checkcarrytozero, %struct_template_circuit_checkcarrytozero* %carry_check96, i32 0, i32 3
  %read_input_outter.checkcarrytozero.in98 = load [256 x i128]*, [256 x i128]** %struct_getter97, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrytozero.in98, i128 0, i128 %i99
  %carry_check101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry_check101, i128 %neg, i1* @constraint.72)
  br label %loop.latch102

loop.latch102:                                    ; preds = %loop.body84
  %i103 = load i128, i128* %i, align 4
  %add104 = add i128 %i103, 1
  store i128 %add104, i128* %i, align 4
  %i105 = load i128, i128* %i, align 4
  %k106 = load i128, i128* %k.bind, align 4
  %m107 = load i128, i128* %m.bind, align 4
  %add108 = add i128 %k106, %m107
  %sub109 = sub i128 %add108, 1
  %slt110 = icmp slt i128 %i105, %sub109
  br i1 %slt110, label %loop.body84, label %loop.exit111

loop.exit111:                                     ; preds = %loop.latch102
  br label %exit

exit:                                             ; preds = %loop.exit111
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_lessthan** getelementptr (%struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to %struct_template_circuit_lessthan**
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %lt4 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %in2, i128* %lt4, align 4
  %lt5 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt5, i32 0, i32 1
  %read_input_outter.lessthan.in7 = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in7, i128 0, i128 0
  %lt9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt9, i128 %in2, i1* @constraint.73)
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %ptr_getter13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %lt16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  store i128 %in12, i128* %lt16, align 4
  %lt17 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt17, i32 0, i32 1
  %read_input_outter.lessthan.in19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in19, i128 0, i128 1
  %lt21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt21, i128 %in12, i1* @constraint.74)
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.75)
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
  %carry = alloca i128, align 8
  %sum = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall to %struct_template_circuit_num2bits**
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %n, 2
  %call = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add)
  store %struct_template_circuit_num2bits* %call, %struct_template_circuit_num2bits** %n2b, align 8
  %a = load i128, i128* %a.bind, align 4
  %b = load i128, i128* %b.bind, align 4
  %add5 = add i128 %a, %b
  %c = load i128, i128* %c.bind, align 4
  %add6 = add i128 %add5, %c
  %d = load i128, i128* %d.bind, align 4
  %add7 = add i128 %add6, %d
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %add7, i128* %write_input_outter.num2bits.in, align 4
  %n2b8 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b8, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter9, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add7, i1* @constraint.76)
  %n2b10 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b10, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %n12 = load i128, i128* %n.bind, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %n12
  %n2b13 = load i128, i128* %array_getter, align 4
  %n2b14 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b14, i32 0, i32 2
  %read_output_outter.num2bits.out16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %n17 = load i128, i128* %n.bind, align 4
  %add18 = add i128 %n17, 1
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out16, i128 0, i128 %add18
  %n2b20 = load i128, i128* %array_getter19, align 4
  %mul = mul i128 2, %n2b20
  %add21 = add i128 %n2b13, %mul
  store i128 %add21, i128* %carry, align 4
  %carry22 = load i128, i128* %carry, align 4
  call void @fn_intrinsic_add_constraint(i128 %carry22, i128 %add21, i1* @constraint.77)
  %a23 = load i128, i128* %a.bind, align 4
  %b24 = load i128, i128* %b.bind, align 4
  %add25 = add i128 %a23, %b24
  %c26 = load i128, i128* %c.bind, align 4
  %add27 = add i128 %add25, %c26
  %d28 = load i128, i128* %d.bind, align 4
  %add29 = add i128 %add27, %d28
  %carry30 = load i128, i128* %carry, align 4
  %n31 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n31
  %mul32 = mul i128 %carry30, %lshift
  %sub = sub i128 %add29, %mul32
  store i128 %sub, i128* %sum, align 4
  %sum33 = load i128, i128* %sum, align 4
  call void @fn_intrinsic_add_constraint(i128 %sum33, i128 %sub, i1* @constraint.78)
  br label %exit

exit:                                             ; preds = %entry
  %sum34 = load i128, i128* %sum, align 4
  %write_output_inner.modsumfour.sum = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 5
  store i128 %sum34, i128* %write_output_inner.modsumfour.sum, align 4
  %carry35 = load i128, i128* %carry, align 4
  %write_output_inner.modsumfour.carry = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %0, i32 0, i32 6
  store i128 %carry35, i128* %write_output_inner.modsumfour.carry, align 4
  ret void
}

define %struct_template_circuit_modsumfour* @fn_template_build_modsumfour(i128 %0) {
entry:
  %struct_template_circuit_modsumfour = alloca %struct_template_circuit_modsumfour, align 8
  %write_arg_inner.modsumfour.n = getelementptr inbounds %struct_template_circuit_modsumfour, %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsumfour.n, align 4
  ret %struct_template_circuit_modsumfour* %struct_template_circuit_modsumfour
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_iszero** getelementptr (%struct_template_circuit_iszero*, %struct_template_circuit_iszero** null, i32 1) to i32))
  %checkZero = bitcast i8* %malloccall to %struct_template_circuit_iszero**
  %out = alloca i128, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_isequal*]** getelementptr ([256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** null, i32 1) to i32))
  %isEquals = bitcast i8* %malloccall3 to [256 x %struct_template_circuit_isequal*]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall4 to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %total = bitcast i8* %malloccall5 to i128*
  %k = load i128, i128* %k.bind, align 4
  store i128 %k, i128* %total, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %call = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i6 = load i128, i128* %i, align 4
  %isEquals7 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter, i128 0, i128 %i6
  store %struct_template_circuit_isequal* %call, %struct_template_circuit_isequal** %isEquals7, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %ptr_getter10 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter12 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter10, i128 0, i128 %i11
  %isEquals13 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter12, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals13, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %isEquals15 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  store i128 %a9, i128* %isEquals15, align 4
  %isEquals16 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals16, i128 0, i128 %i17
  %isEquals19 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter18, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals19, i32 0, i32 0
  %read_input_outter.isequal.in21 = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in21, i128 0, i128 0
  %isEquals23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals23, i128 %a9, i1* @constraint.79)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i24
  %b26 = load i128, i128* %array_getter25, align 4
  %ptr_getter27 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter27, i128 0, i128 %i28
  %isEquals30 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter29, align 8
  %struct_getter31 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals30, i32 0, i32 0
  %read_input_outter.isequal.in32 = load [256 x i128]*, [256 x i128]** %struct_getter31, align 8
  %isEquals33 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in32, i128 0, i128 1
  store i128 %b26, i128* %isEquals33, align 4
  %isEquals34 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i35 = load i128, i128* %i, align 4
  %array_getter36 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals34, i128 0, i128 %i35
  %isEquals37 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter36, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals37, i32 0, i32 0
  %read_input_outter.isequal.in39 = load [256 x i128]*, [256 x i128]** %struct_getter38, align 8
  %array_getter40 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in39, i128 0, i128 1
  %isEquals41 = load i128, i128* %array_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEquals41, i128 %b26, i1* @constraint.80)
  %total42 = load i128, i128* %total, align 4
  %isEquals43 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEquals, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEquals43, i128 0, i128 %i44
  %isEquals46 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter45, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEquals46, i32 0, i32 1
  %read_output_outter.isequal.out = load i128, i128* %struct_getter47, align 4
  %sub = sub i128 %total42, %read_output_outter.isequal.out
  store i128 %sub, i128* %total, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i48 = load i128, i128* %i, align 4
  %add = add i128 %i48, 1
  store i128 %add, i128* %i, align 4
  %i49 = load i128, i128* %i, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i49, %k50
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %call51 = call %struct_template_circuit_iszero* @fn_template_build_iszero()
  store %struct_template_circuit_iszero* %call51, %struct_template_circuit_iszero** %checkZero, align 8
  %total52 = load i128, i128* %total, align 4
  %ptr_getter53 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %write_input_outter.iszero.in = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %ptr_getter53, i32 0, i32 0
  store i128 %total52, i128* %write_input_outter.iszero.in, align 4
  %checkZero54 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero54, i32 0, i32 0
  %read_input_outter.iszero.in = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.iszero.in, i128 %total52, i1* @constraint.81)
  %checkZero56 = load %struct_template_circuit_iszero*, %struct_template_circuit_iszero** %checkZero, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_iszero, %struct_template_circuit_iszero* %checkZero56, i32 0, i32 1
  %read_output_outter.iszero.out = load i128, i128* %struct_getter57, align 4
  store i128 %read_output_outter.iszero.out, i128* %out, align 4
  %out58 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out58, i128 %read_output_outter.iszero.out, i1* @constraint.82)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out59 = load i128, i128* %out, align 4
  %write_output_inner.bigisequal.out = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %0, i32 0, i32 3
  store i128 %out59, i128* %write_output_inner.bigisequal.out, align 4
  ret void
}

define %struct_template_circuit_bigisequal* @fn_template_build_bigisequal(i128 %0) {
entry:
  %struct_template_circuit_bigisequal = alloca %struct_template_circuit_bigisequal, align 8
  %write_arg_inner.bigisequal.k = getelementptr inbounds %struct_template_circuit_bigisequal, %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.bigisequal.k, align 4
  ret %struct_template_circuit_bigisequal* %struct_template_circuit_bigisequal
}

define void @fn_template_init_bits2num_strict(%struct_template_circuit_bits2num_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 0
  %read_input_inner.bits2num_strict.in = load [256 x i128]*, [256 x i128]** %struct_getter, align 8
  %in.bind = alloca [256 x i128]*, align 8
  store [256 x i128]* %read_input_inner.bits2num_strict.in, [256 x i128]** %in.bind, align 8
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_aliascheck** getelementptr (%struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** null, i32 1) to i32))
  %aliasCheck = bitcast i8* %malloccall to %struct_template_circuit_aliascheck**
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall1 to i128*
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bits2num** getelementptr (%struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** null, i32 1) to i32))
  %b2n = bitcast i8* %malloccall2 to %struct_template_circuit_bits2num**
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call3 = call %struct_template_circuit_bits2num* @fn_template_build_bits2num(i128 254)
  store %struct_template_circuit_bits2num* %call3, %struct_template_circuit_bits2num** %b2n, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i4 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i4
  %in5 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %ptr_getter, i32 0, i32 1
  %read_input_outter.bits2num.in = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %i7 = load i128, i128* %i, align 4
  %b2n8 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in, i128 0, i128 %i7
  store i128 %in5, i128* %b2n8, align 4
  %b2n9 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n9, i32 0, i32 1
  %read_input_outter.bits2num.in11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i12 = load i128, i128* %i, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bits2num.in11, i128 0, i128 %i12
  %b2n14 = load i128, i128* %array_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %b2n14, i128 %in5, i1* @constraint.83)
  %in15 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %in15, i128 0, i128 %i16
  %in18 = load i128, i128* %array_getter17, align 4
  %ptr_getter19 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter20 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter19, i32 0, i32 0
  %read_input_outter.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter20, align 8
  %i21 = load i128, i128* %i, align 4
  %aliasCheck22 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in, i128 0, i128 %i21
  store i128 %in18, i128* %aliasCheck22, align 4
  %aliasCheck23 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck23, i32 0, i32 0
  %read_input_outter.aliascheck.in25 = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i26 = load i128, i128* %i, align 4
  %array_getter27 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in25, i128 0, i128 %i26
  %aliasCheck28 = load i128, i128* %array_getter27, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck28, i128 %in18, i1* @constraint.84)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i29 = load i128, i128* %i, align 4
  %add = add i128 %i29, 1
  store i128 %add, i128* %i, align 4
  %i30 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i30, 254
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %b2n31 = load %struct_template_circuit_bits2num*, %struct_template_circuit_bits2num** %b2n, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_bits2num, %struct_template_circuit_bits2num* %b2n31, i32 0, i32 2
  %read_output_outter.bits2num.out = load i128, i128* %struct_getter32, align 4
  store i128 %read_output_outter.bits2num.out, i128* %out, align 4
  %out33 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out33, i128 %read_output_outter.bits2num.out, i1* @constraint.85)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out34 = load i128, i128* %out, align 4
  %write_output_inner.bits2num_strict.out = getelementptr inbounds %struct_template_circuit_bits2num_strict, %struct_template_circuit_bits2num_strict* %0, i32 0, i32 1
  store i128 %out34, i128* %write_output_inner.bits2num_strict.out, align 4
  ret void
}

define %struct_template_circuit_bits2num_strict* @fn_template_build_bits2num_strict() {
entry:
  %struct_template_circuit_bits2num_strict = alloca %struct_template_circuit_bits2num_strict, align 8
  ret %struct_template_circuit_bits2num_strict* %struct_template_circuit_bits2num_strict
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %outRangeChecks = bitcast i8* %malloccall to [256 x %struct_template_circuit_num2bits*]**
  %out = alloca [256 x i128]*, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %runningCarryRangeChecks = bitcast i8* %malloccall3 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %sumAndCarry = bitcast i8* %malloccall4 to [256 x i128]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %split = bitcast i8* %malloccall5 to [256 x [256 x i128]]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %runningCarry = bitcast i8* %malloccall6 to [256 x i128]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall7 to i128*
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %carry = bitcast i8* %malloccall8 to [256 x i128]**
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %split, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i9
  %in10 = load i128, i128* %array_getter, align 4
  %n = load i128, i128* %n.bind, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %n12 = load i128, i128* %n.bind, align 4
  %call = call [3 x i128]* @SplitThreeFn(i128 %in10, i128 %n, i128 %n11, i128 %n12)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i13 = load i128, i128* %i, align 4
  %split14 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 %i13
  %1 = bitcast [256 x i128]* %split14 to i8*
  %2 = bitcast [3 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([3 x i128]* getelementptr ([3 x i128], [3 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i15 = load i128, i128* %i, align 4
  %add = add i128 %i15, 1
  store i128 %add, i128* %i, align 4
  %i16 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i16, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array17 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array17, [256 x i128]** %carry, align 8
  %ptr_getter18 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry19 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter18, i128 0, i128 0
  store i128 0, i128* %carry19, align 4
  %split20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter21 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split20, i128 0, i128 0, i128 0
  %split22 = load i128, i128* %array_getter21, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 0
  store i128 %split22, i128* %out24, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %sgt = icmp sgt i128 %k25, 1
  br i1 %sgt, label %if.true, label %if.false

if.true:                                          ; preds = %loop.exit
  %split26 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter27 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split26, i128 0, i128 0, i128 1
  %split28 = load i128, i128* %array_getter27, align 4
  %split29 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split29, i128 0, i128 1, i128 0
  %split31 = load i128, i128* %array_getter30, align 4
  %add32 = add i128 %split28, %split31
  %n33 = load i128, i128* %n.bind, align 4
  %n34 = load i128, i128* %n.bind, align 4
  %call35 = call [2 x i128]* @SplitFn(i128 %add32, i128 %n33, i128 %n34)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %3 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %4 = bitcast [2 x i128]* %call35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry36 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter37 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry36, i128 0, i128 0
  %sumAndCarry38 = load i128, i128* %array_getter37, align 4
  %ptr_getter39 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out40 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter39, i128 0, i128 1
  store i128 %sumAndCarry38, i128* %out40, align 4
  %sumAndCarry41 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry41, i128 0, i128 1
  %sumAndCarry43 = load i128, i128* %array_getter42, align 4
  %ptr_getter44 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %carry45 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter44, i128 0, i128 1
  store i128 %sumAndCarry43, i128* %carry45, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.exit
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %k48 = load i128, i128* %k.bind, align 4
  %sgt49 = icmp sgt i128 %k48, 2
  br i1 %sgt49, label %if.true46, label %if.false47

if.true46:                                        ; preds = %if.exit
  store i128 2, i128* %i, align 4
  br label %loop.body50

if.false47:                                       ; preds = %if.exit
  br label %if.exit115

loop.body50:                                      ; preds = %loop.latch88, %if.true46
  %split51 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i52 = load i128, i128* %i, align 4
  %array_getter53 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split51, i128 0, i128 %i52, i128 0
  %split54 = load i128, i128* %array_getter53, align 4
  %split55 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i56 = load i128, i128* %i, align 4
  %sub = sub i128 %i56, 1
  %array_getter57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split55, i128 0, i128 %sub, i128 1
  %split58 = load i128, i128* %array_getter57, align 4
  %add59 = add i128 %split54, %split58
  %split60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %i61 = load i128, i128* %i, align 4
  %sub62 = sub i128 %i61, 2
  %array_getter63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split60, i128 0, i128 %sub62, i128 2
  %split64 = load i128, i128* %array_getter63, align 4
  %add65 = add i128 %add59, %split64
  %carry66 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i67 = load i128, i128* %i, align 4
  %sub68 = sub i128 %i67, 1
  %array_getter69 = getelementptr inbounds [256 x i128], [256 x i128]* %carry66, i128 0, i128 %sub68
  %carry70 = load i128, i128* %array_getter69, align 4
  %add71 = add i128 %add65, %carry70
  %n72 = load i128, i128* %n.bind, align 4
  %n73 = load i128, i128* %n.bind, align 4
  %call74 = call [2 x i128]* @SplitFn(i128 %add71, i128 %n72, i128 %n73)
  %memcpy_ptr75 = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %5 = bitcast [256 x i128]** %memcpy_ptr75 to i8*
  %6 = bitcast [2 x i128]* %call74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry76 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter77 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry76, i128 0, i128 0
  %sumAndCarry78 = load i128, i128* %array_getter77, align 4
  %ptr_getter79 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i80 = load i128, i128* %i, align 4
  %out81 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter79, i128 0, i128 %i80
  store i128 %sumAndCarry78, i128* %out81, align 4
  %sumAndCarry82 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter83 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry82, i128 0, i128 1
  %sumAndCarry84 = load i128, i128* %array_getter83, align 4
  %ptr_getter85 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %i86 = load i128, i128* %i, align 4
  %carry87 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter85, i128 0, i128 %i86
  store i128 %sumAndCarry84, i128* %carry87, align 4
  br label %loop.latch88

loop.latch88:                                     ; preds = %loop.body50
  %i89 = load i128, i128* %i, align 4
  %add90 = add i128 %i89, 1
  store i128 %add90, i128* %i, align 4
  %i91 = load i128, i128* %i, align 4
  %k92 = load i128, i128* %k.bind, align 4
  %slt93 = icmp slt i128 %i91, %k92
  br i1 %slt93, label %loop.body50, label %loop.exit94

loop.exit94:                                      ; preds = %loop.latch88
  %split95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k96 = load i128, i128* %k.bind, align 4
  %sub97 = sub i128 %k96, 1
  %array_getter98 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split95, i128 0, i128 %sub97, i128 1
  %split99 = load i128, i128* %array_getter98, align 4
  %split100 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %split, align 8
  %k101 = load i128, i128* %k.bind, align 4
  %sub102 = sub i128 %k101, 2
  %array_getter103 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %split100, i128 0, i128 %sub102, i128 2
  %split104 = load i128, i128* %array_getter103, align 4
  %add105 = add i128 %split99, %split104
  %carry106 = load [256 x i128]*, [256 x i128]** %carry, align 8
  %k107 = load i128, i128* %k.bind, align 4
  %sub108 = sub i128 %k107, 1
  %array_getter109 = getelementptr inbounds [256 x i128], [256 x i128]* %carry106, i128 0, i128 %sub108
  %carry110 = load i128, i128* %array_getter109, align 4
  %add111 = add i128 %add105, %carry110
  %ptr_getter112 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k113 = load i128, i128* %k.bind, align 4
  %out114 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter112, i128 0, i128 %k113
  store i128 %add111, i128* %out114, align 4
  br label %if.exit115

if.exit115:                                       ; preds = %if.false47, %loop.exit94
  store i128 0, i128* %i, align 4
  br label %loop.body116

loop.body116:                                     ; preds = %loop.latch135, %if.exit115
  %n117 = load i128, i128* %n.bind, align 4
  %call118 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n117)
  %ptr_getter119 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i120 = load i128, i128* %i, align 4
  %outRangeChecks121 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter119, i128 0, i128 %i120
  store %struct_template_circuit_num2bits* %call118, %struct_template_circuit_num2bits** %outRangeChecks121, align 8
  %out122 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i123 = load i128, i128* %i, align 4
  %array_getter124 = getelementptr inbounds [256 x i128], [256 x i128]* %out122, i128 0, i128 %i123
  %out125 = load i128, i128* %array_getter124, align 4
  %ptr_getter126 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i127 = load i128, i128* %i, align 4
  %array_getter128 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter126, i128 0, i128 %i127
  %outRangeChecks129 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter128, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks129, i32 0, i32 1
  store i128 %out125, i128* %write_input_outter.num2bits.in, align 4
  %outRangeChecks130 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %outRangeChecks, align 8
  %i131 = load i128, i128* %i, align 4
  %array_getter132 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %outRangeChecks130, i128 0, i128 %i131
  %outRangeChecks133 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter132, align 8
  %struct_getter134 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %outRangeChecks133, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter134, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out125, i1* @constraint.86)
  br label %loop.latch135

loop.latch135:                                    ; preds = %loop.body116
  %i136 = load i128, i128* %i, align 4
  %add137 = add i128 %i136, 1
  store i128 %add137, i128* %i, align 4
  %i138 = load i128, i128* %i, align 4
  %k139 = load i128, i128* %k.bind, align 4
  %add140 = add i128 %k139, 1
  %slt141 = icmp slt i128 %i138, %add140
  br i1 %slt141, label %loop.body116, label %loop.exit142

loop.exit142:                                     ; preds = %loop.latch135
  %in143 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %in143, i128 0, i128 0
  %in145 = load i128, i128* %array_getter144, align 4
  %out146 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter147 = getelementptr inbounds [256 x i128], [256 x i128]* %out146, i128 0, i128 0
  %out148 = load i128, i128* %array_getter147, align 4
  %sub149 = sub i128 %in145, %out148
  %n150 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n150
  %sdiv = sdiv i128 %sub149, %lshift
  %ptr_getter151 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %runningCarry152 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter151, i128 0, i128 0
  store i128 %sdiv, i128* %runningCarry152, align 4
  %n153 = load i128, i128* %n.bind, align 4
  %k154 = load i128, i128* %k.bind, align 4
  %call155 = call i128 @log_ceil(i128 %k154)
  %add156 = add i128 %n153, %call155
  %call157 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add156)
  %ptr_getter158 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %runningCarryRangeChecks159 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter158, i128 0, i128 0
  store %struct_template_circuit_num2bits* %call157, %struct_template_circuit_num2bits** %runningCarryRangeChecks159, align 8
  %runningCarry160 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %array_getter161 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry160, i128 0, i128 0
  %runningCarry162 = load i128, i128* %array_getter161, align 4
  %ptr_getter163 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter164 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter163, i128 0, i128 0
  %runningCarryRangeChecks165 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter164, align 8
  %write_input_outter.num2bits.in166 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks165, i32 0, i32 1
  store i128 %runningCarry162, i128* %write_input_outter.num2bits.in166, align 4
  %runningCarryRangeChecks167 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %array_getter168 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks167, i128 0, i128 0
  %runningCarryRangeChecks169 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter168, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks169, i32 0, i32 1
  %read_input_outter.num2bits.in171 = load i128, i128* %struct_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in171, i128 %runningCarry162, i1* @constraint.87)
  %runningCarry172 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %array_getter173 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry172, i128 0, i128 0
  %runningCarry174 = load i128, i128* %array_getter173, align 4
  %n175 = load i128, i128* %n.bind, align 4
  %lshift176 = shl i128 1, %n175
  %mul = mul i128 %runningCarry174, %lshift176
  %in177 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter178 = getelementptr inbounds [256 x i128], [256 x i128]* %in177, i128 0, i128 0
  %in179 = load i128, i128* %array_getter178, align 4
  %out180 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %out180, i128 0, i128 0
  %out182 = load i128, i128* %array_getter181, align 4
  %sub183 = sub i128 %in179, %out182
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 %sub183, i1* @constraint.88)
  store i128 1, i128* %i, align 4
  br label %loop.body184

loop.body184:                                     ; preds = %loop.latch251, %loop.exit142
  %in185 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i186 = load i128, i128* %i, align 4
  %array_getter187 = getelementptr inbounds [256 x i128], [256 x i128]* %in185, i128 0, i128 %i186
  %in188 = load i128, i128* %array_getter187, align 4
  %out189 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i190 = load i128, i128* %i, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %out189, i128 0, i128 %i190
  %out192 = load i128, i128* %array_getter191, align 4
  %sub193 = sub i128 %in188, %out192
  %runningCarry194 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i195 = load i128, i128* %i, align 4
  %sub196 = sub i128 %i195, 1
  %array_getter197 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry194, i128 0, i128 %sub196
  %runningCarry198 = load i128, i128* %array_getter197, align 4
  %add199 = add i128 %sub193, %runningCarry198
  %n200 = load i128, i128* %n.bind, align 4
  %lshift201 = shl i128 1, %n200
  %sdiv202 = sdiv i128 %add199, %lshift201
  %ptr_getter203 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i204 = load i128, i128* %i, align 4
  %runningCarry205 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter203, i128 0, i128 %i204
  store i128 %sdiv202, i128* %runningCarry205, align 4
  %n206 = load i128, i128* %n.bind, align 4
  %k207 = load i128, i128* %k.bind, align 4
  %call208 = call i128 @log_ceil(i128 %k207)
  %add209 = add i128 %n206, %call208
  %call210 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add209)
  %ptr_getter211 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i212 = load i128, i128* %i, align 4
  %runningCarryRangeChecks213 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter211, i128 0, i128 %i212
  store %struct_template_circuit_num2bits* %call210, %struct_template_circuit_num2bits** %runningCarryRangeChecks213, align 8
  %runningCarry214 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i215 = load i128, i128* %i, align 4
  %array_getter216 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry214, i128 0, i128 %i215
  %runningCarry217 = load i128, i128* %array_getter216, align 4
  %ptr_getter218 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i219 = load i128, i128* %i, align 4
  %array_getter220 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter218, i128 0, i128 %i219
  %runningCarryRangeChecks221 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter220, align 8
  %write_input_outter.num2bits.in222 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks221, i32 0, i32 1
  store i128 %runningCarry217, i128* %write_input_outter.num2bits.in222, align 4
  %runningCarryRangeChecks223 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %runningCarryRangeChecks, align 8
  %i224 = load i128, i128* %i, align 4
  %array_getter225 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %runningCarryRangeChecks223, i128 0, i128 %i224
  %runningCarryRangeChecks226 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter225, align 8
  %struct_getter227 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %runningCarryRangeChecks226, i32 0, i32 1
  %read_input_outter.num2bits.in228 = load i128, i128* %struct_getter227, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in228, i128 %runningCarry217, i1* @constraint.89)
  %runningCarry229 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i230 = load i128, i128* %i, align 4
  %array_getter231 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry229, i128 0, i128 %i230
  %runningCarry232 = load i128, i128* %array_getter231, align 4
  %n233 = load i128, i128* %n.bind, align 4
  %lshift234 = shl i128 1, %n233
  %mul235 = mul i128 %runningCarry232, %lshift234
  %in236 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i237 = load i128, i128* %i, align 4
  %array_getter238 = getelementptr inbounds [256 x i128], [256 x i128]* %in236, i128 0, i128 %i237
  %in239 = load i128, i128* %array_getter238, align 4
  %out240 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i241 = load i128, i128* %i, align 4
  %array_getter242 = getelementptr inbounds [256 x i128], [256 x i128]* %out240, i128 0, i128 %i241
  %out243 = load i128, i128* %array_getter242, align 4
  %sub244 = sub i128 %in239, %out243
  %runningCarry245 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %i246 = load i128, i128* %i, align 4
  %sub247 = sub i128 %i246, 1
  %array_getter248 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry245, i128 0, i128 %sub247
  %runningCarry249 = load i128, i128* %array_getter248, align 4
  %add250 = add i128 %sub244, %runningCarry249
  call void @fn_intrinsic_add_constraint(i128 %mul235, i128 %add250, i1* @constraint.90)
  br label %loop.latch251

loop.latch251:                                    ; preds = %loop.body184
  %i252 = load i128, i128* %i, align 4
  %add253 = add i128 %i252, 1
  store i128 %add253, i128* %i, align 4
  %i254 = load i128, i128* %i, align 4
  %k255 = load i128, i128* %k.bind, align 4
  %slt256 = icmp slt i128 %i254, %k255
  br i1 %slt256, label %loop.body184, label %loop.exit257

loop.exit257:                                     ; preds = %loop.latch251
  %runningCarry258 = load [256 x i128]*, [256 x i128]** %runningCarry, align 8
  %k259 = load i128, i128* %k.bind, align 4
  %sub260 = sub i128 %k259, 1
  %array_getter261 = getelementptr inbounds [256 x i128], [256 x i128]* %runningCarry258, i128 0, i128 %sub260
  %runningCarry262 = load i128, i128* %array_getter261, align 4
  %out263 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k264 = load i128, i128* %k.bind, align 4
  %array_getter265 = getelementptr inbounds [256 x i128], [256 x i128]* %out263, i128 0, i128 %k264
  %out266 = load i128, i128* %array_getter265, align 4
  call void @fn_intrinsic_add_constraint(i128 %runningCarry262, i128 %out266, i1* @constraint.91)
  br label %exit

exit:                                             ; preds = %loop.exit257
  %out267 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.longtoshortnoendcarry.out = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %0, i32 0, i32 3
  store [256 x i128]* %out267, [256 x i128]** %write_output_inner.longtoshortnoendcarry.out, align 8
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
  %i = alloca i128, align 8
  %sum = alloca [256 x i128]*, align 8
  %sumAndCarry = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  store i128 0, i128* %carry, align 4
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %sum, align 8
  store i128 0, i128* %i, align 4
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
  %add = add i128 %a2, %b5
  %c = load [256 x i128]*, [256 x i128]** %c.bind, align 8
  %i6 = load i128, i128* %i, align 4
  %array_getter7 = getelementptr inbounds [256 x i128], [256 x i128]* %c, i128 0, i128 %i6
  %c8 = load i128, i128* %array_getter7, align 4
  %add9 = add i128 %add, %c8
  %d = load [256 x i128]*, [256 x i128]** %d.bind, align 8
  %i10 = load i128, i128* %i, align 4
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %d, i128 0, i128 %i10
  %d12 = load i128, i128* %array_getter11, align 4
  %add13 = add i128 %add9, %d12
  %carry14 = load i128, i128* %carry, align 4
  %add15 = add i128 %add13, %carry14
  %n = load i128, i128* %n.bind, align 4
  %n16 = load i128, i128* %n.bind, align 4
  %call = call [2 x i128]* @SplitFn(i128 %add15, i128 %n, i128 %n16)
  %memcpy_ptr = getelementptr inbounds [256 x i128]*, [256 x i128]** %sumAndCarry, i128 0
  %6 = bitcast [256 x i128]** %memcpy_ptr to i8*
  %7 = bitcast [2 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([2 x i128]* getelementptr ([2 x i128], [2 x i128]* null, i32 1) to i64), i1 false)
  %sumAndCarry17 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry17, i128 0, i128 0
  %sumAndCarry19 = load i128, i128* %array_getter18, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %sum, align 8
  %i20 = load i128, i128* %i, align 4
  %sum21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i20
  store i128 %sumAndCarry19, i128* %sum21, align 4
  %sumAndCarry22 = load [256 x i128]*, [256 x i128]** %sumAndCarry, align 8
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %sumAndCarry22, i128 0, i128 1
  %sumAndCarry24 = load i128, i128* %array_getter23, align 4
  store i128 %sumAndCarry24, i128* %carry, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i25 = load i128, i128* %i, align 4
  %add26 = add i128 %i25, 1
  store i128 %add26, i128* %i, align 4
  %i27 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i27, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %carry28 = load i128, i128* %carry, align 4
  %ptr_getter29 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %k30 = load i128, i128* %k.bind, align 4
  %sum31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter29, i128 0, i128 %k30
  store i128 %carry28, i128* %sum31, align 4
  %sum32 = load [256 x i128]*, [256 x i128]** %sum, align 8
  ret [256 x i128]* %sum32
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
  %out = alloca i128, align 8
  %borrow = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_lessthan** getelementptr (%struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to %struct_template_circuit_lessthan**
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a = load i128, i128* %a.bind, align 4
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %lt4 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %a, i128* %lt4, align 4
  %lt5 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt5, i32 0, i32 1
  %read_input_outter.lessthan.in7 = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in7, i128 0, i128 0
  %lt8 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt8, i128 %a, i1* @constraint.92)
  %b = load i128, i128* %b.bind, align 4
  %ptr_getter9 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter9, i32 0, i32 1
  %read_input_outter.lessthan.in11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %lt12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in11, i128 0, i128 1
  store i128 %b, i128* %lt12, align 4
  %lt13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  %lt17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt17, i128 %b, i1* @constraint.93)
  %lt18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt18, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter19, align 4
  store i128 %read_output_outter.lessthan.out, i128* %borrow, align 4
  %borrow20 = load i128, i128* %borrow, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow20, i128 %read_output_outter.lessthan.out, i1* @constraint.94)
  %borrow21 = load i128, i128* %borrow, align 4
  %n22 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n22
  %mul = mul i128 %borrow21, %lshift
  %a23 = load i128, i128* %a.bind, align 4
  %add = add i128 %mul, %a23
  %b24 = load i128, i128* %b.bind, align 4
  %sub = sub i128 %add, %b24
  store i128 %sub, i128* %out, align 4
  %out25 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out25, i128 %sub, i1* @constraint.95)
  br label %exit

exit:                                             ; preds = %entry
  %out26 = load i128, i128* %out, align 4
  %write_output_inner.modsub.out = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 3
  store i128 %out26, i128* %write_output_inner.modsub.out, align 4
  %borrow27 = load i128, i128* %borrow, align 4
  %write_output_inner.modsub.borrow = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %0, i32 0, i32 4
  store i128 %borrow27, i128* %write_output_inner.modsub.borrow, align 4
  ret void
}

define %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %0) {
entry:
  %struct_template_circuit_modsub = alloca %struct_template_circuit_modsub, align 8
  %write_arg_inner.modsub.n = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %struct_template_circuit_modsub, i32 0, i32 0
  store i128 %0, i128* %write_arg_inner.modsub.n, align 4
  ret %struct_template_circuit_modsub* %struct_template_circuit_modsub
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_lessthan** getelementptr (%struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to %struct_template_circuit_lessthan**
  %out = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 0
  %in2 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %lt4 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %in2, i128* %lt4, align 4
  %lt5 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt5, i32 0, i32 1
  %read_input_outter.lessthan.in7 = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in7, i128 0, i128 0
  %lt9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt9, i128 %in2, i1* @constraint.96)
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 1
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %ptr_getter13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %lt16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  store i128 %add, i128* %lt16, align 4
  %lt17 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt17, i32 0, i32 1
  %read_input_outter.lessthan.in19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in19, i128 0, i128 1
  %lt21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt21, i128 %add, i1* @constraint.97)
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.98)
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_lessthan** getelementptr (%struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to %struct_template_circuit_lessthan**
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %n)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 1
  %in2 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter3 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter3, align 8
  %lt4 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %in2, i128* %lt4, align 4
  %lt5 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter6 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt5, i32 0, i32 1
  %read_input_outter.lessthan.in7 = load [256 x i128]*, [256 x i128]** %struct_getter6, align 8
  %array_getter8 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in7, i128 0, i128 0
  %lt9 = load i128, i128* %array_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt9, i128 %in2, i1* @constraint.99)
  %in10 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter11 = getelementptr inbounds [256 x i128], [256 x i128]* %in10, i128 0, i128 0
  %in12 = load i128, i128* %array_getter11, align 4
  %add = add i128 %in12, 1
  %ptr_getter13 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter13, i32 0, i32 1
  %read_input_outter.lessthan.in15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %lt16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in15, i128 0, i128 1
  store i128 %add, i128* %lt16, align 4
  %lt17 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt17, i32 0, i32 1
  %read_input_outter.lessthan.in19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in19, i128 0, i128 1
  %lt21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt21, i128 %add, i1* @constraint.100)
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter23, align 4
  store i128 %read_output_outter.lessthan.out, i128* %out, align 4
  %out24 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out24, i128 %read_output_outter.lessthan.out, i1* @constraint.101)
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %out = alloca [256 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_modsumthree*]** getelementptr ([256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** null, i32 1) to i32))
  %unit = bitcast i8* %malloccall4 to [256 x %struct_template_circuit_modsumthree*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_modsum** getelementptr (%struct_template_circuit_modsum*, %struct_template_circuit_modsum** null, i32 1) to i32))
  %unit0 = bitcast i8* %malloccall5 to %struct_template_circuit_modsum**
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_modsum* @fn_template_build_modsum(i128 %n)
  store %struct_template_circuit_modsum* %call, %struct_template_circuit_modsum** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a6 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %write_input_outter.modsum.a = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter, i32 0, i32 1
  store i128 %a6, i128* %write_input_outter.modsum.a, align 4
  %unit07 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit07, i32 0, i32 1
  %read_input_outter.modsum.a = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsum.a, i128 %a6, i1* @constraint.102)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b10 = load i128, i128* %array_getter9, align 4
  %ptr_getter11 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %write_input_outter.modsum.b = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %ptr_getter11, i32 0, i32 2
  store i128 %b10, i128* %write_input_outter.modsum.b, align 4
  %unit012 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit012, i32 0, i32 2
  %read_input_outter.modsum.b = load i128, i128* %struct_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsum.b, i128 %b10, i1* @constraint.103)
  %unit014 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit014, i32 0, i32 3
  %read_output_outter.modsum.sum = load i128, i128* %struct_getter15, align 4
  %ptr_getter16 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter16, i128 0, i128 0
  store i128 %read_output_outter.modsum.sum, i128* %out17, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %read_output_outter.modsum.sum, i1* @constraint.104)
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n21 = load i128, i128* %n.bind, align 4
  %call22 = call %struct_template_circuit_modsumthree* @fn_template_build_modsumthree(i128 %n21)
  %ptr_getter23 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i24 = load i128, i128* %i, align 4
  %sub = sub i128 %i24, 1
  %unit25 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter23, i128 0, i128 %sub
  store %struct_template_circuit_modsumthree* %call22, %struct_template_circuit_modsumthree** %unit25, align 8
  %a26 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a26, i128 0, i128 %i27
  %a29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i31 = load i128, i128* %i, align 4
  %sub32 = sub i128 %i31, 1
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter30, i128 0, i128 %sub32
  %unit34 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter33, align 8
  %write_input_outter.modsumthree.a = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit34, i32 0, i32 1
  store i128 %a29, i128* %write_input_outter.modsumthree.a, align 4
  %unit35 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i36 = load i128, i128* %i, align 4
  %sub37 = sub i128 %i36, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit39, i32 0, i32 1
  %read_input_outter.modsumthree.a = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.a, i128 %a29, i1* @constraint.105)
  %b41 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %b41, i128 0, i128 %i42
  %b44 = load i128, i128* %array_getter43, align 4
  %ptr_getter45 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i46 = load i128, i128* %i, align 4
  %sub47 = sub i128 %i46, 1
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter45, i128 0, i128 %sub47
  %unit49 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter48, align 8
  %write_input_outter.modsumthree.b = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit49, i32 0, i32 2
  store i128 %b44, i128* %write_input_outter.modsumthree.b, align 4
  %unit50 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit54, i32 0, i32 2
  %read_input_outter.modsumthree.b = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.b, i128 %b44, i1* @constraint.106)
  %i56 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i56, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit057 = load %struct_template_circuit_modsum*, %struct_template_circuit_modsum** %unit0, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_modsum, %struct_template_circuit_modsum* %unit057, i32 0, i32 4
  %read_output_outter.modsum.carry = load i128, i128* %struct_getter58, align 4
  %ptr_getter59 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i60 = load i128, i128* %i, align 4
  %sub61 = sub i128 %i60, 1
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter59, i128 0, i128 %sub61
  %unit63 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter62, align 8
  %write_input_outter.modsumthree.c = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit63, i32 0, i32 3
  store i128 %read_output_outter.modsum.carry, i128* %write_input_outter.modsumthree.c, align 4
  %unit64 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit68, i32 0, i32 3
  %read_input_outter.modsumthree.c = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.c, i128 %read_output_outter.modsum.carry, i1* @constraint.107)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit70 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i71 = load i128, i128* %i, align 4
  %sub72 = sub i128 %i71, 2
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit74, i32 0, i32 5
  %read_output_outter.modsumthree.carry = load i128, i128* %struct_getter75, align 4
  %ptr_getter76 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i77 = load i128, i128* %i, align 4
  %sub78 = sub i128 %i77, 1
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %ptr_getter76, i128 0, i128 %sub78
  %unit80 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter79, align 8
  %write_input_outter.modsumthree.c81 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit80, i32 0, i32 3
  store i128 %read_output_outter.modsumthree.carry, i128* %write_input_outter.modsumthree.c81, align 4
  %unit82 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i83 = load i128, i128* %i, align 4
  %sub84 = sub i128 %i83, 1
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit82, i128 0, i128 %sub84
  %unit86 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter85, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit86, i32 0, i32 3
  %read_input_outter.modsumthree.c88 = load i128, i128* %struct_getter87, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsumthree.c88, i128 %read_output_outter.modsumthree.carry, i1* @constraint.108)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit89 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %i90 = load i128, i128* %i, align 4
  %sub91 = sub i128 %i90, 1
  %array_getter92 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit89, i128 0, i128 %sub91
  %unit93 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter92, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit93, i32 0, i32 4
  %read_output_outter.modsumthree.sum = load i128, i128* %struct_getter94, align 4
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i96 = load i128, i128* %i, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %i96
  store i128 %read_output_outter.modsumthree.sum, i128* %out97, align 4
  %out98 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %out98, i128 0, i128 %i99
  %out101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_add_constraint(i128 %out101, i128 %read_output_outter.modsumthree.sum, i1* @constraint.109)
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i102 = load i128, i128* %i, align 4
  %add = add i128 %i102, 1
  store i128 %add, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i103, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit104 = load [256 x %struct_template_circuit_modsumthree*]*, [256 x %struct_template_circuit_modsumthree*]** %unit, align 8
  %k105 = load i128, i128* %k.bind, align 4
  %sub106 = sub i128 %k105, 2
  %array_getter107 = getelementptr inbounds [256 x %struct_template_circuit_modsumthree*], [256 x %struct_template_circuit_modsumthree*]* %unit104, i128 0, i128 %sub106
  %unit108 = load %struct_template_circuit_modsumthree*, %struct_template_circuit_modsumthree** %array_getter107, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_modsumthree, %struct_template_circuit_modsumthree* %unit108, i32 0, i32 5
  %read_output_outter.modsumthree.carry110 = load i128, i128* %struct_getter109, align 4
  %ptr_getter111 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k112 = load i128, i128* %k.bind, align 4
  %out113 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter111, i128 0, i128 %k112
  store i128 %read_output_outter.modsumthree.carry110, i128* %out113, align 4
  %out114 = load [256 x i128]*, [256 x i128]** %out, align 8
  %k115 = load i128, i128* %k.bind, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %out114, i128 0, i128 %k115
  %out117 = load i128, i128* %array_getter116, align 4
  call void @fn_intrinsic_add_constraint(i128 %out117, i128 %read_output_outter.modsumthree.carry110, i1* @constraint.110)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out118 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigadd.out = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %0, i32 0, i32 4
  store [256 x i128]* %out118, [256 x i128]** %write_output_inner.bigadd.out, align 8
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %b_plus_c = bitcast i8* %malloccall to i128*
  %borrow = alloca i128, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_lessthan** getelementptr (%struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall4 to %struct_template_circuit_lessthan**
  %b = load i128, i128* %b.bind, align 4
  %c = load i128, i128* %c.bind, align 4
  %add = add i128 %b, %c
  store i128 %add, i128* %b_plus_c, align 4
  %b_plus_c5 = load i128, i128* %b_plus_c, align 4
  call void @fn_intrinsic_add_constraint(i128 %b_plus_c5, i128 %add, i1* @constraint.111)
  %n = load i128, i128* %n.bind, align 4
  %add6 = add i128 %n, 1
  %call = call %struct_template_circuit_lessthan* @fn_template_build_lessthan(i128 %add6)
  store %struct_template_circuit_lessthan* %call, %struct_template_circuit_lessthan** %lt, align 8
  %a = load i128, i128* %a.bind, align 4
  %ptr_getter = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %lt8 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %a, i128* %lt8, align 4
  %lt9 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt9, i32 0, i32 1
  %read_input_outter.lessthan.in11 = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in11, i128 0, i128 0
  %lt12 = load i128, i128* %array_getter, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt12, i128 %a, i1* @constraint.112)
  %b_plus_c13 = load i128, i128* %b_plus_c, align 4
  %ptr_getter14 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %ptr_getter14, i32 0, i32 1
  %read_input_outter.lessthan.in16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %lt17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in16, i128 0, i128 1
  store i128 %b_plus_c13, i128* %lt17, align 4
  %lt18 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt18, i32 0, i32 1
  %read_input_outter.lessthan.in20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in20, i128 0, i128 1
  %lt22 = load i128, i128* %array_getter21, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt22, i128 %b_plus_c13, i1* @constraint.113)
  %lt23 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %lt, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt23, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter24, align 4
  store i128 %read_output_outter.lessthan.out, i128* %borrow, align 4
  %borrow25 = load i128, i128* %borrow, align 4
  call void @fn_intrinsic_add_constraint(i128 %borrow25, i128 %read_output_outter.lessthan.out, i1* @constraint.114)
  %borrow26 = load i128, i128* %borrow, align 4
  %n27 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n27
  %mul = mul i128 %borrow26, %lshift
  %a28 = load i128, i128* %a.bind, align 4
  %add29 = add i128 %mul, %a28
  %b_plus_c30 = load i128, i128* %b_plus_c, align 4
  %sub = sub i128 %add29, %b_plus_c30
  store i128 %sub, i128* %out, align 4
  %out31 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out31, i128 %sub, i1* @constraint.115)
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %LOGK = bitcast i8* %malloccall to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmultshortlong** getelementptr (%struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** null, i32 1) to i32))
  %mult = bitcast i8* %malloccall4 to %struct_template_circuit_bigmultshortlong**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_longtoshortnoendcarry** getelementptr (%struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** null, i32 1) to i32))
  %longshort = bitcast i8* %malloccall6 to %struct_template_circuit_longtoshortnoendcarry**
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
  store %struct_template_circuit_bigmultshortlong* %call10, %struct_template_circuit_bigmultshortlong** %mult, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i11
  %a12 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %i14 = load i128, i128* %i, align 4
  %mult15 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a, i128 0, i128 %i14
  store i128 %a12, i128* %mult15, align 4
  %mult16 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult16, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a18 = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a18, i128 0, i128 %i19
  %mult21 = load i128, i128* %array_getter20, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult21, i128 %a12, i1* @constraint.116)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i22
  %b24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter25, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i27 = load i128, i128* %i, align 4
  %mult28 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b, i128 0, i128 %i27
  store i128 %b24, i128* %mult28, align 4
  %mult29 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter30 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult29, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b31 = load [256 x i128]*, [256 x i128]** %struct_getter30, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b31, i128 0, i128 %i32
  %mult34 = load i128, i128* %array_getter33, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult34, i128 %b24, i1* @constraint.117)
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
  %mul41 = mul i128 2, %k40
  %sub = sub i128 %mul41, 1
  %call42 = call %struct_template_circuit_longtoshortnoendcarry* @fn_template_build_longtoshortnoendcarry(i128 %n39, i128 %sub)
  store %struct_template_circuit_longtoshortnoendcarry* %call42, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch59, %loop.exit
  %mult44 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %mult, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %mult44, i32 0, i32 5
  %read_output_outter.bigmultshortlong.out = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlong.out, i128 0, i128 %i46
  %mult48 = load i128, i128* %array_getter47, align 4
  %ptr_getter49 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %ptr_getter49, i32 0, i32 2
  %read_input_outter.longtoshortnoendcarry.in = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %i51 = load i128, i128* %i, align 4
  %longshort52 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.longtoshortnoendcarry.in, i128 0, i128 %i51
  store i128 %mult48, i128* %longshort52, align 4
  %longshort53 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort53, i32 0, i32 2
  %read_input_outter.longtoshortnoendcarry.in55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.longtoshortnoendcarry.in55, i128 0, i128 %i56
  %longshort58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %longshort58, i128 %mult48, i1* @constraint.118)
  br label %loop.latch59

loop.latch59:                                     ; preds = %loop.body43
  %i60 = load i128, i128* %i, align 4
  %add61 = add i128 %i60, 1
  store i128 %add61, i128* %i, align 4
  %i62 = load i128, i128* %i, align 4
  %k63 = load i128, i128* %k.bind, align 4
  %mul64 = mul i128 2, %k63
  %sub65 = sub i128 %mul64, 1
  %slt66 = icmp slt i128 %i62, %sub65
  br i1 %slt66, label %loop.body43, label %loop.exit67

loop.exit67:                                      ; preds = %loop.latch59
  store i128 0, i128* %i, align 4
  br label %loop.body68

loop.body68:                                      ; preds = %loop.latch81, %loop.exit67
  %longshort69 = load %struct_template_circuit_longtoshortnoendcarry*, %struct_template_circuit_longtoshortnoendcarry** %longshort, align 8
  %struct_getter70 = getelementptr inbounds %struct_template_circuit_longtoshortnoendcarry, %struct_template_circuit_longtoshortnoendcarry* %longshort69, i32 0, i32 3
  %read_output_outter.longtoshortnoendcarry.out = load [256 x i128]*, [256 x i128]** %struct_getter70, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.longtoshortnoendcarry.out, i128 0, i128 %i71
  %longshort73 = load i128, i128* %array_getter72, align 4
  %ptr_getter74 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i75 = load i128, i128* %i, align 4
  %out76 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter74, i128 0, i128 %i75
  store i128 %longshort73, i128* %out76, align 4
  %out77 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i78 = load i128, i128* %i, align 4
  %array_getter79 = getelementptr inbounds [256 x i128], [256 x i128]* %out77, i128 0, i128 %i78
  %out80 = load i128, i128* %array_getter79, align 4
  call void @fn_intrinsic_add_constraint(i128 %out80, i128 %longshort73, i1* @constraint.119)
  br label %loop.latch81

loop.latch81:                                     ; preds = %loop.body68
  %i82 = load i128, i128* %i, align 4
  %add83 = add i128 %i82, 1
  store i128 %add83, i128* %i, align 4
  %i84 = load i128, i128* %i, align 4
  %k85 = load i128, i128* %k.bind, align 4
  %mul86 = mul i128 2, %k85
  %slt87 = icmp slt i128 %i84, %mul86
  br i1 %slt87, label %loop.body68, label %loop.exit88

loop.exit88:                                      ; preds = %loop.latch81
  br label %exit

exit:                                             ; preds = %loop.exit88
  %out89 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigmult.out = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %0, i32 0, i32 4
  store [256 x i128]* %out89, [256 x i128]** %write_output_inner.bigmult.out, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_isequal*]** getelementptr ([256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** null, i32 1) to i32))
  %eq = bitcast i8* %malloccall to [256 x %struct_template_circuit_isequal*]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_and*]** getelementptr ([256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** null, i32 1) to i32))
  %eq_ands = bitcast i8* %malloccall4 to [256 x %struct_template_circuit_and*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_or*]** getelementptr ([256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** null, i32 1) to i32))
  %ors = bitcast i8* %malloccall5 to [256 x %struct_template_circuit_or*]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_and*]** getelementptr ([256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** null, i32 1) to i32))
  %ands = bitcast i8* %malloccall7 to [256 x %struct_template_circuit_and*]**
  %out = alloca i128, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_lessthan*]** getelementptr ([256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall8 to [256 x %struct_template_circuit_lessthan*]**
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
  %ptr_getter13 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter13, i128 0, i128 %i14
  %lt16 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter15, align 8
  %struct_getter17 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt16, i32 0, i32 1
  %read_input_outter.lessthan.in = load [256 x i128]*, [256 x i128]** %struct_getter17, align 8
  %lt18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in, i128 0, i128 0
  store i128 %a12, i128* %lt18, align 4
  %lt19 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt19, i128 0, i128 %i20
  %lt22 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter21, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt22, i32 0, i32 1
  %read_input_outter.lessthan.in24 = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in24, i128 0, i128 0
  %lt26 = load i128, i128* %array_getter25, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt26, i128 %a12, i1* @constraint.120)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i27
  %b29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %ptr_getter30, i128 0, i128 %i31
  %lt33 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt33, i32 0, i32 1
  %read_input_outter.lessthan.in35 = load [256 x i128]*, [256 x i128]** %struct_getter34, align 8
  %lt36 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in35, i128 0, i128 1
  store i128 %b29, i128* %lt36, align 4
  %lt37 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i38 = load i128, i128* %i, align 4
  %array_getter39 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt37, i128 0, i128 %i38
  %lt40 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter39, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt40, i32 0, i32 1
  %read_input_outter.lessthan.in42 = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.lessthan.in42, i128 0, i128 1
  %lt44 = load i128, i128* %array_getter43, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt44, i128 %b29, i1* @constraint.121)
  %call45 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter46 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i47 = load i128, i128* %i, align 4
  %eq48 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter46, i128 0, i128 %i47
  store %struct_template_circuit_isequal* %call45, %struct_template_circuit_isequal** %eq48, align 8
  %a49 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %a49, i128 0, i128 %i50
  %a52 = load i128, i128* %array_getter51, align 4
  %ptr_getter53 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter53, i128 0, i128 %i54
  %eq56 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter55, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq56, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter57, align 8
  %eq58 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  store i128 %a52, i128* %eq58, align 4
  %eq59 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq59, i128 0, i128 %i60
  %eq62 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter61, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq62, i32 0, i32 0
  %read_input_outter.isequal.in64 = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in64, i128 0, i128 0
  %eq66 = load i128, i128* %array_getter65, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq66, i128 %a52, i1* @constraint.122)
  %b67 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i68 = load i128, i128* %i, align 4
  %array_getter69 = getelementptr inbounds [256 x i128], [256 x i128]* %b67, i128 0, i128 %i68
  %b70 = load i128, i128* %array_getter69, align 4
  %ptr_getter71 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter71, i128 0, i128 %i72
  %eq74 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq74, i32 0, i32 0
  %read_input_outter.isequal.in76 = load [256 x i128]*, [256 x i128]** %struct_getter75, align 8
  %eq77 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in76, i128 0, i128 1
  store i128 %b70, i128* %eq77, align 4
  %eq78 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq78, i128 0, i128 %i79
  %eq81 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq81, i32 0, i32 0
  %read_input_outter.isequal.in83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in83, i128 0, i128 1
  %eq85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %eq85, i128 %b70, i1* @constraint.123)
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
  %ptr_getter112 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i113 = load i128, i128* %i, align 4
  %array_getter114 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter112, i128 0, i128 %i113
  %ands115 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter114, align 8
  %write_input_outter.and.a = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands115, i32 0, i32 0
  store i128 %read_output_outter.isequal.out, i128* %write_input_outter.and.a, align 4
  %ands116 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands116, i128 0, i128 %i117
  %ands119 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter118, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands119, i32 0, i32 0
  %read_input_outter.and.a = load i128, i128* %struct_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a, i128 %read_output_outter.isequal.out, i1* @constraint.124)
  %lt121 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k122 = load i128, i128* %k.bind, align 4
  %sub123 = sub i128 %k122, 2
  %array_getter124 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt121, i128 0, i128 %sub123
  %lt125 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter124, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt125, i32 0, i32 2
  %read_output_outter.lessthan.out = load i128, i128* %struct_getter126, align 4
  %ptr_getter127 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i128 = load i128, i128* %i, align 4
  %array_getter129 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter127, i128 0, i128 %i128
  %ands130 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter129, align 8
  %write_input_outter.and.b = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands130, i32 0, i32 1
  store i128 %read_output_outter.lessthan.out, i128* %write_input_outter.and.b, align 4
  %ands131 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands131, i128 0, i128 %i132
  %ands134 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter133, align 8
  %struct_getter135 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands134, i32 0, i32 1
  %read_input_outter.and.b = load i128, i128* %struct_getter135, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b, i128 %read_output_outter.lessthan.out, i1* @constraint.125)
  %eq136 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k137 = load i128, i128* %k.bind, align 4
  %sub138 = sub i128 %k137, 1
  %array_getter139 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq136, i128 0, i128 %sub138
  %eq140 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter139, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq140, i32 0, i32 1
  %read_output_outter.isequal.out142 = load i128, i128* %struct_getter141, align 4
  %ptr_getter143 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i144 = load i128, i128* %i, align 4
  %array_getter145 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter143, i128 0, i128 %i144
  %eq_ands146 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter145, align 8
  %write_input_outter.and.a147 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands146, i32 0, i32 0
  store i128 %read_output_outter.isequal.out142, i128* %write_input_outter.and.a147, align 4
  %eq_ands148 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i149 = load i128, i128* %i, align 4
  %array_getter150 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands148, i128 0, i128 %i149
  %eq_ands151 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter150, align 8
  %struct_getter152 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands151, i32 0, i32 0
  %read_input_outter.and.a153 = load i128, i128* %struct_getter152, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a153, i128 %read_output_outter.isequal.out142, i1* @constraint.126)
  %eq154 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %k155 = load i128, i128* %k.bind, align 4
  %sub156 = sub i128 %k155, 2
  %array_getter157 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq154, i128 0, i128 %sub156
  %eq158 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter157, align 8
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq158, i32 0, i32 1
  %read_output_outter.isequal.out160 = load i128, i128* %struct_getter159, align 4
  %ptr_getter161 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i162 = load i128, i128* %i, align 4
  %array_getter163 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter161, i128 0, i128 %i162
  %eq_ands164 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter163, align 8
  %write_input_outter.and.b165 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands164, i32 0, i32 1
  store i128 %read_output_outter.isequal.out160, i128* %write_input_outter.and.b165, align 4
  %eq_ands166 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i167 = load i128, i128* %i, align 4
  %array_getter168 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands166, i128 0, i128 %i167
  %eq_ands169 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter168, align 8
  %struct_getter170 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands169, i32 0, i32 1
  %read_input_outter.and.b171 = load i128, i128* %struct_getter170, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b171, i128 %read_output_outter.isequal.out160, i1* @constraint.127)
  %lt172 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %k173 = load i128, i128* %k.bind, align 4
  %sub174 = sub i128 %k173, 1
  %array_getter175 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt172, i128 0, i128 %sub174
  %lt176 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter175, align 8
  %struct_getter177 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt176, i32 0, i32 2
  %read_output_outter.lessthan.out178 = load i128, i128* %struct_getter177, align 4
  %ptr_getter179 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter179, i128 0, i128 %i180
  %ors182 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter181, align 8
  %write_input_outter.or.a = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors182, i32 0, i32 0
  store i128 %read_output_outter.lessthan.out178, i128* %write_input_outter.or.a, align 4
  %ors183 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i184 = load i128, i128* %i, align 4
  %array_getter185 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors183, i128 0, i128 %i184
  %ors186 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter185, align 8
  %struct_getter187 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors186, i32 0, i32 0
  %read_input_outter.or.a = load i128, i128* %struct_getter187, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.a, i128 %read_output_outter.lessthan.out178, i1* @constraint.128)
  %ands188 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i189 = load i128, i128* %i, align 4
  %array_getter190 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands188, i128 0, i128 %i189
  %ands191 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter190, align 8
  %struct_getter192 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands191, i32 0, i32 2
  %read_output_outter.and.out = load i128, i128* %struct_getter192, align 4
  %ptr_getter193 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i194 = load i128, i128* %i, align 4
  %array_getter195 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter193, i128 0, i128 %i194
  %ors196 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter195, align 8
  %write_input_outter.or.b = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors196, i32 0, i32 1
  store i128 %read_output_outter.and.out, i128* %write_input_outter.or.b, align 4
  %ors197 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i198 = load i128, i128* %i, align 4
  %array_getter199 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors197, i128 0, i128 %i198
  %ors200 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter199, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors200, i32 0, i32 1
  %read_input_outter.or.b = load i128, i128* %struct_getter201, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.b, i128 %read_output_outter.and.out, i1* @constraint.129)
  br label %if.exit

if.false:                                         ; preds = %loop.body89
  %eq_ands202 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i203 = load i128, i128* %i, align 4
  %add204 = add i128 %i203, 1
  %array_getter205 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands202, i128 0, i128 %add204
  %eq_ands206 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter205, align 8
  %struct_getter207 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands206, i32 0, i32 2
  %read_output_outter.and.out208 = load i128, i128* %struct_getter207, align 4
  %ptr_getter209 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i210 = load i128, i128* %i, align 4
  %array_getter211 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter209, i128 0, i128 %i210
  %ands212 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter211, align 8
  %write_input_outter.and.a213 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands212, i32 0, i32 0
  store i128 %read_output_outter.and.out208, i128* %write_input_outter.and.a213, align 4
  %ands214 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i215 = load i128, i128* %i, align 4
  %array_getter216 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands214, i128 0, i128 %i215
  %ands217 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter216, align 8
  %struct_getter218 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands217, i32 0, i32 0
  %read_input_outter.and.a219 = load i128, i128* %struct_getter218, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a219, i128 %read_output_outter.and.out208, i1* @constraint.130)
  %lt220 = load [256 x %struct_template_circuit_lessthan*]*, [256 x %struct_template_circuit_lessthan*]** %lt, align 8
  %i221 = load i128, i128* %i, align 4
  %array_getter222 = getelementptr inbounds [256 x %struct_template_circuit_lessthan*], [256 x %struct_template_circuit_lessthan*]* %lt220, i128 0, i128 %i221
  %lt223 = load %struct_template_circuit_lessthan*, %struct_template_circuit_lessthan** %array_getter222, align 8
  %struct_getter224 = getelementptr inbounds %struct_template_circuit_lessthan, %struct_template_circuit_lessthan* %lt223, i32 0, i32 2
  %read_output_outter.lessthan.out225 = load i128, i128* %struct_getter224, align 4
  %ptr_getter226 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i227 = load i128, i128* %i, align 4
  %array_getter228 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter226, i128 0, i128 %i227
  %ands229 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter228, align 8
  %write_input_outter.and.b230 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands229, i32 0, i32 1
  store i128 %read_output_outter.lessthan.out225, i128* %write_input_outter.and.b230, align 4
  %ands231 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i232 = load i128, i128* %i, align 4
  %array_getter233 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands231, i128 0, i128 %i232
  %ands234 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter233, align 8
  %struct_getter235 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands234, i32 0, i32 1
  %read_input_outter.and.b236 = load i128, i128* %struct_getter235, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b236, i128 %read_output_outter.lessthan.out225, i1* @constraint.131)
  %eq_ands237 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i238 = load i128, i128* %i, align 4
  %add239 = add i128 %i238, 1
  %array_getter240 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands237, i128 0, i128 %add239
  %eq_ands241 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter240, align 8
  %struct_getter242 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands241, i32 0, i32 2
  %read_output_outter.and.out243 = load i128, i128* %struct_getter242, align 4
  %ptr_getter244 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i245 = load i128, i128* %i, align 4
  %array_getter246 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter244, i128 0, i128 %i245
  %eq_ands247 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter246, align 8
  %write_input_outter.and.a248 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands247, i32 0, i32 0
  store i128 %read_output_outter.and.out243, i128* %write_input_outter.and.a248, align 4
  %eq_ands249 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i250 = load i128, i128* %i, align 4
  %array_getter251 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands249, i128 0, i128 %i250
  %eq_ands252 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter251, align 8
  %struct_getter253 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands252, i32 0, i32 0
  %read_input_outter.and.a254 = load i128, i128* %struct_getter253, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.a254, i128 %read_output_outter.and.out243, i1* @constraint.132)
  %eq255 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %eq, align 8
  %i256 = load i128, i128* %i, align 4
  %array_getter257 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %eq255, i128 0, i128 %i256
  %eq258 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter257, align 8
  %struct_getter259 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %eq258, i32 0, i32 1
  %read_output_outter.isequal.out260 = load i128, i128* %struct_getter259, align 4
  %ptr_getter261 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i262 = load i128, i128* %i, align 4
  %array_getter263 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ptr_getter261, i128 0, i128 %i262
  %eq_ands264 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter263, align 8
  %write_input_outter.and.b265 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands264, i32 0, i32 1
  store i128 %read_output_outter.isequal.out260, i128* %write_input_outter.and.b265, align 4
  %eq_ands266 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %eq_ands, align 8
  %i267 = load i128, i128* %i, align 4
  %array_getter268 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %eq_ands266, i128 0, i128 %i267
  %eq_ands269 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter268, align 8
  %struct_getter270 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %eq_ands269, i32 0, i32 1
  %read_input_outter.and.b271 = load i128, i128* %struct_getter270, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.and.b271, i128 %read_output_outter.isequal.out260, i1* @constraint.133)
  %ors272 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i273 = load i128, i128* %i, align 4
  %add274 = add i128 %i273, 1
  %array_getter275 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors272, i128 0, i128 %add274
  %ors276 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter275, align 8
  %struct_getter277 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors276, i32 0, i32 2
  %read_output_outter.or.out = load i128, i128* %struct_getter277, align 4
  %ptr_getter278 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i279 = load i128, i128* %i, align 4
  %array_getter280 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter278, i128 0, i128 %i279
  %ors281 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter280, align 8
  %write_input_outter.or.a282 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors281, i32 0, i32 0
  store i128 %read_output_outter.or.out, i128* %write_input_outter.or.a282, align 4
  %ors283 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i284 = load i128, i128* %i, align 4
  %array_getter285 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors283, i128 0, i128 %i284
  %ors286 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter285, align 8
  %struct_getter287 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors286, i32 0, i32 0
  %read_input_outter.or.a288 = load i128, i128* %struct_getter287, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.a288, i128 %read_output_outter.or.out, i1* @constraint.134)
  %ands289 = load [256 x %struct_template_circuit_and*]*, [256 x %struct_template_circuit_and*]** %ands, align 8
  %i290 = load i128, i128* %i, align 4
  %array_getter291 = getelementptr inbounds [256 x %struct_template_circuit_and*], [256 x %struct_template_circuit_and*]* %ands289, i128 0, i128 %i290
  %ands292 = load %struct_template_circuit_and*, %struct_template_circuit_and** %array_getter291, align 8
  %struct_getter293 = getelementptr inbounds %struct_template_circuit_and, %struct_template_circuit_and* %ands292, i32 0, i32 2
  %read_output_outter.and.out294 = load i128, i128* %struct_getter293, align 4
  %ptr_getter295 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i296 = load i128, i128* %i, align 4
  %array_getter297 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ptr_getter295, i128 0, i128 %i296
  %ors298 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter297, align 8
  %write_input_outter.or.b299 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors298, i32 0, i32 1
  store i128 %read_output_outter.and.out294, i128* %write_input_outter.or.b299, align 4
  %ors300 = load [256 x %struct_template_circuit_or*]*, [256 x %struct_template_circuit_or*]** %ors, align 8
  %i301 = load i128, i128* %i, align 4
  %array_getter302 = getelementptr inbounds [256 x %struct_template_circuit_or*], [256 x %struct_template_circuit_or*]* %ors300, i128 0, i128 %i301
  %ors303 = load %struct_template_circuit_or*, %struct_template_circuit_or** %array_getter302, align 8
  %struct_getter304 = getelementptr inbounds %struct_template_circuit_or, %struct_template_circuit_or* %ors303, i32 0, i32 1
  %read_input_outter.or.b305 = load i128, i128* %struct_getter304, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.or.b305, i128 %read_output_outter.and.out294, i1* @constraint.135)
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
  store i128 %read_output_outter.or.out315, i128* %out, align 4
  %out316 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out316, i128 %read_output_outter.or.out315, i1* @constraint.136)
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
  %norm_a = alloca [256 x i128]*, align 8
  %norm_b = alloca [256 x i128]*, align 8
  %scale = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %k = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k, 1
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %sub
  %b1 = load i128, i128* %array_getter, align 4
  %add = add i128 1, %b1
  %sdiv = sdiv i128 %lshift, %add
  store i128 %sdiv, i128* %scale, align 4
  %n2 = load i128, i128* %n.bind, align 4
  %k3 = load i128, i128* %k.bind, align 4
  %add4 = add i128 %k3, 1
  %scale5 = load i128, i128* %scale, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @long_scalar_mult(i128 %n2, i128 %add4, i128 %scale5, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %norm_a, align 8
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %scale8 = load i128, i128* %scale, align 4
  %b9 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call10 = call [256 x i128]* @long_scalar_mult(i128 %n6, i128 %k7, i128 %scale8, [256 x i128]* %b9)
  store [256 x i128]* %call10, [256 x i128]** %norm_b, align 8
  store i128 0, i128* %ret, align 4
  %norm_b11 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %k12 = load i128, i128* %k.bind, align 4
  %array_getter13 = getelementptr inbounds [256 x i128], [256 x i128]* %norm_b11, i128 0, i128 %k12
  %norm_b14 = load i128, i128* %array_getter13, align 4
  %ne = icmp ne i128 %norm_b14, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n15 = load i128, i128* %n.bind, align 4
  %k16 = load i128, i128* %k.bind, align 4
  %add17 = add i128 %k16, 1
  %norm_a18 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b19 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call20 = call i128 @short_div_norm(i128 %n15, i128 %add17, [256 x i128]* %norm_a18, [256 x i128]* %norm_b19)
  store i128 %call20, i128* %ret, align 4
  br label %if.exit

if.false:                                         ; preds = %entry
  %n21 = load i128, i128* %n.bind, align 4
  %k22 = load i128, i128* %k.bind, align 4
  %norm_a23 = load [256 x i128]*, [256 x i128]** %norm_a, align 8
  %norm_b24 = load [256 x i128]*, [256 x i128]** %norm_b, align 8
  %call25 = call i128 @short_div_norm(i128 %n21, i128 %k22, [256 x i128]* %norm_a23, [256 x i128]* %norm_b24)
  store i128 %call25, i128* %ret, align 4
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %ret26 = load i128, i128* %ret, align 4
  ret i128 %ret26
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_biglessthan*]** getelementptr ([256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to [256 x %struct_template_circuit_biglessthan*]**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %sum = bitcast i8* %malloccall4 to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %idx = bitcast i8* %malloccall5 to i128*
  %out = alloca i128, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_isequal*]** getelementptr ([256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** null, i32 1) to i32))
  %isEqual = bitcast i8* %malloccall6 to [256 x %struct_template_circuit_isequal*]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall7 to i128*
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch57, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  %ptr_getter = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i8 = load i128, i128* %i, align 4
  %lt9 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter, i128 0, i128 %i8
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt9, align 8
  store i128 0, i128* %idx, align 4
  br label %loop.body10

loop.body10:                                      ; preds = %loop.latch, %loop.body
  %in = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i11 = load i128, i128* %i, align 4
  %idx12 = load i128, i128* %idx, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in, i128 0, i128 %i11, i128 %idx12
  %in13 = load i128, i128* %array_getter, align 4
  %ptr_getter14 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter14, i128 0, i128 %i15
  %lt17 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter16, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt17, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %idx19 = load i128, i128* %idx, align 4
  %lt20 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %idx19
  store i128 %in13, i128* %lt20, align 4
  %lt21 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i22 = load i128, i128* %i, align 4
  %array_getter23 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt21, i128 0, i128 %i22
  %lt24 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter23, align 8
  %struct_getter25 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt24, i32 0, i32 2
  %read_input_outter.biglessthan.a26 = load [256 x i128]*, [256 x i128]** %struct_getter25, align 8
  %idx27 = load i128, i128* %idx, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a26, i128 0, i128 %idx27
  %lt29 = load i128, i128* %array_getter28, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt29, i128 %in13, i1* @constraint.137)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %idx30 = load i128, i128* %idx, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %idx30
  %p32 = load i128, i128* %array_getter31, align 4
  %ptr_getter33 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %ptr_getter33, i128 0, i128 %i34
  %lt36 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter35, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt36, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %idx38 = load i128, i128* %idx, align 4
  %lt39 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %idx38
  store i128 %p32, i128* %lt39, align 4
  %lt40 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt40, i128 0, i128 %i41
  %lt43 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter42, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt43, i32 0, i32 3
  %read_input_outter.biglessthan.b45 = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %idx46 = load i128, i128* %idx, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b45, i128 0, i128 %idx46
  %lt48 = load i128, i128* %array_getter47, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt48, i128 %p32, i1* @constraint.138)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body10
  %idx49 = load i128, i128* %idx, align 4
  %add = add i128 %idx49, 1
  store i128 %add, i128* %idx, align 4
  %idx50 = load i128, i128* %idx, align 4
  %k51 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %idx50, %k51
  br i1 %slt, label %loop.body10, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt52 = load [256 x %struct_template_circuit_biglessthan*]*, [256 x %struct_template_circuit_biglessthan*]** %lt, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x %struct_template_circuit_biglessthan*], [256 x %struct_template_circuit_biglessthan*]* %lt52, i128 0, i128 %i53
  %lt55 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %array_getter54, align 8
  %struct_getter56 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt55, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter56, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.139)
  br label %loop.latch57

loop.latch57:                                     ; preds = %loop.exit
  %i58 = load i128, i128* %i, align 4
  %add59 = add i128 %i58, 1
  store i128 %add59, i128* %i, align 4
  %i60 = load i128, i128* %i, align 4
  %slt61 = icmp slt i128 %i60, 2
  br i1 %slt61, label %loop.body, label %loop.exit62

loop.exit62:                                      ; preds = %loop.latch57
  store i128 0, i128* %sum, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body63

loop.body63:                                      ; preds = %loop.latch112, %loop.exit62
  %call64 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter65 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i66 = load i128, i128* %i, align 4
  %isEqual67 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter65, i128 0, i128 %i66
  store %struct_template_circuit_isequal* %call64, %struct_template_circuit_isequal** %isEqual67, align 8
  %in68 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i69 = load i128, i128* %i, align 4
  %array_getter70 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in68, i128 0, i128 0, i128 %i69
  %in71 = load i128, i128* %array_getter70, align 4
  %ptr_getter72 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i73 = load i128, i128* %i, align 4
  %array_getter74 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter72, i128 0, i128 %i73
  %isEqual75 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter74, align 8
  %struct_getter76 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual75, i32 0, i32 0
  %read_input_outter.isequal.in = load [256 x i128]*, [256 x i128]** %struct_getter76, align 8
  %isEqual77 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in, i128 0, i128 0
  store i128 %in71, i128* %isEqual77, align 4
  %isEqual78 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i79 = load i128, i128* %i, align 4
  %array_getter80 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual78, i128 0, i128 %i79
  %isEqual81 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter80, align 8
  %struct_getter82 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual81, i32 0, i32 0
  %read_input_outter.isequal.in83 = load [256 x i128]*, [256 x i128]** %struct_getter82, align 8
  %array_getter84 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in83, i128 0, i128 0
  %isEqual85 = load i128, i128* %array_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual85, i128 %in71, i1* @constraint.140)
  %in86 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %in.bind, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %in86, i128 0, i128 1, i128 %i87
  %in89 = load i128, i128* %array_getter88, align 4
  %ptr_getter90 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i91 = load i128, i128* %i, align 4
  %array_getter92 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter90, i128 0, i128 %i91
  %isEqual93 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter92, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual93, i32 0, i32 0
  %read_input_outter.isequal.in95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %isEqual96 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in95, i128 0, i128 1
  store i128 %in89, i128* %isEqual96, align 4
  %isEqual97 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i98 = load i128, i128* %i, align 4
  %array_getter99 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual97, i128 0, i128 %i98
  %isEqual100 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter99, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual100, i32 0, i32 0
  %read_input_outter.isequal.in102 = load [256 x i128]*, [256 x i128]** %struct_getter101, align 8
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in102, i128 0, i128 1
  %isEqual104 = load i128, i128* %array_getter103, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual104, i128 %in89, i1* @constraint.141)
  %sum105 = load i128, i128* %sum, align 4
  %isEqual106 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %i107 = load i128, i128* %i, align 4
  %array_getter108 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual106, i128 0, i128 %i107
  %isEqual109 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter108, align 8
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual109, i32 0, i32 1
  %read_output_outter.isequal.out = load i128, i128* %struct_getter110, align 4
  %add111 = add i128 %sum105, %read_output_outter.isequal.out
  store i128 %add111, i128* %sum, align 4
  br label %loop.latch112

loop.latch112:                                    ; preds = %loop.body63
  %i113 = load i128, i128* %i, align 4
  %add114 = add i128 %i113, 1
  store i128 %add114, i128* %i, align 4
  %i115 = load i128, i128* %i, align 4
  %k116 = load i128, i128* %k.bind, align 4
  %slt117 = icmp slt i128 %i115, %k116
  br i1 %slt117, label %loop.body63, label %loop.exit118

loop.exit118:                                     ; preds = %loop.latch112
  %call119 = call %struct_template_circuit_isequal* @fn_template_build_isequal()
  %ptr_getter120 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k121 = load i128, i128* %k.bind, align 4
  %isEqual122 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter120, i128 0, i128 %k121
  store %struct_template_circuit_isequal* %call119, %struct_template_circuit_isequal** %isEqual122, align 8
  %sum123 = load i128, i128* %sum, align 4
  %ptr_getter124 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k125 = load i128, i128* %k.bind, align 4
  %array_getter126 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter124, i128 0, i128 %k125
  %isEqual127 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter126, align 8
  %struct_getter128 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual127, i32 0, i32 0
  %read_input_outter.isequal.in129 = load [256 x i128]*, [256 x i128]** %struct_getter128, align 8
  %isEqual130 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in129, i128 0, i128 0
  store i128 %sum123, i128* %isEqual130, align 4
  %isEqual131 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k132 = load i128, i128* %k.bind, align 4
  %array_getter133 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual131, i128 0, i128 %k132
  %isEqual134 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter133, align 8
  %struct_getter135 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual134, i32 0, i32 0
  %read_input_outter.isequal.in136 = load [256 x i128]*, [256 x i128]** %struct_getter135, align 8
  %array_getter137 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in136, i128 0, i128 0
  %isEqual138 = load i128, i128* %array_getter137, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual138, i128 %sum123, i1* @constraint.142)
  %k139 = load i128, i128* %k.bind, align 4
  %ptr_getter140 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k141 = load i128, i128* %k.bind, align 4
  %array_getter142 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %ptr_getter140, i128 0, i128 %k141
  %isEqual143 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter142, align 8
  %struct_getter144 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual143, i32 0, i32 0
  %read_input_outter.isequal.in145 = load [256 x i128]*, [256 x i128]** %struct_getter144, align 8
  %isEqual146 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in145, i128 0, i128 1
  store i128 %k139, i128* %isEqual146, align 4
  %isEqual147 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k148 = load i128, i128* %k.bind, align 4
  %array_getter149 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual147, i128 0, i128 %k148
  %isEqual150 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter149, align 8
  %struct_getter151 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual150, i32 0, i32 0
  %read_input_outter.isequal.in152 = load [256 x i128]*, [256 x i128]** %struct_getter151, align 8
  %array_getter153 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.isequal.in152, i128 0, i128 1
  %isEqual154 = load i128, i128* %array_getter153, align 4
  call void @fn_intrinsic_add_constraint(i128 %isEqual154, i128 %k139, i1* @constraint.143)
  %isEqual155 = load [256 x %struct_template_circuit_isequal*]*, [256 x %struct_template_circuit_isequal*]** %isEqual, align 8
  %k156 = load i128, i128* %k.bind, align 4
  %array_getter157 = getelementptr inbounds [256 x %struct_template_circuit_isequal*], [256 x %struct_template_circuit_isequal*]* %isEqual155, i128 0, i128 %k156
  %isEqual158 = load %struct_template_circuit_isequal*, %struct_template_circuit_isequal** %array_getter157, align 8
  %struct_getter159 = getelementptr inbounds %struct_template_circuit_isequal, %struct_template_circuit_isequal* %isEqual158, i32 0, i32 1
  %read_output_outter.isequal.out160 = load i128, i128* %struct_getter159, align 4
  store i128 %read_output_outter.isequal.out160, i128* %out, align 4
  %out161 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out161, i128 %read_output_outter.isequal.out160, i1* @constraint.144)
  br label %exit

exit:                                             ; preds = %loop.exit118
  %out162 = load i128, i128* %out, align 4
  %write_output_inner.fpisequal.out = getelementptr inbounds %struct_template_circuit_fpisequal, %struct_template_circuit_fpisequal* %0, i32 0, i32 4
  store i128 %out162, i128* %write_output_inner.fpisequal.out, align 4
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

define void @fn_template_init_num2bits_strict(%struct_template_circuit_num2bits_strict* %0) {
entry:
  %struct_getter = getelementptr inbounds %struct_template_circuit_num2bits_strict, %struct_template_circuit_num2bits_strict* %0, i32 0, i32 0
  %read_input_inner.num2bits_strict.in = load i128, i128* %struct_getter, align 4
  %in.bind = alloca i128, align 8
  store i128 %read_input_inner.num2bits_strict.in, i128* %in.bind, align 4
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %out = alloca [256 x i128]*, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_aliascheck** getelementptr (%struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** null, i32 1) to i32))
  %aliasCheck = bitcast i8* %malloccall1 to %struct_template_circuit_aliascheck**
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_num2bits** getelementptr (%struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** null, i32 1) to i32))
  %n2b = bitcast i8* %malloccall2 to %struct_template_circuit_num2bits**
  %call = call %struct_template_circuit_aliascheck* @fn_template_build_aliascheck()
  store %struct_template_circuit_aliascheck* %call, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %call3 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 254)
  store %struct_template_circuit_num2bits* %call3, %struct_template_circuit_num2bits** %n2b, align 8
  %in = load i128, i128* %in.bind, align 4
  %ptr_getter = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %ptr_getter, i32 0, i32 1
  store i128 %in, i128* %write_input_outter.num2bits.in, align 4
  %n2b4 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter5 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b4, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter5, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %in, i1* @constraint.145)
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n2b6 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter7 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b6, i32 0, i32 2
  %read_output_outter.num2bits.out = load [256 x i128]*, [256 x i128]** %struct_getter7, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out, i128 0, i128 %i8
  %n2b9 = load i128, i128* %array_getter, align 4
  %ptr_getter10 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i11 = load i128, i128* %i, align 4
  %out12 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter10, i128 0, i128 %i11
  store i128 %n2b9, i128* %out12, align 4
  %out13 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter15 = getelementptr inbounds [256 x i128], [256 x i128]* %out13, i128 0, i128 %i14
  %out16 = load i128, i128* %array_getter15, align 4
  call void @fn_intrinsic_add_constraint(i128 %out16, i128 %n2b9, i1* @constraint.146)
  %n2b17 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %n2b, align 8
  %struct_getter18 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %n2b17, i32 0, i32 2
  %read_output_outter.num2bits.out19 = load [256 x i128]*, [256 x i128]** %struct_getter18, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.num2bits.out19, i128 0, i128 %i20
  %n2b22 = load i128, i128* %array_getter21, align 4
  %ptr_getter23 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %ptr_getter23, i32 0, i32 0
  %read_input_outter.aliascheck.in = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i25 = load i128, i128* %i, align 4
  %aliasCheck26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in, i128 0, i128 %i25
  store i128 %n2b22, i128* %aliasCheck26, align 4
  %aliasCheck27 = load %struct_template_circuit_aliascheck*, %struct_template_circuit_aliascheck** %aliasCheck, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_aliascheck, %struct_template_circuit_aliascheck* %aliasCheck27, i32 0, i32 0
  %read_input_outter.aliascheck.in29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.aliascheck.in29, i128 0, i128 %i30
  %aliasCheck32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %aliasCheck32, i128 %n2b22, i1* @constraint.147)
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
  %out = alloca i128, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigiszero** getelementptr (%struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** null, i32 1) to i32))
  %isZero = bitcast i8* %malloccall4 to %struct_template_circuit_bigiszero**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall5 to %struct_template_circuit_biglessthan**
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt, align 8
  %k6 = load i128, i128* %k.bind, align 4
  %call7 = call %struct_template_circuit_bigiszero* @fn_template_build_bigiszero(i128 %k6)
  store %struct_template_circuit_bigiszero* %call7, %struct_template_circuit_bigiszero** %isZero, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i8
  %in9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %lt12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i11
  store i128 %in9, i128* %lt12, align 4
  %lt13 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt13, i32 0, i32 2
  %read_input_outter.biglessthan.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a15, i128 0, i128 %i16
  %lt18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt18, i128 %in9, i1* @constraint.148)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i19
  %p21 = load i128, i128* %array_getter20, align 4
  %ptr_getter22 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter22, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %lt25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i24
  store i128 %p21, i128* %lt25, align 4
  %lt26 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt26, i32 0, i32 3
  %read_input_outter.biglessthan.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b28, i128 0, i128 %i29
  %lt31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt31, i128 %p21, i1* @constraint.149)
  %in32 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i33 = load i128, i128* %i, align 4
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %in32, i128 0, i128 %i33
  %in35 = load i128, i128* %array_getter34, align 4
  %ptr_getter36 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %ptr_getter36, i32 0, i32 1
  %read_input_outter.bigiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %i38 = load i128, i128* %i, align 4
  %isZero39 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in, i128 0, i128 %i38
  store i128 %in35, i128* %isZero39, align 4
  %isZero40 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %isZero40, i32 0, i32 1
  %read_input_outter.bigiszero.in42 = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in42, i128 0, i128 %i43
  %isZero45 = load i128, i128* %array_getter44, align 4
  call void @fn_intrinsic_add_constraint(i128 %isZero45, i128 %in35, i1* @constraint.150)
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
  %lt49 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt49, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter50, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.151)
  %isZero51 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %isZero, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %isZero51, i32 0, i32 2
  %read_output_outter.bigiszero.out = load i128, i128* %struct_getter52, align 4
  store i128 %read_output_outter.bigiszero.out, i128* %out, align 4
  %out53 = load i128, i128* %out, align 4
  call void @fn_intrinsic_add_constraint(i128 %out53, i128 %read_output_outter.bigiszero.out, i1* @constraint.152)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out54 = load i128, i128* %out, align 4
  %write_output_inner.fpiszero.out = getelementptr inbounds %struct_template_circuit_fpiszero, %struct_template_circuit_fpiszero* %0, i32 0, i32 4
  store i128 %out54, i128* %write_output_inner.fpiszero.out, align 4
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_modsub** getelementptr (%struct_template_circuit_modsub*, %struct_template_circuit_modsub** null, i32 1) to i32))
  %unit0 = bitcast i8* %malloccall4 to %struct_template_circuit_modsub**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_modsubthree*]** getelementptr ([256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** null, i32 1) to i32))
  %unit = bitcast i8* %malloccall5 to [256 x %struct_template_circuit_modsubthree*]**
  %underflow = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %call = call %struct_template_circuit_modsub* @fn_template_build_modsub(i128 %n)
  store %struct_template_circuit_modsub* %call, %struct_template_circuit_modsub** %unit0, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 0
  %a6 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %write_input_outter.modsub.a = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter, i32 0, i32 1
  store i128 %a6, i128* %write_input_outter.modsub.a, align 4
  %unit07 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter8 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit07, i32 0, i32 1
  %read_input_outter.modsub.a = load i128, i128* %struct_getter8, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsub.a, i128 %a6, i1* @constraint.153)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 0
  %b10 = load i128, i128* %array_getter9, align 4
  %ptr_getter11 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %write_input_outter.modsub.b = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %ptr_getter11, i32 0, i32 2
  store i128 %b10, i128* %write_input_outter.modsub.b, align 4
  %unit012 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit012, i32 0, i32 2
  %read_input_outter.modsub.b = load i128, i128* %struct_getter13, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsub.b, i128 %b10, i1* @constraint.154)
  %unit014 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit014, i32 0, i32 3
  %read_output_outter.modsub.out = load i128, i128* %struct_getter15, align 4
  %ptr_getter16 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter16, i128 0, i128 0
  store i128 %read_output_outter.modsub.out, i128* %out17, align 4
  %out18 = load [256 x i128]*, [256 x i128]** %out, align 8
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %out18, i128 0, i128 0
  %out20 = load i128, i128* %array_getter19, align 4
  call void @fn_intrinsic_add_constraint(i128 %out20, i128 %read_output_outter.modsub.out, i1* @constraint.155)
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n21 = load i128, i128* %n.bind, align 4
  %call22 = call %struct_template_circuit_modsubthree* @fn_template_build_modsubthree(i128 %n21)
  %ptr_getter23 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i24 = load i128, i128* %i, align 4
  %sub = sub i128 %i24, 1
  %unit25 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter23, i128 0, i128 %sub
  store %struct_template_circuit_modsubthree* %call22, %struct_template_circuit_modsubthree** %unit25, align 8
  %a26 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %a26, i128 0, i128 %i27
  %a29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i31 = load i128, i128* %i, align 4
  %sub32 = sub i128 %i31, 1
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter30, i128 0, i128 %sub32
  %unit34 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter33, align 8
  %write_input_outter.modsubthree.a = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit34, i32 0, i32 1
  store i128 %a29, i128* %write_input_outter.modsubthree.a, align 4
  %unit35 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i36 = load i128, i128* %i, align 4
  %sub37 = sub i128 %i36, 1
  %array_getter38 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit35, i128 0, i128 %sub37
  %unit39 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter38, align 8
  %struct_getter40 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit39, i32 0, i32 1
  %read_input_outter.modsubthree.a = load i128, i128* %struct_getter40, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.a, i128 %a29, i1* @constraint.156)
  %b41 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x i128], [256 x i128]* %b41, i128 0, i128 %i42
  %b44 = load i128, i128* %array_getter43, align 4
  %ptr_getter45 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i46 = load i128, i128* %i, align 4
  %sub47 = sub i128 %i46, 1
  %array_getter48 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter45, i128 0, i128 %sub47
  %unit49 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter48, align 8
  %write_input_outter.modsubthree.b = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit49, i32 0, i32 2
  store i128 %b44, i128* %write_input_outter.modsubthree.b, align 4
  %unit50 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i51 = load i128, i128* %i, align 4
  %sub52 = sub i128 %i51, 1
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit50, i128 0, i128 %sub52
  %unit54 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit54, i32 0, i32 2
  %read_input_outter.modsubthree.b = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.b, i128 %b44, i1* @constraint.157)
  %i56 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i56, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  %unit057 = load %struct_template_circuit_modsub*, %struct_template_circuit_modsub** %unit0, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_modsub, %struct_template_circuit_modsub* %unit057, i32 0, i32 4
  %read_output_outter.modsub.borrow = load i128, i128* %struct_getter58, align 4
  %ptr_getter59 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i60 = load i128, i128* %i, align 4
  %sub61 = sub i128 %i60, 1
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter59, i128 0, i128 %sub61
  %unit63 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter62, align 8
  %write_input_outter.modsubthree.c = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit63, i32 0, i32 3
  store i128 %read_output_outter.modsub.borrow, i128* %write_input_outter.modsubthree.c, align 4
  %unit64 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i65 = load i128, i128* %i, align 4
  %sub66 = sub i128 %i65, 1
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit64, i128 0, i128 %sub66
  %unit68 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit68, i32 0, i32 3
  %read_input_outter.modsubthree.c = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.c, i128 %read_output_outter.modsub.borrow, i1* @constraint.158)
  br label %if.exit

if.false:                                         ; preds = %loop.body
  %unit70 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i71 = load i128, i128* %i, align 4
  %sub72 = sub i128 %i71, 2
  %array_getter73 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit70, i128 0, i128 %sub72
  %unit74 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter73, align 8
  %struct_getter75 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit74, i32 0, i32 5
  %read_output_outter.modsubthree.borrow = load i128, i128* %struct_getter75, align 4
  %ptr_getter76 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i77 = load i128, i128* %i, align 4
  %sub78 = sub i128 %i77, 1
  %array_getter79 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %ptr_getter76, i128 0, i128 %sub78
  %unit80 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter79, align 8
  %write_input_outter.modsubthree.c81 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit80, i32 0, i32 3
  store i128 %read_output_outter.modsubthree.borrow, i128* %write_input_outter.modsubthree.c81, align 4
  %unit82 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i83 = load i128, i128* %i, align 4
  %sub84 = sub i128 %i83, 1
  %array_getter85 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit82, i128 0, i128 %sub84
  %unit86 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter85, align 8
  %struct_getter87 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit86, i32 0, i32 3
  %read_input_outter.modsubthree.c88 = load i128, i128* %struct_getter87, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.modsubthree.c88, i128 %read_output_outter.modsubthree.borrow, i1* @constraint.159)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  %unit89 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %i90 = load i128, i128* %i, align 4
  %sub91 = sub i128 %i90, 1
  %array_getter92 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit89, i128 0, i128 %sub91
  %unit93 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter92, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit93, i32 0, i32 4
  %read_output_outter.modsubthree.out = load i128, i128* %struct_getter94, align 4
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i96 = load i128, i128* %i, align 4
  %out97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %i96
  store i128 %read_output_outter.modsubthree.out, i128* %out97, align 4
  %out98 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i99 = load i128, i128* %i, align 4
  %array_getter100 = getelementptr inbounds [256 x i128], [256 x i128]* %out98, i128 0, i128 %i99
  %out101 = load i128, i128* %array_getter100, align 4
  call void @fn_intrinsic_add_constraint(i128 %out101, i128 %read_output_outter.modsubthree.out, i1* @constraint.160)
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i102 = load i128, i128* %i, align 4
  %add = add i128 %i102, 1
  store i128 %add, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i103, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %unit104 = load [256 x %struct_template_circuit_modsubthree*]*, [256 x %struct_template_circuit_modsubthree*]** %unit, align 8
  %k105 = load i128, i128* %k.bind, align 4
  %sub106 = sub i128 %k105, 2
  %array_getter107 = getelementptr inbounds [256 x %struct_template_circuit_modsubthree*], [256 x %struct_template_circuit_modsubthree*]* %unit104, i128 0, i128 %sub106
  %unit108 = load %struct_template_circuit_modsubthree*, %struct_template_circuit_modsubthree** %array_getter107, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_modsubthree, %struct_template_circuit_modsubthree* %unit108, i32 0, i32 5
  %read_output_outter.modsubthree.borrow110 = load i128, i128* %struct_getter109, align 4
  store i128 %read_output_outter.modsubthree.borrow110, i128* %underflow, align 4
  %underflow111 = load i128, i128* %underflow, align 4
  call void @fn_intrinsic_add_constraint(i128 %underflow111, i128 %read_output_outter.modsubthree.borrow110, i1* @constraint.161)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out112 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigsub.out = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 4
  store [256 x i128]* %out112, [256 x i128]** %write_output_inner.bigsub.out, align 8
  %underflow113 = load i128, i128* %underflow, align 4
  %write_output_inner.bigsub.underflow = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %0, i32 0, i32 5
  store i128 %underflow113, i128* %write_output_inner.bigsub.underflow, align 4
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
  %subtrahend = alloca [256 x i128]*, align 8
  %mult_shift = alloca [256 x i128]*, align 8
  %remainder = alloca [256 x i128]*, align 8
  %dividend = alloca [256 x i128]*, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %j = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %remainder, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i2
  %a3 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i4 = load i128, i128* %i, align 4
  %remainder5 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i4
  store i128 %a3, i128* %remainder5, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i6 = load i128, i128* %i, align 4
  %add = add i128 %i6, 1
  store i128 %add, i128* %i, align 4
  %i7 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %add8 = add i128 %m, %k
  %slt = icmp slt i128 %i7, %add8
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %uniform_array9 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array9, [256 x i128]** %dividend, align 8
  %m10 = load i128, i128* %m.bind, align 4
  store i128 %m10, i128* %i, align 4
  br label %loop.body11

loop.body11:                                      ; preds = %loop.latch110, %loop.exit
  %i12 = load i128, i128* %i, align 4
  %m13 = load i128, i128* %m.bind, align 4
  %eq = icmp eq i128 %i12, %m13
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body11
  %ptr_getter14 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %k15 = load i128, i128* %k.bind, align 4
  %dividend16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter14, i128 0, i128 %k15
  store i128 0, i128* %dividend16, align 4
  %k17 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k17, 1
  store i128 %sub, i128* %j, align 4
  br label %loop.body18

if.false:                                         ; preds = %loop.body11
  %k33 = load i128, i128* %k.bind, align 4
  store i128 %k33, i128* %j, align 4
  br label %loop.body34

loop.body18:                                      ; preds = %loop.latch28, %if.true
  %remainder19 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j20 = load i128, i128* %j, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %add22 = add i128 %j20, %m21
  %array_getter23 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder19, i128 0, i128 %add22
  %remainder24 = load i128, i128* %array_getter23, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j26 = load i128, i128* %j, align 4
  %dividend27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %j26
  store i128 %remainder24, i128* %dividend27, align 4
  br label %loop.latch28

loop.latch28:                                     ; preds = %loop.body18
  %j29 = load i128, i128* %j, align 4
  %sub30 = sub i128 %j29, 1
  store i128 %sub30, i128* %j, align 4
  %j31 = load i128, i128* %j, align 4
  %sge = icmp sge i128 %j31, 0
  br i1 %sge, label %loop.body18, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch28
  br label %if.exit

loop.body34:                                      ; preds = %loop.latch44, %if.false
  %remainder35 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %j36 = load i128, i128* %j, align 4
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %j36, %i37
  %array_getter39 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder35, i128 0, i128 %add38
  %remainder40 = load i128, i128* %array_getter39, align 4
  %ptr_getter41 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %j42 = load i128, i128* %j, align 4
  %dividend43 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter41, i128 0, i128 %j42
  store i128 %remainder40, i128* %dividend43, align 4
  br label %loop.latch44

loop.latch44:                                     ; preds = %loop.body34
  %j45 = load i128, i128* %j, align 4
  %sub46 = sub i128 %j45, 1
  store i128 %sub46, i128* %j, align 4
  %j47 = load i128, i128* %j, align 4
  %sge48 = icmp sge i128 %j47, 0
  br i1 %sge48, label %loop.body34, label %loop.exit49

loop.exit49:                                      ; preds = %loop.latch44
  br label %if.exit

if.exit:                                          ; preds = %loop.exit49, %loop.exit32
  %n = load i128, i128* %n.bind, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %dividend51 = load [256 x i128]*, [256 x i128]** %dividend, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call i128 @short_div(i128 %n, i128 %k50, [256 x i128]* %dividend51, [256 x i128]* %b)
  %ptr_getter52 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i53 = load i128, i128* %i, align 4
  %out54 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter52, i128 0, i128 0, i128 %i53
  store i128 %call, i128* %out54, align 4
  %n55 = load i128, i128* %n.bind, align 4
  %k56 = load i128, i128* %k.bind, align 4
  %out57 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out57, i128 0, i128 0, i128 %i58
  %out60 = load i128, i128* %array_getter59, align 4
  %b61 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call62 = call [256 x i128]* @long_scalar_mult(i128 %n55, i128 %k56, i128 %out60, [256 x i128]* %b61)
  store [256 x i128]* %call62, [256 x i128]** %mult_shift, align 8
  %uniform_array63 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array63, [256 x i128]** %subtrahend, align 8
  store i128 0, i128* %j, align 4
  br label %loop.body64

loop.body64:                                      ; preds = %loop.latch68, %if.exit
  %ptr_getter65 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %j66 = load i128, i128* %j, align 4
  %subtrahend67 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter65, i128 0, i128 %j66
  store i128 0, i128* %subtrahend67, align 4
  br label %loop.latch68

loop.latch68:                                     ; preds = %loop.body64
  %j69 = load i128, i128* %j, align 4
  %add70 = add i128 %j69, 1
  store i128 %add70, i128* %j, align 4
  %j71 = load i128, i128* %j, align 4
  %m72 = load i128, i128* %m.bind, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %add74 = add i128 %m72, %k73
  %slt75 = icmp slt i128 %j71, %add74
  br i1 %slt75, label %loop.body64, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch68
  store i128 0, i128* %j, align 4
  br label %loop.body77

loop.body77:                                      ; preds = %loop.latch97, %loop.exit76
  %i80 = load i128, i128* %i, align 4
  %j81 = load i128, i128* %j, align 4
  %add82 = add i128 %i80, %j81
  %m83 = load i128, i128* %m.bind, align 4
  %k84 = load i128, i128* %k.bind, align 4
  %add85 = add i128 %m83, %k84
  %slt86 = icmp slt i128 %add82, %add85
  br i1 %slt86, label %if.true78, label %if.false79

if.true78:                                        ; preds = %loop.body77
  %mult_shift87 = load [256 x i128]*, [256 x i128]** %mult_shift, align 8
  %j88 = load i128, i128* %j, align 4
  %array_getter89 = getelementptr inbounds [256 x i128], [256 x i128]* %mult_shift87, i128 0, i128 %j88
  %mult_shift90 = load i128, i128* %array_getter89, align 4
  %ptr_getter91 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %i92 = load i128, i128* %i, align 4
  %j93 = load i128, i128* %j, align 4
  %add94 = add i128 %i92, %j93
  %subtrahend95 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter91, i128 0, i128 %add94
  store i128 %mult_shift90, i128* %subtrahend95, align 4
  br label %if.exit96

if.false79:                                       ; preds = %loop.body77
  br label %if.exit96

if.exit96:                                        ; preds = %if.false79, %if.true78
  br label %loop.latch97

loop.latch97:                                     ; preds = %if.exit96
  %j98 = load i128, i128* %j, align 4
  %add99 = add i128 %j98, 1
  store i128 %add99, i128* %j, align 4
  %j100 = load i128, i128* %j, align 4
  %k101 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %j100, %k101
  br i1 %sle, label %loop.body77, label %loop.exit102

loop.exit102:                                     ; preds = %loop.latch97
  %n103 = load i128, i128* %n.bind, align 4
  %m104 = load i128, i128* %m.bind, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %add106 = add i128 %m104, %k105
  %remainder107 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %subtrahend108 = load [256 x i128]*, [256 x i128]** %subtrahend, align 8
  %call109 = call [256 x i128]* @long_sub(i128 %n103, i128 %add106, [256 x i128]* %remainder107, [256 x i128]* %subtrahend108)
  store [256 x i128]* %call109, [256 x i128]** %remainder, align 8
  br label %loop.latch110

loop.latch110:                                    ; preds = %loop.exit102
  %i111 = load i128, i128* %i, align 4
  %sub112 = sub i128 %i111, 1
  store i128 %sub112, i128* %i, align 4
  %i113 = load i128, i128* %i, align 4
  %sge114 = icmp sge i128 %i113, 0
  br i1 %sge114, label %loop.body11, label %loop.exit115

loop.exit115:                                     ; preds = %loop.latch110
  store i128 0, i128* %i, align 4
  br label %loop.body116

loop.body116:                                     ; preds = %loop.latch124, %loop.exit115
  %remainder117 = load [256 x i128]*, [256 x i128]** %remainder, align 8
  %i118 = load i128, i128* %i, align 4
  %array_getter119 = getelementptr inbounds [256 x i128], [256 x i128]* %remainder117, i128 0, i128 %i118
  %remainder120 = load i128, i128* %array_getter119, align 4
  %ptr_getter121 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i122 = load i128, i128* %i, align 4
  %out123 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter121, i128 0, i128 1, i128 %i122
  store i128 %remainder120, i128* %out123, align 4
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body116
  %i125 = load i128, i128* %i, align 4
  %add126 = add i128 %i125, 1
  store i128 %add126, i128* %i, align 4
  %i127 = load i128, i128* %i, align 4
  %k128 = load i128, i128* %k.bind, align 4
  %slt129 = icmp slt i128 %i127, %k128
  br i1 %slt129, label %loop.body116, label %loop.exit130

loop.exit130:                                     ; preds = %loop.latch124
  %ptr_getter131 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %k132 = load i128, i128* %k.bind, align 4
  %out133 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter131, i128 0, i128 1, i128 %k132
  store i128 0, i128* %out133, align 4
  %out134 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out134
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigsub** getelementptr (%struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** null, i32 1) to i32))
  %neg = bitcast i8* %malloccall to %struct_template_circuit_bigsub**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigiszero** getelementptr (%struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** null, i32 1) to i32))
  %is_zero = bitcast i8* %malloccall4 to %struct_template_circuit_bigiszero**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %idx = bitcast i8* %malloccall5 to i128*
  %out = alloca [256 x i128]*, align 8
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
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %idx11 = load i128, i128* %idx, align 4
  %neg12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %idx11
  store i128 %p9, i128* %neg12, align 4
  %neg13 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg13, i32 0, i32 2
  %read_input_outter.bigsub.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %idx16 = load i128, i128* %idx, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a15, i128 0, i128 %idx16
  %neg18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg18, i128 %p9, i1* @constraint.162)
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %idx19 = load i128, i128* %idx, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %idx19
  %in21 = load i128, i128* %array_getter20, align 4
  %ptr_getter22 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter22, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %idx24 = load i128, i128* %idx, align 4
  %neg25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %idx24
  store i128 %in21, i128* %neg25, align 4
  %neg26 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %neg, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %neg26, i32 0, i32 3
  %read_input_outter.bigsub.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %idx29 = load i128, i128* %idx, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b28, i128 0, i128 %idx29
  %neg31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %neg31, i128 %in21, i1* @constraint.163)
  %in32 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %idx33 = load i128, i128* %idx, align 4
  %array_getter34 = getelementptr inbounds [256 x i128], [256 x i128]* %in32, i128 0, i128 %idx33
  %in35 = load i128, i128* %array_getter34, align 4
  %ptr_getter36 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %is_zero, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %ptr_getter36, i32 0, i32 1
  %read_input_outter.bigiszero.in = load [256 x i128]*, [256 x i128]** %struct_getter37, align 8
  %idx38 = load i128, i128* %idx, align 4
  %is_zero39 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in, i128 0, i128 %idx38
  store i128 %in35, i128* %is_zero39, align 4
  %is_zero40 = load %struct_template_circuit_bigiszero*, %struct_template_circuit_bigiszero** %is_zero, align 8
  %struct_getter41 = getelementptr inbounds %struct_template_circuit_bigiszero, %struct_template_circuit_bigiszero* %is_zero40, i32 0, i32 1
  %read_input_outter.bigiszero.in42 = load [256 x i128]*, [256 x i128]** %struct_getter41, align 8
  %idx43 = load i128, i128* %idx, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigiszero.in42, i128 0, i128 %idx43
  %is_zero45 = load i128, i128* %array_getter44, align 4
  call void @fn_intrinsic_add_constraint(i128 %is_zero45, i128 %in35, i1* @constraint.164)
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
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.bigsub.underflow, i128 0, i1* @constraint.165)
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
  %ptr_getter59 = load [256 x i128]*, [256 x i128]** %out, align 8
  %idx60 = load i128, i128* %idx, align 4
  %out61 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter59, i128 0, i128 %idx60
  store i128 %mul, i128* %out61, align 4
  %out62 = load [256 x i128]*, [256 x i128]** %out, align 8
  %idx63 = load i128, i128* %idx, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %out62, i128 0, i128 %idx63
  %out65 = load i128, i128* %array_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %out65, i128 %mul, i1* @constraint.166)
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall5 to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %flag = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall7 to %struct_template_circuit_bigadd**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigsub** getelementptr (%struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** null, i32 1) to i32))
  %sub = bitcast i8* %malloccall8 to %struct_template_circuit_bigsub**
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n, i128 %k)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i12 = load i128, i128* %i, align 4
  %sub13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i12
  store i128 %a10, i128* %sub13, align 4
  %sub14 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub14, i32 0, i32 2
  %read_input_outter.bigsub.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a16, i128 0, i128 %i17
  %sub19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub19, i128 %a10, i1* @constraint.167)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i20
  %b22 = load i128, i128* %array_getter21, align 4
  %ptr_getter23 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter23, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i25 = load i128, i128* %i, align 4
  %sub26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i25
  store i128 %b22, i128* %sub26, align 4
  %sub27 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub27, i32 0, i32 3
  %read_input_outter.bigsub.b29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b29, i128 0, i128 %i30
  %sub32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub32, i128 %b22, i1* @constraint.168)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  store i128 %add34, i128* %i, align 4
  %i35 = load i128, i128* %i, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i35, %k36
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub37 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub37, i32 0, i32 5
  %read_output_outter.bigsub.underflow = load i128, i128* %struct_getter38, align 4
  store i128 %read_output_outter.bigsub.underflow, i128* %flag, align 4
  %flag39 = load i128, i128* %flag, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag39, i128 %read_output_outter.bigsub.underflow, i1* @constraint.169)
  %n40 = load i128, i128* %n.bind, align 4
  %k41 = load i128, i128* %k.bind, align 4
  %call42 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n40, i128 %k41)
  store %struct_template_circuit_bigadd* %call42, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch72, %loop.exit
  %sub44 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub44, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %i46
  %sub48 = load i128, i128* %array_getter47, align 4
  %ptr_getter49 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter49, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %i51 = load i128, i128* %i, align 4
  %add52 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i51
  store i128 %sub48, i128* %add52, align 4
  %add53 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add53, i32 0, i32 2
  %read_input_outter.bigadd.a55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a55, i128 0, i128 %i56
  %add58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %add58, i128 %sub48, i1* @constraint.170)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i59
  %p61 = load i128, i128* %array_getter60, align 4
  %ptr_getter62 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter62, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %i64 = load i128, i128* %i, align 4
  %add65 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i64
  store i128 %p61, i128* %add65, align 4
  %add66 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add66, i32 0, i32 3
  %read_input_outter.bigadd.b68 = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %i69 = load i128, i128* %i, align 4
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b68, i128 0, i128 %i69
  %add71 = load i128, i128* %array_getter70, align 4
  call void @fn_intrinsic_add_constraint(i128 %add71, i128 %p61, i1* @constraint.171)
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.body43
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  store i128 %add74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %k76 = load i128, i128* %k.bind, align 4
  %slt77 = icmp slt i128 %i75, %k76
  br i1 %slt77, label %loop.body43, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  store i128 0, i128* %i, align 4
  br label %loop.body79

loop.body79:                                      ; preds = %loop.latch114, %loop.exit78
  %flag80 = load i128, i128* %flag, align 4
  %sub81 = sub i128 1, %flag80
  %sub82 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub82, i32 0, i32 4
  %read_output_outter.bigsub.out84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out84, i128 0, i128 %i85
  %sub87 = load i128, i128* %array_getter86, align 4
  %mul = mul i128 %sub81, %sub87
  %ptr_getter88 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i89 = load i128, i128* %i, align 4
  %tmp90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter88, i128 0, i128 %i89
  store i128 %mul, i128* %tmp90, align 4
  %tmp91 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp91, i128 0, i128 %i92
  %tmp94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp94, i128 %mul, i1* @constraint.172)
  %tmp95 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp95, i128 0, i128 %i96
  %tmp98 = load i128, i128* %array_getter97, align 4
  %flag99 = load i128, i128* %flag, align 4
  %add100 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add100, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter101, align 8
  %i102 = load i128, i128* %i, align 4
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i102
  %add104 = load i128, i128* %array_getter103, align 4
  %mul105 = mul i128 %flag99, %add104
  %add106 = add i128 %tmp98, %mul105
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i108 = load i128, i128* %i, align 4
  %out109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %i108
  store i128 %add106, i128* %out109, align 4
  %out110 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i111 = load i128, i128* %i, align 4
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %out110, i128 0, i128 %i111
  %out113 = load i128, i128* %array_getter112, align 4
  call void @fn_intrinsic_add_constraint(i128 %out113, i128 %add106, i1* @constraint.173)
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body79
  %i115 = load i128, i128* %i, align 4
  %add116 = add i128 %i115, 1
  store i128 %add116, i128* %i, align 4
  %i117 = load i128, i128* %i, align 4
  %k118 = load i128, i128* %k.bind, align 4
  %slt119 = icmp slt i128 %i117, %k118
  br i1 %slt119, label %loop.body79, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  br label %exit

exit:                                             ; preds = %loop.exit120
  %out121 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpsubtract.out = getelementptr inbounds %struct_template_circuit_fpsubtract, %struct_template_circuit_fpsubtract* %0, i32 0, i32 5
  store [256 x i128]* %out121, [256 x i128]** %write_output_inner.fpsubtract.out, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmult** getelementptr (%struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** null, i32 1) to i32))
  %mul = bitcast i8* %malloccall to %struct_template_circuit_bigmult**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %mod_range_checks = bitcast i8* %malloccall6 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall7 to %struct_template_circuit_bigadd**
  %mod = alloca [256 x i128]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall8 to %struct_template_circuit_biglessthan**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %longdiv = bitcast i8* %malloccall9 to [256 x [256 x i128]]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %div_range_checks = bitcast i8* %malloccall10 to [256 x %struct_template_circuit_num2bits*]**
  %div = alloca [256 x i128]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %k11 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %m, %k11
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 %sub, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv12, i128 0, i128 1, i128 %i13
  %longdiv14 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i15 = load i128, i128* %i, align 4
  %mod16 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i15
  store i128 %longdiv14, i128* %mod16, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i17 = load i128, i128* %i, align 4
  %add18 = add i128 %i17, 1
  store i128 %add18, i128* %i, align 4
  %i19 = load i128, i128* %i, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i19, %k20
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch29, %loop.exit
  %longdiv22 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i23 = load i128, i128* %i, align 4
  %array_getter24 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv22, i128 0, i128 0, i128 %i23
  %longdiv25 = load i128, i128* %array_getter24, align 4
  %ptr_getter26 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i27 = load i128, i128* %i, align 4
  %div28 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter26, i128 0, i128 %i27
  store i128 %longdiv25, i128* %div28, align 4
  br label %loop.latch29

loop.latch29:                                     ; preds = %loop.body21
  %i30 = load i128, i128* %i, align 4
  %add31 = add i128 %i30, 1
  store i128 %add31, i128* %i, align 4
  %i32 = load i128, i128* %i, align 4
  %m33 = load i128, i128* %m.bind, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %sub35 = sub i128 %m33, %k34
  %sle = icmp sle i128 %i32, %sub35
  br i1 %sle, label %loop.body21, label %loop.exit36

loop.exit36:                                      ; preds = %loop.latch29
  store i128 0, i128* %i, align 4
  br label %loop.body37

loop.body37:                                      ; preds = %loop.latch56, %loop.exit36
  %n38 = load i128, i128* %n.bind, align 4
  %call39 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n38)
  %ptr_getter40 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i41 = load i128, i128* %i, align 4
  %div_range_checks42 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter40, i128 0, i128 %i41
  store %struct_template_circuit_num2bits* %call39, %struct_template_circuit_num2bits** %div_range_checks42, align 8
  %div43 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x i128], [256 x i128]* %div43, i128 0, i128 %i44
  %div46 = load i128, i128* %array_getter45, align 4
  %ptr_getter47 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter47, i128 0, i128 %i48
  %div_range_checks50 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter49, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks50, i32 0, i32 1
  store i128 %div46, i128* %write_input_outter.num2bits.in, align 4
  %div_range_checks51 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i52 = load i128, i128* %i, align 4
  %array_getter53 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks51, i128 0, i128 %i52
  %div_range_checks54 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter53, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks54, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter55, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %div46, i1* @constraint.174)
  br label %loop.latch56

loop.latch56:                                     ; preds = %loop.body37
  %i57 = load i128, i128* %i, align 4
  %add58 = add i128 %i57, 1
  store i128 %add58, i128* %i, align 4
  %i59 = load i128, i128* %i, align 4
  %m60 = load i128, i128* %m.bind, align 4
  %k61 = load i128, i128* %k.bind, align 4
  %sub62 = sub i128 %m60, %k61
  %sle63 = icmp sle i128 %i59, %sub62
  br i1 %sle63, label %loop.body37, label %loop.exit64

loop.exit64:                                      ; preds = %loop.latch56
  store i128 0, i128* %i, align 4
  br label %loop.body65

loop.body65:                                      ; preds = %loop.latch86, %loop.exit64
  %n66 = load i128, i128* %n.bind, align 4
  %call67 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n66)
  %ptr_getter68 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i69 = load i128, i128* %i, align 4
  %mod_range_checks70 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter68, i128 0, i128 %i69
  store %struct_template_circuit_num2bits* %call67, %struct_template_circuit_num2bits** %mod_range_checks70, align 8
  %mod71 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x i128], [256 x i128]* %mod71, i128 0, i128 %i72
  %mod74 = load i128, i128* %array_getter73, align 4
  %ptr_getter75 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i76 = load i128, i128* %i, align 4
  %array_getter77 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter75, i128 0, i128 %i76
  %mod_range_checks78 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter77, align 8
  %write_input_outter.num2bits.in79 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks78, i32 0, i32 1
  store i128 %mod74, i128* %write_input_outter.num2bits.in79, align 4
  %mod_range_checks80 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i81 = load i128, i128* %i, align 4
  %array_getter82 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks80, i128 0, i128 %i81
  %mod_range_checks83 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter82, align 8
  %struct_getter84 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks83, i32 0, i32 1
  %read_input_outter.num2bits.in85 = load i128, i128* %struct_getter84, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in85, i128 %mod74, i1* @constraint.175)
  br label %loop.latch86

loop.latch86:                                     ; preds = %loop.body65
  %i87 = load i128, i128* %i, align 4
  %add88 = add i128 %i87, 1
  store i128 %add88, i128* %i, align 4
  %i89 = load i128, i128* %i, align 4
  %k90 = load i128, i128* %k.bind, align 4
  %slt91 = icmp slt i128 %i89, %k90
  br i1 %slt91, label %loop.body65, label %loop.exit92

loop.exit92:                                      ; preds = %loop.latch86
  %n93 = load i128, i128* %n.bind, align 4
  %m94 = load i128, i128* %m.bind, align 4
  %k95 = load i128, i128* %k.bind, align 4
  %sub96 = sub i128 %m94, %k95
  %add97 = add i128 %sub96, 1
  %call98 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n93, i128 %add97)
  store %struct_template_circuit_bigmult* %call98, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body99

loop.body99:                                      ; preds = %loop.latch128, %loop.exit92
  %div100 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i101 = load i128, i128* %i, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %div100, i128 0, i128 %i101
  %div103 = load i128, i128* %array_getter102, align 4
  %ptr_getter104 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter105 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter104, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter105, align 8
  %i106 = load i128, i128* %i, align 4
  %mul107 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i106
  store i128 %div103, i128* %mul107, align 4
  %mul108 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul108, i32 0, i32 2
  %read_input_outter.bigmult.a110 = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %i111 = load i128, i128* %i, align 4
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a110, i128 0, i128 %i111
  %mul113 = load i128, i128* %array_getter112, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul113, i128 %div103, i1* @constraint.176)
  %b114 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i115 = load i128, i128* %i, align 4
  %array_getter116 = getelementptr inbounds [256 x i128], [256 x i128]* %b114, i128 0, i128 %i115
  %b117 = load i128, i128* %array_getter116, align 4
  %ptr_getter118 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter119 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter118, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter119, align 8
  %i120 = load i128, i128* %i, align 4
  %mul121 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i120
  store i128 %b117, i128* %mul121, align 4
  %mul122 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter123 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul122, i32 0, i32 3
  %read_input_outter.bigmult.b124 = load [256 x i128]*, [256 x i128]** %struct_getter123, align 8
  %i125 = load i128, i128* %i, align 4
  %array_getter126 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b124, i128 0, i128 %i125
  %mul127 = load i128, i128* %array_getter126, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul127, i128 %b117, i1* @constraint.177)
  br label %loop.latch128

loop.latch128:                                    ; preds = %loop.body99
  %i129 = load i128, i128* %i, align 4
  %add130 = add i128 %i129, 1
  store i128 %add130, i128* %i, align 4
  %i131 = load i128, i128* %i, align 4
  %k132 = load i128, i128* %k.bind, align 4
  %slt133 = icmp slt i128 %i131, %k132
  br i1 %slt133, label %loop.body99, label %loop.exit134

loop.exit134:                                     ; preds = %loop.latch128
  %k135 = load i128, i128* %k.bind, align 4
  store i128 %k135, i128* %i, align 4
  br label %loop.body136

loop.body136:                                     ; preds = %loop.latch163, %loop.exit134
  %div137 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %div137, i128 0, i128 %i138
  %div140 = load i128, i128* %array_getter139, align 4
  %ptr_getter141 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter141, i32 0, i32 2
  %read_input_outter.bigmult.a143 = load [256 x i128]*, [256 x i128]** %struct_getter142, align 8
  %i144 = load i128, i128* %i, align 4
  %mul145 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a143, i128 0, i128 %i144
  store i128 %div140, i128* %mul145, align 4
  %mul146 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul146, i32 0, i32 2
  %read_input_outter.bigmult.a148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %i149 = load i128, i128* %i, align 4
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a148, i128 0, i128 %i149
  %mul151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul151, i128 %div140, i1* @constraint.178)
  %ptr_getter152 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter153 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter152, i32 0, i32 3
  %read_input_outter.bigmult.b154 = load [256 x i128]*, [256 x i128]** %struct_getter153, align 8
  %i155 = load i128, i128* %i, align 4
  %mul156 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b154, i128 0, i128 %i155
  store i128 0, i128* %mul156, align 4
  %mul157 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter158 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul157, i32 0, i32 3
  %read_input_outter.bigmult.b159 = load [256 x i128]*, [256 x i128]** %struct_getter158, align 8
  %i160 = load i128, i128* %i, align 4
  %array_getter161 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b159, i128 0, i128 %i160
  %mul162 = load i128, i128* %array_getter161, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul162, i128 0, i1* @constraint.179)
  br label %loop.latch163

loop.latch163:                                    ; preds = %loop.body136
  %i164 = load i128, i128* %i, align 4
  %add165 = add i128 %i164, 1
  store i128 %add165, i128* %i, align 4
  %i166 = load i128, i128* %i, align 4
  %m167 = load i128, i128* %m.bind, align 4
  %k168 = load i128, i128* %k.bind, align 4
  %sub169 = sub i128 %m167, %k168
  %sle170 = icmp sle i128 %i166, %sub169
  br i1 %sle170, label %loop.body136, label %loop.exit171

loop.exit171:                                     ; preds = %loop.latch163
  %m172 = load i128, i128* %m.bind, align 4
  store i128 %m172, i128* %i, align 4
  br label %loop.body173

loop.body173:                                     ; preds = %loop.latch179, %loop.exit171
  %mul174 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter175 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul174, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter175, align 8
  %i176 = load i128, i128* %i, align 4
  %array_getter177 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i176
  %mul178 = load i128, i128* %array_getter177, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul178, i128 0, i1* @constraint.180)
  br label %loop.latch179

loop.latch179:                                    ; preds = %loop.body173
  %i180 = load i128, i128* %i, align 4
  %add181 = add i128 %i180, 1
  store i128 %add181, i128* %i, align 4
  %i182 = load i128, i128* %i, align 4
  %m183 = load i128, i128* %m.bind, align 4
  %k184 = load i128, i128* %k.bind, align 4
  %sub185 = sub i128 %m183, %k184
  %mul186 = mul i128 2, %sub185
  %add187 = add i128 %mul186, 2
  %slt188 = icmp slt i128 %i182, %add187
  br i1 %slt188, label %loop.body173, label %loop.exit189

loop.exit189:                                     ; preds = %loop.latch179
  %n190 = load i128, i128* %n.bind, align 4
  %m191 = load i128, i128* %m.bind, align 4
  %call192 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n190, i128 %m191)
  store %struct_template_circuit_bigadd* %call192, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body193

loop.body193:                                     ; preds = %loop.latch238, %loop.exit189
  %mul194 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter195 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul194, i32 0, i32 4
  %read_output_outter.bigmult.out196 = load [256 x i128]*, [256 x i128]** %struct_getter195, align 8
  %i197 = load i128, i128* %i, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out196, i128 0, i128 %i197
  %mul199 = load i128, i128* %array_getter198, align 4
  %ptr_getter200 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter200, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter201, align 8
  %i202 = load i128, i128* %i, align 4
  %add203 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i202
  store i128 %mul199, i128* %add203, align 4
  %add204 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter205 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add204, i32 0, i32 2
  %read_input_outter.bigadd.a206 = load [256 x i128]*, [256 x i128]** %struct_getter205, align 8
  %i207 = load i128, i128* %i, align 4
  %array_getter208 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a206, i128 0, i128 %i207
  %add209 = load i128, i128* %array_getter208, align 4
  call void @fn_intrinsic_add_constraint(i128 %add209, i128 %mul199, i1* @constraint.181)
  %i210 = load i128, i128* %i, align 4
  %k211 = load i128, i128* %k.bind, align 4
  %slt212 = icmp slt i128 %i210, %k211
  br i1 %slt212, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body193
  %mod213 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i214 = load i128, i128* %i, align 4
  %array_getter215 = getelementptr inbounds [256 x i128], [256 x i128]* %mod213, i128 0, i128 %i214
  %mod216 = load i128, i128* %array_getter215, align 4
  %ptr_getter217 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter218 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter217, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter218, align 8
  %i219 = load i128, i128* %i, align 4
  %add220 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i219
  store i128 %mod216, i128* %add220, align 4
  %add221 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter222 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add221, i32 0, i32 3
  %read_input_outter.bigadd.b223 = load [256 x i128]*, [256 x i128]** %struct_getter222, align 8
  %i224 = load i128, i128* %i, align 4
  %array_getter225 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b223, i128 0, i128 %i224
  %add226 = load i128, i128* %array_getter225, align 4
  call void @fn_intrinsic_add_constraint(i128 %add226, i128 %mod216, i1* @constraint.182)
  br label %if.exit

if.false:                                         ; preds = %loop.body193
  %ptr_getter227 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter228 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter227, i32 0, i32 3
  %read_input_outter.bigadd.b229 = load [256 x i128]*, [256 x i128]** %struct_getter228, align 8
  %i230 = load i128, i128* %i, align 4
  %add231 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b229, i128 0, i128 %i230
  store i128 0, i128* %add231, align 4
  %add232 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter233 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add232, i32 0, i32 3
  %read_input_outter.bigadd.b234 = load [256 x i128]*, [256 x i128]** %struct_getter233, align 8
  %i235 = load i128, i128* %i, align 4
  %array_getter236 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b234, i128 0, i128 %i235
  %add237 = load i128, i128* %array_getter236, align 4
  call void @fn_intrinsic_add_constraint(i128 %add237, i128 0, i1* @constraint.183)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch238

loop.latch238:                                    ; preds = %if.exit
  %i239 = load i128, i128* %i, align 4
  %add240 = add i128 %i239, 1
  store i128 %add240, i128* %i, align 4
  %i241 = load i128, i128* %i, align 4
  %m242 = load i128, i128* %m.bind, align 4
  %slt243 = icmp slt i128 %i241, %m242
  br i1 %slt243, label %loop.body193, label %loop.exit244

loop.exit244:                                     ; preds = %loop.latch238
  store i128 0, i128* %i, align 4
  br label %loop.body245

loop.body245:                                     ; preds = %loop.latch255, %loop.exit244
  %add246 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter247 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add246, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter247, align 8
  %i248 = load i128, i128* %i, align 4
  %array_getter249 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i248
  %add250 = load i128, i128* %array_getter249, align 4
  %a251 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i252 = load i128, i128* %i, align 4
  %array_getter253 = getelementptr inbounds [256 x i128], [256 x i128]* %a251, i128 0, i128 %i252
  %a254 = load i128, i128* %array_getter253, align 4
  call void @fn_intrinsic_add_constraint(i128 %add250, i128 %a254, i1* @constraint.184)
  br label %loop.latch255

loop.latch255:                                    ; preds = %loop.body245
  %i256 = load i128, i128* %i, align 4
  %add257 = add i128 %i256, 1
  store i128 %add257, i128* %i, align 4
  %i258 = load i128, i128* %i, align 4
  %m259 = load i128, i128* %m.bind, align 4
  %slt260 = icmp slt i128 %i258, %m259
  br i1 %slt260, label %loop.body245, label %loop.exit261

loop.exit261:                                     ; preds = %loop.latch255
  %add262 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter263 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add262, i32 0, i32 4
  %read_output_outter.bigadd.out264 = load [256 x i128]*, [256 x i128]** %struct_getter263, align 8
  %m265 = load i128, i128* %m.bind, align 4
  %array_getter266 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out264, i128 0, i128 %m265
  %add267 = load i128, i128* %array_getter266, align 4
  call void @fn_intrinsic_add_constraint(i128 %add267, i128 0, i1* @constraint.185)
  %n268 = load i128, i128* %n.bind, align 4
  %k269 = load i128, i128* %k.bind, align 4
  %call270 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n268, i128 %k269)
  store %struct_template_circuit_biglessthan* %call270, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body271

loop.body271:                                     ; preds = %loop.latch300, %loop.exit261
  %mod272 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i273 = load i128, i128* %i, align 4
  %array_getter274 = getelementptr inbounds [256 x i128], [256 x i128]* %mod272, i128 0, i128 %i273
  %mod275 = load i128, i128* %array_getter274, align 4
  %ptr_getter276 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter277 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter276, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter277, align 8
  %i278 = load i128, i128* %i, align 4
  %lt279 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i278
  store i128 %mod275, i128* %lt279, align 4
  %lt280 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter281 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt280, i32 0, i32 2
  %read_input_outter.biglessthan.a282 = load [256 x i128]*, [256 x i128]** %struct_getter281, align 8
  %i283 = load i128, i128* %i, align 4
  %array_getter284 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a282, i128 0, i128 %i283
  %lt285 = load i128, i128* %array_getter284, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt285, i128 %mod275, i1* @constraint.186)
  %b286 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i287 = load i128, i128* %i, align 4
  %array_getter288 = getelementptr inbounds [256 x i128], [256 x i128]* %b286, i128 0, i128 %i287
  %b289 = load i128, i128* %array_getter288, align 4
  %ptr_getter290 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter291 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter290, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter291, align 8
  %i292 = load i128, i128* %i, align 4
  %lt293 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i292
  store i128 %b289, i128* %lt293, align 4
  %lt294 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter295 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt294, i32 0, i32 3
  %read_input_outter.biglessthan.b296 = load [256 x i128]*, [256 x i128]** %struct_getter295, align 8
  %i297 = load i128, i128* %i, align 4
  %array_getter298 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b296, i128 0, i128 %i297
  %lt299 = load i128, i128* %array_getter298, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt299, i128 %b289, i1* @constraint.187)
  br label %loop.latch300

loop.latch300:                                    ; preds = %loop.body271
  %i301 = load i128, i128* %i, align 4
  %add302 = add i128 %i301, 1
  store i128 %add302, i128* %i, align 4
  %i303 = load i128, i128* %i, align 4
  %k304 = load i128, i128* %k.bind, align 4
  %slt305 = icmp slt i128 %i303, %k304
  br i1 %slt305, label %loop.body271, label %loop.exit306

loop.exit306:                                     ; preds = %loop.latch300
  %lt307 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter308 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt307, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter308, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.188)
  br label %exit

exit:                                             ; preds = %loop.exit306
  %div309 = load [256 x i128]*, [256 x i128]** %div, align 8
  %write_output_inner.bigmod2.div = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 5
  store [256 x i128]* %div309, [256 x i128]** %write_output_inner.bigmod2.div, align 8
  %mod310 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %write_output_inner.bigmod2.mod = getelementptr inbounds %struct_template_circuit_bigmod2, %struct_template_circuit_bigmod2* %0, i32 0, i32 6
  store [256 x i128]* %mod310, [256 x i128]** %write_output_inner.bigmod2.mod, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigsub** getelementptr (%struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** null, i32 1) to i32))
  %sub = bitcast i8* %malloccall to %struct_template_circuit_bigsub**
  %out = alloca [256 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall6 to %struct_template_circuit_biglessthan**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall7 to %struct_template_circuit_bigadd**
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n, i128 %k)
  store %struct_template_circuit_bigadd* %call, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %add12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i11
  store i128 %a9, i128* %add12, align 4
  %add13 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add13, i32 0, i32 2
  %read_input_outter.bigadd.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a15, i128 0, i128 %i16
  %add18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %add18, i128 %a9, i1* @constraint.189)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i19
  %b21 = load i128, i128* %array_getter20, align 4
  %ptr_getter22 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter22, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %add25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i24
  store i128 %b21, i128* %add25, align 4
  %add26 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add26, i32 0, i32 3
  %read_input_outter.bigadd.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b28, i128 0, i128 %i29
  %add31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %add31, i128 %b21, i1* @constraint.190)
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
  %n36 = load i128, i128* %n.bind, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %add38 = add i128 %k37, 1
  %call39 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n36, i128 %add38)
  store %struct_template_circuit_biglessthan* %call39, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch69, %loop.exit
  %add41 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add41, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i43
  %add45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter46, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter47, align 8
  %i48 = load i128, i128* %i, align 4
  %lt49 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i48
  store i128 %add45, i128* %lt49, align 4
  %lt50 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt50, i32 0, i32 2
  %read_input_outter.biglessthan.a52 = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a52, i128 0, i128 %i53
  %lt55 = load i128, i128* %array_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt55, i128 %add45, i1* @constraint.191)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i56
  %p58 = load i128, i128* %array_getter57, align 4
  %ptr_getter59 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter59, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %i61 = load i128, i128* %i, align 4
  %lt62 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i61
  store i128 %p58, i128* %lt62, align 4
  %lt63 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt63, i32 0, i32 3
  %read_input_outter.biglessthan.b65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b65, i128 0, i128 %i66
  %lt68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt68, i128 %p58, i1* @constraint.192)
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.body40
  %i70 = load i128, i128* %i, align 4
  %add71 = add i128 %i70, 1
  store i128 %add71, i128* %i, align 4
  %i72 = load i128, i128* %i, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %slt74 = icmp slt i128 %i72, %k73
  br i1 %slt74, label %loop.body40, label %loop.exit75

loop.exit75:                                      ; preds = %loop.latch69
  %add76 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add76, i32 0, i32 4
  %read_output_outter.bigadd.out78 = load [256 x i128]*, [256 x i128]** %struct_getter77, align 8
  %k79 = load i128, i128* %k.bind, align 4
  %array_getter80 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out78, i128 0, i128 %k79
  %add81 = load i128, i128* %array_getter80, align 4
  %ptr_getter82 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter82, i32 0, i32 2
  %read_input_outter.biglessthan.a84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %k85 = load i128, i128* %k.bind, align 4
  %lt86 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a84, i128 0, i128 %k85
  store i128 %add81, i128* %lt86, align 4
  %lt87 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt87, i32 0, i32 2
  %read_input_outter.biglessthan.a89 = load [256 x i128]*, [256 x i128]** %struct_getter88, align 8
  %k90 = load i128, i128* %k.bind, align 4
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a89, i128 0, i128 %k90
  %lt92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt92, i128 %add81, i1* @constraint.193)
  %ptr_getter93 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter93, i32 0, i32 3
  %read_input_outter.biglessthan.b95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %k96 = load i128, i128* %k.bind, align 4
  %lt97 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b95, i128 0, i128 %k96
  store i128 0, i128* %lt97, align 4
  %lt98 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt98, i32 0, i32 3
  %read_input_outter.biglessthan.b100 = load [256 x i128]*, [256 x i128]** %struct_getter99, align 8
  %k101 = load i128, i128* %k.bind, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b100, i128 0, i128 %k101
  %lt103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt103, i128 0, i1* @constraint.194)
  %n104 = load i128, i128* %n.bind, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %add106 = add i128 %k105, 1
  %call107 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n104, i128 %add106)
  store %struct_template_circuit_bigsub* %call107, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch142, %loop.exit75
  %add109 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add109, i32 0, i32 4
  %read_output_outter.bigadd.out111 = load [256 x i128]*, [256 x i128]** %struct_getter110, align 8
  %i112 = load i128, i128* %i, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out111, i128 0, i128 %i112
  %add114 = load i128, i128* %array_getter113, align 4
  %ptr_getter115 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter115, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter116, align 8
  %i117 = load i128, i128* %i, align 4
  %sub118 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i117
  store i128 %add114, i128* %sub118, align 4
  %sub119 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub119, i32 0, i32 2
  %read_input_outter.bigsub.a121 = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %i122 = load i128, i128* %i, align 4
  %array_getter123 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a121, i128 0, i128 %i122
  %sub124 = load i128, i128* %array_getter123, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub124, i128 %add114, i1* @constraint.195)
  %lt125 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt125, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter126, align 4
  %sub127 = sub i128 1, %read_output_outter.biglessthan.out
  %p128 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i129 = load i128, i128* %i, align 4
  %array_getter130 = getelementptr inbounds [256 x i128], [256 x i128]* %p128, i128 0, i128 %i129
  %p131 = load i128, i128* %array_getter130, align 4
  %mul = mul i128 %sub127, %p131
  %ptr_getter132 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter133 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter132, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter133, align 8
  %i134 = load i128, i128* %i, align 4
  %sub135 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i134
  store i128 %mul, i128* %sub135, align 4
  %sub136 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub136, i32 0, i32 3
  %read_input_outter.bigsub.b138 = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %i139 = load i128, i128* %i, align 4
  %array_getter140 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b138, i128 0, i128 %i139
  %sub141 = load i128, i128* %array_getter140, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub141, i128 %mul, i1* @constraint.196)
  br label %loop.latch142

loop.latch142:                                    ; preds = %loop.body108
  %i143 = load i128, i128* %i, align 4
  %add144 = add i128 %i143, 1
  store i128 %add144, i128* %i, align 4
  %i145 = load i128, i128* %i, align 4
  %k146 = load i128, i128* %k.bind, align 4
  %slt147 = icmp slt i128 %i145, %k146
  br i1 %slt147, label %loop.body108, label %loop.exit148

loop.exit148:                                     ; preds = %loop.latch142
  %add149 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter150 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add149, i32 0, i32 4
  %read_output_outter.bigadd.out151 = load [256 x i128]*, [256 x i128]** %struct_getter150, align 8
  %k152 = load i128, i128* %k.bind, align 4
  %array_getter153 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out151, i128 0, i128 %k152
  %add154 = load i128, i128* %array_getter153, align 4
  %ptr_getter155 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter156 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter155, i32 0, i32 2
  %read_input_outter.bigsub.a157 = load [256 x i128]*, [256 x i128]** %struct_getter156, align 8
  %k158 = load i128, i128* %k.bind, align 4
  %sub159 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a157, i128 0, i128 %k158
  store i128 %add154, i128* %sub159, align 4
  %sub160 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter161 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub160, i32 0, i32 2
  %read_input_outter.bigsub.a162 = load [256 x i128]*, [256 x i128]** %struct_getter161, align 8
  %k163 = load i128, i128* %k.bind, align 4
  %array_getter164 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a162, i128 0, i128 %k163
  %sub165 = load i128, i128* %array_getter164, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub165, i128 %add154, i1* @constraint.197)
  %ptr_getter166 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter167 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter166, i32 0, i32 3
  %read_input_outter.bigsub.b168 = load [256 x i128]*, [256 x i128]** %struct_getter167, align 8
  %k169 = load i128, i128* %k.bind, align 4
  %sub170 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b168, i128 0, i128 %k169
  store i128 0, i128* %sub170, align 4
  %sub171 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter172 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub171, i32 0, i32 3
  %read_input_outter.bigsub.b173 = load [256 x i128]*, [256 x i128]** %struct_getter172, align 8
  %k174 = load i128, i128* %k.bind, align 4
  %array_getter175 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b173, i128 0, i128 %k174
  %sub176 = load i128, i128* %array_getter175, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub176, i128 0, i1* @constraint.198)
  %sub177 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub177, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter178, align 8
  %k179 = load i128, i128* %k.bind, align 4
  %array_getter180 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %k179
  %sub181 = load i128, i128* %array_getter180, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub181, i128 0, i1* @constraint.199)
  store i128 0, i128* %i, align 4
  br label %loop.body182

loop.body182:                                     ; preds = %loop.latch196, %loop.exit148
  %sub183 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter184 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub183, i32 0, i32 4
  %read_output_outter.bigsub.out185 = load [256 x i128]*, [256 x i128]** %struct_getter184, align 8
  %i186 = load i128, i128* %i, align 4
  %array_getter187 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out185, i128 0, i128 %i186
  %sub188 = load i128, i128* %array_getter187, align 4
  %ptr_getter189 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i190 = load i128, i128* %i, align 4
  %out191 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter189, i128 0, i128 %i190
  store i128 %sub188, i128* %out191, align 4
  %out192 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i193 = load i128, i128* %i, align 4
  %array_getter194 = getelementptr inbounds [256 x i128], [256 x i128]* %out192, i128 0, i128 %i193
  %out195 = load i128, i128* %array_getter194, align 4
  call void @fn_intrinsic_add_constraint(i128 %out195, i128 %sub188, i1* @constraint.200)
  br label %loop.latch196

loop.latch196:                                    ; preds = %loop.body182
  %i197 = load i128, i128* %i, align 4
  %add198 = add i128 %i197, 1
  store i128 %add198, i128* %i, align 4
  %i199 = load i128, i128* %i, align 4
  %k200 = load i128, i128* %k.bind, align 4
  %slt201 = icmp slt i128 %i199, %k200
  br i1 %slt201, label %loop.body182, label %loop.exit202

loop.exit202:                                     ; preds = %loop.latch196
  br label %exit

exit:                                             ; preds = %loop.exit202
  %out203 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigaddmodp.out = getelementptr inbounds %struct_template_circuit_bigaddmodp, %struct_template_circuit_bigaddmodp* %0, i32 0, i32 5
  store [256 x i128]* %out203, [256 x i128]** %write_output_inner.bigaddmodp.out, align 8
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
  %temp = alloca [256 x [256 x i128]]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @long_add(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %sum, align 8
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %sum3 = load [256 x i128]*, [256 x i128]** %sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call4 = call [256 x [256 x i128]]* @long_div2(i128 %n1, i128 %k2, i128 1, [256 x i128]* %sum3, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call4, [256 x [256 x i128]]** %temp, align 8
  %temp5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp5, i128 0, i128 1
  %temp6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp6, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
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
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter2 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b3 = load [256 x i128], [256 x i128]* %array_getter2, align 4
  %spice_inline_array4 = alloca [256 x i128], align 8
  store [256 x i128] %b3, [256 x i128]* %spice_inline_array4, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_sub_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array4, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out5 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %b12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b12, i128 0, i128 1
  %b14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %b14, [256 x i128]* %spice_inline_array15, align 4
  %p16 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call17 = call [256 x i128]* @long_sub_mod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15, [256 x i128]* %p16)
  %ptr_getter18 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter18, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out19 to i8*
  %8 = bitcast [256 x i128]* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out20
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall to %struct_template_circuit_biglessthan**
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %q = bitcast i8* %malloccall4 to i128*
  %out = alloca i128, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %r = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %div = bitcast i8* %malloccall7 to i128*
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n, i128 %k)
  store %struct_template_circuit_biglessthan* %call, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i8
  %in9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %lt12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i11
  store i128 %in9, i128* %lt12, align 4
  %lt13 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt13, i32 0, i32 2
  %read_input_outter.biglessthan.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a15, i128 0, i128 %i16
  %lt18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt18, i128 %in9, i1* @constraint.201)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i19
  %p21 = load i128, i128* %array_getter20, align 4
  %ptr_getter22 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter22, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %lt25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i24
  store i128 %p21, i128* %lt25, align 4
  %lt26 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt26, i32 0, i32 3
  %read_input_outter.biglessthan.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b28, i128 0, i128 %i29
  %lt31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt31, i128 %p21, i1* @constraint.202)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i32 = load i128, i128* %i, align 4
  %add = add i128 %i32, 1
  store i128 %add, i128* %i, align 4
  %i33 = load i128, i128* %i, align 4
  %k34 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i33, %k34
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %lt35 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter36 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt35, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter36, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.203)
  %in37 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter38 = getelementptr inbounds [256 x i128], [256 x i128]* %in37, i128 0, i128 0
  %in39 = load i128, i128* %array_getter38, align 4
  %mod = srem i128 %in39, 2
  store i128 %mod, i128* %r, align 4
  %in40 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %in40, i128 0, i128 0
  %in42 = load i128, i128* %array_getter41, align 4
  %r43 = load i128, i128* %r, align 4
  %sub = sub i128 %in42, %r43
  %sdiv = sdiv i128 %sub, 2
  store i128 %sdiv, i128* %q, align 4
  %r44 = load i128, i128* %r, align 4
  store i128 %r44, i128* %out, align 4
  %q45 = load i128, i128* %q, align 4
  store i128 %q45, i128* %div, align 4
  %out46 = load i128, i128* %out, align 4
  %out47 = load i128, i128* %out, align 4
  %sub48 = sub i128 1, %out47
  %mul = mul i128 %out46, %sub48
  call void @fn_intrinsic_add_constraint(i128 %mul, i128 0, i1* @constraint.204)
  %in49 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %array_getter50 = getelementptr inbounds [256 x i128], [256 x i128]* %in49, i128 0, i128 0
  %in51 = load i128, i128* %array_getter50, align 4
  %div52 = load i128, i128* %div, align 4
  %mul53 = mul i128 2, %div52
  %out54 = load i128, i128* %out, align 4
  %add55 = add i128 %mul53, %out54
  call void @fn_intrinsic_add_constraint(i128 %in51, i128 %add55, i1* @constraint.205)
  br label %exit

exit:                                             ; preds = %loop.exit
  %out56 = load i128, i128* %out, align 4
  %write_output_inner.fpsgn0.out = getelementptr inbounds %struct_template_circuit_fpsgn0, %struct_template_circuit_fpsgn0* %0, i32 0, i32 4
  store i128 %out56, i128* %write_output_inner.fpsgn0.out, align 4
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
  %out = alloca [256 x i128]*, align 8
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall to %struct_template_circuit_bigadd**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall5 to %struct_template_circuit_biglessthan**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigsub** getelementptr (%struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** null, i32 1) to i32))
  %sub = bitcast i8* %malloccall7 to %struct_template_circuit_bigsub**
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n, i128 %k)
  store %struct_template_circuit_bigadd* %call, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i8
  %a9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter10 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter10, align 8
  %i11 = load i128, i128* %i, align 4
  %add12 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i11
  store i128 %a9, i128* %add12, align 4
  %add13 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter14 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add13, i32 0, i32 2
  %read_input_outter.bigadd.a15 = load [256 x i128]*, [256 x i128]** %struct_getter14, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a15, i128 0, i128 %i16
  %add18 = load i128, i128* %array_getter17, align 4
  call void @fn_intrinsic_add_constraint(i128 %add18, i128 %a9, i1* @constraint.206)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i19 = load i128, i128* %i, align 4
  %array_getter20 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i19
  %b21 = load i128, i128* %array_getter20, align 4
  %ptr_getter22 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter23 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter22, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter23, align 8
  %i24 = load i128, i128* %i, align 4
  %add25 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i24
  store i128 %b21, i128* %add25, align 4
  %add26 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter27 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add26, i32 0, i32 3
  %read_input_outter.bigadd.b28 = load [256 x i128]*, [256 x i128]** %struct_getter27, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b28, i128 0, i128 %i29
  %add31 = load i128, i128* %array_getter30, align 4
  call void @fn_intrinsic_add_constraint(i128 %add31, i128 %b21, i1* @constraint.207)
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
  %n36 = load i128, i128* %n.bind, align 4
  %k37 = load i128, i128* %k.bind, align 4
  %add38 = add i128 %k37, 1
  %call39 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n36, i128 %add38)
  store %struct_template_circuit_biglessthan* %call39, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch69, %loop.exit
  %add41 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter42 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add41, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter42, align 8
  %i43 = load i128, i128* %i, align 4
  %array_getter44 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i43
  %add45 = load i128, i128* %array_getter44, align 4
  %ptr_getter46 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter47 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter46, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter47, align 8
  %i48 = load i128, i128* %i, align 4
  %lt49 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i48
  store i128 %add45, i128* %lt49, align 4
  %lt50 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt50, i32 0, i32 2
  %read_input_outter.biglessthan.a52 = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a52, i128 0, i128 %i53
  %lt55 = load i128, i128* %array_getter54, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt55, i128 %add45, i1* @constraint.208)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i56
  %p58 = load i128, i128* %array_getter57, align 4
  %ptr_getter59 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter60 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter59, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter60, align 8
  %i61 = load i128, i128* %i, align 4
  %lt62 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i61
  store i128 %p58, i128* %lt62, align 4
  %lt63 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt63, i32 0, i32 3
  %read_input_outter.biglessthan.b65 = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b65, i128 0, i128 %i66
  %lt68 = load i128, i128* %array_getter67, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt68, i128 %p58, i1* @constraint.209)
  br label %loop.latch69

loop.latch69:                                     ; preds = %loop.body40
  %i70 = load i128, i128* %i, align 4
  %add71 = add i128 %i70, 1
  store i128 %add71, i128* %i, align 4
  %i72 = load i128, i128* %i, align 4
  %k73 = load i128, i128* %k.bind, align 4
  %slt74 = icmp slt i128 %i72, %k73
  br i1 %slt74, label %loop.body40, label %loop.exit75

loop.exit75:                                      ; preds = %loop.latch69
  %add76 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add76, i32 0, i32 4
  %read_output_outter.bigadd.out78 = load [256 x i128]*, [256 x i128]** %struct_getter77, align 8
  %k79 = load i128, i128* %k.bind, align 4
  %array_getter80 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out78, i128 0, i128 %k79
  %add81 = load i128, i128* %array_getter80, align 4
  %ptr_getter82 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter82, i32 0, i32 2
  %read_input_outter.biglessthan.a84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %k85 = load i128, i128* %k.bind, align 4
  %lt86 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a84, i128 0, i128 %k85
  store i128 %add81, i128* %lt86, align 4
  %lt87 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter88 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt87, i32 0, i32 2
  %read_input_outter.biglessthan.a89 = load [256 x i128]*, [256 x i128]** %struct_getter88, align 8
  %k90 = load i128, i128* %k.bind, align 4
  %array_getter91 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a89, i128 0, i128 %k90
  %lt92 = load i128, i128* %array_getter91, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt92, i128 %add81, i1* @constraint.210)
  %ptr_getter93 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter93, i32 0, i32 3
  %read_input_outter.biglessthan.b95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %k96 = load i128, i128* %k.bind, align 4
  %lt97 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b95, i128 0, i128 %k96
  store i128 0, i128* %lt97, align 4
  %lt98 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter99 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt98, i32 0, i32 3
  %read_input_outter.biglessthan.b100 = load [256 x i128]*, [256 x i128]** %struct_getter99, align 8
  %k101 = load i128, i128* %k.bind, align 4
  %array_getter102 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b100, i128 0, i128 %k101
  %lt103 = load i128, i128* %array_getter102, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt103, i128 0, i1* @constraint.211)
  %n104 = load i128, i128* %n.bind, align 4
  %k105 = load i128, i128* %k.bind, align 4
  %add106 = add i128 %k105, 1
  %call107 = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n104, i128 %add106)
  store %struct_template_circuit_bigsub* %call107, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch146, %loop.exit75
  %add109 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add109, i32 0, i32 4
  %read_output_outter.bigadd.out111 = load [256 x i128]*, [256 x i128]** %struct_getter110, align 8
  %i112 = load i128, i128* %i, align 4
  %array_getter113 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out111, i128 0, i128 %i112
  %add114 = load i128, i128* %array_getter113, align 4
  %ptr_getter115 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter116 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter115, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter116, align 8
  %i117 = load i128, i128* %i, align 4
  %sub118 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i117
  store i128 %add114, i128* %sub118, align 4
  %sub119 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter120 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub119, i32 0, i32 2
  %read_input_outter.bigsub.a121 = load [256 x i128]*, [256 x i128]** %struct_getter120, align 8
  %i122 = load i128, i128* %i, align 4
  %array_getter123 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a121, i128 0, i128 %i122
  %sub124 = load i128, i128* %array_getter123, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub124, i128 %add114, i1* @constraint.212)
  %p125 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i126 = load i128, i128* %i, align 4
  %array_getter127 = getelementptr inbounds [256 x i128], [256 x i128]* %p125, i128 0, i128 %i126
  %p128 = load i128, i128* %array_getter127, align 4
  %lt129 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter130 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt129, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter130, align 4
  %p131 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %p131, i128 0, i128 %i132
  %p134 = load i128, i128* %array_getter133, align 4
  %mul = mul i128 %read_output_outter.biglessthan.out, %p134
  %sub135 = sub i128 %p128, %mul
  %ptr_getter136 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter137 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter136, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter137, align 8
  %i138 = load i128, i128* %i, align 4
  %sub139 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i138
  store i128 %sub135, i128* %sub139, align 4
  %sub140 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter141 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub140, i32 0, i32 3
  %read_input_outter.bigsub.b142 = load [256 x i128]*, [256 x i128]** %struct_getter141, align 8
  %i143 = load i128, i128* %i, align 4
  %array_getter144 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b142, i128 0, i128 %i143
  %sub145 = load i128, i128* %array_getter144, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub145, i128 %sub135, i1* @constraint.213)
  br label %loop.latch146

loop.latch146:                                    ; preds = %loop.body108
  %i147 = load i128, i128* %i, align 4
  %add148 = add i128 %i147, 1
  store i128 %add148, i128* %i, align 4
  %i149 = load i128, i128* %i, align 4
  %k150 = load i128, i128* %k.bind, align 4
  %slt151 = icmp slt i128 %i149, %k150
  br i1 %slt151, label %loop.body108, label %loop.exit152

loop.exit152:                                     ; preds = %loop.latch146
  %add153 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter154 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add153, i32 0, i32 4
  %read_output_outter.bigadd.out155 = load [256 x i128]*, [256 x i128]** %struct_getter154, align 8
  %k156 = load i128, i128* %k.bind, align 4
  %array_getter157 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out155, i128 0, i128 %k156
  %add158 = load i128, i128* %array_getter157, align 4
  %ptr_getter159 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter160 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter159, i32 0, i32 2
  %read_input_outter.bigsub.a161 = load [256 x i128]*, [256 x i128]** %struct_getter160, align 8
  %k162 = load i128, i128* %k.bind, align 4
  %sub163 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a161, i128 0, i128 %k162
  store i128 %add158, i128* %sub163, align 4
  %sub164 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter165 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub164, i32 0, i32 2
  %read_input_outter.bigsub.a166 = load [256 x i128]*, [256 x i128]** %struct_getter165, align 8
  %k167 = load i128, i128* %k.bind, align 4
  %array_getter168 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a166, i128 0, i128 %k167
  %sub169 = load i128, i128* %array_getter168, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub169, i128 %add158, i1* @constraint.214)
  %ptr_getter170 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter171 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter170, i32 0, i32 3
  %read_input_outter.bigsub.b172 = load [256 x i128]*, [256 x i128]** %struct_getter171, align 8
  %k173 = load i128, i128* %k.bind, align 4
  %sub174 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b172, i128 0, i128 %k173
  store i128 0, i128* %sub174, align 4
  %sub175 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter176 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub175, i32 0, i32 3
  %read_input_outter.bigsub.b177 = load [256 x i128]*, [256 x i128]** %struct_getter176, align 8
  %k178 = load i128, i128* %k.bind, align 4
  %array_getter179 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b177, i128 0, i128 %k178
  %sub180 = load i128, i128* %array_getter179, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub180, i128 0, i1* @constraint.215)
  %sub181 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter182 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub181, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter182, align 8
  %k183 = load i128, i128* %k.bind, align 4
  %array_getter184 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %k183
  %sub185 = load i128, i128* %array_getter184, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub185, i128 0, i1* @constraint.216)
  store i128 0, i128* %i, align 4
  br label %loop.body186

loop.body186:                                     ; preds = %loop.latch200, %loop.exit152
  %sub187 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter188 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub187, i32 0, i32 4
  %read_output_outter.bigsub.out189 = load [256 x i128]*, [256 x i128]** %struct_getter188, align 8
  %i190 = load i128, i128* %i, align 4
  %array_getter191 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out189, i128 0, i128 %i190
  %sub192 = load i128, i128* %array_getter191, align 4
  %ptr_getter193 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i194 = load i128, i128* %i, align 4
  %out195 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter193, i128 0, i128 %i194
  store i128 %sub192, i128* %out195, align 4
  %out196 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i197 = load i128, i128* %i, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %out196, i128 0, i128 %i197
  %out199 = load i128, i128* %array_getter198, align 4
  call void @fn_intrinsic_add_constraint(i128 %out199, i128 %sub192, i1* @constraint.217)
  br label %loop.latch200

loop.latch200:                                    ; preds = %loop.body186
  %i201 = load i128, i128* %i, align 4
  %add202 = add i128 %i201, 1
  store i128 %add202, i128* %i, align 4
  %i203 = load i128, i128* %i, align 4
  %k204 = load i128, i128* %k.bind, align 4
  %slt205 = icmp slt i128 %i203, %k204
  br i1 %slt205, label %loop.body186, label %loop.exit206

loop.exit206:                                     ; preds = %loop.latch200
  br label %exit

exit:                                             ; preds = %loop.exit206
  %out207 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpadd.out = getelementptr inbounds %struct_template_circuit_fpadd, %struct_template_circuit_fpadd* %0, i32 0, i32 5
  store [256 x i128]* %out207, [256 x i128]** %write_output_inner.fpadd.out, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %flag = bitcast i8* %malloccall to i128*
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %tmp = bitcast i8* %malloccall5 to [256 x i128]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %out = alloca [256 x i128]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigsub** getelementptr (%struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** null, i32 1) to i32))
  %sub = bitcast i8* %malloccall7 to %struct_template_circuit_bigsub**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall8 to %struct_template_circuit_bigadd**
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %call = call %struct_template_circuit_bigsub* @fn_template_build_bigsub(i128 %n, i128 %k)
  store %struct_template_circuit_bigsub* %call, %struct_template_circuit_bigsub** %sub, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i9
  %a10 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter11 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigsub.a = load [256 x i128]*, [256 x i128]** %struct_getter11, align 8
  %i12 = load i128, i128* %i, align 4
  %sub13 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a, i128 0, i128 %i12
  store i128 %a10, i128* %sub13, align 4
  %sub14 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub14, i32 0, i32 2
  %read_input_outter.bigsub.a16 = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i17 = load i128, i128* %i, align 4
  %array_getter18 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.a16, i128 0, i128 %i17
  %sub19 = load i128, i128* %array_getter18, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub19, i128 %a10, i1* @constraint.218)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i20 = load i128, i128* %i, align 4
  %array_getter21 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i20
  %b22 = load i128, i128* %array_getter21, align 4
  %ptr_getter23 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter24 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %ptr_getter23, i32 0, i32 3
  %read_input_outter.bigsub.b = load [256 x i128]*, [256 x i128]** %struct_getter24, align 8
  %i25 = load i128, i128* %i, align 4
  %sub26 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b, i128 0, i128 %i25
  store i128 %b22, i128* %sub26, align 4
  %sub27 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub27, i32 0, i32 3
  %read_input_outter.bigsub.b29 = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigsub.b29, i128 0, i128 %i30
  %sub32 = load i128, i128* %array_getter31, align 4
  call void @fn_intrinsic_add_constraint(i128 %sub32, i128 %b22, i1* @constraint.219)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  store i128 %add34, i128* %i, align 4
  %i35 = load i128, i128* %i, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i35, %k36
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %sub37 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter38 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub37, i32 0, i32 5
  %read_output_outter.bigsub.underflow = load i128, i128* %struct_getter38, align 4
  store i128 %read_output_outter.bigsub.underflow, i128* %flag, align 4
  %flag39 = load i128, i128* %flag, align 4
  call void @fn_intrinsic_add_constraint(i128 %flag39, i128 %read_output_outter.bigsub.underflow, i1* @constraint.220)
  %n40 = load i128, i128* %n.bind, align 4
  %k41 = load i128, i128* %k.bind, align 4
  %call42 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n40, i128 %k41)
  store %struct_template_circuit_bigadd* %call42, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body43

loop.body43:                                      ; preds = %loop.latch72, %loop.exit
  %sub44 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter45 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub44, i32 0, i32 4
  %read_output_outter.bigsub.out = load [256 x i128]*, [256 x i128]** %struct_getter45, align 8
  %i46 = load i128, i128* %i, align 4
  %array_getter47 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out, i128 0, i128 %i46
  %sub48 = load i128, i128* %array_getter47, align 4
  %ptr_getter49 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter50 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter49, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter50, align 8
  %i51 = load i128, i128* %i, align 4
  %add52 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i51
  store i128 %sub48, i128* %add52, align 4
  %add53 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add53, i32 0, i32 2
  %read_input_outter.bigadd.a55 = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i56 = load i128, i128* %i, align 4
  %array_getter57 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a55, i128 0, i128 %i56
  %add58 = load i128, i128* %array_getter57, align 4
  call void @fn_intrinsic_add_constraint(i128 %add58, i128 %sub48, i1* @constraint.221)
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i59 = load i128, i128* %i, align 4
  %array_getter60 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i59
  %p61 = load i128, i128* %array_getter60, align 4
  %ptr_getter62 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter63 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter62, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter63, align 8
  %i64 = load i128, i128* %i, align 4
  %add65 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i64
  store i128 %p61, i128* %add65, align 4
  %add66 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter67 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add66, i32 0, i32 3
  %read_input_outter.bigadd.b68 = load [256 x i128]*, [256 x i128]** %struct_getter67, align 8
  %i69 = load i128, i128* %i, align 4
  %array_getter70 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b68, i128 0, i128 %i69
  %add71 = load i128, i128* %array_getter70, align 4
  call void @fn_intrinsic_add_constraint(i128 %add71, i128 %p61, i1* @constraint.222)
  br label %loop.latch72

loop.latch72:                                     ; preds = %loop.body43
  %i73 = load i128, i128* %i, align 4
  %add74 = add i128 %i73, 1
  store i128 %add74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %k76 = load i128, i128* %k.bind, align 4
  %slt77 = icmp slt i128 %i75, %k76
  br i1 %slt77, label %loop.body43, label %loop.exit78

loop.exit78:                                      ; preds = %loop.latch72
  store i128 0, i128* %i, align 4
  br label %loop.body79

loop.body79:                                      ; preds = %loop.latch114, %loop.exit78
  %flag80 = load i128, i128* %flag, align 4
  %sub81 = sub i128 1, %flag80
  %sub82 = load %struct_template_circuit_bigsub*, %struct_template_circuit_bigsub** %sub, align 8
  %struct_getter83 = getelementptr inbounds %struct_template_circuit_bigsub, %struct_template_circuit_bigsub* %sub82, i32 0, i32 4
  %read_output_outter.bigsub.out84 = load [256 x i128]*, [256 x i128]** %struct_getter83, align 8
  %i85 = load i128, i128* %i, align 4
  %array_getter86 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigsub.out84, i128 0, i128 %i85
  %sub87 = load i128, i128* %array_getter86, align 4
  %mul = mul i128 %sub81, %sub87
  %ptr_getter88 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i89 = load i128, i128* %i, align 4
  %tmp90 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter88, i128 0, i128 %i89
  store i128 %mul, i128* %tmp90, align 4
  %tmp91 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp91, i128 0, i128 %i92
  %tmp94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %tmp94, i128 %mul, i1* @constraint.223)
  %tmp95 = load [256 x i128]*, [256 x i128]** %tmp, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %tmp95, i128 0, i128 %i96
  %tmp98 = load i128, i128* %array_getter97, align 4
  %flag99 = load i128, i128* %flag, align 4
  %add100 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter101 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add100, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter101, align 8
  %i102 = load i128, i128* %i, align 4
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i102
  %add104 = load i128, i128* %array_getter103, align 4
  %mul105 = mul i128 %flag99, %add104
  %add106 = add i128 %tmp98, %mul105
  %ptr_getter107 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i108 = load i128, i128* %i, align 4
  %out109 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter107, i128 0, i128 %i108
  store i128 %add106, i128* %out109, align 4
  %out110 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i111 = load i128, i128* %i, align 4
  %array_getter112 = getelementptr inbounds [256 x i128], [256 x i128]* %out110, i128 0, i128 %i111
  %out113 = load i128, i128* %array_getter112, align 4
  call void @fn_intrinsic_add_constraint(i128 %out113, i128 %add106, i1* @constraint.224)
  br label %loop.latch114

loop.latch114:                                    ; preds = %loop.body79
  %i115 = load i128, i128* %i, align 4
  %add116 = add i128 %i115, 1
  store i128 %add116, i128* %i, align 4
  %i117 = load i128, i128* %i, align 4
  %k118 = load i128, i128* %k.bind, align 4
  %slt119 = icmp slt i128 %i117, %k118
  br i1 %slt119, label %loop.body79, label %loop.exit120

loop.exit120:                                     ; preds = %loop.latch114
  br label %exit

exit:                                             ; preds = %loop.exit120
  %out121 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.bigsubmodp.out = getelementptr inbounds %struct_template_circuit_bigsubmodp, %struct_template_circuit_bigsubmodp* %0, i32 0, i32 5
  store [256 x i128]* %out121, [256 x i128]** %write_output_inner.bigsubmodp.out, align 8
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigadd** getelementptr (%struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** null, i32 1) to i32))
  %add = bitcast i8* %malloccall to %struct_template_circuit_bigadd**
  %div = alloca [256 x i128]*, align 8
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %longdiv = bitcast i8* %malloccall4 to [256 x [256 x i128]]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %div_range_checks = bitcast i8* %malloccall5 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmult** getelementptr (%struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** null, i32 1) to i32))
  %mul = bitcast i8* %malloccall6 to %struct_template_circuit_bigmult**
  %mod = alloca [256 x i128]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %mod_range_checks = bitcast i8* %malloccall7 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_biglessthan** getelementptr (%struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** null, i32 1) to i32))
  %lt = bitcast i8* %malloccall8 to %struct_template_circuit_biglessthan**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall9 to i128*
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %longdiv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %longdiv10 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i11 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv10, i128 0, i128 0, i128 %i11
  %longdiv12 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %div, align 8
  %i13 = load i128, i128* %i, align 4
  %div14 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i13
  store i128 %longdiv12, i128* %div14, align 4
  %longdiv15 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %i16 = load i128, i128* %i, align 4
  %array_getter17 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv15, i128 0, i128 1, i128 %i16
  %longdiv18 = load i128, i128* %array_getter17, align 4
  %ptr_getter19 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i20 = load i128, i128* %i, align 4
  %mod21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter19, i128 0, i128 %i20
  store i128 %longdiv18, i128* %mod21, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i22 = load i128, i128* %i, align 4
  %add23 = add i128 %i22, 1
  store i128 %add23, i128* %i, align 4
  %i24 = load i128, i128* %i, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i24, %k25
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %longdiv26 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %longdiv, align 8
  %k27 = load i128, i128* %k.bind, align 4
  %array_getter28 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %longdiv26, i128 0, i128 0, i128 %k27
  %longdiv29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %div, align 8
  %k31 = load i128, i128* %k.bind, align 4
  %div32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 %k31
  store i128 %longdiv29, i128* %div32, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch52, %loop.exit
  %n34 = load i128, i128* %n.bind, align 4
  %call35 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n34)
  %ptr_getter36 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i37 = load i128, i128* %i, align 4
  %div_range_checks38 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter36, i128 0, i128 %i37
  store %struct_template_circuit_num2bits* %call35, %struct_template_circuit_num2bits** %div_range_checks38, align 8
  %div39 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i40 = load i128, i128* %i, align 4
  %array_getter41 = getelementptr inbounds [256 x i128], [256 x i128]* %div39, i128 0, i128 %i40
  %div42 = load i128, i128* %array_getter41, align 4
  %ptr_getter43 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i44 = load i128, i128* %i, align 4
  %array_getter45 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter43, i128 0, i128 %i44
  %div_range_checks46 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter45, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks46, i32 0, i32 1
  store i128 %div42, i128* %write_input_outter.num2bits.in, align 4
  %div_range_checks47 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %div_range_checks, align 8
  %i48 = load i128, i128* %i, align 4
  %array_getter49 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %div_range_checks47, i128 0, i128 %i48
  %div_range_checks50 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter49, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %div_range_checks50, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %div42, i1* @constraint.225)
  br label %loop.latch52

loop.latch52:                                     ; preds = %loop.body33
  %i53 = load i128, i128* %i, align 4
  %add54 = add i128 %i53, 1
  store i128 %add54, i128* %i, align 4
  %i55 = load i128, i128* %i, align 4
  %k56 = load i128, i128* %k.bind, align 4
  %sle = icmp sle i128 %i55, %k56
  br i1 %sle, label %loop.body33, label %loop.exit57

loop.exit57:                                      ; preds = %loop.latch52
  store i128 0, i128* %i, align 4
  br label %loop.body58

loop.body58:                                      ; preds = %loop.latch79, %loop.exit57
  %n59 = load i128, i128* %n.bind, align 4
  %call60 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n59)
  %ptr_getter61 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i62 = load i128, i128* %i, align 4
  %mod_range_checks63 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter61, i128 0, i128 %i62
  store %struct_template_circuit_num2bits* %call60, %struct_template_circuit_num2bits** %mod_range_checks63, align 8
  %mod64 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i65 = load i128, i128* %i, align 4
  %array_getter66 = getelementptr inbounds [256 x i128], [256 x i128]* %mod64, i128 0, i128 %i65
  %mod67 = load i128, i128* %array_getter66, align 4
  %ptr_getter68 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i69 = load i128, i128* %i, align 4
  %array_getter70 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter68, i128 0, i128 %i69
  %mod_range_checks71 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter70, align 8
  %write_input_outter.num2bits.in72 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks71, i32 0, i32 1
  store i128 %mod67, i128* %write_input_outter.num2bits.in72, align 4
  %mod_range_checks73 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %mod_range_checks, align 8
  %i74 = load i128, i128* %i, align 4
  %array_getter75 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %mod_range_checks73, i128 0, i128 %i74
  %mod_range_checks76 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter75, align 8
  %struct_getter77 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %mod_range_checks76, i32 0, i32 1
  %read_input_outter.num2bits.in78 = load i128, i128* %struct_getter77, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in78, i128 %mod67, i1* @constraint.226)
  br label %loop.latch79

loop.latch79:                                     ; preds = %loop.body58
  %i80 = load i128, i128* %i, align 4
  %add81 = add i128 %i80, 1
  store i128 %add81, i128* %i, align 4
  %i82 = load i128, i128* %i, align 4
  %k83 = load i128, i128* %k.bind, align 4
  %slt84 = icmp slt i128 %i82, %k83
  br i1 %slt84, label %loop.body58, label %loop.exit85

loop.exit85:                                      ; preds = %loop.latch79
  %n86 = load i128, i128* %n.bind, align 4
  %k87 = load i128, i128* %k.bind, align 4
  %add88 = add i128 %k87, 1
  %call89 = call %struct_template_circuit_bigmult* @fn_template_build_bigmult(i128 %n86, i128 %add88)
  store %struct_template_circuit_bigmult* %call89, %struct_template_circuit_bigmult** %mul, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body90

loop.body90:                                      ; preds = %loop.latch119, %loop.exit85
  %div91 = load [256 x i128]*, [256 x i128]** %div, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %div91, i128 0, i128 %i92
  %div94 = load i128, i128* %array_getter93, align 4
  %ptr_getter95 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter96 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter95, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter96, align 8
  %i97 = load i128, i128* %i, align 4
  %mul98 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i97
  store i128 %div94, i128* %mul98, align 4
  %mul99 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter100 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul99, i32 0, i32 2
  %read_input_outter.bigmult.a101 = load [256 x i128]*, [256 x i128]** %struct_getter100, align 8
  %i102 = load i128, i128* %i, align 4
  %array_getter103 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a101, i128 0, i128 %i102
  %mul104 = load i128, i128* %array_getter103, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul104, i128 %div94, i1* @constraint.227)
  %b105 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i106 = load i128, i128* %i, align 4
  %array_getter107 = getelementptr inbounds [256 x i128], [256 x i128]* %b105, i128 0, i128 %i106
  %b108 = load i128, i128* %array_getter107, align 4
  %ptr_getter109 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter110 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter109, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter110, align 8
  %i111 = load i128, i128* %i, align 4
  %mul112 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i111
  store i128 %b108, i128* %mul112, align 4
  %mul113 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter114 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul113, i32 0, i32 3
  %read_input_outter.bigmult.b115 = load [256 x i128]*, [256 x i128]** %struct_getter114, align 8
  %i116 = load i128, i128* %i, align 4
  %array_getter117 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b115, i128 0, i128 %i116
  %mul118 = load i128, i128* %array_getter117, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul118, i128 %b108, i1* @constraint.228)
  br label %loop.latch119

loop.latch119:                                    ; preds = %loop.body90
  %i120 = load i128, i128* %i, align 4
  %add121 = add i128 %i120, 1
  store i128 %add121, i128* %i, align 4
  %i122 = load i128, i128* %i, align 4
  %k123 = load i128, i128* %k.bind, align 4
  %slt124 = icmp slt i128 %i122, %k123
  br i1 %slt124, label %loop.body90, label %loop.exit125

loop.exit125:                                     ; preds = %loop.latch119
  %div126 = load [256 x i128]*, [256 x i128]** %div, align 8
  %k127 = load i128, i128* %k.bind, align 4
  %array_getter128 = getelementptr inbounds [256 x i128], [256 x i128]* %div126, i128 0, i128 %k127
  %div129 = load i128, i128* %array_getter128, align 4
  %ptr_getter130 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter131 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter130, i32 0, i32 2
  %read_input_outter.bigmult.a132 = load [256 x i128]*, [256 x i128]** %struct_getter131, align 8
  %k133 = load i128, i128* %k.bind, align 4
  %mul134 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a132, i128 0, i128 %k133
  store i128 %div129, i128* %mul134, align 4
  %mul135 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter136 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul135, i32 0, i32 2
  %read_input_outter.bigmult.a137 = load [256 x i128]*, [256 x i128]** %struct_getter136, align 8
  %k138 = load i128, i128* %k.bind, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a137, i128 0, i128 %k138
  %mul140 = load i128, i128* %array_getter139, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul140, i128 %div129, i1* @constraint.229)
  %ptr_getter141 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter142 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter141, i32 0, i32 3
  %read_input_outter.bigmult.b143 = load [256 x i128]*, [256 x i128]** %struct_getter142, align 8
  %k144 = load i128, i128* %k.bind, align 4
  %mul145 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b143, i128 0, i128 %k144
  store i128 0, i128* %mul145, align 4
  %mul146 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter147 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul146, i32 0, i32 3
  %read_input_outter.bigmult.b148 = load [256 x i128]*, [256 x i128]** %struct_getter147, align 8
  %k149 = load i128, i128* %k.bind, align 4
  %array_getter150 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b148, i128 0, i128 %k149
  %mul151 = load i128, i128* %array_getter150, align 4
  call void @fn_intrinsic_add_constraint(i128 %mul151, i128 0, i1* @constraint.230)
  store i128 0, i128* %i, align 4
  br label %loop.body152

loop.body152:                                     ; preds = %loop.latch153, %loop.exit125
  br label %loop.latch153

loop.latch153:                                    ; preds = %loop.body152
  %i154 = load i128, i128* %i, align 4
  %add155 = add i128 %i154, 1
  store i128 %add155, i128* %i, align 4
  %i156 = load i128, i128* %i, align 4
  %k157 = load i128, i128* %k.bind, align 4
  %mul158 = mul i128 2, %k157
  %add159 = add i128 %mul158, 2
  %slt160 = icmp slt i128 %i156, %add159
  br i1 %slt160, label %loop.body152, label %loop.exit161

loop.exit161:                                     ; preds = %loop.latch153
  %n162 = load i128, i128* %n.bind, align 4
  %k163 = load i128, i128* %k.bind, align 4
  %mul164 = mul i128 2, %k163
  %add165 = add i128 %mul164, 2
  %call166 = call %struct_template_circuit_bigadd* @fn_template_build_bigadd(i128 %n162, i128 %add165)
  store %struct_template_circuit_bigadd* %call166, %struct_template_circuit_bigadd** %add, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body167

loop.body167:                                     ; preds = %loop.latch211, %loop.exit161
  %mul168 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter169 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul168, i32 0, i32 4
  %read_output_outter.bigmult.out = load [256 x i128]*, [256 x i128]** %struct_getter169, align 8
  %i170 = load i128, i128* %i, align 4
  %array_getter171 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out, i128 0, i128 %i170
  %mul172 = load i128, i128* %array_getter171, align 4
  %ptr_getter173 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter174 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter173, i32 0, i32 2
  %read_input_outter.bigadd.a = load [256 x i128]*, [256 x i128]** %struct_getter174, align 8
  %i175 = load i128, i128* %i, align 4
  %add176 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a, i128 0, i128 %i175
  store i128 %mul172, i128* %add176, align 4
  %add177 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter178 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add177, i32 0, i32 2
  %read_input_outter.bigadd.a179 = load [256 x i128]*, [256 x i128]** %struct_getter178, align 8
  %i180 = load i128, i128* %i, align 4
  %array_getter181 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a179, i128 0, i128 %i180
  %add182 = load i128, i128* %array_getter181, align 4
  call void @fn_intrinsic_add_constraint(i128 %add182, i128 %mul172, i1* @constraint.231)
  %i183 = load i128, i128* %i, align 4
  %k184 = load i128, i128* %k.bind, align 4
  %slt185 = icmp slt i128 %i183, %k184
  br i1 %slt185, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body167
  %mod186 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i187 = load i128, i128* %i, align 4
  %array_getter188 = getelementptr inbounds [256 x i128], [256 x i128]* %mod186, i128 0, i128 %i187
  %mod189 = load i128, i128* %array_getter188, align 4
  %ptr_getter190 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter191 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter190, i32 0, i32 3
  %read_input_outter.bigadd.b = load [256 x i128]*, [256 x i128]** %struct_getter191, align 8
  %i192 = load i128, i128* %i, align 4
  %add193 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b, i128 0, i128 %i192
  store i128 %mod189, i128* %add193, align 4
  %add194 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter195 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add194, i32 0, i32 3
  %read_input_outter.bigadd.b196 = load [256 x i128]*, [256 x i128]** %struct_getter195, align 8
  %i197 = load i128, i128* %i, align 4
  %array_getter198 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b196, i128 0, i128 %i197
  %add199 = load i128, i128* %array_getter198, align 4
  call void @fn_intrinsic_add_constraint(i128 %add199, i128 %mod189, i1* @constraint.232)
  br label %if.exit

if.false:                                         ; preds = %loop.body167
  %ptr_getter200 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter201 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter200, i32 0, i32 3
  %read_input_outter.bigadd.b202 = load [256 x i128]*, [256 x i128]** %struct_getter201, align 8
  %i203 = load i128, i128* %i, align 4
  %add204 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b202, i128 0, i128 %i203
  store i128 0, i128* %add204, align 4
  %add205 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter206 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add205, i32 0, i32 3
  %read_input_outter.bigadd.b207 = load [256 x i128]*, [256 x i128]** %struct_getter206, align 8
  %i208 = load i128, i128* %i, align 4
  %array_getter209 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b207, i128 0, i128 %i208
  %add210 = load i128, i128* %array_getter209, align 4
  call void @fn_intrinsic_add_constraint(i128 %add210, i128 0, i1* @constraint.233)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch211

loop.latch211:                                    ; preds = %if.exit
  %i212 = load i128, i128* %i, align 4
  %add213 = add i128 %i212, 1
  store i128 %add213, i128* %i, align 4
  %i214 = load i128, i128* %i, align 4
  %k215 = load i128, i128* %k.bind, align 4
  %mul216 = mul i128 2, %k215
  %slt217 = icmp slt i128 %i214, %mul216
  br i1 %slt217, label %loop.body167, label %loop.exit218

loop.exit218:                                     ; preds = %loop.latch211
  %mul219 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter220 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul219, i32 0, i32 4
  %read_output_outter.bigmult.out221 = load [256 x i128]*, [256 x i128]** %struct_getter220, align 8
  %k222 = load i128, i128* %k.bind, align 4
  %mul223 = mul i128 2, %k222
  %array_getter224 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out221, i128 0, i128 %mul223
  %mul225 = load i128, i128* %array_getter224, align 4
  %ptr_getter226 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter227 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter226, i32 0, i32 2
  %read_input_outter.bigadd.a228 = load [256 x i128]*, [256 x i128]** %struct_getter227, align 8
  %k229 = load i128, i128* %k.bind, align 4
  %mul230 = mul i128 2, %k229
  %add231 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a228, i128 0, i128 %mul230
  store i128 %mul225, i128* %add231, align 4
  %add232 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter233 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add232, i32 0, i32 2
  %read_input_outter.bigadd.a234 = load [256 x i128]*, [256 x i128]** %struct_getter233, align 8
  %k235 = load i128, i128* %k.bind, align 4
  %mul236 = mul i128 2, %k235
  %array_getter237 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a234, i128 0, i128 %mul236
  %add238 = load i128, i128* %array_getter237, align 4
  call void @fn_intrinsic_add_constraint(i128 %add238, i128 %mul225, i1* @constraint.234)
  %mul239 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mul, align 8
  %struct_getter240 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mul239, i32 0, i32 4
  %read_output_outter.bigmult.out241 = load [256 x i128]*, [256 x i128]** %struct_getter240, align 8
  %k242 = load i128, i128* %k.bind, align 4
  %mul243 = mul i128 2, %k242
  %add244 = add i128 %mul243, 1
  %array_getter245 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmult.out241, i128 0, i128 %add244
  %mul246 = load i128, i128* %array_getter245, align 4
  %ptr_getter247 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter248 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter247, i32 0, i32 2
  %read_input_outter.bigadd.a249 = load [256 x i128]*, [256 x i128]** %struct_getter248, align 8
  %k250 = load i128, i128* %k.bind, align 4
  %mul251 = mul i128 2, %k250
  %add252 = add i128 %mul251, 1
  %add253 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a249, i128 0, i128 %add252
  store i128 %mul246, i128* %add253, align 4
  %add254 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter255 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add254, i32 0, i32 2
  %read_input_outter.bigadd.a256 = load [256 x i128]*, [256 x i128]** %struct_getter255, align 8
  %k257 = load i128, i128* %k.bind, align 4
  %mul258 = mul i128 2, %k257
  %add259 = add i128 %mul258, 1
  %array_getter260 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.a256, i128 0, i128 %add259
  %add261 = load i128, i128* %array_getter260, align 4
  call void @fn_intrinsic_add_constraint(i128 %add261, i128 %mul246, i1* @constraint.235)
  %ptr_getter262 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter263 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter262, i32 0, i32 3
  %read_input_outter.bigadd.b264 = load [256 x i128]*, [256 x i128]** %struct_getter263, align 8
  %k265 = load i128, i128* %k.bind, align 4
  %mul266 = mul i128 2, %k265
  %add267 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b264, i128 0, i128 %mul266
  store i128 0, i128* %add267, align 4
  %add268 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter269 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add268, i32 0, i32 3
  %read_input_outter.bigadd.b270 = load [256 x i128]*, [256 x i128]** %struct_getter269, align 8
  %k271 = load i128, i128* %k.bind, align 4
  %mul272 = mul i128 2, %k271
  %array_getter273 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b270, i128 0, i128 %mul272
  %add274 = load i128, i128* %array_getter273, align 4
  call void @fn_intrinsic_add_constraint(i128 %add274, i128 0, i1* @constraint.236)
  %ptr_getter275 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter276 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %ptr_getter275, i32 0, i32 3
  %read_input_outter.bigadd.b277 = load [256 x i128]*, [256 x i128]** %struct_getter276, align 8
  %k278 = load i128, i128* %k.bind, align 4
  %mul279 = mul i128 2, %k278
  %add280 = add i128 %mul279, 1
  %add281 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b277, i128 0, i128 %add280
  store i128 0, i128* %add281, align 4
  %add282 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter283 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add282, i32 0, i32 3
  %read_input_outter.bigadd.b284 = load [256 x i128]*, [256 x i128]** %struct_getter283, align 8
  %k285 = load i128, i128* %k.bind, align 4
  %mul286 = mul i128 2, %k285
  %add287 = add i128 %mul286, 1
  %array_getter288 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigadd.b284, i128 0, i128 %add287
  %add289 = load i128, i128* %array_getter288, align 4
  call void @fn_intrinsic_add_constraint(i128 %add289, i128 0, i1* @constraint.237)
  store i128 0, i128* %i, align 4
  br label %loop.body290

loop.body290:                                     ; preds = %loop.latch291, %loop.exit218
  br label %loop.latch291

loop.latch291:                                    ; preds = %loop.body290
  %i292 = load i128, i128* %i, align 4
  %add293 = add i128 %i292, 1
  store i128 %add293, i128* %i, align 4
  %i294 = load i128, i128* %i, align 4
  %k295 = load i128, i128* %k.bind, align 4
  %mul296 = mul i128 2, %k295
  %add297 = add i128 %mul296, 2
  %slt298 = icmp slt i128 %i294, %add297
  br i1 %slt298, label %loop.body290, label %loop.exit299

loop.exit299:                                     ; preds = %loop.latch291
  store i128 0, i128* %i, align 4
  br label %loop.body300

loop.body300:                                     ; preds = %loop.latch310, %loop.exit299
  %add301 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter302 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add301, i32 0, i32 4
  %read_output_outter.bigadd.out = load [256 x i128]*, [256 x i128]** %struct_getter302, align 8
  %i303 = load i128, i128* %i, align 4
  %array_getter304 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out, i128 0, i128 %i303
  %add305 = load i128, i128* %array_getter304, align 4
  %a306 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i307 = load i128, i128* %i, align 4
  %array_getter308 = getelementptr inbounds [256 x i128], [256 x i128]* %a306, i128 0, i128 %i307
  %a309 = load i128, i128* %array_getter308, align 4
  call void @fn_intrinsic_add_constraint(i128 %add305, i128 %a309, i1* @constraint.238)
  br label %loop.latch310

loop.latch310:                                    ; preds = %loop.body300
  %i311 = load i128, i128* %i, align 4
  %add312 = add i128 %i311, 1
  store i128 %add312, i128* %i, align 4
  %i313 = load i128, i128* %i, align 4
  %k314 = load i128, i128* %k.bind, align 4
  %mul315 = mul i128 2, %k314
  %slt316 = icmp slt i128 %i313, %mul315
  br i1 %slt316, label %loop.body300, label %loop.exit317

loop.exit317:                                     ; preds = %loop.latch310
  %add318 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter319 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add318, i32 0, i32 4
  %read_output_outter.bigadd.out320 = load [256 x i128]*, [256 x i128]** %struct_getter319, align 8
  %k321 = load i128, i128* %k.bind, align 4
  %mul322 = mul i128 2, %k321
  %array_getter323 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out320, i128 0, i128 %mul322
  %add324 = load i128, i128* %array_getter323, align 4
  call void @fn_intrinsic_add_constraint(i128 %add324, i128 0, i1* @constraint.239)
  %add325 = load %struct_template_circuit_bigadd*, %struct_template_circuit_bigadd** %add, align 8
  %struct_getter326 = getelementptr inbounds %struct_template_circuit_bigadd, %struct_template_circuit_bigadd* %add325, i32 0, i32 4
  %read_output_outter.bigadd.out327 = load [256 x i128]*, [256 x i128]** %struct_getter326, align 8
  %k328 = load i128, i128* %k.bind, align 4
  %mul329 = mul i128 2, %k328
  %add330 = add i128 %mul329, 1
  %array_getter331 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigadd.out327, i128 0, i128 %add330
  %add332 = load i128, i128* %array_getter331, align 4
  call void @fn_intrinsic_add_constraint(i128 %add332, i128 0, i1* @constraint.240)
  %n333 = load i128, i128* %n.bind, align 4
  %k334 = load i128, i128* %k.bind, align 4
  %call335 = call %struct_template_circuit_biglessthan* @fn_template_build_biglessthan(i128 %n333, i128 %k334)
  store %struct_template_circuit_biglessthan* %call335, %struct_template_circuit_biglessthan** %lt, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body336

loop.body336:                                     ; preds = %loop.latch365, %loop.exit317
  %mod337 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %i338 = load i128, i128* %i, align 4
  %array_getter339 = getelementptr inbounds [256 x i128], [256 x i128]* %mod337, i128 0, i128 %i338
  %mod340 = load i128, i128* %array_getter339, align 4
  %ptr_getter341 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter342 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter341, i32 0, i32 2
  %read_input_outter.biglessthan.a = load [256 x i128]*, [256 x i128]** %struct_getter342, align 8
  %i343 = load i128, i128* %i, align 4
  %lt344 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a, i128 0, i128 %i343
  store i128 %mod340, i128* %lt344, align 4
  %lt345 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter346 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt345, i32 0, i32 2
  %read_input_outter.biglessthan.a347 = load [256 x i128]*, [256 x i128]** %struct_getter346, align 8
  %i348 = load i128, i128* %i, align 4
  %array_getter349 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.a347, i128 0, i128 %i348
  %lt350 = load i128, i128* %array_getter349, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt350, i128 %mod340, i1* @constraint.241)
  %b351 = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i352 = load i128, i128* %i, align 4
  %array_getter353 = getelementptr inbounds [256 x i128], [256 x i128]* %b351, i128 0, i128 %i352
  %b354 = load i128, i128* %array_getter353, align 4
  %ptr_getter355 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter356 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %ptr_getter355, i32 0, i32 3
  %read_input_outter.biglessthan.b = load [256 x i128]*, [256 x i128]** %struct_getter356, align 8
  %i357 = load i128, i128* %i, align 4
  %lt358 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b, i128 0, i128 %i357
  store i128 %b354, i128* %lt358, align 4
  %lt359 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter360 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt359, i32 0, i32 3
  %read_input_outter.biglessthan.b361 = load [256 x i128]*, [256 x i128]** %struct_getter360, align 8
  %i362 = load i128, i128* %i, align 4
  %array_getter363 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.biglessthan.b361, i128 0, i128 %i362
  %lt364 = load i128, i128* %array_getter363, align 4
  call void @fn_intrinsic_add_constraint(i128 %lt364, i128 %b354, i1* @constraint.242)
  br label %loop.latch365

loop.latch365:                                    ; preds = %loop.body336
  %i366 = load i128, i128* %i, align 4
  %add367 = add i128 %i366, 1
  store i128 %add367, i128* %i, align 4
  %i368 = load i128, i128* %i, align 4
  %k369 = load i128, i128* %k.bind, align 4
  %slt370 = icmp slt i128 %i368, %k369
  br i1 %slt370, label %loop.body336, label %loop.exit371

loop.exit371:                                     ; preds = %loop.latch365
  %lt372 = load %struct_template_circuit_biglessthan*, %struct_template_circuit_biglessthan** %lt, align 8
  %struct_getter373 = getelementptr inbounds %struct_template_circuit_biglessthan, %struct_template_circuit_biglessthan* %lt372, i32 0, i32 4
  %read_output_outter.biglessthan.out = load i128, i128* %struct_getter373, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_output_outter.biglessthan.out, i128 1, i1* @constraint.243)
  br label %exit

exit:                                             ; preds = %loop.exit371
  %div374 = load [256 x i128]*, [256 x i128]** %div, align 8
  %write_output_inner.bigmod.div = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 4
  store [256 x i128]* %div374, [256 x i128]** %write_output_inner.bigmod.div, align 8
  %mod375 = load [256 x i128]*, [256 x i128]** %mod, align 8
  %write_output_inner.bigmod.mod = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %0, i32 0, i32 5
  store [256 x i128]* %mod375, [256 x i128]** %write_output_inner.bigmod.mod, align 8
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
  %a_pos = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %Y_is_zero = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %a_short = alloca [256 x i128]*, align 8
  %carry = alloca i128, align 8
  %X = alloca [256 x [256 x i128]]*, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @signed_long_to_short(i128 %n, i128 %k, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %a_short, align 8
  %a_short1 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a_short1, i128 0, i128 50
  %a_short2 = load i128, i128* %array_getter, align 4
  %eq = icmp eq i128 %a_short2, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %n3 = load i128, i128* %n.bind, align 4
  %k4 = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a_short5 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call6 = call [256 x [256 x i128]]* @long_div2(i128 %n3, i128 %k4, i128 %m, [256 x i128]* %a_short5, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call6, [256 x [256 x i128]]** %out, align 8
  br label %if.exit124

if.false:                                         ; preds = %entry
  %uniform_array7 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array7, [256 x i128]** %a_pos, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %if.false
  %a_short8 = load [256 x i128]*, [256 x i128]** %a_short, align 8
  %i9 = load i128, i128* %i, align 4
  %array_getter10 = getelementptr inbounds [256 x i128], [256 x i128]* %a_short8, i128 0, i128 %i9
  %a_short11 = load i128, i128* %array_getter10, align 4
  %neg = sub i128 0, %a_short11
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %i12 = load i128, i128* %i, align 4
  %a_pos13 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i12
  store i128 %neg, i128* %a_pos13, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i14 = load i128, i128* %i, align 4
  %add = add i128 %i14, 1
  store i128 %add, i128* %i, align 4
  %i15 = load i128, i128* %i, align 4
  %k16 = load i128, i128* %k.bind, align 4
  %m17 = load i128, i128* %m.bind, align 4
  %add18 = add i128 %k16, %m17
  %slt = icmp slt i128 %i15, %add18
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n19 = load i128, i128* %n.bind, align 4
  %k20 = load i128, i128* %k.bind, align 4
  %m21 = load i128, i128* %m.bind, align 4
  %a_pos22 = load [256 x i128]*, [256 x i128]** %a_pos, align 8
  %p23 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call24 = call [256 x [256 x i128]]* @long_div2(i128 %n19, i128 %k20, i128 %m21, [256 x i128]* %a_pos22, [256 x i128]* %p23)
  store [256 x [256 x i128]]* %call24, [256 x [256 x i128]]** %X, align 8
  store i128 1, i128* %Y_is_zero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body25

loop.body25:                                      ; preds = %loop.latch32, %loop.exit
  %X28 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i29 = load i128, i128* %i, align 4
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X28, i128 0, i128 1, i128 %i29
  %X31 = load i128, i128* %array_getter30, align 4
  %ne = icmp ne i128 %X31, 0
  br i1 %ne, label %if.true26, label %if.false27

if.true26:                                        ; preds = %loop.body25
  store i128 0, i128* %Y_is_zero, align 4
  br label %if.exit

if.false27:                                       ; preds = %loop.body25
  br label %if.exit

if.exit:                                          ; preds = %if.false27, %if.true26
  br label %loop.latch32

loop.latch32:                                     ; preds = %if.exit
  %i33 = load i128, i128* %i, align 4
  %add34 = add i128 %i33, 1
  store i128 %add34, i128* %i, align 4
  %i35 = load i128, i128* %i, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %slt37 = icmp slt i128 %i35, %k36
  br i1 %slt37, label %loop.body25, label %loop.exit38

loop.exit38:                                      ; preds = %loop.latch32
  %Y_is_zero41 = load i128, i128* %Y_is_zero, align 4
  %eq42 = icmp eq i128 %Y_is_zero41, 1
  br i1 %eq42, label %if.true39, label %if.false40

if.true39:                                        ; preds = %loop.exit38
  %X43 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X43, i128 0, i128 1
  %X45 = load [256 x i128], [256 x i128]* %array_getter44, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %X45, [256 x i128]* %spice_inline_array, align 4
  %ptr_getter46 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter46, i128 0, i128 1
  %5 = bitcast [256 x i128]* %out47 to i8*
  %6 = bitcast [256 x i128]* %spice_inline_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit107

if.false40:                                       ; preds = %loop.exit38
  %n48 = load i128, i128* %n.bind, align 4
  %k49 = load i128, i128* %k.bind, align 4
  %p50 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %X51 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter52 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X51, i128 0, i128 1
  %X53 = load [256 x i128], [256 x i128]* %array_getter52, align 4
  %spice_inline_array54 = alloca [256 x i128], align 8
  store [256 x i128] %X53, [256 x i128]* %spice_inline_array54, align 4
  %call55 = call [256 x i128]* @long_sub(i128 %n48, i128 %k49, [256 x i128]* %p50, [256 x i128]* %spice_inline_array54)
  %ptr_getter56 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter56, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out57 to i8*
  %8 = bitcast [256 x i128]* %call55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %X58 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter59 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X58, i128 0, i128 0, i128 0
  %X60 = load i128, i128* %array_getter59, align 4
  %add61 = add i128 %X60, 1
  %ptr_getter62 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %X63 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter62, i128 0, i128 0, i128 0
  store i128 %add61, i128* %X63, align 4
  %X66 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %array_getter67 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X66, i128 0, i128 0, i128 0
  %X68 = load i128, i128* %array_getter67, align 4
  %n69 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n69
  %sge = icmp sge i128 %X68, %lshift
  br i1 %sge, label %if.true64, label %if.false65

if.true64:                                        ; preds = %if.false40
  store i128 0, i128* %i, align 4
  br label %loop.body70

if.false65:                                       ; preds = %if.false40
  br label %if.exit106

loop.body70:                                      ; preds = %loop.latch98, %if.true64
  %X71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i72 = load i128, i128* %i, align 4
  %array_getter73 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X71, i128 0, i128 0, i128 %i72
  %X74 = load i128, i128* %array_getter73, align 4
  %n75 = load i128, i128* %n.bind, align 4
  %lshift76 = shl i128 1, %n75
  %sdiv = sdiv i128 %X74, %lshift76
  store i128 %sdiv, i128* %carry, align 4
  %X77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i78 = load i128, i128* %i, align 4
  %add79 = add i128 %i78, 1
  %array_getter80 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X77, i128 0, i128 0, i128 %add79
  %X81 = load i128, i128* %array_getter80, align 4
  %carry82 = load i128, i128* %carry, align 4
  %add83 = add i128 %X81, %carry82
  %ptr_getter84 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i85 = load i128, i128* %i, align 4
  %add86 = add i128 %i85, 1
  %X87 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter84, i128 0, i128 0, i128 %add86
  store i128 %add83, i128* %X87, align 4
  %X88 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i89 = load i128, i128* %i, align 4
  %array_getter90 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X88, i128 0, i128 0, i128 %i89
  %X91 = load i128, i128* %array_getter90, align 4
  %carry92 = load i128, i128* %carry, align 4
  %n93 = load i128, i128* %n.bind, align 4
  %lshift94 = shl i128 1, %n93
  %mul = mul i128 %carry92, %lshift94
  %sub = sub i128 %X91, %mul
  %ptr_getter95 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i96 = load i128, i128* %i, align 4
  %X97 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter95, i128 0, i128 0, i128 %i96
  store i128 %sub, i128* %X97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body70
  %i99 = load i128, i128* %i, align 4
  %add100 = add i128 %i99, 1
  store i128 %add100, i128* %i, align 4
  %i101 = load i128, i128* %i, align 4
  %m102 = load i128, i128* %m.bind, align 4
  %sub103 = sub i128 %m102, 1
  %slt104 = icmp slt i128 %i101, %sub103
  br i1 %slt104, label %loop.body70, label %loop.exit105

loop.exit105:                                     ; preds = %loop.latch98
  br label %if.exit106

if.exit106:                                       ; preds = %if.false65, %loop.exit105
  br label %if.exit107

if.exit107:                                       ; preds = %if.exit106, %if.true39
  store i128 0, i128* %i, align 4
  br label %loop.body108

loop.body108:                                     ; preds = %loop.latch117, %if.exit107
  %X109 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %X, align 8
  %i110 = load i128, i128* %i, align 4
  %array_getter111 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %X109, i128 0, i128 0, i128 %i110
  %X112 = load i128, i128* %array_getter111, align 4
  %neg113 = sub i128 0, %X112
  %ptr_getter114 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i115 = load i128, i128* %i, align 4
  %out116 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter114, i128 0, i128 0, i128 %i115
  store i128 %neg113, i128* %out116, align 4
  br label %loop.latch117

loop.latch117:                                    ; preds = %loop.body108
  %i118 = load i128, i128* %i, align 4
  %add119 = add i128 %i118, 1
  store i128 %add119, i128* %i, align 4
  %i120 = load i128, i128* %i, align 4
  %m121 = load i128, i128* %m.bind, align 4
  %slt122 = icmp slt i128 %i120, %m121
  br i1 %slt122, label %loop.body108, label %loop.exit123

loop.exit123:                                     ; preds = %loop.latch117
  br label %if.exit124

if.exit124:                                       ; preds = %loop.exit123, %if.true
  %out125 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out125
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %X_range_checks = bitcast i8* %malloccall to [256 x %struct_template_circuit_num2bits*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %m = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %Xvar = bitcast i8* %malloccall6 to [256 x [256 x i128]]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_checkcarrymodp** getelementptr (%struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** null, i32 1) to i32))
  %mod_check = bitcast i8* %malloccall7 to %struct_template_circuit_checkcarrymodp**
  %X = alloca [256 x i128]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall8 to i128*
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
  %ptr_getter29 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i30 = load i128, i128* %i, align 4
  %array_getter31 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter29, i128 0, i128 %i30
  %X_range_checks32 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter31, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks32, i32 0, i32 1
  store i128 %add28, i128* %write_input_outter.num2bits.in, align 4
  %X_range_checks33 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks33, i128 0, i128 %i34
  %X_range_checks36 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter35, align 8
  %struct_getter37 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks36, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter37, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %add28, i1* @constraint.244)
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
  %ptr_getter53 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter54 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter53, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter54, align 8
  %i55 = load i128, i128* %i, align 4
  %mod_check56 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in, i128 0, i128 %i55
  store i128 %in52, i128* %mod_check56, align 4
  %mod_check57 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter58 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check57, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in59 = load [256 x i128]*, [256 x i128]** %struct_getter58, align 8
  %i60 = load i128, i128* %i, align 4
  %array_getter61 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in59, i128 0, i128 %i60
  %mod_check62 = load i128, i128* %array_getter61, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check62, i128 %in52, i1* @constraint.245)
  %ptr_getter63 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter64 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter63, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y = load [256 x i128]*, [256 x i128]** %struct_getter64, align 8
  %i65 = load i128, i128* %i, align 4
  %mod_check66 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y, i128 0, i128 %i65
  store i128 0, i128* %mod_check66, align 4
  %mod_check67 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter68 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check67, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y69 = load [256 x i128]*, [256 x i128]** %struct_getter68, align 8
  %i70 = load i128, i128* %i, align 4
  %array_getter71 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y69, i128 0, i128 %i70
  %mod_check72 = load i128, i128* %array_getter71, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check72, i128 0, i1* @constraint.246)
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
  %ptr_getter85 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter85, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %i87 = load i128, i128* %i, align 4
  %mod_check88 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x, i128 0, i128 %i87
  store i128 %X84, i128* %mod_check88, align 4
  %mod_check89 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check89, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x91 = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %i92 = load i128, i128* %i, align 4
  %array_getter93 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x91, i128 0, i128 %i92
  %mod_check94 = load i128, i128* %array_getter93, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check94, i128 %X84, i1* @constraint.247)
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
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter2 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 0
  %b3 = load [256 x i128], [256 x i128]* %array_getter2, align 4
  %spice_inline_array4 = alloca [256 x i128], align 8
  store [256 x i128] %b3, [256 x i128]* %spice_inline_array4, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @long_add_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array4, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out5 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %5 = bitcast [256 x i128]* %out5 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %b12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b12, i128 0, i128 1
  %b14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %b14, [256 x i128]* %spice_inline_array15, align 4
  %p16 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call17 = call [256 x i128]* @long_add_mod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15, [256 x i128]* %p16)
  %ptr_getter18 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out19 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter18, i128 0, i128 1
  %7 = bitcast [256 x i128]* %out19 to i8*
  %8 = bitcast [256 x i128]* %call17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out20 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out20
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %X_range_checks = bitcast i8* %malloccall to [256 x %struct_template_circuit_num2bits*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %m = bitcast i8* %malloccall6 to i128*
  %out = alloca [256 x i128]*, align 8
  %X = alloca [256 x i128]*, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %Xvar = bitcast i8* %malloccall7 to [256 x [256 x i128]]**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_checkcarrymodp** getelementptr (%struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** null, i32 1) to i32))
  %mod_check = bitcast i8* %malloccall8 to %struct_template_circuit_checkcarrymodp**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %range_checks = bitcast i8* %malloccall9 to [256 x %struct_template_circuit_num2bits*]**
  %overflow = load i128, i128* %overflow.bind, align 4
  %n = load i128, i128* %n.bind, align 4
  %add = add i128 %overflow, %n
  %sub = sub i128 %add, 1
  %n10 = load i128, i128* %n.bind, align 4
  %sdiv = sdiv i128 %sub, %n10
  store i128 %sdiv, i128* %m, align 4
  %n11 = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m12 = load i128, i128* %m, align 4
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n11, i128 %k, i128 %m12, [256 x i128]* %in, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %Xvar, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %Xvar13 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %i14 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar13, i128 0, i128 1, i128 %i14
  %Xvar15 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %out, align 8
  %i16 = load i128, i128* %i, align 4
  %out17 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i16
  store i128 %Xvar15, i128* %out17, align 4
  %n18 = load i128, i128* %n.bind, align 4
  %call19 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %n18)
  %ptr_getter20 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i21 = load i128, i128* %i, align 4
  %range_checks22 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter20, i128 0, i128 %i21
  store %struct_template_circuit_num2bits* %call19, %struct_template_circuit_num2bits** %range_checks22, align 8
  %out23 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %out23, i128 0, i128 %i24
  %out26 = load i128, i128* %array_getter25, align 4
  %ptr_getter27 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter27, i128 0, i128 %i28
  %range_checks30 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter29, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks30, i32 0, i32 1
  store i128 %out26, i128* %write_input_outter.num2bits.in, align 4
  %range_checks31 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i32 = load i128, i128* %i, align 4
  %array_getter33 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks31, i128 0, i128 %i32
  %range_checks34 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter33, align 8
  %struct_getter35 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks34, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out26, i1* @constraint.248)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i36 = load i128, i128* %i, align 4
  %add37 = add i128 %i36, 1
  store i128 %add37, i128* %i, align 4
  %i38 = load i128, i128* %i, align 4
  %k39 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i38, %k39
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  store i128 0, i128* %i, align 4
  br label %loop.body40

loop.body40:                                      ; preds = %loop.latch71, %loop.exit
  %Xvar41 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %Xvar, align 8
  %i42 = load i128, i128* %i, align 4
  %array_getter43 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %Xvar41, i128 0, i128 0, i128 %i42
  %Xvar44 = load i128, i128* %array_getter43, align 4
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i46 = load i128, i128* %i, align 4
  %X47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %i46
  store i128 %Xvar44, i128* %X47, align 4
  %n48 = load i128, i128* %n.bind, align 4
  %add49 = add i128 %n48, 1
  %call50 = call %struct_template_circuit_num2bits* @fn_template_build_num2bits(i128 %add49)
  %ptr_getter51 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i52 = load i128, i128* %i, align 4
  %X_range_checks53 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter51, i128 0, i128 %i52
  store %struct_template_circuit_num2bits* %call50, %struct_template_circuit_num2bits** %X_range_checks53, align 8
  %X54 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i55 = load i128, i128* %i, align 4
  %array_getter56 = getelementptr inbounds [256 x i128], [256 x i128]* %X54, i128 0, i128 %i55
  %X57 = load i128, i128* %array_getter56, align 4
  %n58 = load i128, i128* %n.bind, align 4
  %lshift = shl i128 1, %n58
  %add59 = add i128 %X57, %lshift
  %ptr_getter60 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter60, i128 0, i128 %i61
  %X_range_checks63 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter62, align 8
  %write_input_outter.num2bits.in64 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks63, i32 0, i32 1
  store i128 %add59, i128* %write_input_outter.num2bits.in64, align 4
  %X_range_checks65 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %X_range_checks, align 8
  %i66 = load i128, i128* %i, align 4
  %array_getter67 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %X_range_checks65, i128 0, i128 %i66
  %X_range_checks68 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter67, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %X_range_checks68, i32 0, i32 1
  %read_input_outter.num2bits.in70 = load i128, i128* %struct_getter69, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in70, i128 %add59, i1* @constraint.249)
  br label %loop.latch71

loop.latch71:                                     ; preds = %loop.body40
  %i72 = load i128, i128* %i, align 4
  %add73 = add i128 %i72, 1
  store i128 %add73, i128* %i, align 4
  %i74 = load i128, i128* %i, align 4
  %m75 = load i128, i128* %m, align 4
  %slt76 = icmp slt i128 %i74, %m75
  br i1 %slt76, label %loop.body40, label %loop.exit77

loop.exit77:                                      ; preds = %loop.latch71
  %n78 = load i128, i128* %n.bind, align 4
  %k79 = load i128, i128* %k.bind, align 4
  %m80 = load i128, i128* %m, align 4
  %overflow81 = load i128, i128* %overflow.bind, align 4
  %p82 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call83 = call %struct_template_circuit_checkcarrymodp* @fn_template_build_checkcarrymodp(i128 %n78, i128 %k79, i128 %m80, i128 %overflow81, [256 x i128]* %p82)
  store %struct_template_circuit_checkcarrymodp* %call83, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch113, %loop.exit77
  %in85 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i86 = load i128, i128* %i, align 4
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %in85, i128 0, i128 %i86
  %in88 = load i128, i128* %array_getter87, align 4
  %ptr_getter89 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter90 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter89, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter90, align 8
  %i91 = load i128, i128* %i, align 4
  %mod_check92 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in, i128 0, i128 %i91
  store i128 %in88, i128* %mod_check92, align 4
  %mod_check93 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter94 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check93, i32 0, i32 5
  %read_input_outter.checkcarrymodp.in95 = load [256 x i128]*, [256 x i128]** %struct_getter94, align 8
  %i96 = load i128, i128* %i, align 4
  %array_getter97 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.in95, i128 0, i128 %i96
  %mod_check98 = load i128, i128* %array_getter97, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check98, i128 %in88, i1* @constraint.250)
  %out99 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i100 = load i128, i128* %i, align 4
  %array_getter101 = getelementptr inbounds [256 x i128], [256 x i128]* %out99, i128 0, i128 %i100
  %out102 = load i128, i128* %array_getter101, align 4
  %ptr_getter103 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter104 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter103, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y = load [256 x i128]*, [256 x i128]** %struct_getter104, align 8
  %i105 = load i128, i128* %i, align 4
  %mod_check106 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y, i128 0, i128 %i105
  store i128 %out102, i128* %mod_check106, align 4
  %mod_check107 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter108 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check107, i32 0, i32 7
  %read_input_outter.checkcarrymodp.y109 = load [256 x i128]*, [256 x i128]** %struct_getter108, align 8
  %i110 = load i128, i128* %i, align 4
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.y109, i128 0, i128 %i110
  %mod_check112 = load i128, i128* %array_getter111, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check112, i128 %out102, i1* @constraint.251)
  br label %loop.latch113

loop.latch113:                                    ; preds = %loop.body84
  %i114 = load i128, i128* %i, align 4
  %add115 = add i128 %i114, 1
  store i128 %add115, i128* %i, align 4
  %i116 = load i128, i128* %i, align 4
  %k117 = load i128, i128* %k.bind, align 4
  %slt118 = icmp slt i128 %i116, %k117
  br i1 %slt118, label %loop.body84, label %loop.exit119

loop.exit119:                                     ; preds = %loop.latch113
  store i128 0, i128* %i, align 4
  br label %loop.body120

loop.body120:                                     ; preds = %loop.latch135, %loop.exit119
  %X121 = load [256 x i128]*, [256 x i128]** %X, align 8
  %i122 = load i128, i128* %i, align 4
  %array_getter123 = getelementptr inbounds [256 x i128], [256 x i128]* %X121, i128 0, i128 %i122
  %X124 = load i128, i128* %array_getter123, align 4
  %ptr_getter125 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter126 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %ptr_getter125, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x = load [256 x i128]*, [256 x i128]** %struct_getter126, align 8
  %i127 = load i128, i128* %i, align 4
  %mod_check128 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x, i128 0, i128 %i127
  store i128 %X124, i128* %mod_check128, align 4
  %mod_check129 = load %struct_template_circuit_checkcarrymodp*, %struct_template_circuit_checkcarrymodp** %mod_check, align 8
  %struct_getter130 = getelementptr inbounds %struct_template_circuit_checkcarrymodp, %struct_template_circuit_checkcarrymodp* %mod_check129, i32 0, i32 6
  %read_input_outter.checkcarrymodp.x131 = load [256 x i128]*, [256 x i128]** %struct_getter130, align 8
  %i132 = load i128, i128* %i, align 4
  %array_getter133 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.checkcarrymodp.x131, i128 0, i128 %i132
  %mod_check134 = load i128, i128* %array_getter133, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod_check134, i128 %X124, i1* @constraint.252)
  br label %loop.latch135

loop.latch135:                                    ; preds = %loop.body120
  %i136 = load i128, i128* %i, align 4
  %add137 = add i128 %i136, 1
  store i128 %add137, i128* %i, align 4
  %i138 = load i128, i128* %i, align 4
  %m139 = load i128, i128* %m, align 4
  %slt140 = icmp slt i128 %i138, %m139
  br i1 %slt140, label %loop.body120, label %loop.exit141

loop.exit141:                                     ; preds = %loop.latch135
  br label %exit

exit:                                             ; preds = %loop.exit141
  %X142 = load [256 x i128]*, [256 x i128]** %X, align 8
  %write_output_inner.signedfpcarrymodp.x = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 5
  store [256 x i128]* %X142, [256 x i128]** %write_output_inner.signedfpcarrymodp.x, align 8
  %out143 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.signedfpcarrymodp.out = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %0, i32 0, i32 6
  store [256 x i128]* %out143, [256 x i128]** %write_output_inner.signedfpcarrymodp.out, align 8
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
  %eBits = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %temp2 = alloca [256 x [256 x i128]]*, align 8
  %temp = alloca [256 x i128]*, align 8
  %j = alloca i128, align 8
  %out = alloca [256 x i128]*, align 8
  %bitlength = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitlength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i2
  %e3 = load i128, i128* %array_getter, align 4
  %j4 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e3, %j4
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j5 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i6 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i6
  %add = add i128 %j5, %mul
  %eBits7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits7, align 4
  %eBits8 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j9 = load i128, i128* %j, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %i11 = load i128, i128* %i, align 4
  %mul12 = mul i128 %n10, %i11
  %add13 = add i128 %j9, %mul12
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits8, i128 0, i128 %add13
  %eBits15 = load i128, i128* %array_getter14, align 4
  %eq = icmp eq i128 %eBits15, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %n.bind, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %add21 = add i128 %add20, 1
  store i128 %add21, i128* %bitlength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j22 = load i128, i128* %j, align 4
  %add23 = add i128 %j22, 1
  store i128 %add23, i128* %j, align 4
  %j24 = load i128, i128* %j, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j24, %n25
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt30 = icmp slt i128 %i29, %k
  br i1 %slt30, label %loop.body, label %loop.exit31

loop.exit31:                                      ; preds = %loop.latch26
  %uniform_array32 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array32, [256 x i128]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body33

loop.body33:                                      ; preds = %loop.latch37, %loop.exit31
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i35 = load i128, i128* %i, align 4
  %out36 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 %i35
  store i128 0, i128* %out36, align 4
  br label %loop.latch37

loop.latch37:                                     ; preds = %loop.body33
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %slt41 = icmp slt i128 %i40, 50
  br i1 %slt41, label %loop.body33, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch37
  %ptr_getter43 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out44 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter43, i128 0, i128 0
  store i128 1, i128* %out44, align 4
  %bitlength45 = load i128, i128* %bitlength, align 4
  %sub = sub i128 %bitlength45, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body46

loop.body46:                                      ; preds = %loop.latch87, %loop.exit42
  %eBits49 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits49, i128 0, i128 %i50
  %eBits52 = load i128, i128* %array_getter51, align 4
  %eq53 = icmp eq i128 %eBits52, 1
  br i1 %eq53, label %if.true47, label %if.false48

if.true47:                                        ; preds = %loop.body46
  %uniform_array54 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array54, [256 x i128]** %temp, align 8
  %n55 = load i128, i128* %n.bind, align 4
  %k56 = load i128, i128* %k.bind, align 4
  %out57 = load [256 x i128]*, [256 x i128]** %out, align 8
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n55, i128 %k56, [256 x i128]* %out57, [256 x i128]* %a)
  store [256 x i128]* %call, [256 x i128]** %temp, align 8
  %uniform_array58 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array58, [256 x [256 x i128]]** %temp2, align 8
  %n59 = load i128, i128* %n.bind, align 4
  %k60 = load i128, i128* %k.bind, align 4
  %temp61 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call62 = call [256 x [256 x i128]]* @long_div(i128 %n59, i128 %k60, [256 x i128]* %temp61, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call62, [256 x [256 x i128]]** %temp2, align 8
  %temp263 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter64 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp263, i128 0, i128 1
  %temp265 = load [256 x i128], [256 x i128]* %array_getter64, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp265, [256 x i128]* %spice_inline_array, align 4
  store [256 x i128]* %spice_inline_array, [256 x i128]** %out, align 8
  br label %if.exit66

if.false48:                                       ; preds = %loop.body46
  br label %if.exit66

if.exit66:                                        ; preds = %if.false48, %if.true47
  %i69 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i69, 0
  br i1 %sgt, label %if.true67, label %if.false68

if.true67:                                        ; preds = %if.exit66
  %uniform_array70 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array70, [256 x i128]** %temp, align 8
  %n71 = load i128, i128* %n.bind, align 4
  %k72 = load i128, i128* %k.bind, align 4
  %out73 = load [256 x i128]*, [256 x i128]** %out, align 8
  %out74 = load [256 x i128]*, [256 x i128]** %out, align 8
  %call75 = call [256 x i128]* @prod(i128 %n71, i128 %k72, [256 x i128]* %out73, [256 x i128]* %out74)
  store [256 x i128]* %call75, [256 x i128]** %temp, align 8
  %uniform_array76 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array76, [256 x [256 x i128]]** %temp2, align 8
  %n77 = load i128, i128* %n.bind, align 4
  %k78 = load i128, i128* %k.bind, align 4
  %temp79 = load [256 x i128]*, [256 x i128]** %temp, align 8
  %p80 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call81 = call [256 x [256 x i128]]* @long_div(i128 %n77, i128 %k78, [256 x i128]* %temp79, [256 x i128]* %p80)
  store [256 x [256 x i128]]* %call81, [256 x [256 x i128]]** %temp2, align 8
  %temp282 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp2, align 8
  %array_getter83 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp282, i128 0, i128 1
  %temp284 = load [256 x i128], [256 x i128]* %array_getter83, align 4
  %spice_inline_array85 = alloca [256 x i128], align 8
  store [256 x i128] %temp284, [256 x i128]* %spice_inline_array85, align 4
  store [256 x i128]* %spice_inline_array85, [256 x i128]** %out, align 8
  br label %if.exit86

if.false68:                                       ; preds = %if.exit66
  br label %if.exit86

if.exit86:                                        ; preds = %if.false68, %if.true67
  br label %loop.latch87

loop.latch87:                                     ; preds = %if.exit86
  %i88 = load i128, i128* %i, align 4
  %sub89 = sub i128 %i88, 1
  store i128 %sub89, i128* %i, align 4
  %i90 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i90, 0
  br i1 %sge, label %loop.body46, label %loop.exit91

loop.exit91:                                      ; preds = %loop.latch87
  %out92 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out92
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
  %prod = alloca [256 x i128]*, align 8
  %temp = alloca [256 x [256 x i128]]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %a, [256 x i128]* %b)
  store [256 x i128]* %call, [256 x i128]** %prod, align 8
  %n1 = load i128, i128* %n.bind, align 4
  %k2 = load i128, i128* %k.bind, align 4
  %prod3 = load [256 x i128]*, [256 x i128]** %prod, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call4 = call [256 x [256 x i128]]* @long_div(i128 %n1, i128 %k2, [256 x i128]* %prod3, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call4, [256 x [256 x i128]]** %temp, align 8
  %temp5 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %temp, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %temp5, i128 0, i128 1
  %temp6 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %temp6, [256 x i128]* %spice_inline_array, align 4
  ret [256 x i128]* %spice_inline_array
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmod** getelementptr (%struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** null, i32 1) to i32))
  %big_mod = bitcast i8* %malloccall to %struct_template_circuit_bigmod**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmult** getelementptr (%struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** null, i32 1) to i32))
  %big_mult = bitcast i8* %malloccall5 to %struct_template_circuit_bigmult**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %out = alloca [256 x i128]*, align 8
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
  %ptr_getter = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter9 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter9, align 8
  %i10 = load i128, i128* %i, align 4
  %big_mult11 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i10
  store i128 %a8, i128* %big_mult11, align 4
  %big_mult12 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter13 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult12, i32 0, i32 2
  %read_input_outter.bigmult.a14 = load [256 x i128]*, [256 x i128]** %struct_getter13, align 8
  %i15 = load i128, i128* %i, align 4
  %array_getter16 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a14, i128 0, i128 %i15
  %big_mult17 = load i128, i128* %array_getter16, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult17, i128 %a8, i1* @constraint.253)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i18 = load i128, i128* %i, align 4
  %array_getter19 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i18
  %b20 = load i128, i128* %array_getter19, align 4
  %ptr_getter21 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter22 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter21, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter22, align 8
  %i23 = load i128, i128* %i, align 4
  %big_mult24 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i23
  store i128 %b20, i128* %big_mult24, align 4
  %big_mult25 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %big_mult, align 8
  %struct_getter26 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %big_mult25, i32 0, i32 3
  %read_input_outter.bigmult.b27 = load [256 x i128]*, [256 x i128]** %struct_getter26, align 8
  %i28 = load i128, i128* %i, align 4
  %array_getter29 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b27, i128 0, i128 %i28
  %big_mult30 = load i128, i128* %array_getter29, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mult30, i128 %b20, i1* @constraint.254)
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
  %ptr_getter43 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter44 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter43, i32 0, i32 2
  %read_input_outter.bigmod.a = load [256 x i128]*, [256 x i128]** %struct_getter44, align 8
  %i45 = load i128, i128* %i, align 4
  %big_mod46 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a, i128 0, i128 %i45
  store i128 %big_mult42, i128* %big_mod46, align 4
  %big_mod47 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter48 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod47, i32 0, i32 2
  %read_input_outter.bigmod.a49 = load [256 x i128]*, [256 x i128]** %struct_getter48, align 8
  %i50 = load i128, i128* %i, align 4
  %array_getter51 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a49, i128 0, i128 %i50
  %big_mod52 = load i128, i128* %array_getter51, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod52, i128 %big_mult42, i1* @constraint.255)
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
  %ptr_getter64 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter64, i32 0, i32 3
  %read_input_outter.bigmod.b = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %i66 = load i128, i128* %i, align 4
  %big_mod67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b, i128 0, i128 %i66
  store i128 %p63, i128* %big_mod67, align 4
  %big_mod68 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %big_mod, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %big_mod68, i32 0, i32 3
  %read_input_outter.bigmod.b70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b70, i128 0, i128 %i71
  %big_mod73 = load i128, i128* %array_getter72, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod73, i128 %p63, i1* @constraint.256)
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
  %ptr_getter87 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i88 = load i128, i128* %i, align 4
  %out89 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter87, i128 0, i128 %i88
  store i128 %big_mod86, i128* %out89, align 4
  %out90 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i91 = load i128, i128* %i, align 4
  %array_getter92 = getelementptr inbounds [256 x i128], [256 x i128]* %out90, i128 0, i128 %i91
  %out93 = load i128, i128* %array_getter92, align 4
  call void @fn_intrinsic_add_constraint(i128 %out93, i128 %big_mod86, i1* @constraint.257)
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
  %out = alloca [256 x [256 x [256 x i128]]]*, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array, [256 x [256 x [256 x i128]]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %m = load i128, i128* %m.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i1
  %a2 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a2, [256 x i128]* %spice_inline_array, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @get_signed_Fp_carry_witness(i128 %n, i128 %k, i128 %m, [256 x i128]* %spice_inline_array, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  %i3 = load i128, i128* %i, align 4
  %out4 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i3
  %5 = bitcast [256 x [256 x i128]]* %out4 to i8*
  %6 = bitcast [256 x [256 x i128]]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x [256 x i128]]* getelementptr ([256 x [256 x i128]], [256 x [256 x i128]]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i5 = load i128, i128* %i, align 4
  %add = add i128 %i5, 1
  store i128 %add, i128* %i, align 4
  %i6 = load i128, i128* %i, align 4
  %slt = icmp slt i128 %i6, 2
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %out7 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %out, align 8
  ret [256 x [256 x [256 x i128]]]* %out7
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint ([256 x [256 x i128]]** getelementptr ([256 x [256 x i128]]*, [256 x [256 x i128]]** null, i32 1) to i32))
  %r = bitcast i8* %malloccall to [256 x [256 x i128]]**
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall6 to i128*
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %out_sum = bitcast i8* %malloccall7 to [256 x i128]**
  %out = alloca [256 x i128]*, align 8
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %pow2n = bitcast i8* %malloccall8 to [256 x i128]**
  %malloccall9 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %pow2nk = bitcast i8* %malloccall9 to [256 x i128]**
  %malloccall10 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %two = bitcast i8* %malloccall10 to [256 x i128]**
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %e = bitcast i8* %malloccall11 to [256 x i128]**
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %j = bitcast i8* %malloccall12 to i128*
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %two, align 8
  %uniform_array13 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array13, [256 x i128]** %e, align 8
  store i128 1, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %ptr_getter = load [256 x i128]*, [256 x i128]** %two, align 8
  %i14 = load i128, i128* %i, align 4
  %two15 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i14
  store i128 0, i128* %two15, align 4
  %ptr_getter16 = load [256 x i128]*, [256 x i128]** %e, align 8
  %i17 = load i128, i128* %i, align 4
  %e18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter16, i128 0, i128 %i17
  store i128 0, i128* %e18, align 4
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i19 = load i128, i128* %i, align 4
  %add = add i128 %i19, 1
  store i128 %add, i128* %i, align 4
  %i20 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i20, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %ptr_getter21 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two22 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter21, i128 0, i128 0
  store i128 2, i128* %two22, align 4
  %n = load i128, i128* %n.bind, align 4
  %ptr_getter23 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter23, i128 0, i128 0
  store i128 %n, i128* %e24, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %k26 = load i128, i128* %k.bind, align 4
  %two27 = load [256 x i128]*, [256 x i128]** %two, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %e28 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call = call [256 x i128]* @mod_exp(i128 %n25, i128 %k26, [256 x i128]* %two27, [256 x i128]* %p, [256 x i128]* %e28)
  store [256 x i128]* %call, [256 x i128]** %pow2n, align 8
  %k29 = load i128, i128* %k.bind, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %e, align 8
  %e31 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 0
  store i128 %k29, i128* %e31, align 4
  %n32 = load i128, i128* %n.bind, align 4
  %k33 = load i128, i128* %k.bind, align 4
  %pow2n34 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p35 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %e36 = load [256 x i128]*, [256 x i128]** %e, align 8
  %call37 = call [256 x i128]* @mod_exp(i128 %n32, i128 %k33, [256 x i128]* %pow2n34, [256 x i128]* %p35, [256 x i128]* %e36)
  store [256 x i128]* %call37, [256 x i128]** %pow2nk, align 8
  %uniform_array38 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array38, [256 x [256 x i128]]** %r, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch56, %loop.exit
  %i40 = load i128, i128* %i, align 4
  %eq = icmp eq i128 %i40, 0
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body39
  %pow2nk41 = load [256 x i128]*, [256 x i128]** %pow2nk, align 8
  %ptr_getter42 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i43 = load i128, i128* %i, align 4
  %r44 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter42, i128 0, i128 %i43
  %1 = bitcast [256 x i128]* %r44 to i8*
  %2 = bitcast [256 x i128]* %pow2nk41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.false:                                         ; preds = %loop.body39
  %n45 = load i128, i128* %n.bind, align 4
  %k46 = load i128, i128* %k.bind, align 4
  %r47 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i48 = load i128, i128* %i, align 4
  %sub = sub i128 %i48, 1
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r47, i128 0, i128 %sub
  %r49 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %r49, [256 x i128]* %spice_inline_array, align 4
  %pow2n50 = load [256 x i128]*, [256 x i128]** %pow2n, align 8
  %p51 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call52 = call [256 x i128]* @prod_mod(i128 %n45, i128 %k46, [256 x i128]* %spice_inline_array, [256 x i128]* %pow2n50, [256 x i128]* %p51)
  %ptr_getter53 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i54 = load i128, i128* %i, align 4
  %r55 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter53, i128 0, i128 %i54
  %3 = bitcast [256 x i128]* %r55 to i8*
  %4 = bitcast [256 x i128]* %call52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch56

loop.latch56:                                     ; preds = %if.exit
  %i57 = load i128, i128* %i, align 4
  %add58 = add i128 %i57, 1
  store i128 %add58, i128* %i, align 4
  %i59 = load i128, i128* %i, align 4
  %m = load i128, i128* %m.bind, align 4
  %slt60 = icmp slt i128 %i59, %m
  br i1 %slt60, label %loop.body39, label %loop.exit61

loop.exit61:                                      ; preds = %loop.latch56
  %uniform_array62 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array62, [256 x i128]** %out_sum, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body63

loop.body63:                                      ; preds = %loop.latch70, %loop.exit61
  %in = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i64 = load i128, i128* %i, align 4
  %array_getter65 = getelementptr inbounds [256 x i128], [256 x i128]* %in, i128 0, i128 %i64
  %in66 = load i128, i128* %array_getter65, align 4
  %ptr_getter67 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i68 = load i128, i128* %i, align 4
  %out_sum69 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter67, i128 0, i128 %i68
  store i128 %in66, i128* %out_sum69, align 4
  br label %loop.latch70

loop.latch70:                                     ; preds = %loop.body63
  %i71 = load i128, i128* %i, align 4
  %add72 = add i128 %i71, 1
  store i128 %add72, i128* %i, align 4
  %i73 = load i128, i128* %i, align 4
  %k74 = load i128, i128* %k.bind, align 4
  %slt75 = icmp slt i128 %i73, %k74
  br i1 %slt75, label %loop.body63, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch70
  store i128 0, i128* %i, align 4
  br label %loop.body77

loop.body77:                                      ; preds = %loop.latch105, %loop.exit76
  store i128 0, i128* %j, align 4
  br label %loop.body78

loop.body78:                                      ; preds = %loop.latch98, %loop.body77
  %out_sum79 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j80 = load i128, i128* %j, align 4
  %array_getter81 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum79, i128 0, i128 %j80
  %out_sum82 = load i128, i128* %array_getter81, align 4
  %in83 = load [256 x i128]*, [256 x i128]** %in.bind, align 8
  %i84 = load i128, i128* %i, align 4
  %k85 = load i128, i128* %k.bind, align 4
  %add86 = add i128 %i84, %k85
  %array_getter87 = getelementptr inbounds [256 x i128], [256 x i128]* %in83, i128 0, i128 %add86
  %in88 = load i128, i128* %array_getter87, align 4
  %r89 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i90 = load i128, i128* %i, align 4
  %j91 = load i128, i128* %j, align 4
  %array_getter92 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r89, i128 0, i128 %i90, i128 %j91
  %r93 = load i128, i128* %array_getter92, align 4
  %mul = mul i128 %in88, %r93
  %add94 = add i128 %out_sum82, %mul
  %ptr_getter95 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %j96 = load i128, i128* %j, align 4
  %out_sum97 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter95, i128 0, i128 %j96
  store i128 %add94, i128* %out_sum97, align 4
  br label %loop.latch98

loop.latch98:                                     ; preds = %loop.body78
  %j99 = load i128, i128* %j, align 4
  %add100 = add i128 %j99, 1
  store i128 %add100, i128* %j, align 4
  %j101 = load i128, i128* %j, align 4
  %k102 = load i128, i128* %k.bind, align 4
  %slt103 = icmp slt i128 %j101, %k102
  br i1 %slt103, label %loop.body78, label %loop.exit104

loop.exit104:                                     ; preds = %loop.latch98
  br label %loop.latch105

loop.latch105:                                    ; preds = %loop.exit104
  %i106 = load i128, i128* %i, align 4
  %add107 = add i128 %i106, 1
  store i128 %add107, i128* %i, align 4
  %i108 = load i128, i128* %i, align 4
  %m109 = load i128, i128* %m.bind, align 4
  %slt110 = icmp slt i128 %i108, %m109
  br i1 %slt110, label %loop.body77, label %loop.exit111

loop.exit111:                                     ; preds = %loop.latch105
  store i128 0, i128* %i, align 4
  br label %loop.body112

loop.body112:                                     ; preds = %loop.latch124, %loop.exit111
  %out_sum113 = load [256 x i128]*, [256 x i128]** %out_sum, align 8
  %i114 = load i128, i128* %i, align 4
  %array_getter115 = getelementptr inbounds [256 x i128], [256 x i128]* %out_sum113, i128 0, i128 %i114
  %out_sum116 = load i128, i128* %array_getter115, align 4
  %ptr_getter117 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i118 = load i128, i128* %i, align 4
  %out119 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter117, i128 0, i128 %i118
  store i128 %out_sum116, i128* %out119, align 4
  %out120 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i121 = load i128, i128* %i, align 4
  %array_getter122 = getelementptr inbounds [256 x i128], [256 x i128]* %out120, i128 0, i128 %i121
  %out123 = load i128, i128* %array_getter122, align 4
  call void @fn_intrinsic_add_constraint(i128 %out123, i128 %out_sum116, i1* @constraint.258)
  br label %loop.latch124

loop.latch124:                                    ; preds = %loop.body112
  %i125 = load i128, i128* %i, align 4
  %add126 = add i128 %i125, 1
  store i128 %add126, i128* %i, align 4
  %i127 = load i128, i128* %i, align 4
  %k128 = load i128, i128* %k.bind, align 4
  %slt129 = icmp slt i128 %i127, %k128
  br i1 %slt129, label %loop.body112, label %loop.exit130

loop.exit130:                                     ; preds = %loop.latch124
  br label %exit

exit:                                             ; preds = %loop.exit130
  %out131 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.primereduce.out = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %0, i32 0, i32 6
  store [256 x i128]* %out131, [256 x i128]** %write_output_inner.primereduce.out, align 8
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
  %i = alloca i128, align 8
  %ab = alloca [256 x [256 x [256 x i128]]]*, align 8
  %j = alloca i128, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %uniform_array1 = alloca [256 x [256 x [256 x i128]]], align 8
  store [256 x [256 x [256 x i128]]]* %uniform_array1, [256 x [256 x [256 x i128]]]** %ab, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch14, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body2

loop.body2:                                       ; preds = %loop.latch, %loop.body
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %i3 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 %i3
  %a4 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array, align 4
  %b = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %b.bind, align 8
  %j5 = load i128, i128* %j, align 4
  %array_getter6 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %b, i128 0, i128 %j5
  %b7 = load [256 x i128], [256 x i128]* %array_getter6, align 4
  %spice_inline_array8 = alloca [256 x i128], align 8
  store [256 x i128] %b7, [256 x i128]* %spice_inline_array8, align 4
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x i128]* @prod_mod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array8, [256 x i128]* %p)
  %ptr_getter = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %i9 = load i128, i128* %i, align 4
  %j10 = load i128, i128* %j, align 4
  %ab11 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ptr_getter, i128 0, i128 %i9, i128 %j10
  %5 = bitcast [256 x i128]* %ab11 to i8*
  %6 = bitcast [256 x i128]* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body2
  %j12 = load i128, i128* %j, align 4
  %add = add i128 %j12, 1
  store i128 %add, i128* %j, align 4
  %j13 = load i128, i128* %j, align 4
  %slt = icmp slt i128 %j13, 2
  br i1 %slt, label %loop.body2, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch14

loop.latch14:                                     ; preds = %loop.exit
  %i15 = load i128, i128* %i, align 4
  %add16 = add i128 %i15, 1
  store i128 %add16, i128* %i, align 4
  %i17 = load i128, i128* %i, align 4
  %slt18 = icmp slt i128 %i17, 2
  br i1 %slt18, label %loop.body, label %loop.exit19

loop.exit19:                                      ; preds = %loop.latch14
  %n20 = load i128, i128* %n.bind, align 4
  %k21 = load i128, i128* %k.bind, align 4
  %ab22 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter23 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab22, i128 0, i128 0, i128 0
  %ab24 = load [256 x i128], [256 x i128]* %array_getter23, align 4
  %spice_inline_array25 = alloca [256 x i128], align 8
  store [256 x i128] %ab24, [256 x i128]* %spice_inline_array25, align 4
  %ab26 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter27 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab26, i128 0, i128 1, i128 1
  %ab28 = load [256 x i128], [256 x i128]* %array_getter27, align 4
  %spice_inline_array29 = alloca [256 x i128], align 8
  store [256 x i128] %ab28, [256 x i128]* %spice_inline_array29, align 4
  %p30 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call31 = call [256 x i128]* @long_sub_mod(i128 %n20, i128 %k21, [256 x i128]* %spice_inline_array25, [256 x i128]* %spice_inline_array29, [256 x i128]* %p30)
  %ptr_getter32 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out33 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter32, i128 0, i128 0
  %7 = bitcast [256 x i128]* %out33 to i8*
  %8 = bitcast [256 x i128]* %call31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n34 = load i128, i128* %n.bind, align 4
  %k35 = load i128, i128* %k.bind, align 4
  %ab36 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter37 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab36, i128 0, i128 0, i128 1
  %ab38 = load [256 x i128], [256 x i128]* %array_getter37, align 4
  %spice_inline_array39 = alloca [256 x i128], align 8
  store [256 x i128] %ab38, [256 x i128]* %spice_inline_array39, align 4
  %ab40 = load [256 x [256 x [256 x i128]]]*, [256 x [256 x [256 x i128]]]** %ab, align 8
  %array_getter41 = getelementptr inbounds [256 x [256 x [256 x i128]]], [256 x [256 x [256 x i128]]]* %ab40, i128 0, i128 1, i128 0
  %ab42 = load [256 x i128], [256 x i128]* %array_getter41, align 4
  %spice_inline_array43 = alloca [256 x i128], align 8
  store [256 x i128] %ab42, [256 x i128]* %spice_inline_array43, align 4
  %p44 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call45 = call [256 x i128]* @long_add_mod(i128 %n34, i128 %k35, [256 x i128]* %spice_inline_array39, [256 x i128]* %spice_inline_array43, [256 x i128]* %p44)
  %ptr_getter46 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out47 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter46, i128 0, i128 1
  %9 = bitcast [256 x i128]* %out47 to i8*
  %10 = bitcast [256 x i128]* %call45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out48
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
  %amodp = alloca [256 x [256 x i128]]*, align 8
  %u = alloca [256 x i128]*, align 8
  %newv = alloca [256 x i128]*, align 8
  %l = alloca i128, align 8
  %x = alloca [256 x i128]*, align 8
  %y = alloca [256 x i128]*, align 8
  %q = alloca [256 x i128]*, align 8
  %v = alloca [256 x i128]*, align 8
  %ka = alloca i128, align 8
  %r = alloca [256 x [256 x i128]]*, align 8
  %b = alloca [256 x i128]*, align 8
  %a = alloca [256 x i128]*, align 8
  %ret = alloca [256 x i128]*, align 8
  %newu = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %num = load [256 x i128]*, [256 x i128]** %num.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @long_div2(i128 %n, i128 %k, i128 0, [256 x i128]* %num, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %amodp, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %a, align 8
  %uniform_array1 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array1, [256 x i128]** %b, align 8
  %uniform_array2 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array2, [256 x i128]** %x, align 8
  %uniform_array3 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array3, [256 x i128]** %y, align 8
  %uniform_array4 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array4, [256 x i128]** %u, align 8
  %uniform_array5 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array5, [256 x i128]** %v, align 8
  %uniform_array6 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array6, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %amodp7 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %amodp, align 8
  %i8 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %amodp7, i128 0, i128 1, i128 %i8
  %amodp9 = load i128, i128* %array_getter, align 4
  %ptr_getter = load [256 x i128]*, [256 x i128]** %a, align 8
  %i10 = load i128, i128* %i, align 4
  %a11 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i10
  store i128 %amodp9, i128* %a11, align 4
  %p12 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %p12, i128 0, i128 %i13
  %p15 = load i128, i128* %array_getter14, align 4
  %ptr_getter16 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i17 = load i128, i128* %i, align 4
  %b18 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter16, i128 0, i128 %i17
  store i128 %p15, i128* %b18, align 4
  %ptr_getter19 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i20 = load i128, i128* %i, align 4
  %x21 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter19, i128 0, i128 %i20
  store i128 0, i128* %x21, align 4
  %ptr_getter22 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i23 = load i128, i128* %i, align 4
  %y24 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter22, i128 0, i128 %i23
  store i128 0, i128* %y24, align 4
  %ptr_getter25 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i26 = load i128, i128* %i, align 4
  %u27 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter25, i128 0, i128 %i26
  store i128 0, i128* %u27, align 4
  %ptr_getter28 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i29 = load i128, i128* %i, align 4
  %v30 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter28, i128 0, i128 %i29
  store i128 0, i128* %v30, align 4
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
  %ptr_getter34 = load [256 x i128]*, [256 x i128]** %y, align 8
  %y35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter34, i128 0, i128 0
  store i128 1, i128* %y35, align 4
  %ptr_getter36 = load [256 x i128]*, [256 x i128]** %u, align 8
  %u37 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter36, i128 0, i128 0
  store i128 1, i128* %u37, align 4
  store i128 0, i128* %l, align 4
  br label %loop.body38

loop.body38:                                      ; preds = %loop.latch195, %loop.exit
  store i128 0, i128* %ka, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body39

loop.body39:                                      ; preds = %loop.latch46, %loop.body38
  %a40 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i41 = load i128, i128* %i, align 4
  %array_getter42 = getelementptr inbounds [256 x i128], [256 x i128]* %a40, i128 0, i128 %i41
  %a43 = load i128, i128* %array_getter42, align 4
  %ne = icmp ne i128 %a43, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body39
  %i44 = load i128, i128* %i, align 4
  %add45 = add i128 %i44, 1
  store i128 %add45, i128* %ka, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body39
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch46

loop.latch46:                                     ; preds = %if.exit
  %i47 = load i128, i128* %i, align 4
  %add48 = add i128 %i47, 1
  store i128 %add48, i128* %i, align 4
  %i49 = load i128, i128* %i, align 4
  %k50 = load i128, i128* %k.bind, align 4
  %slt51 = icmp slt i128 %i49, %k50
  br i1 %slt51, label %loop.body39, label %loop.exit52

loop.exit52:                                      ; preds = %loop.latch46
  %ka55 = load i128, i128* %ka, align 4
  %eq = icmp eq i128 %ka55, 0
  br i1 %eq, label %if.true53, label %if.false54

if.true53:                                        ; preds = %loop.exit52
  store i128 0, i128* %i, align 4
  br label %loop.body56

if.false54:                                       ; preds = %loop.exit52
  br label %if.exit72

loop.body56:                                      ; preds = %loop.latch64, %if.true53
  %x57 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i58 = load i128, i128* %i, align 4
  %array_getter59 = getelementptr inbounds [256 x i128], [256 x i128]* %x57, i128 0, i128 %i58
  %x60 = load i128, i128* %array_getter59, align 4
  %ptr_getter61 = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i62 = load i128, i128* %i, align 4
  %ret63 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter61, i128 0, i128 %i62
  store i128 %x60, i128* %ret63, align 4
  br label %loop.latch64

loop.latch64:                                     ; preds = %loop.body56
  %i65 = load i128, i128* %i, align 4
  %add66 = add i128 %i65, 1
  store i128 %add66, i128* %i, align 4
  %i67 = load i128, i128* %i, align 4
  %k68 = load i128, i128* %k.bind, align 4
  %slt69 = icmp slt i128 %i67, %k68
  br i1 %slt69, label %loop.body56, label %loop.exit70

loop.exit70:                                      ; preds = %loop.latch64
  %ret71 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret71

if.exit72:                                        ; preds = %if.false54
  %n73 = load i128, i128* %n.bind, align 4
  %ka74 = load i128, i128* %ka, align 4
  %k75 = load i128, i128* %k.bind, align 4
  %ka76 = load i128, i128* %ka, align 4
  %sub = sub i128 %k75, %ka76
  %b77 = load [256 x i128]*, [256 x i128]** %b, align 8
  %a78 = load [256 x i128]*, [256 x i128]** %a, align 8
  %call79 = call [256 x [256 x i128]]* @long_div2(i128 %n73, i128 %ka74, i128 %sub, [256 x i128]* %b77, [256 x i128]* %a78)
  store [256 x [256 x i128]]* %call79, [256 x [256 x i128]]** %r, align 8
  %uniform_array80 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array80, [256 x i128]** %q, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body81

loop.body81:                                      ; preds = %loop.latch89, %if.exit72
  %r82 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i83 = load i128, i128* %i, align 4
  %array_getter84 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r82, i128 0, i128 0, i128 %i83
  %r85 = load i128, i128* %array_getter84, align 4
  %ptr_getter86 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i87 = load i128, i128* %i, align 4
  %q88 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter86, i128 0, i128 %i87
  store i128 %r85, i128* %q88, align 4
  br label %loop.latch89

loop.latch89:                                     ; preds = %loop.body81
  %i90 = load i128, i128* %i, align 4
  %add91 = add i128 %i90, 1
  store i128 %add91, i128* %i, align 4
  %i92 = load i128, i128* %i, align 4
  %k93 = load i128, i128* %k.bind, align 4
  %ka94 = load i128, i128* %ka, align 4
  %sub95 = sub i128 %k93, %ka94
  %add96 = add i128 %sub95, 1
  %slt97 = icmp slt i128 %i92, %add96
  br i1 %slt97, label %loop.body81, label %loop.exit98

loop.exit98:                                      ; preds = %loop.latch89
  %k99 = load i128, i128* %k.bind, align 4
  %ka100 = load i128, i128* %ka, align 4
  %sub101 = sub i128 %k99, %ka100
  %add102 = add i128 %sub101, 1
  store i128 %add102, i128* %i, align 4
  br label %loop.body103

loop.body103:                                     ; preds = %loop.latch107, %loop.exit98
  %ptr_getter104 = load [256 x i128]*, [256 x i128]** %q, align 8
  %i105 = load i128, i128* %i, align 4
  %q106 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter104, i128 0, i128 %i105
  store i128 0, i128* %q106, align 4
  br label %loop.latch107

loop.latch107:                                    ; preds = %loop.body103
  %i108 = load i128, i128* %i, align 4
  %add109 = add i128 %i108, 1
  store i128 %add109, i128* %i, align 4
  %i110 = load i128, i128* %i, align 4
  %k111 = load i128, i128* %k.bind, align 4
  %slt112 = icmp slt i128 %i110, %k111
  br i1 %slt112, label %loop.body103, label %loop.exit113

loop.exit113:                                     ; preds = %loop.latch107
  %n114 = load i128, i128* %n.bind, align 4
  %k115 = load i128, i128* %k.bind, align 4
  %x116 = load [256 x i128]*, [256 x i128]** %x, align 8
  %n117 = load i128, i128* %n.bind, align 4
  %k118 = load i128, i128* %k.bind, align 4
  %u119 = load [256 x i128]*, [256 x i128]** %u, align 8
  %q120 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p121 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call122 = call [256 x i128]* @prod_mod(i128 %n117, i128 %k118, [256 x i128]* %u119, [256 x i128]* %q120, [256 x i128]* %p121)
  %p123 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call124 = call [256 x i128]* @long_sub_mod(i128 %n114, i128 %k115, [256 x i128]* %x116, [256 x i128]* %call122, [256 x i128]* %p123)
  store [256 x i128]* %call124, [256 x i128]** %newu, align 8
  %n125 = load i128, i128* %n.bind, align 4
  %k126 = load i128, i128* %k.bind, align 4
  %y127 = load [256 x i128]*, [256 x i128]** %y, align 8
  %n128 = load i128, i128* %n.bind, align 4
  %k129 = load i128, i128* %k.bind, align 4
  %v130 = load [256 x i128]*, [256 x i128]** %v, align 8
  %q131 = load [256 x i128]*, [256 x i128]** %q, align 8
  %p132 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call133 = call [256 x i128]* @prod_mod(i128 %n128, i128 %k129, [256 x i128]* %v130, [256 x i128]* %q131, [256 x i128]* %p132)
  %p134 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call135 = call [256 x i128]* @long_sub_mod(i128 %n125, i128 %k126, [256 x i128]* %y127, [256 x i128]* %call133, [256 x i128]* %p134)
  store [256 x i128]* %call135, [256 x i128]** %newv, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body136

loop.body136:                                     ; preds = %loop.latch188, %loop.exit113
  %a137 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i138 = load i128, i128* %i, align 4
  %array_getter139 = getelementptr inbounds [256 x i128], [256 x i128]* %a137, i128 0, i128 %i138
  %a140 = load i128, i128* %array_getter139, align 4
  %ptr_getter141 = load [256 x i128]*, [256 x i128]** %b, align 8
  %i142 = load i128, i128* %i, align 4
  %b143 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter141, i128 0, i128 %i142
  store i128 %a140, i128* %b143, align 4
  %i146 = load i128, i128* %i, align 4
  %ka147 = load i128, i128* %ka, align 4
  %slt148 = icmp slt i128 %i146, %ka147
  br i1 %slt148, label %if.true144, label %if.false145

if.true144:                                       ; preds = %loop.body136
  %r149 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %r, align 8
  %i150 = load i128, i128* %i, align 4
  %array_getter151 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %r149, i128 0, i128 1, i128 %i150
  %r152 = load i128, i128* %array_getter151, align 4
  %ptr_getter153 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i154 = load i128, i128* %i, align 4
  %a155 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter153, i128 0, i128 %i154
  store i128 %r152, i128* %a155, align 4
  br label %if.exit159

if.false145:                                      ; preds = %loop.body136
  %ptr_getter156 = load [256 x i128]*, [256 x i128]** %a, align 8
  %i157 = load i128, i128* %i, align 4
  %a158 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter156, i128 0, i128 %i157
  store i128 0, i128* %a158, align 4
  br label %if.exit159

if.exit159:                                       ; preds = %if.false145, %if.true144
  %u160 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i161 = load i128, i128* %i, align 4
  %array_getter162 = getelementptr inbounds [256 x i128], [256 x i128]* %u160, i128 0, i128 %i161
  %u163 = load i128, i128* %array_getter162, align 4
  %ptr_getter164 = load [256 x i128]*, [256 x i128]** %x, align 8
  %i165 = load i128, i128* %i, align 4
  %x166 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter164, i128 0, i128 %i165
  store i128 %u163, i128* %x166, align 4
  %v167 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i168 = load i128, i128* %i, align 4
  %array_getter169 = getelementptr inbounds [256 x i128], [256 x i128]* %v167, i128 0, i128 %i168
  %v170 = load i128, i128* %array_getter169, align 4
  %ptr_getter171 = load [256 x i128]*, [256 x i128]** %y, align 8
  %i172 = load i128, i128* %i, align 4
  %y173 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter171, i128 0, i128 %i172
  store i128 %v170, i128* %y173, align 4
  %newu174 = load [256 x i128]*, [256 x i128]** %newu, align 8
  %i175 = load i128, i128* %i, align 4
  %array_getter176 = getelementptr inbounds [256 x i128], [256 x i128]* %newu174, i128 0, i128 %i175
  %newu177 = load i128, i128* %array_getter176, align 4
  %ptr_getter178 = load [256 x i128]*, [256 x i128]** %u, align 8
  %i179 = load i128, i128* %i, align 4
  %u180 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter178, i128 0, i128 %i179
  store i128 %newu177, i128* %u180, align 4
  %newv181 = load [256 x i128]*, [256 x i128]** %newv, align 8
  %i182 = load i128, i128* %i, align 4
  %array_getter183 = getelementptr inbounds [256 x i128], [256 x i128]* %newv181, i128 0, i128 %i182
  %newv184 = load i128, i128* %array_getter183, align 4
  %ptr_getter185 = load [256 x i128]*, [256 x i128]** %v, align 8
  %i186 = load i128, i128* %i, align 4
  %v187 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter185, i128 0, i128 %i186
  store i128 %newv184, i128* %v187, align 4
  br label %loop.latch188

loop.latch188:                                    ; preds = %if.exit159
  %i189 = load i128, i128* %i, align 4
  %add190 = add i128 %i189, 1
  store i128 %add190, i128* %i, align 4
  %i191 = load i128, i128* %i, align 4
  %k192 = load i128, i128* %k.bind, align 4
  %slt193 = icmp slt i128 %i191, %k192
  br i1 %slt193, label %loop.body136, label %loop.exit194

loop.exit194:                                     ; preds = %loop.latch188
  br label %loop.latch195

loop.latch195:                                    ; preds = %loop.exit194
  %l196 = load i128, i128* %l, align 4
  %add197 = add i128 %l196, 1
  store i128 %add197, i128* %l, align 4
  %l198 = load i128, i128* %l, align 4
  %slt199 = icmp slt i128 %l198, 1000
  br i1 %slt199, label %loop.body38, label %loop.exit200

loop.exit200:                                     ; preds = %loop.latch195
  %ret201 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret201
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
  %isZero = alloca i128, align 8
  %pCopy = alloca [256 x i128]*, align 8
  %pMinusTwo = alloca [256 x i128]*, align 8
  %out = alloca [256 x i128]*, align 8
  %two = alloca [256 x i128]*, align 8
  %i = alloca i128, align 8
  %ret = alloca [256 x i128]*, align 8
  store i128 1, i128* %isZero, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i1 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i1
  %a2 = load i128, i128* %array_getter, align 4
  %ne = icmp ne i128 %a2, 0
  br i1 %ne, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body
  store i128 0, i128* %isZero, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %i3 = load i128, i128* %i, align 4
  %add = add i128 %i3, 1
  store i128 %add, i128* %i, align 4
  %i4 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i4, %k
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %isZero7 = load i128, i128* %isZero, align 4
  %eq = icmp eq i128 %isZero7, 1
  br i1 %eq, label %if.true5, label %if.false6

if.true5:                                         ; preds = %loop.exit
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %ret, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body8

if.false6:                                        ; preds = %loop.exit
  br label %if.exit19

loop.body8:                                       ; preds = %loop.latch11, %if.true5
  %ptr_getter = load [256 x i128]*, [256 x i128]** %ret, align 8
  %i9 = load i128, i128* %i, align 4
  %ret10 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %i9
  store i128 0, i128* %ret10, align 4
  br label %loop.latch11

loop.latch11:                                     ; preds = %loop.body8
  %i12 = load i128, i128* %i, align 4
  %add13 = add i128 %i12, 1
  store i128 %add13, i128* %i, align 4
  %i14 = load i128, i128* %i, align 4
  %k15 = load i128, i128* %k.bind, align 4
  %slt16 = icmp slt i128 %i14, %k15
  br i1 %slt16, label %loop.body8, label %loop.exit17

loop.exit17:                                      ; preds = %loop.latch11
  %ret18 = load [256 x i128]*, [256 x i128]** %ret, align 8
  ret [256 x i128]* %ret18

if.exit19:                                        ; preds = %if.false6
  %uniform_array20 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array20, [256 x i128]** %pCopy, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body21

loop.body21:                                      ; preds = %loop.latch37, %if.exit19
  %i24 = load i128, i128* %i, align 4
  %k25 = load i128, i128* %k.bind, align 4
  %slt26 = icmp slt i128 %i24, %k25
  br i1 %slt26, label %if.true22, label %if.false23

if.true22:                                        ; preds = %loop.body21
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x i128], [256 x i128]* %p, i128 0, i128 %i27
  %p29 = load i128, i128* %array_getter28, align 4
  %ptr_getter30 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i31 = load i128, i128* %i, align 4
  %pCopy32 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter30, i128 0, i128 %i31
  store i128 %p29, i128* %pCopy32, align 4
  br label %if.exit36

if.false23:                                       ; preds = %loop.body21
  %ptr_getter33 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %i34 = load i128, i128* %i, align 4
  %pCopy35 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter33, i128 0, i128 %i34
  store i128 0, i128* %pCopy35, align 4
  br label %if.exit36

if.exit36:                                        ; preds = %if.false23, %if.true22
  br label %loop.latch37

loop.latch37:                                     ; preds = %if.exit36
  %i38 = load i128, i128* %i, align 4
  %add39 = add i128 %i38, 1
  store i128 %add39, i128* %i, align 4
  %i40 = load i128, i128* %i, align 4
  %slt41 = icmp slt i128 %i40, 50
  br i1 %slt41, label %loop.body21, label %loop.exit42

loop.exit42:                                      ; preds = %loop.latch37
  %uniform_array43 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array43, [256 x i128]** %two, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body44

loop.body44:                                      ; preds = %loop.latch48, %loop.exit42
  %ptr_getter45 = load [256 x i128]*, [256 x i128]** %two, align 8
  %i46 = load i128, i128* %i, align 4
  %two47 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter45, i128 0, i128 %i46
  store i128 0, i128* %two47, align 4
  br label %loop.latch48

loop.latch48:                                     ; preds = %loop.body44
  %i49 = load i128, i128* %i, align 4
  %add50 = add i128 %i49, 1
  store i128 %add50, i128* %i, align 4
  %i51 = load i128, i128* %i, align 4
  %slt52 = icmp slt i128 %i51, 50
  br i1 %slt52, label %loop.body44, label %loop.exit53

loop.exit53:                                      ; preds = %loop.latch48
  %ptr_getter54 = load [256 x i128]*, [256 x i128]** %two, align 8
  %two55 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter54, i128 0, i128 0
  store i128 2, i128* %two55, align 4
  %uniform_array56 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array56, [256 x i128]** %pMinusTwo, align 8
  %n = load i128, i128* %n.bind, align 4
  %k57 = load i128, i128* %k.bind, align 4
  %pCopy58 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %two59 = load [256 x i128]*, [256 x i128]** %two, align 8
  %call = call [256 x i128]* @long_sub(i128 %n, i128 %k57, [256 x i128]* %pCopy58, [256 x i128]* %two59)
  store [256 x i128]* %call, [256 x i128]** %pMinusTwo, align 8
  %uniform_array60 = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array60, [256 x i128]** %out, align 8
  %n61 = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %a63 = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %pCopy64 = load [256 x i128]*, [256 x i128]** %pCopy, align 8
  %pMinusTwo65 = load [256 x i128]*, [256 x i128]** %pMinusTwo, align 8
  %call66 = call [256 x i128]* @mod_exp(i128 %n61, i128 %k62, [256 x i128]* %a63, [256 x i128]* %pCopy64, [256 x i128]* %pMinusTwo65)
  store [256 x i128]* %call66, [256 x i128]** %out, align 8
  %out67 = load [256 x i128]*, [256 x i128]** %out, align 8
  ret [256 x i128]* %out67
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
  %out1_pre = alloca [256 x i128]*, align 8
  %sq0 = alloca [256 x i128]*, align 8
  %out1 = alloca [256 x i128]*, align 8
  %out1_div = alloca [256 x [256 x i128]]*, align 8
  %sq1 = alloca [256 x i128]*, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %out0_div = alloca [256 x [256 x i128]]*, align 8
  %lambda = alloca [256 x i128]*, align 8
  %sq_sum = alloca [256 x i128]*, align 8
  %out0 = alloca [256 x i128]*, align 8
  %sq_sum_div = alloca [256 x [256 x i128]]*, align 8
  %n = load i128, i128* %n.bind, align 4
  %k = load i128, i128* %k.bind, align 4
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a, i128 0, i128 0
  %a1 = load [256 x i128], [256 x i128]* %array_getter, align 4
  %spice_inline_array = alloca [256 x i128], align 8
  store [256 x i128] %a1, [256 x i128]* %spice_inline_array, align 4
  %a2 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter3 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a2, i128 0, i128 0
  %a4 = load [256 x i128], [256 x i128]* %array_getter3, align 4
  %spice_inline_array5 = alloca [256 x i128], align 8
  store [256 x i128] %a4, [256 x i128]* %spice_inline_array5, align 4
  %call = call [256 x i128]* @prod(i128 %n, i128 %k, [256 x i128]* %spice_inline_array, [256 x i128]* %spice_inline_array5)
  store [256 x i128]* %call, [256 x i128]** %sq0, align 8
  %n6 = load i128, i128* %n.bind, align 4
  %k7 = load i128, i128* %k.bind, align 4
  %a8 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter9 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a8, i128 0, i128 1
  %a10 = load [256 x i128], [256 x i128]* %array_getter9, align 4
  %spice_inline_array11 = alloca [256 x i128], align 8
  store [256 x i128] %a10, [256 x i128]* %spice_inline_array11, align 4
  %a12 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter13 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a12, i128 0, i128 1
  %a14 = load [256 x i128], [256 x i128]* %array_getter13, align 4
  %spice_inline_array15 = alloca [256 x i128], align 8
  store [256 x i128] %a14, [256 x i128]* %spice_inline_array15, align 4
  %call16 = call [256 x i128]* @prod(i128 %n6, i128 %k7, [256 x i128]* %spice_inline_array11, [256 x i128]* %spice_inline_array15)
  store [256 x i128]* %call16, [256 x i128]** %sq1, align 8
  %n17 = load i128, i128* %n.bind, align 4
  %k18 = load i128, i128* %k.bind, align 4
  %mul = mul i128 2, %k18
  %sq019 = load [256 x i128]*, [256 x i128]** %sq0, align 8
  %sq120 = load [256 x i128]*, [256 x i128]** %sq1, align 8
  %call21 = call [256 x i128]* @long_add(i128 %n17, i128 %mul, [256 x i128]* %sq019, [256 x i128]* %sq120)
  store [256 x i128]* %call21, [256 x i128]** %sq_sum, align 8
  %n22 = load i128, i128* %n.bind, align 4
  %k23 = load i128, i128* %k.bind, align 4
  %k24 = load i128, i128* %k.bind, align 4
  %add = add i128 %k24, 1
  %sq_sum25 = load [256 x i128]*, [256 x i128]** %sq_sum, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call26 = call [256 x [256 x i128]]* @long_div2(i128 %n22, i128 %k23, i128 %add, [256 x i128]* %sq_sum25, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call26, [256 x [256 x i128]]** %sq_sum_div, align 8
  %n27 = load i128, i128* %n.bind, align 4
  %k28 = load i128, i128* %k.bind, align 4
  %sq_sum_div29 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %sq_sum_div, align 8
  %array_getter30 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %sq_sum_div29, i128 0, i128 1
  %sq_sum_div31 = load [256 x i128], [256 x i128]* %array_getter30, align 4
  %spice_inline_array32 = alloca [256 x i128], align 8
  store [256 x i128] %sq_sum_div31, [256 x i128]* %spice_inline_array32, align 4
  %p33 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call34 = call [256 x i128]* @mod_inv(i128 %n27, i128 %k28, [256 x i128]* %spice_inline_array32, [256 x i128]* %p33)
  store [256 x i128]* %call34, [256 x i128]** %lambda, align 8
  %n35 = load i128, i128* %n.bind, align 4
  %k36 = load i128, i128* %k.bind, align 4
  %lambda37 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %a38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter39 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a38, i128 0, i128 0
  %a40 = load [256 x i128], [256 x i128]* %array_getter39, align 4
  %spice_inline_array41 = alloca [256 x i128], align 8
  store [256 x i128] %a40, [256 x i128]* %spice_inline_array41, align 4
  %call42 = call [256 x i128]* @prod(i128 %n35, i128 %k36, [256 x i128]* %lambda37, [256 x i128]* %spice_inline_array41)
  store [256 x i128]* %call42, [256 x i128]** %out0, align 8
  %n43 = load i128, i128* %n.bind, align 4
  %k44 = load i128, i128* %k.bind, align 4
  %out045 = load [256 x i128]*, [256 x i128]** %out0, align 8
  %p46 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call47 = call [256 x [256 x i128]]* @long_div(i128 %n43, i128 %k44, [256 x i128]* %out045, [256 x i128]* %p46)
  store [256 x [256 x i128]]* %call47, [256 x [256 x i128]]** %out0_div, align 8
  %uniform_array = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array, [256 x [256 x i128]]** %out, align 8
  %out0_div48 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out0_div, align 8
  %array_getter49 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out0_div48, i128 0, i128 1
  %out0_div50 = load [256 x i128], [256 x i128]* %array_getter49, align 4
  %spice_inline_array51 = alloca [256 x i128], align 8
  store [256 x i128] %out0_div50, [256 x i128]* %spice_inline_array51, align 4
  %ptr_getter = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out52 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter, i128 0, i128 0
  %4 = bitcast [256 x i128]* %out52 to i8*
  %5 = bitcast [256 x i128]* %spice_inline_array51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %n53 = load i128, i128* %n.bind, align 4
  %k54 = load i128, i128* %k.bind, align 4
  %p55 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %a56 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %array_getter57 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %a56, i128 0, i128 1
  %a58 = load [256 x i128], [256 x i128]* %array_getter57, align 4
  %spice_inline_array59 = alloca [256 x i128], align 8
  store [256 x i128] %a58, [256 x i128]* %spice_inline_array59, align 4
  %call60 = call [256 x i128]* @long_sub(i128 %n53, i128 %k54, [256 x i128]* %p55, [256 x i128]* %spice_inline_array59)
  store [256 x i128]* %call60, [256 x i128]** %out1_pre, align 8
  %n61 = load i128, i128* %n.bind, align 4
  %k62 = load i128, i128* %k.bind, align 4
  %lambda63 = load [256 x i128]*, [256 x i128]** %lambda, align 8
  %out1_pre64 = load [256 x i128]*, [256 x i128]** %out1_pre, align 8
  %call65 = call [256 x i128]* @prod(i128 %n61, i128 %k62, [256 x i128]* %lambda63, [256 x i128]* %out1_pre64)
  store [256 x i128]* %call65, [256 x i128]** %out1, align 8
  %n66 = load i128, i128* %n.bind, align 4
  %k67 = load i128, i128* %k.bind, align 4
  %out168 = load [256 x i128]*, [256 x i128]** %out1, align 8
  %p69 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call70 = call [256 x [256 x i128]]* @long_div(i128 %n66, i128 %k67, [256 x i128]* %out168, [256 x i128]* %p69)
  store [256 x [256 x i128]]* %call70, [256 x [256 x i128]]** %out1_div, align 8
  %out1_div71 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out1_div, align 8
  %array_getter72 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %out1_div71, i128 0, i128 1
  %out1_div73 = load [256 x i128], [256 x i128]* %array_getter72, align 4
  %spice_inline_array74 = alloca [256 x i128], align 8
  store [256 x i128] %out1_div73, [256 x i128]* %spice_inline_array74, align 4
  %ptr_getter75 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out76 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter75, i128 0, i128 1
  %6 = bitcast [256 x i128]* %out76 to i8*
  %7 = bitcast [256 x i128]* %spice_inline_array74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 ptrtoint ([256 x i128]* getelementptr ([256 x i128], [256 x i128]* null, i32 1) to i64), i1 false)
  %out77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out77
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_primereduce** getelementptr (%struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** null, i32 1) to i32))
  %red = bitcast i8* %malloccall to %struct_template_circuit_primereduce**
  %out = alloca [256 x i128]*, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %LOGK = bitcast i8* %malloccall5 to i128*
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmultshortlong** getelementptr (%struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** null, i32 1) to i32))
  %nocarry = bitcast i8* %malloccall6 to %struct_template_circuit_bigmultshortlong**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_signedfpcarrymodp** getelementptr (%struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** null, i32 1) to i32))
  %big_mod = bitcast i8* %malloccall7 to %struct_template_circuit_signedfpcarrymodp**
  %malloccall8 = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall8 to i128*
  %k = load i128, i128* %k.bind, align 4
  %call = call i128 @log_ceil(i128 %k)
  store i128 %call, i128* %LOGK, align 4
  %n = load i128, i128* %n.bind, align 4
  %k9 = load i128, i128* %k.bind, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %mul = mul i128 2, %n10
  %LOGK11 = load i128, i128* %LOGK, align 4
  %add = add i128 %mul, %LOGK11
  %call12 = call %struct_template_circuit_bigmultshortlong* @fn_template_build_bigmultshortlong(i128 %n, i128 %k9, i128 %add)
  store %struct_template_circuit_bigmultshortlong* %call12, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %a = load [256 x i128]*, [256 x i128]** %a.bind, align 8
  %i13 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %a, i128 0, i128 %i13
  %a14 = load i128, i128* %array_getter, align 4
  %ptr_getter = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter15 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a = load [256 x i128]*, [256 x i128]** %struct_getter15, align 8
  %i16 = load i128, i128* %i, align 4
  %nocarry17 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a, i128 0, i128 %i16
  store i128 %a14, i128* %nocarry17, align 4
  %nocarry18 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter19 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry18, i32 0, i32 3
  %read_input_outter.bigmultshortlong.a20 = load [256 x i128]*, [256 x i128]** %struct_getter19, align 8
  %i21 = load i128, i128* %i, align 4
  %array_getter22 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.a20, i128 0, i128 %i21
  %nocarry23 = load i128, i128* %array_getter22, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry23, i128 %a14, i1* @constraint.259)
  %b = load [256 x i128]*, [256 x i128]** %b.bind, align 8
  %i24 = load i128, i128* %i, align 4
  %array_getter25 = getelementptr inbounds [256 x i128], [256 x i128]* %b, i128 0, i128 %i24
  %b26 = load i128, i128* %array_getter25, align 4
  %ptr_getter27 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter28 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %ptr_getter27, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b = load [256 x i128]*, [256 x i128]** %struct_getter28, align 8
  %i29 = load i128, i128* %i, align 4
  %nocarry30 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b, i128 0, i128 %i29
  store i128 %b26, i128* %nocarry30, align 4
  %nocarry31 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter32 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry31, i32 0, i32 4
  %read_input_outter.bigmultshortlong.b33 = load [256 x i128]*, [256 x i128]** %struct_getter32, align 8
  %i34 = load i128, i128* %i, align 4
  %array_getter35 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmultshortlong.b33, i128 0, i128 %i34
  %nocarry36 = load i128, i128* %array_getter35, align 4
  call void @fn_intrinsic_add_constraint(i128 %nocarry36, i128 %b26, i1* @constraint.260)
  br label %loop.latch

loop.latch:                                       ; preds = %loop.body
  %i37 = load i128, i128* %i, align 4
  %add38 = add i128 %i37, 1
  store i128 %add38, i128* %i, align 4
  %i39 = load i128, i128* %i, align 4
  %k40 = load i128, i128* %k.bind, align 4
  %slt = icmp slt i128 %i39, %k40
  br i1 %slt, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  %n41 = load i128, i128* %n.bind, align 4
  %k42 = load i128, i128* %k.bind, align 4
  %k43 = load i128, i128* %k.bind, align 4
  %sub = sub i128 %k43, 1
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %n44 = load i128, i128* %n.bind, align 4
  %mul45 = mul i128 3, %n44
  %LOGK46 = load i128, i128* %LOGK, align 4
  %mul47 = mul i128 2, %LOGK46
  %add48 = add i128 %mul45, %mul47
  %call49 = call %struct_template_circuit_primereduce* @fn_template_build_primereduce(i128 %n41, i128 %k42, i128 %sub, [256 x i128]* %p, i128 %add48)
  store %struct_template_circuit_primereduce* %call49, %struct_template_circuit_primereduce** %red, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch66, %loop.exit
  %nocarry51 = load %struct_template_circuit_bigmultshortlong*, %struct_template_circuit_bigmultshortlong** %nocarry, align 8
  %struct_getter52 = getelementptr inbounds %struct_template_circuit_bigmultshortlong, %struct_template_circuit_bigmultshortlong* %nocarry51, i32 0, i32 5
  %read_output_outter.bigmultshortlong.out = load [256 x i128]*, [256 x i128]** %struct_getter52, align 8
  %i53 = load i128, i128* %i, align 4
  %array_getter54 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmultshortlong.out, i128 0, i128 %i53
  %nocarry55 = load i128, i128* %array_getter54, align 4
  %ptr_getter56 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter57 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %ptr_getter56, i32 0, i32 5
  %read_input_outter.primereduce.in = load [256 x i128]*, [256 x i128]** %struct_getter57, align 8
  %i58 = load i128, i128* %i, align 4
  %red59 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.primereduce.in, i128 0, i128 %i58
  store i128 %nocarry55, i128* %red59, align 4
  %red60 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter61 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %red60, i32 0, i32 5
  %read_input_outter.primereduce.in62 = load [256 x i128]*, [256 x i128]** %struct_getter61, align 8
  %i63 = load i128, i128* %i, align 4
  %array_getter64 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.primereduce.in62, i128 0, i128 %i63
  %red65 = load i128, i128* %array_getter64, align 4
  call void @fn_intrinsic_add_constraint(i128 %red65, i128 %nocarry55, i1* @constraint.261)
  br label %loop.latch66

loop.latch66:                                     ; preds = %loop.body50
  %i67 = load i128, i128* %i, align 4
  %add68 = add i128 %i67, 1
  store i128 %add68, i128* %i, align 4
  %i69 = load i128, i128* %i, align 4
  %k70 = load i128, i128* %k.bind, align 4
  %mul71 = mul i128 2, %k70
  %sub72 = sub i128 %mul71, 1
  %slt73 = icmp slt i128 %i69, %sub72
  br i1 %slt73, label %loop.body50, label %loop.exit74

loop.exit74:                                      ; preds = %loop.latch66
  %n75 = load i128, i128* %n.bind, align 4
  %k76 = load i128, i128* %k.bind, align 4
  %n77 = load i128, i128* %n.bind, align 4
  %mul78 = mul i128 3, %n77
  %LOGK79 = load i128, i128* %LOGK, align 4
  %mul80 = mul i128 2, %LOGK79
  %add81 = add i128 %mul78, %mul80
  %p82 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call83 = call %struct_template_circuit_signedfpcarrymodp* @fn_template_build_signedfpcarrymodp(i128 %n75, i128 %k76, i128 %add81, [256 x i128]* %p82)
  store %struct_template_circuit_signedfpcarrymodp* %call83, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body84

loop.body84:                                      ; preds = %loop.latch100, %loop.exit74
  %red85 = load %struct_template_circuit_primereduce*, %struct_template_circuit_primereduce** %red, align 8
  %struct_getter86 = getelementptr inbounds %struct_template_circuit_primereduce, %struct_template_circuit_primereduce* %red85, i32 0, i32 6
  %read_output_outter.primereduce.out = load [256 x i128]*, [256 x i128]** %struct_getter86, align 8
  %i87 = load i128, i128* %i, align 4
  %array_getter88 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.primereduce.out, i128 0, i128 %i87
  %red89 = load i128, i128* %array_getter88, align 4
  %ptr_getter90 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %ptr_getter90, i32 0, i32 4
  %read_input_outter.signedfpcarrymodp.in = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %i92 = load i128, i128* %i, align 4
  %big_mod93 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.signedfpcarrymodp.in, i128 0, i128 %i92
  store i128 %red89, i128* %big_mod93, align 4
  %big_mod94 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %big_mod94, i32 0, i32 4
  %read_input_outter.signedfpcarrymodp.in96 = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.signedfpcarrymodp.in96, i128 0, i128 %i97
  %big_mod99 = load i128, i128* %array_getter98, align 4
  call void @fn_intrinsic_add_constraint(i128 %big_mod99, i128 %red89, i1* @constraint.262)
  br label %loop.latch100

loop.latch100:                                    ; preds = %loop.body84
  %i101 = load i128, i128* %i, align 4
  %add102 = add i128 %i101, 1
  store i128 %add102, i128* %i, align 4
  %i103 = load i128, i128* %i, align 4
  %k104 = load i128, i128* %k.bind, align 4
  %slt105 = icmp slt i128 %i103, %k104
  br i1 %slt105, label %loop.body84, label %loop.exit106

loop.exit106:                                     ; preds = %loop.latch100
  store i128 0, i128* %i, align 4
  br label %loop.body107

loop.body107:                                     ; preds = %loop.latch120, %loop.exit106
  %big_mod108 = load %struct_template_circuit_signedfpcarrymodp*, %struct_template_circuit_signedfpcarrymodp** %big_mod, align 8
  %struct_getter109 = getelementptr inbounds %struct_template_circuit_signedfpcarrymodp, %struct_template_circuit_signedfpcarrymodp* %big_mod108, i32 0, i32 6
  %read_output_outter.signedfpcarrymodp.out = load [256 x i128]*, [256 x i128]** %struct_getter109, align 8
  %i110 = load i128, i128* %i, align 4
  %array_getter111 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.signedfpcarrymodp.out, i128 0, i128 %i110
  %big_mod112 = load i128, i128* %array_getter111, align 4
  %ptr_getter113 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i114 = load i128, i128* %i, align 4
  %out115 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter113, i128 0, i128 %i114
  store i128 %big_mod112, i128* %out115, align 4
  %out116 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i117 = load i128, i128* %i, align 4
  %array_getter118 = getelementptr inbounds [256 x i128], [256 x i128]* %out116, i128 0, i128 %i117
  %out119 = load i128, i128* %array_getter118, align 4
  call void @fn_intrinsic_add_constraint(i128 %out119, i128 %big_mod112, i1* @constraint.263)
  br label %loop.latch120

loop.latch120:                                    ; preds = %loop.body107
  %i121 = load i128, i128* %i, align 4
  %add122 = add i128 %i121, 1
  store i128 %add122, i128* %i, align 4
  %i123 = load i128, i128* %i, align 4
  %k124 = load i128, i128* %k.bind, align 4
  %slt125 = icmp slt i128 %i123, %k124
  br i1 %slt125, label %loop.body107, label %loop.exit126

loop.exit126:                                     ; preds = %loop.latch120
  br label %exit

exit:                                             ; preds = %loop.exit126
  %out127 = load [256 x i128]*, [256 x i128]** %out, align 8
  %write_output_inner.fpmultiply.out = getelementptr inbounds %struct_template_circuit_fpmultiply, %struct_template_circuit_fpmultiply* %0, i32 0, i32 5
  store [256 x i128]* %out127, [256 x i128]** %write_output_inner.fpmultiply.out, align 8
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
  %eBits = alloca [256 x i128]*, align 8
  %j = alloca i128, align 8
  %bitLength = alloca i128, align 8
  %out = alloca [256 x [256 x i128]]*, align 8
  %i = alloca i128, align 8
  %uniform_array = alloca [256 x i128], align 8
  store [256 x i128]* %uniform_array, [256 x i128]** %eBits, align 8
  store i128 0, i128* %bitLength, align 4
  store i128 0, i128* %i, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch26, %entry
  store i128 0, i128* %j, align 4
  br label %loop.body1

loop.body1:                                       ; preds = %loop.latch, %loop.body
  %e = load [256 x i128]*, [256 x i128]** %e.bind, align 8
  %i2 = load i128, i128* %i, align 4
  %array_getter = getelementptr inbounds [256 x i128], [256 x i128]* %e, i128 0, i128 %i2
  %e3 = load i128, i128* %array_getter, align 4
  %j4 = load i128, i128* %j, align 4
  %rshift = lshr i128 %e3, %j4
  %and = and i128 %rshift, 1
  %ptr_getter = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j5 = load i128, i128* %j, align 4
  %n = load i128, i128* %n.bind, align 4
  %i6 = load i128, i128* %i, align 4
  %mul = mul i128 %n, %i6
  %add = add i128 %j5, %mul
  %eBits7 = getelementptr inbounds [256 x i128], [256 x i128]* %ptr_getter, i128 0, i128 %add
  store i128 %and, i128* %eBits7, align 4
  %eBits8 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %j9 = load i128, i128* %j, align 4
  %n10 = load i128, i128* %n.bind, align 4
  %i11 = load i128, i128* %i, align 4
  %mul12 = mul i128 %n10, %i11
  %add13 = add i128 %j9, %mul12
  %array_getter14 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits8, i128 0, i128 %add13
  %eBits15 = load i128, i128* %array_getter14, align 4
  %eq = icmp eq i128 %eBits15, 1
  br i1 %eq, label %if.true, label %if.false

if.true:                                          ; preds = %loop.body1
  %j16 = load i128, i128* %j, align 4
  %n17 = load i128, i128* %n.bind, align 4
  %i18 = load i128, i128* %i, align 4
  %mul19 = mul i128 %n17, %i18
  %add20 = add i128 %j16, %mul19
  %add21 = add i128 %add20, 1
  store i128 %add21, i128* %bitLength, align 4
  br label %if.exit

if.false:                                         ; preds = %loop.body1
  br label %if.exit

if.exit:                                          ; preds = %if.false, %if.true
  br label %loop.latch

loop.latch:                                       ; preds = %if.exit
  %j22 = load i128, i128* %j, align 4
  %add23 = add i128 %j22, 1
  store i128 %add23, i128* %j, align 4
  %j24 = load i128, i128* %j, align 4
  %n25 = load i128, i128* %n.bind, align 4
  %slt = icmp slt i128 %j24, %n25
  br i1 %slt, label %loop.body1, label %loop.exit

loop.exit:                                        ; preds = %loop.latch
  br label %loop.latch26

loop.latch26:                                     ; preds = %loop.exit
  %i27 = load i128, i128* %i, align 4
  %add28 = add i128 %i27, 1
  store i128 %add28, i128* %i, align 4
  %i29 = load i128, i128* %i, align 4
  %k = load i128, i128* %k.bind, align 4
  %mul30 = mul i128 2, %k
  %slt31 = icmp slt i128 %i29, %mul30
  br i1 %slt31, label %loop.body, label %loop.exit32

loop.exit32:                                      ; preds = %loop.latch26
  %uniform_array33 = alloca [256 x [256 x i128]], align 8
  store [256 x [256 x i128]]* %uniform_array33, [256 x [256 x i128]]** %out, align 8
  store i128 0, i128* %i, align 4
  br label %loop.body34

loop.body34:                                      ; preds = %loop.latch41, %loop.exit32
  %ptr_getter35 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i36 = load i128, i128* %i, align 4
  %out37 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter35, i128 0, i128 0, i128 %i36
  store i128 0, i128* %out37, align 4
  %ptr_getter38 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %i39 = load i128, i128* %i, align 4
  %out40 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter38, i128 0, i128 1, i128 %i39
  store i128 0, i128* %out40, align 4
  br label %loop.latch41

loop.latch41:                                     ; preds = %loop.body34
  %i42 = load i128, i128* %i, align 4
  %add43 = add i128 %i42, 1
  store i128 %add43, i128* %i, align 4
  %i44 = load i128, i128* %i, align 4
  %slt45 = icmp slt i128 %i44, 50
  br i1 %slt45, label %loop.body34, label %loop.exit46

loop.exit46:                                      ; preds = %loop.latch41
  %ptr_getter47 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out48 = getelementptr inbounds [256 x [256 x i128]], [256 x [256 x i128]]* %ptr_getter47, i128 0, i128 0, i128 0
  store i128 1, i128* %out48, align 4
  %bitLength49 = load i128, i128* %bitLength, align 4
  %sub = sub i128 %bitLength49, 1
  store i128 %sub, i128* %i, align 4
  br label %loop.body50

loop.body50:                                      ; preds = %loop.latch72, %loop.exit46
  %eBits53 = load [256 x i128]*, [256 x i128]** %eBits, align 8
  %i54 = load i128, i128* %i, align 4
  %array_getter55 = getelementptr inbounds [256 x i128], [256 x i128]* %eBits53, i128 0, i128 %i54
  %eBits56 = load i128, i128* %array_getter55, align 4
  %eq57 = icmp eq i128 %eBits56, 1
  br i1 %eq57, label %if.true51, label %if.false52

if.true51:                                        ; preds = %loop.body50
  %n58 = load i128, i128* %n.bind, align 4
  %k59 = load i128, i128* %k.bind, align 4
  %out60 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %a = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %a.bind, align 8
  %p = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n58, i128 %k59, [256 x [256 x i128]]* %out60, [256 x [256 x i128]]* %a, [256 x i128]* %p)
  store [256 x [256 x i128]]* %call, [256 x [256 x i128]]** %out, align 8
  br label %if.exit61

if.false52:                                       ; preds = %loop.body50
  br label %if.exit61

if.exit61:                                        ; preds = %if.false52, %if.true51
  %i64 = load i128, i128* %i, align 4
  %sgt = icmp sgt i128 %i64, 0
  br i1 %sgt, label %if.true62, label %if.false63

if.true62:                                        ; preds = %if.exit61
  %n65 = load i128, i128* %n.bind, align 4
  %k66 = load i128, i128* %k.bind, align 4
  %out67 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %out68 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  %p69 = load [256 x i128]*, [256 x i128]** %p.bind, align 8
  %call70 = call [256 x [256 x i128]]* @find_Fp2_product(i128 %n65, i128 %k66, [256 x [256 x i128]]* %out67, [256 x [256 x i128]]* %out68, [256 x i128]* %p69)
  store [256 x [256 x i128]]* %call70, [256 x [256 x i128]]** %out, align 8
  br label %if.exit71

if.false63:                                       ; preds = %if.exit61
  br label %if.exit71

if.exit71:                                        ; preds = %if.false63, %if.true62
  br label %loop.latch72

loop.latch72:                                     ; preds = %if.exit71
  %i73 = load i128, i128* %i, align 4
  %sub74 = sub i128 %i73, 1
  store i128 %sub74, i128* %i, align 4
  %i75 = load i128, i128* %i, align 4
  %sge = icmp sge i128 %i75, 0
  br i1 %sge, label %loop.body50, label %loop.exit76

loop.exit76:                                      ; preds = %loop.latch72
  %out77 = load [256 x [256 x i128]]*, [256 x [256 x i128]]** %out, align 8
  ret [256 x [256 x i128]]* %out77
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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i128* getelementptr (i128, i128* null, i32 1) to i32))
  %i = bitcast i8* %malloccall to i128*
  %malloccall4 = tail call i8* @malloc(i32 ptrtoint ([256 x %struct_template_circuit_num2bits*]** getelementptr ([256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** null, i32 1) to i32))
  %range_checks = bitcast i8* %malloccall4 to [256 x %struct_template_circuit_num2bits*]**
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmult** getelementptr (%struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** null, i32 1) to i32))
  %mult = bitcast i8* %malloccall5 to %struct_template_circuit_bigmult**
  %out = alloca [256 x i128]*, align 8
  %malloccall6 = tail call i8* @malloc(i32 ptrtoint ([256 x i128]** getelementptr ([256 x i128]*, [256 x i128]** null, i32 1) to i32))
  %inv = bitcast i8* %malloccall6 to [256 x i128]**
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%struct_template_circuit_bigmod** getelementptr (%struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** null, i32 1) to i32))
  %mod = bitcast i8* %malloccall7 to %struct_template_circuit_bigmod**
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
  %ptr_getter26 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i27 = load i128, i128* %i, align 4
  %array_getter28 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %ptr_getter26, i128 0, i128 %i27
  %range_checks29 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter28, align 8
  %write_input_outter.num2bits.in = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks29, i32 0, i32 1
  store i128 %out25, i128* %write_input_outter.num2bits.in, align 4
  %range_checks30 = load [256 x %struct_template_circuit_num2bits*]*, [256 x %struct_template_circuit_num2bits*]** %range_checks, align 8
  %i31 = load i128, i128* %i, align 4
  %array_getter32 = getelementptr inbounds [256 x %struct_template_circuit_num2bits*], [256 x %struct_template_circuit_num2bits*]* %range_checks30, i128 0, i128 %i31
  %range_checks33 = load %struct_template_circuit_num2bits*, %struct_template_circuit_num2bits** %array_getter32, align 8
  %struct_getter34 = getelementptr inbounds %struct_template_circuit_num2bits, %struct_template_circuit_num2bits* %range_checks33, i32 0, i32 1
  %read_input_outter.num2bits.in = load i128, i128* %struct_getter34, align 4
  call void @fn_intrinsic_add_constraint(i128 %read_input_outter.num2bits.in, i128 %out25, i1* @constraint.264)
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
  %ptr_getter50 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter51 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter50, i32 0, i32 2
  %read_input_outter.bigmult.a = load [256 x i128]*, [256 x i128]** %struct_getter51, align 8
  %i52 = load i128, i128* %i, align 4
  %mult53 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a, i128 0, i128 %i52
  store i128 %in49, i128* %mult53, align 4
  %mult54 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter55 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult54, i32 0, i32 2
  %read_input_outter.bigmult.a56 = load [256 x i128]*, [256 x i128]** %struct_getter55, align 8
  %i57 = load i128, i128* %i, align 4
  %array_getter58 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.a56, i128 0, i128 %i57
  %mult59 = load i128, i128* %array_getter58, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult59, i128 %in49, i1* @constraint.265)
  %out60 = load [256 x i128]*, [256 x i128]** %out, align 8
  %i61 = load i128, i128* %i, align 4
  %array_getter62 = getelementptr inbounds [256 x i128], [256 x i128]* %out60, i128 0, i128 %i61
  %out63 = load i128, i128* %array_getter62, align 4
  %ptr_getter64 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter65 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %ptr_getter64, i32 0, i32 3
  %read_input_outter.bigmult.b = load [256 x i128]*, [256 x i128]** %struct_getter65, align 8
  %i66 = load i128, i128* %i, align 4
  %mult67 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b, i128 0, i128 %i66
  store i128 %out63, i128* %mult67, align 4
  %mult68 = load %struct_template_circuit_bigmult*, %struct_template_circuit_bigmult** %mult, align 8
  %struct_getter69 = getelementptr inbounds %struct_template_circuit_bigmult, %struct_template_circuit_bigmult* %mult68, i32 0, i32 3
  %read_input_outter.bigmult.b70 = load [256 x i128]*, [256 x i128]** %struct_getter69, align 8
  %i71 = load i128, i128* %i, align 4
  %array_getter72 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmult.b70, i128 0, i128 %i71
  %mult73 = load i128, i128* %array_getter72, align 4
  call void @fn_intrinsic_add_constraint(i128 %mult73, i128 %out63, i1* @constraint.266)
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
  %ptr_getter90 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter91 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter90, i32 0, i32 2
  %read_input_outter.bigmod.a = load [256 x i128]*, [256 x i128]** %struct_getter91, align 8
  %i92 = load i128, i128* %i, align 4
  %mod93 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a, i128 0, i128 %i92
  store i128 %mult89, i128* %mod93, align 4
  %mod94 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter95 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod94, i32 0, i32 2
  %read_input_outter.bigmod.a96 = load [256 x i128]*, [256 x i128]** %struct_getter95, align 8
  %i97 = load i128, i128* %i, align 4
  %array_getter98 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.a96, i128 0, i128 %i97
  %mod99 = load i128, i128* %array_getter98, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod99, i128 %mult89, i1* @constraint.267)
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
  %ptr_getter112 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter113 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %ptr_getter112, i32 0, i32 3
  %read_input_outter.bigmod.b = load [256 x i128]*, [256 x i128]** %struct_getter113, align 8
  %i114 = load i128, i128* %i, align 4
  %mod115 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b, i128 0, i128 %i114
  store i128 %p111, i128* %mod115, align 4
  %mod116 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter117 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod116, i32 0, i32 3
  %read_input_outter.bigmod.b118 = load [256 x i128]*, [256 x i128]** %struct_getter117, align 8
  %i119 = load i128, i128* %i, align 4
  %array_getter120 = getelementptr inbounds [256 x i128], [256 x i128]* %read_input_outter.bigmod.b118, i128 0, i128 %i119
  %mod121 = load i128, i128* %array_getter120, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod121, i128 %p111, i1* @constraint.268)
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
  call void @fn_intrinsic_add_constraint(i128 %mod132, i128 1, i1* @constraint.269)
  store i128 1, i128* %i, align 4
  br label %loop.body133

loop.body133:                                     ; preds = %loop.latch140, %loop.exit128
  %mod134 = load %struct_template_circuit_bigmod*, %struct_template_circuit_bigmod** %mod, align 8
  %struct_getter135 = getelementptr inbounds %struct_template_circuit_bigmod, %struct_template_circuit_bigmod* %mod134, i32 0, i32 5
  %read_output_outter.bigmod.mod136 = load [256 x i128]*, [256 x i128]** %struct_getter135, align 8
  %i137 = load i128, i128* %i, align 4
  %array_getter138 = getelementptr inbounds [256 x i128], [256 x i128]* %read_output_outter.bigmod.mod136, i128 0, i128 %i137
  %mod139 = load i128, i128* %array_getter138, align 4
  call void @fn_intrinsic_add_constraint(i128 %mod139, i128 0, i1* @constraint.270)
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

declare noalias i8* @malloc(i32)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { argmemonly nofree nounwind willreturn }
