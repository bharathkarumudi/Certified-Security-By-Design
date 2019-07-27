(******************************************************************************)
(*  Exercise: Chapter 8                                                       *)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Jul 26, 2019                                                        *)
(******************************************************************************)

structure project3bScript = struct
open HolKernel Parse boolLib bossLib;

val _ = new_theory "project3b";

(******************************************************************************)
(*  Exercise: 8.4.1                                                           *)
(*  val problem1Thm =                                                         *)
(*     [] |- p ==> (p ==> q) ==> (q ==> r) ==> r                              *)
(*     : thm                                                                  *)
(*                                                                            *)
(******************************************************************************)

val problem1Thm =
let
 val th1 = ASSUME ``p:bool``
 val th2 = ASSUME ``p ==> q``
 val th3 = ASSUME ``q ==> r``
 val th4 = MP th2 th1
 val th5 = MP th3 th4
 val th6 = DISCH (hd(hyp th3)) th5
 val th7 = DISCH (hd(hyp th2)) th6
in
  DISCH (hd(hyp th1)) th7
end;

val _ = save_thm("problem1Thm", problem1Thm);


(******************************************************************************)
(* Exercise: 8.4.2                                                            *)
(* val conjSymThm =                                                           *)
(*   [] |- p /\ q <=> q /\ p                                                  *)
(*   : thm                                                                     *)
(*                                                                            *)
(******************************************************************************)

val conj1Thm =
let
 val th1 = ASSUME ``p /\ q``
 val th2 = CONJUNCT1 th1
 val th3 = CONJUNCT2 th1
 val th4 = CONJ th3 th2
in
 DISCH (hd(hyp th1)) th4
end;

val conj2Thm =
let
 val th1 = ASSUME ``q /\ p``
 val th2 = CONJUNCT1 th1
 val th3 = CONJUNCT2 th1
 val th4 = CONJ th3 th2
in
 DISCH (hd(hyp th1)) th4
end;

val conjSymThm =
IMP_ANTISYM_RULE conj1Thm conj2Thm;

val _ = save_thm("conjSymThm", conjSymThm);


(******************************************************************************)
(* Exercise: 8.4.3                                                            *)
(* val conjSymThmAll =                                                        *)
(*   [] |- !p q. p /\ q <=> q /\ p                                            *)
(*   : thm                                                                    *)
(*                                                                            *)
(******************************************************************************)

val conj1Thm =
let
val th1 = ASSUME ``p /\ q``
val th2 = CONJUNCT1 th1
val th3 = CONJUNCT2 th1
val th4 = CONJ th3 th2
in
DISCH (hd(hyp th1)) th4
end;

val conj2Thm =
let
val th1 = ASSUME ``q /\ p``
val th2 = CONJUNCT1 th1
val th3 = CONJUNCT2 th1
val th4 = CONJ th3 th2
in
DISCH (hd(hyp th1)) th4
end;

val conjSymThm =
IMP_ANTISYM_RULE conj1Thm conj2Thm;

val conjSymThmAll = GENL[``p:bool``, ``q:bool``] conjSymThm;

val _ = save_thm("conjSymThmAll", conjSymThmAll)


(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = export_theory();

end (* Structure *)

