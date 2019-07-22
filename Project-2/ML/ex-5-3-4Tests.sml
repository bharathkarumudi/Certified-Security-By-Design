(******************************************************************************)
(* Exercise 5.3.4                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Modified - Added function code: Bharath Karumudi                           *)
(* Date: 20 September 2015                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(* function Filter                                                            *)

fun Filter li list=
let

fun fnA li []=[]
  | fnA li xs=map li xs

fun fnB [] data=[]
  | fnB fail []=[]
  | fnB (b::bs) (x::xs)=if b then x::(fnB bs xs) else fnB bs xs
in
fnB (fnA li list) list
end;

(* ========================================================================== *)


val testResults = Filter (fn x => x < 5) [1,2,3,4,5,6,7,8,9]

(* specified test cases *)
val testResults2 = Filter (fn x => x<5)[4,6]