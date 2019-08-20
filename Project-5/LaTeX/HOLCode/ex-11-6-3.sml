
(*****************************************************************************)
(* Introduce the syntax of natural number expression nexp                    *)
(*****************************************************************************)
val _ = Datatype
`nexp = Num num | Add nexp nexp | Sub nexp nexp | Mult nexp nexp`;

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

