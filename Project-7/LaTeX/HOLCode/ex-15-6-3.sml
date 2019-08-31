
val exercise15_6_3_thm =
TAC_PROOF(
([],
``! signature.signVerify (pubK Alice) signature
(SOME "This is from Alice") <=>
(signature =
sign (privK Alice) (hash (SOME "This is from Alice")))``),
ASM_REWRITE_TAC[signVerify_one_one]);

val _ =save_thm("exercise15_6_3_thm",exercise15_6_3_thm)
