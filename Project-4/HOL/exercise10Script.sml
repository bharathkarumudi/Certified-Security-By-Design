(******************************************************************************)
(*  Exercise: Chapter 10                                                      *)
(*  Author: Bharath Karumudi                                                  *)
(*  Date: Aug 2, 2019                                                         *)
(******************************************************************************)

structure exercise10Script = struct
open HolKernel Parse boolLib bossLib;

val _ = new_theory "exercise10";


(******************************************************************************)
(*  Exercise: 10.4.1                                                          *)
(*  set_goal                                                                  *)
(*     ([``!x:`a.P(x) ==> M(x)``,``(P:`a->bool)(s:`a)``],                     *)
(*  ``(M:’a->bool)(s:’a)‘‘);                                                  *)
(******************************************************************************)

val problemonethm=
TAC_PROOF(
([ `` !x: 'a.P(x) ==> M(x) ``, ``(P: 'a->bool) (s: 'a)``],
``(M:'a->bool) (s: 'a)``),
RES_TAC
);

val _=save_thm("problemonethm",problemonethm);


(******************************************************************************)
(* Exercise: 10.4.2                                                           *)
(*   set_goal([``p /\ q ==> r``,``r ==> s``,`` ̃s``],``p ==>  ̃q``)           *)
(******************************************************************************)

val  problemtwothm=
TAC_PROOF(
([``p /\ q ==> r``, ``r ==> s``, ``~s``], ``p ==> ~q``),
(PAT_ASSUM ``r  ==>s``
	    (fn th =>
     	    ASSUME_TAC
     	      (DISJ_IMP (ONCE_REWRITE_RULE [DISJ_SYM] (IMP_ELIM th) )
              )
            )
) THEN
(PAT_ASSUM ``p /\ q ==> r``
	   (fn th2 =>
     	   ASSUME_TAC
     	   (DISJ_IMP (ONCE_REWRITE_RULE [DISJ_SYM] (IMP_ELIM th2))))) THEN
REPEAT STRIP_TAC THEN
RES_TAC
)
val _=save_thm("problemtwothm",problemtwothm);



(******************************************************************************)
(* Exercise: 10.4.3                                                           *)
(*   set_goal([`` ̃(p /\ q)``, `` ̃p ==> r``,`` ̃q ==> s``],``r \/ s ``);     *)
(******************************************************************************)




(******************************************************************************)
(* Exporting Theory                                                           *)
(******************************************************************************)

val _ = export_theory();

end (* Structure *)

