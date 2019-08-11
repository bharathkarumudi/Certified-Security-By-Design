<<HOL message: Created theory "nexp">>
Saved theorem _____ "datatype_nexp"
Saved theorem _____ "nexp_11"
Saved theorem _____ "nexp_distinct"
Saved theorem _____ "nexp_case_cong"
Saved theorem _____ "nexp_nchotomy"
Saved theorem _____ "nexp_Axiom"
Saved theorem _____ "nexp_induction"
<<HOL message: Defined type: "nexp">>
Saved theorem _____ "nexp_one_one"
Saved theorem _____ "nexp_distinct_clauses"
Saved definition __ "nexpVal_def"
Saved theorem _____ "Add_0"
Saved theorem _____ "Add_SYM"
Saved theorem _____ "Sub_0"
Saved theorem _____ "Mult_ASSOC"
Exporting theory "nexp" ... done.
Theory "nexp" took 12.1s to build
Theory: nexp

Parents:
    indexedLists
    patternMatches

Type constants:
    nexp 0

Term constants:
    Add         :nexp -> nexp -> nexp
    Mult        :nexp -> nexp -> nexp
    Num         :num -> nexp
    Sub         :nexp -> nexp -> nexp
    nexpVal     :nexp -> num
    nexp_CASE   :nexp ->
                 (num -> α) ->
                 (nexp -> nexp -> α) ->
                 (nexp -> nexp -> α) -> (nexp -> nexp -> α) -> α
    nexp_size   :nexp -> num

Definitions:
    nexpVal_def
      |- (∀f. nexpVal (Num f) = f) ∧
         (∀f1 f2. nexpVal (Add f1 f2) = nexpVal f1 + nexpVal f2) ∧
         (∀f1 f2. nexpVal (Sub f1 f2) = nexpVal f1 − nexpVal f2) ∧
         ∀f1 f2. nexpVal (Mult f1 f2) = nexpVal f1 * nexpVal f2
    nexp_TY_DEF
      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'nexp' .
                  (∀a0'.
                     (∃a.
                        a0' =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC 0) ARB
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'nexp' a0 ∧ 'nexp' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC (SUC 0)) ARB
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'nexp' a0 ∧ 'nexp' a1) ∨
                     (∃a0 a1.
                        (a0' =
                         (λa0 a1.
                            ind_type$CONSTR (SUC (SUC (SUC 0))) ARB
                              (ind_type$FCONS a0
                                 (ind_type$FCONS a1
                                    (λn. ind_type$BOTTOM)))) a0 a1) ∧
                        'nexp' a0 ∧ 'nexp' a1) ⇒
                     'nexp' a0') ⇒
                  'nexp' a0') rep
    nexp_case_def
      |- (∀a f f1 f2 f3. nexp_CASE (Num a) f f1 f2 f3 = f a) ∧
         (∀a0 a1 f f1 f2 f3.
            nexp_CASE (Add a0 a1) f f1 f2 f3 = f1 a0 a1) ∧
         (∀a0 a1 f f1 f2 f3.
            nexp_CASE (Sub a0 a1) f f1 f2 f3 = f2 a0 a1) ∧
         ∀a0 a1 f f1 f2 f3. nexp_CASE (Mult a0 a1) f f1 f2 f3 = f3 a0 a1
    nexp_size_def
      |- (∀a. nexp_size (Num a) = 1 + a) ∧
         (∀a0 a1.
            nexp_size (Add a0 a1) = 1 + (nexp_size a0 + nexp_size a1)) ∧
         (∀a0 a1.
            nexp_size (Sub a0 a1) = 1 + (nexp_size a0 + nexp_size a1)) ∧
         ∀a0 a1.
           nexp_size (Mult a0 a1) = 1 + (nexp_size a0 + nexp_size a1)

Theorems:
    Add_0
      |- ∀f. nexpVal (Add (Num 0) f) = nexpVal f
    Add_SYM
      |- ∀f1 f2. nexpVal (Add f1 f2) = nexpVal (Add f2 f1)
    Mult_ASSOC
      |- ∀f1 f2 f3.
           nexpVal (Mult f1 (Mult f2 f3)) =
           nexpVal (Mult (Mult f1 f2) f3)
    Sub_0
      |- ∀f.
           (nexpVal (Sub (Num 0) f) = 0) ∧
           (nexpVal (Sub f (Num 0)) = nexpVal f)
    datatype_nexp
      |- DATATYPE (nexp Num Add Sub Mult)
    nexp_11
      |- (∀a a'. (Num a = Num a') ⇔ (a = a')) ∧
         (∀a0 a1 a0' a1'.
            (Add a0 a1 = Add a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (Sub a0 a1 = Sub a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         ∀a0 a1 a0' a1'.
           (Mult a0 a1 = Mult a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')
    nexp_Axiom
      |- ∀f0 f1 f2 f3.
           ∃fn.
             (∀a. fn (Num a) = f0 a) ∧
             (∀a0 a1. fn (Add a0 a1) = f1 a0 a1 (fn a0) (fn a1)) ∧
             (∀a0 a1. fn (Sub a0 a1) = f2 a0 a1 (fn a0) (fn a1)) ∧
             ∀a0 a1. fn (Mult a0 a1) = f3 a0 a1 (fn a0) (fn a1)
    nexp_case_cong
      |- ∀M M' f f1 f2 f3.
           (M = M') ∧ (∀a. (M' = Num a) ⇒ (f a = f' a)) ∧
           (∀a0 a1. (M' = Add a0 a1) ⇒ (f1 a0 a1 = f1' a0 a1)) ∧
           (∀a0 a1. (M' = Sub a0 a1) ⇒ (f2 a0 a1 = f2' a0 a1)) ∧
           (∀a0 a1. (M' = Mult a0 a1) ⇒ (f3 a0 a1 = f3' a0 a1)) ⇒
           (nexp_CASE M f f1 f2 f3 = nexp_CASE M' f' f1' f2' f3')
    nexp_distinct
      |- (∀a1 a0 a. Num a ≠ Add a0 a1) ∧ (∀a1 a0 a. Num a ≠ Sub a0 a1) ∧
         (∀a1 a0 a. Num a ≠ Mult a0 a1) ∧
         (∀a1' a1 a0' a0. Add a0 a1 ≠ Sub a0' a1') ∧
         (∀a1' a1 a0' a0. Add a0 a1 ≠ Mult a0' a1') ∧
         ∀a1' a1 a0' a0. Sub a0 a1 ≠ Mult a0' a1'
    nexp_distinct_clauses
      |- (∀a1 a0 a. Num a ≠ Add a0 a1) ∧ (∀a1 a0 a. Num a ≠ Sub a0 a1) ∧
         (∀a1 a0 a. Num a ≠ Mult a0 a1) ∧
         (∀a1' a1 a0' a0. Add a0 a1 ≠ Sub a0' a1') ∧
         (∀a1' a1 a0' a0. Add a0 a1 ≠ Mult a0' a1') ∧
         ∀a1' a1 a0' a0. Sub a0 a1 ≠ Mult a0' a1'
    nexp_induction
      |- ∀P.
           (∀n. P (Num n)) ∧ (∀n n0. P n ∧ P n0 ⇒ P (Add n n0)) ∧
           (∀n n0. P n ∧ P n0 ⇒ P (Sub n n0)) ∧
           (∀n n0. P n ∧ P n0 ⇒ P (Mult n n0)) ⇒
           ∀n. P n
    nexp_nchotomy
      |- ∀nn.
           (∃n. nn = Num n) ∨ (∃n n0. nn = Add n n0) ∨
           (∃n n0. nn = Sub n n0) ∨ ∃n n0. nn = Mult n n0
    nexp_one_one
      |- (∀a a'. (Num a = Num a') ⇔ (a = a')) ∧
         (∀a0 a1 a0' a1'.
            (Add a0 a1 = Add a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         (∀a0 a1 a0' a1'.
            (Sub a0 a1 = Sub a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')) ∧
         ∀a0 a1 a0' a1'.
           (Mult a0 a1 = Mult a0' a1') ⇔ (a0 = a0') ∧ (a1 = a1')
Completed load of nexpScript
