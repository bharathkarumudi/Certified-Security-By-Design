
val LENGTH_APP=
TAC_PROOF(
([],
``!(l1: 'a list)(l2: 'a list).
   (LENGTH (APP l1 l2)) =(LENGTH l1 + LENGTH l2)``),
Induct_on `l1` THEN
ASM_REWRITE_TAC[ADD_CLAUSES,APP_def,LENGTH])

val _ = save_thm("LENGTH_APP", LENGTH_APP);
