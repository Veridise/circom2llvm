; ModuleID = 'main'
source_filename = "main"

%t_struct_mimc7 = type { %t_struct_param_mimc7*, void (%t_struct_mimc7*)*, i128, i128, i128 }
%t_struct_param_mimc7 = type { i128 }

@constraint = external global i1*
@constraint.1 = external global i1*
@constraint.2 = external global i1*
@constraint.3 = external global i1*
@constraint.4 = external global i1*

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

define void @t_fn_init_mimc7(%t_struct_mimc7* %0) {
entry:
  %struct_ptr = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %0, i32 0, i32 0
  %param = load %t_struct_param_mimc7*, %t_struct_param_mimc7** %struct_ptr, align 8
  %struct_ptr1 = getelementptr inbounds %t_struct_param_mimc7, %t_struct_param_mimc7* %param, i32 0, i32 0
  %params.nrounds = load i128, i128* %struct_ptr1, align 4
  %struct_ptr2 = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %0, i32 0, i32 2
  %read_signal_input.x_in = load i128, i128* %struct_ptr2, align 4
  %struct_ptr3 = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %0, i32 0, i32 3
  %read_signal_input.k = load i128, i128* %struct_ptr3, align 4
  %t4 = alloca i128, i32 256, align 8
  %t2 = alloca i128, i32 256, align 8
  %t6 = alloca i128, i32 256, align 8
  %t7 = alloca i128, i32 256, align 8
  %inlinearray = alloca i128, i32 91, align 8
  store [91 x i128] [i128 0, i128 -154513243719483821065123603440138020635, i128 -10172968149292192243727448829012618423, i128 166139139432074501413759330448356100824, i128 -19209678791593293239688700527710399860, i128 -83544237442932491413553721245763531816, i128 -104419944894276228442724789265908473063, i128 -102806657974242351234690642957910717467, i128 -110779606699241122283582179269461800966, i128 36988713918755002247560007028286190866, i128 -108135752459180358583716713356034247314, i128 79964571668075588903404123307680908914, i128 -91111250256214436298419466723187594332, i128 54646286726095231797157296720247140466, i128 123692883539213180828026665399418078479, i128 -5997776663734874388025498080278135313, i128 11927656733773060491576959103710913781, i128 169327465451817776349187143984555239157, i128 7789066577744858598218783194431700634, i128 -142754252969141234277122437337010226267, i128 -57028301459008082304081699327717972672, i128 95688871779961649635851490720064732760, i128 -29353123684563748162104349492852785899, i128 69802610113007565109816750587260404155, i128 -110167328885428571514739698448617153890, i128 -59018682778352873568985763623015321255, i128 44447368916616306955301273508011090358, i128 151372733997052302385363844458549572410, i128 84835295300434939348357715684112063432, i128 -33701556620202595676984050029858346907, i128 111866102054964562260441973124254437911, i128 87207889584103696083932222063969629288, i128 -107754904180078214783145199525650944374, i128 161931440210583733569211631570910701502, i128 -165475910745247634049975366462880731015, i128 -51367511588079022015897330539683983822, i128 -6676204676574190618567957271304553062, i128 141878651424994158469627106348798732546, i128 63601582908356057624574549345226348207, i128 -161543552174863414839795197370670582222, i128 21211789656425943868622819145256990859, i128 77683181681993633627809050186328199352, i128 75998176018236106769108061946069289490, i128 -19580073558180701689779942264511232955, i128 111683038586592367633947903068224387176, i128 -60355217475235358277053840252821979605, i128 -46451958777279876393057540806319434757, i128 -26668451993141117744358091770276362779, i128 -22924323116291942056594021996380817740, i128 -60642713219228843151997876567996273707, i128 85620385561228674974901177434519555729, i128 -142120211838211110131941483861833596995, i128 -155579916008972037465230148643919857241, i128 37703973970295516701672754475900183959, i128 134224651139539495598521852572698385318, i128 -95525732127726551963157332253953798843, i128 -110757333320778216384183344127830820318, i128 47992010690853741183864953934349958665, i128 -29677158977223487136165493956062948114, i128 -26379745951329862838555406848119903923, i128 -19258142094851227380148951830678145679, i128 -60319110987693821959395751027347305592, i128 130069337504218684984774183793707445062, i128 137587229397823037399989361947888635, i128 -145026012173094792967186546195860377440, i128 -23289868671866424757608448877815537208, i128 47294326832096412639678644069826345837, i128 -162253664772744824568263876984013620668, i128 -150431107575743089166981101424871511297, i128 147594207805816053091046140317706842142, i128 -96335749174786983375814028309859849413, i128 131268145738340898493661813239044415267, i128 -79654544399736792553612210496673046752, i128 70066601670034462169401800007418003476, i128 157719206824272731898165394661128484, i128 168542077179892049179408432226877968742, i128 -10741464891201459463123956993814652487, i128 -20712507689259758290337374052764185333, i128 -15323941020128192036452386310150763031, i128 128556347137978962427130426290207054257, i128 -55710347605624996526771434401586527054, i128 -112050496180810124681429950218736271241, i128 -117065566484672903460127757026410237549, i128 123285521546236102777931713726152904761, i128 3944132562975029202477844475194036287, i128 108028663761903003995711587750762038093, i128 45933206633135541297967479278212895975, i128 50049772835893057405830130719601353687, i128 82477423077785658409155964554967626540, i128 163691199231353680798691690729388366689, i128 39140649686548114245943499806774894325], i128* %inlinearray, align 4
  br label %loop.body

loop.body:                                        ; preds = %loop.latch, %entry
  %loop.i = phi i128 [ 0, %entry ], [ %add38, %loop.latch ]
  %eq = icmp eq i128 %loop.i, 0
  %add = add i128 %read_signal_input.k, %read_signal_input.x_in
  %add.mod = srem i128 %add, 12539295309507511577697735
  %sub = sub i128 %loop.i, 1
  %sub.mod = srem i128 %sub, 12539295309507511577697735
  %array_ptr = getelementptr inbounds i128, i128* %t7, i128 %sub.mod
  %t74 = load i128, i128* %array_ptr, align 4
  %add5 = add i128 %read_signal_input.k, %t74
  %add5.mod = srem i128 %add5, 12539295309507511577697735
  %array_ptr6 = getelementptr inbounds i128, i128* %inlinearray, i128 %loop.i
  %c = load i128, i128* %array_ptr6, align 4
  %add7 = add i128 %add5.mod, %c
  %add7.mod = srem i128 %add7, 12539295309507511577697735
  %inlineswitch = call i128 @intrinsic_inline_switch(i1 %eq, i128 %add.mod, i128 %add7.mod)
  %mul = mul i128 %inlineswitch, %inlineswitch
  %mul.mod = srem i128 %mul, 12539295309507511577697735
  %t28 = getelementptr inbounds i128, i128* %t2, i128 %loop.i
  store i128 %mul.mod, i128* %t28, align 4
  %array_ptr9 = getelementptr inbounds i128, i128* %t2, i128 %loop.i
  %t210 = load i128, i128* %array_ptr9, align 4
  call void @intrinsic_add_constraint(i128 %t210, i128 %mul.mod)
  %array_ptr11 = getelementptr inbounds i128, i128* %t2, i128 %loop.i
  %t212 = load i128, i128* %array_ptr11, align 4
  %array_ptr13 = getelementptr inbounds i128, i128* %t2, i128 %loop.i
  %t214 = load i128, i128* %array_ptr13, align 4
  %mul15 = mul i128 %t212, %t214
  %mul15.mod = srem i128 %mul15, 12539295309507511577697735
  %t416 = getelementptr inbounds i128, i128* %t4, i128 %loop.i
  store i128 %mul15.mod, i128* %t416, align 4
  %array_ptr17 = getelementptr inbounds i128, i128* %t4, i128 %loop.i
  %t418 = load i128, i128* %array_ptr17, align 4
  call void @intrinsic_add_constraint(i128 %t418, i128 %mul15.mod)
  %array_ptr19 = getelementptr inbounds i128, i128* %t4, i128 %loop.i
  %t420 = load i128, i128* %array_ptr19, align 4
  %array_ptr21 = getelementptr inbounds i128, i128* %t2, i128 %loop.i
  %t222 = load i128, i128* %array_ptr21, align 4
  %mul23 = mul i128 %t420, %t222
  %mul23.mod = srem i128 %mul23, 12539295309507511577697735
  %t624 = getelementptr inbounds i128, i128* %t6, i128 %loop.i
  store i128 %mul23.mod, i128* %t624, align 4
  %array_ptr25 = getelementptr inbounds i128, i128* %t6, i128 %loop.i
  %t626 = load i128, i128* %array_ptr25, align 4
  call void @intrinsic_add_constraint(i128 %t626, i128 %mul23.mod)
  %sub27 = sub i128 %params.nrounds, 1
  %sub27.mod = srem i128 %sub27, 12539295309507511577697735
  %slt = icmp slt i128 %loop.i, %sub27.mod
  br i1 %slt, label %if.body, label %if.else
  br label %loop.latch

if.body:                                          ; preds = %loop.body
  %array_ptr28 = getelementptr inbounds i128, i128* %t6, i128 %loop.i
  %t629 = load i128, i128* %array_ptr28, align 4
  %mul30 = mul i128 %t629, %inlineswitch
  %mul30.mod = srem i128 %mul30, 12539295309507511577697735
  %t731 = getelementptr inbounds i128, i128* %t7, i128 %loop.i
  store i128 %mul30.mod, i128* %t731, align 4
  %array_ptr32 = getelementptr inbounds i128, i128* %t7, i128 %loop.i
  %t733 = load i128, i128* %array_ptr32, align 4
  call void @intrinsic_add_constraint(i128 %t733, i128 %mul30.mod)
  br label %if.end

if.else:                                          ; preds = %loop.body
  %array_ptr34 = getelementptr inbounds i128, i128* %t6, i128 %loop.i
  %t635 = load i128, i128* %array_ptr34, align 4
  %mul36 = mul i128 %t635, %inlineswitch
  %mul36.mod = srem i128 %mul36, 12539295309507511577697735
  %add37 = add i128 %mul36.mod, %read_signal_input.k
  %add37.mod = srem i128 %add37, 12539295309507511577697735
  call void @intrinsic_add_constraint(i128 %add37.mod, i128 %add37.mod)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.body

loop.latch:                                       ; preds = %loop.body
  %add38 = add i128 %loop.i, 1
  %slt39 = icmp slt i128 %add38, %params.nrounds
  br i1 %slt39, label %loop.body, label %loop.exit

loop.exit:                                        ; preds = %loop.latch

exit:                                             ; No predecessors!
  %write_signal_output.out = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %0, i32 0, i32 4
  store i128 %add37.mod, i128* %write_signal_output.out, align 4
}

define %t_struct_mimc7 @t_fn_build_mimc7(%t_struct_param_mimc7* %0) {
entry:
  %1 = alloca %t_struct_mimc7, align 8
  %param = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %1, i32 0, i32 0
  store %t_struct_param_mimc7* %0, %t_struct_param_mimc7** %param, align 8
  %init_fn = getelementptr inbounds %t_struct_mimc7, %t_struct_mimc7* %1, i32 0, i32 1
  store void (%t_struct_mimc7*)* @t_fn_init_mimc7, void (%t_struct_mimc7*)** %init_fn, align 8
  ret %t_struct_mimc7* %1
}
