(******************************************************************************)
(* Exercise 6.2                                                               *)
(* Author: Bharath Karumudi                                                   *)
(* Date: Jul 20, 2019                                                         *)
(******************************************************************************)


(*1. P(x) supset Q(y)  *)

``P x ==> Q y``;


(*2. P(x) supset Q(y) with x constrain to HOL type :num *)
(*    and y to Hol type :bool                           *)

``(P:num -> bool) (x:num)  ==> (Q:bool->bool) (y:bool)``;


(*3. forall x y P(x) supset Q(y) without specifying types *)
``!x y.(P x) ==> (Q y)``;


(*4. *)
``?(x :num).(R (x :`a))``;

(** Error: This cannot be evaluated, because x is specified to num then specify to *)
(*  alpha, So there is a type error **)


(*5.  *)
``(~!x.(P x)\/(Q x))=(?x.(~(P x))/\~(Q x))``;


(*6. All people are mortal, where P(x) represents x is a person and *)
(*    M(x) represents x is mortal.**)
``!x.(P x) ==> (M x)``;


(*7. Some people are funny, where Funny(x) denotes x is funny.*)
``?x.(P x) ==> (Funny x)``;
