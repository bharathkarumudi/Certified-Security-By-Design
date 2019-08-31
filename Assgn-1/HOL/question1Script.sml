(******************************************************************************)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Aug 20, 2019                                                        *)
(******************************************************************************)


structure question1Script = struct

open HolKernel boolLib Parse bossLib 
open acl_infRules aclrulesTheory aclDrulesTheory


(******************************************************************************)
(* Create New Theory                                                          *)
(******************************************************************************)

val _ = new_theory "question1";

(*************************************************************************)
(* Defining instructions                                                 *)
(*************************************************************************)

val _ =
Datatype
`commands = travel | deny`

(******************************************************)
(* Define some names of people who will be principals *)
(******************************************************)
val _ =
Datatype
`staff = Jack | Amtrack`


val term1=``((Name Jack) says (prop travel)):(commands,staff,'d,'e)Form``;
val term2=``((Name Jack) controls (prop travel)):(commands,staff,'d,'e)Form``;
val term3 = ``((prop travel) impf (prop deny)):(commands, staff, 'd,'e)Form``;
val term4=``((Name Ticket) speaks_for (Name Amtrack)):(commands,staff,'d,'e)Form``;

val question1Thm=
let
val thm1 = ACL_ASSUM term1
val thm2 = ACL_ASSUM term2
val thm3 = ACL_ASSUM term3

val thm4 = CONTROLS thm2 thm1
val thm5 = ACL_MP thm4 thm3
in
SAYS ``Name Jack`` thm5
end;

val _ = save_thm("question1Thm", question1Thm)

(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)
