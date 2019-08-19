(******************************************************************************)
(*  File: example1Script.sml                                                  *)
(*  Author: Bharath Karumudi                                                  *)
(*          Prof. Shiu-Kai Chin (Ref. Async)                                  *)
(*  Date: Aug 16, 2019                                                        *)
(******************************************************************************)


structure example1Script = struct

open HolKernel boolLib Parse bossLib (* used by Holmake, not in interactive  *)
open acl_infRules aclrulesTheory aclDrulesTheory (* used by Holmake and interactive mode *)


(******************************************************************************)
(* Create New Theory                                                          *)
(******************************************************************************)

val _ = new_theory "example1";
val _ =
Datatype
`commands = go | nogo | launch | abort`

(******************************************************)
(* Define some names of people who will be principals *)
(******************************************************)
val _ =
Datatype
`staff = Alice | Bob | Carol | Dan`

val commandProp = ``(prop go):(commands,staff,'d,'e)Form``;
val xProposition = ``(prop x):('a,'c,'d,'e)Form``
val x = ``x:('a,'c,'d,'e)Form``
val princTerm = ``Name Alice``;
val term1 = ``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;
val term2 = ``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;
val term3 = 
 ``((Name Alice) meet (Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;
val term4 =
 ``((Name Carol) quoting (Name Dan) says (prop nogo)):(commands,staff,'d,'e)Form``;
val term5 =
 ``((Name Dan) speaks_for (Name Carol)):(commands,staff,'d,'e)Form``;
 
(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = print_theory "-";

val _ = export_theory();

end (* structure *)
