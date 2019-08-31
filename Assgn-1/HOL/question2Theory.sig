signature question2Theory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val commands_BIJ : thm
    val commands_CASE : thm
    val commands_TY_DEF : thm
    val commands_size_def : thm
    val keyPrinc_TY_DEF : thm
    val keyPrinc_case_def : thm
    val keyPrinc_size_def : thm
    val people_BIJ : thm
    val people_CASE : thm
    val people_TY_DEF : thm
    val people_size_def : thm
    val principals_TY_DEF : thm
    val principals_case_def : thm
    val principals_size_def : thm
    val roles_BIJ : thm
    val roles_CASE : thm
    val roles_TY_DEF : thm
    val roles_size_def : thm

  (*  Theorems  *)
    val commands2num_11 : thm
    val commands2num_ONTO : thm
    val commands2num_num2commands : thm
    val commands2num_thm : thm
    val commands_Axiom : thm
    val commands_EQ_commands : thm
    val commands_case_cong : thm
    val commands_case_def : thm
    val commands_distinct : thm
    val commands_induction : thm
    val commands_nchotomy : thm
    val datatype_commands : thm
    val datatype_keyPrinc : thm
    val datatype_people : thm
    val datatype_principals : thm
    val datatype_roles : thm
    val keyPrinc_11 : thm
    val keyPrinc_Axiom : thm
    val keyPrinc_case_cong : thm
    val keyPrinc_distinct : thm
    val keyPrinc_induction : thm
    val keyPrinc_nchotomy : thm
    val num2commands_11 : thm
    val num2commands_ONTO : thm
    val num2commands_commands2num : thm
    val num2commands_thm : thm
    val num2people_11 : thm
    val num2people_ONTO : thm
    val num2people_people2num : thm
    val num2people_thm : thm
    val num2roles_11 : thm
    val num2roles_ONTO : thm
    val num2roles_roles2num : thm
    val num2roles_thm : thm
    val people2num_11 : thm
    val people2num_ONTO : thm
    val people2num_num2people : thm
    val people2num_thm : thm
    val people_Axiom : thm
    val people_EQ_people : thm
    val people_case_cong : thm
    val people_case_def : thm
    val people_distinct : thm
    val people_induction : thm
    val people_nchotomy : thm
    val principals_11 : thm
    val principals_Axiom : thm
    val principals_case_cong : thm
    val principals_distinct : thm
    val principals_induction : thm
    val principals_nchotomy : thm
    val question2Thm : thm
    val roles2num_11 : thm
    val roles2num_ONTO : thm
    val roles2num_num2roles : thm
    val roles2num_thm : thm
    val roles_Axiom : thm
    val roles_EQ_roles : thm
    val roles_case_cong : thm
    val roles_case_def : thm
    val roles_distinct : thm
    val roles_induction : thm
    val roles_nchotomy : thm

  val question2_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclDrules] Parent theory of "question2"

   [commands_BIJ]  Definition

      |- (∀a. num2commands (commands2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (commands2num (num2commands r) = r)

   [commands_CASE]  Definition

      |- ∀x v0 v1.
           (case x of go => v0 | nogo => v1) =
           (λm. if m = 0 then v0 else v1) (commands2num x)

   [commands_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [commands_size_def]  Definition

      |- ∀x. commands_size x = 0

   [keyPrinc_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'keyPrinc' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (ARB,ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'keyPrinc' a0) ⇒
                  'keyPrinc' a0) rep

   [keyPrinc_case_def]  Definition

      |- (∀a f f1 f2. keyPrinc_CASE (Staff a) f f1 f2 = f a) ∧
         (∀a f f1 f2. keyPrinc_CASE (Role a) f f1 f2 = f1 a) ∧
         ∀a f f1 f2. keyPrinc_CASE (Ap a) f f1 f2 = f2 a

   [keyPrinc_size_def]  Definition

      |- (∀a. keyPrinc_size (Staff a) = 1 + people_size a) ∧
         (∀a. keyPrinc_size (Role a) = 1 + roles_size a) ∧
         ∀a. keyPrinc_size (Ap a) = 1 + a

   [people_BIJ]  Definition

      |- (∀a. num2people (people2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (people2num (num2people r) = r)

   [people_CASE]  Definition

      |- ∀x v0 v1.
           (case x of Alice => v0 | Bank => v1) =
           (λm. if m = 0 then v0 else v1) (people2num x)

   [people_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [people_size_def]  Definition

      |- ∀x. people_size x = 0

   [principals_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'principals' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'principals' a0) ⇒
                  'principals' a0) rep

   [principals_case_def]  Definition

      |- (∀a f f1. principals_CASE (PR a) f f1 = f a) ∧
         ∀a f f1. principals_CASE (Key a) f f1 = f1 a

   [principals_size_def]  Definition

      |- (∀a. principals_size (PR a) = 1 + keyPrinc_size a) ∧
         ∀a. principals_size (Key a) = 1 + keyPrinc_size a

   [roles_BIJ]  Definition

      |- (∀a. num2roles (roles2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (roles2num (num2roles r) = r)

   [roles_CASE]  Definition

      |- ∀x v0 v1.
           (case x of Commander => v0 | CA => v1) =
           (λm. if m = 0 then v0 else v1) (roles2num x)

   [roles_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [roles_size_def]  Definition

      |- ∀x. roles_size x = 0

   [commands2num_11]  Theorem

      |- ∀a a'. (commands2num a = commands2num a') ⇔ (a = a')

   [commands2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = commands2num a

   [commands2num_num2commands]  Theorem

      |- ∀r. r < 2 ⇔ (commands2num (num2commands r) = r)

   [commands2num_thm]  Theorem

      |- (commands2num go = 0) ∧ (commands2num nogo = 1)

   [commands_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f go = x0) ∧ (f nogo = x1)

   [commands_EQ_commands]  Theorem

      |- ∀a a'. (a = a') ⇔ (commands2num a = commands2num a')

   [commands_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = go) ⇒ (v0 = v0')) ∧
           ((M' = nogo) ⇒ (v1 = v1')) ⇒
           ((case M of go => v0 | nogo => v1) =
            case M' of go => v0' | nogo => v1')

   [commands_case_def]  Theorem

      |- (∀v0 v1. (case go of go => v0 | nogo => v1) = v0) ∧
         ∀v0 v1. (case nogo of go => v0 | nogo => v1) = v1

   [commands_distinct]  Theorem

      |- go ≠ nogo

   [commands_induction]  Theorem

      |- ∀P. P go ∧ P nogo ⇒ ∀a. P a

   [commands_nchotomy]  Theorem

      |- ∀a. (a = go) ∨ (a = nogo)

   [datatype_commands]  Theorem

      |- DATATYPE (commands go nogo)

   [datatype_keyPrinc]  Theorem

      |- DATATYPE (keyPrinc Staff Role Ap)

   [datatype_people]  Theorem

      |- DATATYPE (people Alice Bank)

   [datatype_principals]  Theorem

      |- DATATYPE (principals PR Key)

   [datatype_roles]  Theorem

      |- DATATYPE (roles Commander CA)

   [keyPrinc_11]  Theorem

      |- (∀a a'. (Staff a = Staff a') ⇔ (a = a')) ∧
         (∀a a'. (Role a = Role a') ⇔ (a = a')) ∧
         ∀a a'. (Ap a = Ap a') ⇔ (a = a')

   [keyPrinc_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (Staff a) = f0 a) ∧ (∀a. fn (Role a) = f1 a) ∧
             ∀a. fn (Ap a) = f2 a

   [keyPrinc_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = Staff a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = Role a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = Ap a) ⇒ (f2 a = f2' a)) ⇒
           (keyPrinc_CASE M f f1 f2 = keyPrinc_CASE M' f' f1' f2')

   [keyPrinc_distinct]  Theorem

      |- (∀a' a. Staff a ≠ Role a') ∧ (∀a' a. Staff a ≠ Ap a') ∧
         ∀a' a. Role a ≠ Ap a'

   [keyPrinc_induction]  Theorem

      |- ∀P.
           (∀p. P (Staff p)) ∧ (∀r. P (Role r)) ∧ (∀n. P (Ap n)) ⇒ ∀k. P k

   [keyPrinc_nchotomy]  Theorem

      |- ∀kk. (∃p. kk = Staff p) ∨ (∃r. kk = Role r) ∨ ∃n. kk = Ap n

   [num2commands_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2commands r = num2commands r') ⇔ (r = r'))

   [num2commands_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2commands r) ∧ r < 2

   [num2commands_commands2num]  Theorem

      |- ∀a. num2commands (commands2num a) = a

   [num2commands_thm]  Theorem

      |- (num2commands 0 = go) ∧ (num2commands 1 = nogo)

   [num2people_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2people r = num2people r') ⇔ (r = r'))

   [num2people_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2people r) ∧ r < 2

   [num2people_people2num]  Theorem

      |- ∀a. num2people (people2num a) = a

   [num2people_thm]  Theorem

      |- (num2people 0 = Alice) ∧ (num2people 1 = Bank)

   [num2roles_11]  Theorem

      |- ∀r r'. r < 2 ⇒ r' < 2 ⇒ ((num2roles r = num2roles r') ⇔ (r = r'))

   [num2roles_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2roles r) ∧ r < 2

   [num2roles_roles2num]  Theorem

      |- ∀a. num2roles (roles2num a) = a

   [num2roles_thm]  Theorem

      |- (num2roles 0 = Commander) ∧ (num2roles 1 = CA)

   [people2num_11]  Theorem

      |- ∀a a'. (people2num a = people2num a') ⇔ (a = a')

   [people2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = people2num a

   [people2num_num2people]  Theorem

      |- ∀r. r < 2 ⇔ (people2num (num2people r) = r)

   [people2num_thm]  Theorem

      |- (people2num Alice = 0) ∧ (people2num Bank = 1)

   [people_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f Alice = x0) ∧ (f Bank = x1)

   [people_EQ_people]  Theorem

      |- ∀a a'. (a = a') ⇔ (people2num a = people2num a')

   [people_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = Alice) ⇒ (v0 = v0')) ∧
           ((M' = Bank) ⇒ (v1 = v1')) ⇒
           ((case M of Alice => v0 | Bank => v1) =
            case M' of Alice => v0' | Bank => v1')

   [people_case_def]  Theorem

      |- (∀v0 v1. (case Alice of Alice => v0 | Bank => v1) = v0) ∧
         ∀v0 v1. (case Bank of Alice => v0 | Bank => v1) = v1

   [people_distinct]  Theorem

      |- Alice ≠ Bank

   [people_induction]  Theorem

      |- ∀P. P Alice ∧ P Bank ⇒ ∀a. P a

   [people_nchotomy]  Theorem

      |- ∀a. (a = Alice) ∨ (a = Bank)

   [principals_11]  Theorem

      |- (∀a a'. (PR a = PR a') ⇔ (a = a')) ∧
         ∀a a'. (Key a = Key a') ⇔ (a = a')

   [principals_Axiom]  Theorem

      |- ∀f0 f1. ∃fn. (∀a. fn (PR a) = f0 a) ∧ ∀a. fn (Key a) = f1 a

   [principals_case_cong]  Theorem

      |- ∀M M' f f1.
           (M = M') ∧ (∀a. (M' = PR a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = Key a) ⇒ (f1 a = f1' a)) ⇒
           (principals_CASE M f f1 = principals_CASE M' f' f1')

   [principals_distinct]  Theorem

      |- ∀a' a. PR a ≠ Key a'

   [principals_induction]  Theorem

      |- ∀P. (∀k. P (PR k)) ∧ (∀k. P (Key k)) ⇒ ∀p. P p

   [principals_nchotomy]  Theorem

      |- ∀pp. (∃k. pp = PR k) ∨ ∃k. pp = Key k

   [question2Thm]  Theorem

      |- (M,Oi,Os) sat Name (PR (Role Commander)) controls prop go ⇒
         (M,Oi,Os) sat
         reps (Name (PR (Staff Alice))) (Name (PR (Role Commander)))
           (prop go) ⇒
         (M,Oi,Os) sat
         Name (Key (Staff Alice)) quoting Name (PR (Role Commander)) says
         prop go ⇒
         (M,Oi,Os) sat prop go impf prop nogo ⇒
         (M,Oi,Os) sat
         Name (Key (Role CA)) speaks_for Name (PR (Role CA)) ⇒
         (M,Oi,Os) sat
         Name (Key (Role CA)) says
         Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ⇒
         (M,Oi,Os) sat
         Name (PR (Role CA)) controls
         Name (Key (Staff Alice)) speaks_for Name (PR (Staff Alice)) ⇒
         (M,Oi,Os) sat
         Name (Key (Staff Bank)) quoting Name (PR (Role Operator)) says
         prop nogo

   [roles2num_11]  Theorem

      |- ∀a a'. (roles2num a = roles2num a') ⇔ (a = a')

   [roles2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = roles2num a

   [roles2num_num2roles]  Theorem

      |- ∀r. r < 2 ⇔ (roles2num (num2roles r) = r)

   [roles2num_thm]  Theorem

      |- (roles2num Commander = 0) ∧ (roles2num CA = 1)

   [roles_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f Commander = x0) ∧ (f CA = x1)

   [roles_EQ_roles]  Theorem

      |- ∀a a'. (a = a') ⇔ (roles2num a = roles2num a')

   [roles_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = Commander) ⇒ (v0 = v0')) ∧
           ((M' = CA) ⇒ (v1 = v1')) ⇒
           ((case M of Commander => v0 | CA => v1) =
            case M' of Commander => v0' | CA => v1')

   [roles_case_def]  Theorem

      |- (∀v0 v1. (case Commander of Commander => v0 | CA => v1) = v0) ∧
         ∀v0 v1. (case CA of Commander => v0 | CA => v1) = v1

   [roles_distinct]  Theorem

      |- Commander ≠ CA

   [roles_induction]  Theorem

      |- ∀P. P CA ∧ P Commander ⇒ ∀a. P a

   [roles_nchotomy]  Theorem

      |- ∀a. (a = Commander) ∨ (a = CA)


*)
end
