
val conj1Thm =
let
val th1 = ASSUME ``p /\ q``
val th2 = CONJUNCT1 th1
val th3 = CONJUNCT2 th1
val th4 = CONJ th3 th2
in
DISCH (hd(hyp th1)) th4
end;

val conj2Thm =
let
val th1 = ASSUME ``q /\ p``
val th2 = CONJUNCT1 th1
val th3 = CONJUNCT2 th1
val th4 = CONJ th3 th2
in
DISCH (hd(hyp th1)) th4
end;

val conjSymThm =
IMP_ANTISYM_RULE conj1Thm conj2Thm;

val conjSymThmAll = GENL[``p:bool``, ``q:bool``] conjSymThm;

val _ = save_thm("conjSymThmAll", conjSymThmAll)