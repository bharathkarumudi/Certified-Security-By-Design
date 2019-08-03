(******************************************************************************)
(*  Exercise: Chapter 9                                                       *)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Aug 2, 2019                                                         *)
(******************************************************************************)

structure exercise9Script = struct
open HolKernel Parse boolLib bossLib;

val _ = new_theory "exercise9";

(******************************************************************************)
(*  Exercise: 9.5.1                                                           *)
(*  ` ∀ p q. (p ⇒ q) ⇒ p ⇒ p ∧ q                                           *)
(******************************************************************************)

val absorptionRule =
TAC_PROOF (
([],``!p q. (p ==> q) ==> p ==> p/\q``),
(REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC) );

val _ = save_thm("absorptionRule",absorptionRule);


(******************************************************************************)
(* Exercise: 9.5.2                                                            *)
(* ` ∀ p q r s. (p ⇒ q) ∧ (r ⇒ s) ⇒ p ∨ r ⇒ q ∨ s                          *)
(******************************************************************************)

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


(******************************************************************************)
(* Exercise: 9.5.3                                                            *)
(* Repeat 9.5.1, 9.5.2 using PROVE_TAC                                        *)
(******************************************************************************)

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


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = export_theory();

end (* Structure *)

