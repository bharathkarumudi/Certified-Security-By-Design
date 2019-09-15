(******************************************************************************)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Sep 14, 2019                                                        *)
(******************************************************************************)

structure question2Script = struct

open HolKernel boolLib Parse bossLib 
open acl_infRules aclrulesTheory aclDrulesTheory

(******************************************************************************)
(* Create New Theory                                                          *)
(******************************************************************************)
val _ = new_theory "question2"

(*************************************************************************)
(* Defining instructions - grant, deny *)
(*************************************************************************)
val _ =
Hol_datatype
`commands = grant | deny`


(******************************************************)
(* Defining Principals  - Eve and Bob               *)
(******************************************************)
val _ =
Hol_datatype
`people = Eve | Bob`

(******************************************************************************)
(* Define roles                                                               *)
(******************************************************************************)
val _ =
Hol_datatype
`roles = owner | requester`

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
 val th1 = ACL_ASSUM``((Name (PR(Role owner))) controls (prop grant)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Eve)))(Name(PR(Role owner))) (prop grant)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Eve))) quoting (Name((PR(Role owner)))) says (prop grant)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop grant) impf (prop deny)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role requester))) speaks_for (Name(PR(Role requester)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role requester))) says ((Name(Key(Staff Eve)) speaks_for (Name(PR(Staff Eve)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role requester))) controls ((Name(Key(Staff Eve)) speaks_for (Name(PR(Staff Eve)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role owner))))``
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
