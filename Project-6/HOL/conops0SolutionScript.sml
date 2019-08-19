(***************************************************)
(* Exercise: 14.4.1                                *)
(* Author:   Bharath Karumudi                      *)
(*           Prof. Shiu-Kai Chin (Ref: Async)      *)
(* Date:     Aug 16 2019                           *)
(***************************************************)

structure conops0SolutionScript = struct

open HolKernel boolLib Parse bossLib; 
open acl_infRules aclrulesTheory aclDrulesTheory 

val _ = new_theory "conops0Solution";

(*************************************************************************)
(* Defining instructions - go, nogo, launch, abort, activate, stand_down *)
(*************************************************************************)
val _ =
Hol_datatype
`commands = go | nogo | launch | abort | activate | stand_down`


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
`roles = Commander | Operator | CA`

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
(* Proof for OpRuleLaunch                                                     *)
(******************************************************************************)
val OpRuleLaunch_thm =
let
 val th1 = ACL_ASSUM``((Name (PR(Role Commander))) controls (prop go)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Alice)))(Name(PR(Role Commander))) (prop go)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Alice))) quoting (Name((PR(Role Commander)))) says (prop go)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop go) impf (prop launch)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role CA))) speaks_for (Name(PR(Role CA)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role CA))) says ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role CA))) controls ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role Commander))))``
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

val _ = save_thm("OpRuleLaunch_thm",OpRuleLaunch_thm)


(******************************************************************************)
(* Proof for OpRuleAbort                                                      *)
(******************************************************************************)
val OpRuleAbort_thm =
let
 val th1 = ACL_ASSUM``((Name (PR(Role Commander))) controls (prop nogo)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Alice)))(Name(PR(Role Commander))) (prop nogo)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Alice))) quoting (Name((PR(Role Commander)))) says (prop nogo)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop nogo) impf (prop abort)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role CA))) speaks_for (Name(PR(Role CA)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role CA))) says ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role CA))) controls ((Name(Key(Staff Alice)) speaks_for (Name(PR(Staff Alice)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role Commander))))``
 val th11 = INST_TYPE[``:'a`` |-> ``:commands``] th10
 val th12 = MONO_SPEAKS_FOR th9 th11
 val th13 = SPEAKS_FOR th12 th3
 val th14 = REPS th2 th13 th1
 val th15 = ACL_MP th14 th4
 val th16 = SAYS ``((Name(Key(Staff Bob))) quoting (Name(PR(Role Operator)))):principals Princ`` th15
 val th17 = DISCH(hd(hyp th6)) th16
 val th18 = DISCH(hd(hyp th5)) th17
 val th19 = DISCH(hd(hyp th4)) th18
 val th20 = DISCH(hd(hyp th3)) th19
 val th21 = DISCH(hd(hyp th2)) th20
in
 DISCH(hd(hyp th1)) th21
end;

val _ = save_thm("OpRuleAbort_thm", OpRuleAbort_thm)


(******************************************************************************)
(* Proof for ApRuleActivate_thm                                               *)
(******************************************************************************)
val ApRuleActivate_thm =
let
 val th1 = ACL_ASSUM``((Name (PR(Role Operator))) controls (prop launch)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Bob)))(Name(PR(Role Operator))) (prop launch)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Bob))) quoting (Name((PR(Role Operator)))) says (prop launch)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop launch) impf (prop activate)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role CA))) speaks_for (Name(PR(Role CA)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role CA))) says ((Name(Key(Staff Bob)) speaks_for (Name(PR(Staff Bob)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role CA))) controls ((Name(Key(Staff Bob)) speaks_for (Name(PR(Staff Bob)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role Operator))))``
 val th11 = INST_TYPE[``:'a`` |-> ``:commands``] th10
 val th12 = MONO_SPEAKS_FOR th9 th11
 val th13 = SPEAKS_FOR th12 th3
 val th14 = REPS th2 th13 th1
 val th15 = ACL_MP th14 th4
 val th16 = DISCH(hd(hyp th7)) th15
 val th17 = DISCH(hd(hyp th6)) th16
 val th18 = DISCH(hd(hyp th5)) th17
 val th19 = DISCH(hd(hyp th4)) th18
 val th20 = DISCH(hd(hyp th3)) th19
 val th21 = DISCH(hd(hyp th2)) th20
in
 DISCH(hd(hyp th1)) th21
end;

val _ = save_thm("ApRuleActivate_thm", ApRuleActivate_thm)


(******************************************************************************)
(* Proof for ApRuleStandDown_thm                                              *)
(******************************************************************************)
val ApRuleStandDown_thm =
let
 val th1 = ACL_ASSUM``((Name (PR(Role Operator))) controls (prop abort)):(commands,principals,'d,'e)Form``
 val th2 = ACL_ASSUM``(reps(Name(PR (Staff Bob)))(Name(PR(Role Operator))) (prop abort)):(commands,principals,'d,'e)Form``
 val th3 = ACL_ASSUM``((Name(Key(Staff Bob))) quoting (Name((PR(Role Operator)))) says (prop abort)):(commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM``((prop abort) impf (prop stand_down)):(commands,principals,'d,'e)Form``
 val th5 = ACL_ASSUM``((Name(Key(Role CA))) speaks_for (Name(PR(Role CA)))):(commands,principals,'d,'e)Form``
 val th6 = ACL_ASSUM``((Name(Key(Role CA))) says ((Name(Key(Staff Bob)) speaks_for (Name(PR(Staff Bob)))))):(commands,principals,'d,'e)Form``
 val th7 = ACL_ASSUM``((Name(PR(Role CA))) controls ((Name(Key(Staff Bob)) speaks_for (Name(PR(Staff Bob)))))):(commands,principals,'d,'e)Form``
 val th8 = SPEAKS_FOR th5 th6
 val th9 = CONTROLS th7 th8
 val th10 = IDEMP_SPEAKS_FOR``(Name((PR(Role Operator))))``
 val th11 = INST_TYPE[``:'a`` |-> ``:commands``] th10
 val th12 = MONO_SPEAKS_FOR th9 th11
 val th13 = SPEAKS_FOR th12 th3
 val th14 = REPS th2 th13 th1
 val th15 = ACL_MP th14 th4
 val th16 = DISCH(hd(hyp th7)) th15
 val th17 = DISCH(hd(hyp th6)) th16
 val th18 = DISCH(hd(hyp th5)) th17
 val th19 = DISCH(hd(hyp th4)) th18
 val th20 = DISCH(hd(hyp th3)) th19
 val th21 = DISCH(hd(hyp th2)) th20
in
 DISCH(hd(hyp th1)) th21
end;

val _ = save_thm("ApRuleStandDown_thm", ApRuleStandDown_thm)


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = print_theory "-";
val _ = export_theory();

end (* structure *)

