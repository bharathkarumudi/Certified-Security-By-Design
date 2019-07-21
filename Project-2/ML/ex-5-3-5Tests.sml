(******************************************************************************)
(* Exercise 5.3.5                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Modified - Added function Code: Bharath Karumudi                           *)
(* Date: Jul 20, 2019                                                         *)
(******************************************************************************)

(* ========================================================================== *)
(* function addPairsGreaterThan                                               *)

filter;

fun addPairsGreaterThan n list =
let
fun sumList [] = []
   |sumList ((x,y) :: xs) = (x+y) :: (sumList xs)

fun fil n (x,y) = (x>n andalso y>n)
in
sumList (filter (fil n) list)
end;

(* ========================================================================== *)

addPairsGreaterThan 0 [(0,1),(2,0),(2,3),(4,5)];