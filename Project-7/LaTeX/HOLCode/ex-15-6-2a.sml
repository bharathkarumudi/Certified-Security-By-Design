
val exercise15_6_2a_thm =
TAC_PROOF(
([],
``! P message.
(deciphP (pubK P) enMsg = SOME message)<=>
(enMsg = Ea (privK P) (SOME message))``),
PROVE_TAC[deciphP_one_one]
);

val _ = save_thm("exercise15_6_2a_thm",exercise15_6_2a_thm)
