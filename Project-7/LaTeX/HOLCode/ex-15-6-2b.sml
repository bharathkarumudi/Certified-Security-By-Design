
val exercise15_6_2b_thm =
TAC_PROOF(
([],
``! key text.
(deciphP (pubK Alice) (Ea key (SOME text)) =
SOME "This is from Alice") <=>
(key = privK Alice) ∧ (text = "This is from Alice")``),
ASM_REWRITE_TAC[deciphP_one_one] THEN
ASM_REWRITE_TAC[option_CLAUSES]);

val _ =save_thm("exercise15_6_2b_thm", exercise15_6_2b_thm)
