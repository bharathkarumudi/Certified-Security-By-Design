(******************************************************************************)
(* Exercise 3.4.2 *)
(* Author: Bharath Karumudi *)
(* Date: Jul 11, 2019 *)
(******************************************************************************)

val (x1,x2,x3) = (1,true,"Alice");
val pair1 = (x1,x3);
val list1 = [0,x1,2];
val list2 = [x2,x1];
val list3 = (1 :: [x3]);

(*************************************** Errors ****************************************)
(* val list2 = [x2,x1]; is due to creating a list with different types, where x2 is a *)
(*    boolean and x1 is a integer. A list will take similar data types. *)
(* val list3 = (1 :: [x3]); is due to creating a list with different types. 1 is a int *)
(*    and x3 is a string type. HOL cannot create a list of two different data types. *)
(***************************************************************************************)