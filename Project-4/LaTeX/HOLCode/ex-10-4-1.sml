
val problemonethm=
TAC_PROOF(
([ `` !x: 'a.P(x) ==> M(x) ``, ``(P: 'a->bool) (s: 'a)``],
``(M:'a->bool) (s: 'a)``),
RES_TAC
);

val _=save_thm("problemonethm",problemonethm);

