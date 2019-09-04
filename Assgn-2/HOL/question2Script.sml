(******************************************************************************)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Aug 21, 2019                                                        *)
(******************************************************************************)

structure question2Script = struct

open HolKernel boolLib Parse bossLib 
open acl_infRules aclrulesTheory aclDrulesTheory

(******************************************************************************)
(* Create New Theory                                                          *)
(******************************************************************************)
val _ = new_theory "question2"

(*************************************************************************)
(* Defining instructions - pay, debit *)
(*************************************************************************)
val _ =
Hol_datatype
`commands = pay | debit`


(******************************************************)
(* Defining Principals  - Alice and Bob               *)
(******************************************************)
val _ =
Hol_datatype
`people = Alice | Bob`

(******************************************************************************)
(* Define roles                                                               *)
(******************************************************************************)
val _ =
Hol_datatype
`roles = payer | payee`

(******************************************************************************)
(* Define principals that will have keys                                      *)
(******************************************************************************)
val _ =
Hol_datatype
`keyPrinc = Staff of people | Role of roles | Ap of num`

(******************************************************************************)
(* Define principals as keyPrinc and keys                                     *)
(******************************************************************************)
val _ =
Hol_datatype
`principals =  PR of keyPrinc | Key of keyPrinc`

(******************************************************************************)
(* Proof for question2Thm                                                     *)
(******************************************************************************)
val question2Thm =
let
 val th1 = ACL_ASSUM``((Name (PR(Role payer))) controls (prop pay)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Alice)))(Name(PR(Role payer))) (prop pay)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Alice))) quoting (Name((PR(Role payer)))) says (prop pay)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop pay) impf (prop debit)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role payee))) speaks_for (Name(PR(Role payee)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role payee))) says ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role payee))) controls ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role payer))))``
 val th11 = INST_TYPE[``:'a`` |-> ``:commands``] th10
 val th12 = MONO_SPEAKS_FOR th9 th11
 val th13 = SPEAKS_FOR th12 th3
 val th14 = REPS th2 th13 th1
 val th15 = ACL_MP th14 th4
 val th16 = SAYS ``((Name(Key(Staff Bob))) quoting (Name(PR(Role Operator)))):principals Princ`` th15
 val th17 = DISCH(hd(hyp th7)) th16
 val th18 = DISCH(hd(hyp th6)) th17
 val th19 = DISCH(hd(hyp th5)) th18
 val th20 = DISCH(hd(hyp th4)) th19
 val th21 = DISCH(hd(hyp th3)) th20
 val th22 = DISCH(hd(hyp th2)) th21
in
 DISCH(hd(hyp th1)) th22
end;

val _ = save_thm("question2Thm",question2Thm)


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)
