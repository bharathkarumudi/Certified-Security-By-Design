(******************************************************************************)
(*  Exercise: Chapter 11.6.3                                                  *)
(*  Author: Bharath Karumudi                                                  *)
(*  Derived from: bexpScript.sml                                              *)
(*  Date: Aug 10, 2019                                                        *)
(******************************************************************************)

structure nexpScript = struct
open HolKernel Parse boolLib bossLib;
open TypeBase boolTheory arithmeticTheory

(* ==== interactive mode ====
map load ["boolTheory","TypeBase","nexpTheory"];
open boolTheory TypeBase nexpTheory
 ==== end interactive mode ==== *)

val _ = new_theory "nexp";

(*****************************************************************************)
(* Introduce the syntax of natural number expression nexp                    *)
(*****************************************************************************)
val _ = Datatype
`nexp = Num num | Add nexp nexp | Sub nexp nexp | Mult nexp nexp`;

(*****************************************************************************)
(* Prove that identical nexps have identical components                      *)
(*****************************************************************************)
val nexp_one_one = one_one_of``:nexp``
val _ = save_thm("nexp_one_one",nexp_one_one)

(*****************************************************************************)
(* Prove that the different forms of bexp expressions are distinct           *)
(*****************************************************************************)
val nexp_distinct_clauses = distinct_of``:nexp``
val _ = save_thm("nexp_distinct_clauses",nexp_distinct_clauses)

(*****************************************************************************)
(* Define the semantics of nexp expressions                                  *)
(*****************************************************************************)
val nexpVal_def =
Define
`(nexpVal (Num f) = f )/\
(nexpVal (Add f1 f2) = (nexpVal f1) + (nexpVal f2)) /\
(nexpVal (Sub f1 f2) = (nexpVal f1) - (nexpVal f2)) /\
(nexpVal (Mult f1 f2) = (nexpVal f1) * (nexpVal f2))`


(*****************************************************************************)
(* Prove  nexpVal (Add (Num 0) f ) = nexpVal f                               *)
(*****************************************************************************)

val Add_0 =
TAC_PROOF(([],``!(f:nexp).nexpVal(Add (Num 0) f) = nexpVal (f)``),
Induct_on `f` THEN
ASM_REWRITE_TAC[nexpVal_def] THEN
ASM_REWRITE_TAC[ADD_CLAUSES]);

val _ = save_thm("Add_0",Add_0)


(*****************************************************************************)
(* Prove nexpVal (Add f1 f2) = nexpVal (Add f2 f1)                           *)
(*****************************************************************************)

val Add_SYM =
TAC_PROOF(([],``!f1 f2.nexpVal (Add f1 f2) = nexpVal (Add f2 f1)``),
Induct_on`f1` THEN
PROVE_TAC [nexpVal_def, ADD_SYM]);

val _ = save_thm("Add_SYM",Add_SYM)


(*****************************************************************************)
(* Prove (nexpVal (Sub (Num 0) f ) = 0) ∧                                    *)
(*       (nexpVal (Sub f (Num 0)) = nexpVal f )                              *)
(*****************************************************************************)

val Sub_0 =
TAC_PROOF(([],
``!f.(nexpVal (Sub (Num 0) f ) = 0) ∧
  (nexpVal (Sub f (Num 0)) = nexpVal f )``),
STRIP_TAC THEN
ASM_REWRITE_TAC[nexpVal_def] THEN
PROVE_TAC[nexpVal_def, SUB_0]);

val _ = save_thm("Sub_0",Sub_0)

(*****************************************************************************)
(* Prove ∀f1 f2 f3.                                                          *)
(*       nexpVal (Mult f1 (Mult f2 f3)) =                                    *)
(*       nexpVal (Mult (Mult f1 f2) f3)                                      *)
(*****************************************************************************)

val Mult_ASSOC =
TAC_PROOF(([],``!f1 f2 f3.
   nexpVal (Mult f1 (Mult f2 f3)) =
   nexpVal (Mult (Mult f1 f2) f3)``),
REPEAT STRIP_TAC THEN
PROVE_TAC[nexpVal_def, MULT_ASSOC]);

val _ = save_thm("Mult_ASSOC",Mult_ASSOC)


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = export_theory();
val _ = print_theory "-";

end (* Structure *)