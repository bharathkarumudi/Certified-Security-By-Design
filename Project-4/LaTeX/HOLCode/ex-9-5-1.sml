
val absorptionRule =
TAC_PROOF (
([],``!p q. (p ==> q) ==> p ==> p/\q``),
(REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC) );

val _ = save_thm("absorptionRule",absorptionRule);
