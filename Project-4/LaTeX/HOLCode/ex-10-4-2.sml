
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

