
val exercise15_6_1a_thm =
TAC_PROOF(
([],
``! key enMsg message. (deciphS key enMsg = SOME message) <=> (enMsg = Es key (SOME message))``),
ASM_REWRITE_TAC [deciphS_one_one]);

val _ = save_thm("exercise15_6_1a_thm",exercise15_6_1a_thm)
