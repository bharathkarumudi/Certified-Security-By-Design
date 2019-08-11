(******************************************************************************)
(*  Exercise: Chapter 11                                                      *)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Aug 10, 2019                                                        *)
(******************************************************************************)

structure exTypeScript = struct
open HolKernel Parse boolLib bossLib;
open listTheory TypeBase arithmeticTheory

(* ==== interactive mode ====
map load ["boolTheory","TypeBase","bexpTheory"];
open boolTheory TypeBase bexpTheory
 ==== end interactive mode ==== *)

val _ = new_theory "exType";

val APP_def =
Define
`(APP [] (l: 'a list) = l) /\
 (APP (h :: (l1 : 'a list)) (l2: 'a list) = h:: (APP l1 l2))`
 

(******************************************************************************)
(*  Exercise: 11.6.1                                                          *)
(*  ∀ l 1 l 2 . LENGTH (APP l 1 l 2 ) = LENGTH l 1 + LENGTH l 2              *)
(******************************************************************************)

val LENGTH_APP=
TAC_PROOF(
([],
``!(l1: 'a list)(l2: 'a list).
   (LENGTH (APP l1 l2)) =(LENGTH l1 + LENGTH l2)``),
Induct_on `l1` THEN
ASM_REWRITE_TAC[ADD_CLAUSES,APP_def,LENGTH])

val _ = save_thm("LENGTH_APP", LENGTH_APP);


(******************************************************************************)
(* Exercise: 11.6.2                                                            *)
(* ` Map f (APP l 1 l 2 ) = APP (Map f l 1 ) (Map f l 2 )                     *)
(******************************************************************************)

val Map_def =
Define
`(Map f [] = []) /\ (Map f (x::f1) = f x::Map f (f1))`;

val Map_APP =
TAC_PROOF(
([],
``Map f (APP l1 l2) = APP (Map f l1) (Map f l2) ``),
Induct_on `l1` THEN
ASM_REWRITE_TAC[ADD_CLAUSES,Map_def,APP_def])

val _ = save_thm("Map_APP", Map_APP);

(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = export_theory();
val _= print_theory "-";

end (* Structure *)

