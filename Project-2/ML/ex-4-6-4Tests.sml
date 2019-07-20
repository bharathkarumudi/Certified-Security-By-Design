(******************************************************************************)
(* Exercise 4.6.4                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Modified -  Added function code: Bharath Karumudi                          *)
(* Date: Jul 19 2019                                                          *)
(******************************************************************************)

(* ========================================================================== *)
(* function listSquares *)

fun listSquares list =
let
  fun squareNum x = x*x
   in
    map squareNum list
end;

(* ========================================================================== *)


val testList = [1,2,3,4,5]

val testResults = listSquares testList