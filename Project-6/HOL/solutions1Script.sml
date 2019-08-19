(******************************************************************************)
(* Exercise: Chapter 13                                                        *)
(* Author: Bharath Karumudi                                                   *)
(* Date:   Aug 16 2019                                                        *)
(******************************************************************************)

structure solutions1Script = struct

open HolKernel boolLib Parse bossLib; 
open acl_infRules aclrulesTheory aclDrulesTheory example1Theory 

val _ = new_theory "solutions1";

(* ==== Commented to avoid duplicate ====
val _ =
Datatype
`commands = go | nogo | launch | abort`

(******************************************************)
(* Define some names of people who will be principals *)
(******************************************************)
val _ =
Datatype
`staff = Alice | Bob`
==== Comment End ==== *)

val princTerm = ``Name Alice``;

(* Principals make statements *)
val term1 = ``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;

(* Principals make statements *)
val term2 = ``((Name Bob) says (prop go)):(commands,staff,'d,'e)Form``;

(* Alice with Bob says <go> *)
val term3 = 
 ``((Name Alice) meet (Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;



(******************************************************************************)
(* Exercise 13.10.1                                                           *)
(******************************************************************************)

(******************************************************************************)
(* Part A: Forward proof                                                      *)
(******************************************************************************)

val aclExercise1=
let
val th1 = ACL_ASSUM term1;
val th2 = ACL_ASSUM term2;
val th3 = ACL_CONJ th1 th2;
val th4 = AND_SAYS_RL th3;
val th5 = DISCH(hd(hyp th2)) th4;
in
 DISCH(hd(hyp th1)) th5
end;

val _=save_thm("aclExercise1",aclExercise1)


(******************************************************************************)
(* Part B: Goal-oriented proof                                                *)
(******************************************************************************)

val aclExercise1A=
TAC_PROOF(
([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``)
,
PROVE_TAC[Conjunction,And_Says_Eq])

val _ = save_thm("aclExercise1A",aclExercise1A)

(******************************************************************************)
(* Part C: Goal-oriented proof                                                *)
(******************************************************************************)

val aclExercise1B=
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``)
  ,
 REPEAT STRIP_TAC THEN
 ACL_AND_SAYS_RL_TAC THEN
 ACL_CONJ_TAC THEN
PROVE_TAC[] THEN
PROVE_TAC[])

val _ = save_thm("aclExercise1B", aclExercise1B)




(******************************************************************************)
(* Exercise 13.10.2                                                           *)
(******************************************************************************)

(******************************************************************************)
(* Part A: Forward proof                                                      *)
(******************************************************************************)

val term1=``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;
val term2=``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;
val term3=``((prop go) impf (prop launch)):(commands,staff,'d,'e)Form``;
val term4=``((Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;

val aclExercise2=
let
val thm1 = ACL_ASSUM term1
val thm2 = ACL_ASSUM term2
val thm3 = ACL_ASSUM term3
val thm4 = ACL_ASSUM term4

val thm5 = CONTROLS thm2 thm1
val thm6 = ACL_MP thm5 thm3
in
SAYS ``Name Bob`` thm6
end;

val _ = save_thm("aclExercise2", aclExercise2)

(******************************************************************************)
(* Part B: Goal-oriented proof                                                *)
(******************************************************************************)

val aclExercise2A=
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
Name Alice says (prop go) ==>
(M,Oi,Os) sat Name Alice controls (prop go) ==>
(M,Oi,Os) sat (prop go) impf (prop launch) ==>
(M,Oi,Os) sat Name Bob says (prop launch)``)
,
PROVE_TAC[Controls, Modus_Ponens,Says])

val _= save_thm("aclExercise2A",aclExercise2A)


(******************************************************************************)
(* Part C: Goal-oriented proof                                                *)
(******************************************************************************)

val aclExercise2B =
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Alice controls (prop go) ==>
  (M,Oi,Os) sat (prop go) impf (prop launch) ==>
  (M,Oi,Os) sat Name Bob says (prop launch)``),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM
``(M,Oi,Os) sat (Name Alice says (prop go))``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat (Name Alice controls (prop go))``
    (fn th2 => ASSUME_TAC(CONTROLS th2 th1)))) THEN
 (PAT_ASSUM
  ``(M,Oi,Os) sat (prop go)``
    (fn th3 =>
    (PAT_ASSUM
     ``(M,Oi,Os) sat (prop go) impf (prop launch)``
       (fn th4 => ASSUME_TAC(ACL_MP th3 th4))))) THEN
ASM_REWRITE_TAC[])


val _ = save_thm("aclExercise2B",aclExercise2B)


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)
val _ = print_theory "-";
val _ = export_theory();

end (* Structure *)
