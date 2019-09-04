(******************************************************************************)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Sep 03, 2019                                                        *)
(******************************************************************************)


structure question1Script = struct

open HolKernel boolLib Parse bossLib
open TypeBase isainfRules optionTheory cipherTheory stringTheory


(******************************************************************************)
(* Create New Theory                                                          *)
(******************************************************************************)

val _ = new_theory "question1";

(******************************************************************************)
(* Proof for GoodBooks pub Key signed by TrueSignatures - Digital Certificate *)
(******************************************************************************)

val question1Thm=

 TAC_PROOF(
([],
``! signature.signVerify (pubK TrueSignatures) signature
(SOME "pubK GoodBooks") <=>
(signature =
sign (privK TrueSignatures) (hash (SOME "pubK GoodBooks")))``),
ASM_REWRITE_TAC[signVerify_one_one]);

val _ = save_thm("question1Thm", question1Thm)

(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)
