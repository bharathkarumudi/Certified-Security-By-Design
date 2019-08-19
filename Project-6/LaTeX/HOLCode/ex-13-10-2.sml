
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