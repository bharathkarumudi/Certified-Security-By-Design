
val exercise15_6_1b_thm =
TAC_PROOF(
([],
``! keyAlice k text.
(deciphS keyAlice (Es k (SOME text)) =
SOME "This is from Alice") <=>
(k = keyAlice) /\ (text = "This is from Alice")``),
ASM_REWRITE_TAC [deciphS_one_one] THEN
PROVE_TAC[]
);

val _ = save_thm("exercise15_6_1b_thm",exercise15_6_1b_thm)
