
val absorptionRule2 =
 TAC_PROOF (
([], ``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
PROVE_TAC []
);

val _= save_thm("absorptionRule2",absorptionRule2);

val constructiveDilemmaRule2=
 TAC_PROOF (
([],``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
PROVE_TAC []
);

val _ = save_thm("constructiveDilemmaRule2",constructiveDilemmaRule2);
