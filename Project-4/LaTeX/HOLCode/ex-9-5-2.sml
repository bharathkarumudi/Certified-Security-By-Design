
val constructiveDilemmaRule =
 TAC_PROOF (
([], ``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC THEN
ASM_REWRITE_TAC []
);

val _ = save_thm("constructiveDilemmaRule",constructiveDilemmaRule);

