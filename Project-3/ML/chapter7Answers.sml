(******************************************************************************)
(* Exercise 7..3                                                             *)
(* Author: Bharath Karumudi                                                   *)
(* Date: Jul 25, 2019                                                         *)
(******************************************************************************


(******************************************************************************)
(* Exercise 7.3.1                                                             *)
(******************************************************************************)

fun andImp2Imp term =
let
 val(conjTerm,r)= dest_imp(term)
 val(p,q) = dest_conj(conjTerm)
 
in
  mk_imp(p,(mk_imp(q,r)))
end;

(**** Test Case *****)
andImp2Imp ``(p/\q) ==> r``


(******************************************************************************)
(* Exercise 7.3.2                                                             *)
(******************************************************************************)

(**** Function andImp2Imp ~ same as from 7.3.1  ****)

fun andImp2Imp term =
let
 val(conjTerm,r)= dest_imp(term)
 val(p,q) = dest_conj(conjTerm)
 
in
  mk_imp(p,(mk_imp(q,r)))
end;

(**** Function impImpAnd  ****)

fun impImpAnd term =
let

 val(term1,imp) = dest_imp(term)
 val(term2, term3) = dest_imp(imp)
 val new_conj = mk_conj(term1, term2)
in
 mk_imp(new_conj,term3)
end;

(****** Test Cases **********)

andImp2Imp ``(p/\q) ==> r``
impImpAnd ``p ==> q ==> r``;

impImpAnd(andImp2Imp ``(p/\q) ==> r``);
andImp2Imp(impImpAnd ``p==>q==>r``);


(******************************************************************************)
(* Exercise 7.3.3                                                             *)
(******************************************************************************)


fun notExists term =
let 
 val (t1, t2) = dest_exists(dest_neg(term))
in
 mk_forall(t1,t2)
end;


(****** Test Cases **********)
notExists ``~?z.Q z``;
