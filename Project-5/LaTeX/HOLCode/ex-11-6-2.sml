
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
