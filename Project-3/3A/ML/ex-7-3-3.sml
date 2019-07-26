
(******************************************************************************)
(* Exercise 7.3.3                                                             *)
(* Author: Bharath Karumudi                                                   *)
(* Date: Jul 25, 2019                                                         *)
(******************************************************************************)


fun notExists term =
let 
 val (t1, t2) = dest_exists(dest_neg(term))
in
 mk_forall(t1,t2)
end;


(****** Test Cases **********)
notExists ``~?z.Q z``;
