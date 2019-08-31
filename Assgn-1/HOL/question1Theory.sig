signature question1Theory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val commands_BIJ : thm
    val commands_CASE : thm
    val commands_TY_DEF : thm
    val commands_size_def : thm
    val staff_BIJ : thm
    val staff_CASE : thm
    val staff_TY_DEF : thm
    val staff_size_def : thm

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
    val datatype_staff : thm
    val num2commands_11 : thm
    val num2commands_ONTO : thm
    val num2commands_commands2num : thm
    val num2commands_thm : thm
    val num2staff_11 : thm
    val num2staff_ONTO : thm
    val num2staff_staff2num : thm
    val num2staff_thm : thm
    val question1Thm : thm
    val staff2num_11 : thm
    val staff2num_ONTO : thm
    val staff2num_num2staff : thm
    val staff2num_thm : thm
    val staff_Axiom : thm
    val staff_EQ_staff : thm
    val staff_case_cong : thm
    val staff_case_def : thm
    val staff_distinct : thm
    val staff_induction : thm
    val staff_nchotomy : thm

  val question1_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclDrules] Parent theory of "question1"

   [commands_BIJ]  Definition

      |- (∀a. num2commands (commands2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (commands2num (num2commands r) = r)

   [commands_CASE]  Definition

      |- ∀x v0 v1.
           (case x of travel => v0 | deny => v1) =
           (λm. if m = 0 then v0 else v1) (commands2num x)

   [commands_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [commands_size_def]  Definition

      |- ∀x. commands_size x = 0

   [staff_BIJ]  Definition

      |- (∀a. num2staff (staff2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (staff2num (num2staff r) = r)

   [staff_CASE]  Definition

      |- ∀x v0 v1.
           (case x of Jack => v0 | Amtrack => v1) =
           (λm. if m = 0 then v0 else v1) (staff2num x)

   [staff_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [staff_size_def]  Definition

      |- ∀x. staff_size x = 0

   [commands2num_11]  Theorem

      |- ∀a a'. (commands2num a = commands2num a') ⇔ (a = a')

   [commands2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = commands2num a

   [commands2num_num2commands]  Theorem

      |- ∀r. r < 2 ⇔ (commands2num (num2commands r) = r)

   [commands2num_thm]  Theorem

      |- (commands2num travel = 0) ∧ (commands2num deny = 1)

   [commands_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f travel = x0) ∧ (f deny = x1)

   [commands_EQ_commands]  Theorem

      |- ∀a a'. (a = a') ⇔ (commands2num a = commands2num a')

   [commands_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = travel) ⇒ (v0 = v0')) ∧
           ((M' = deny) ⇒ (v1 = v1')) ⇒
           ((case M of travel => v0 | deny => v1) =
            case M' of travel => v0' | deny => v1')

   [commands_case_def]  Theorem

      |- (∀v0 v1. (case travel of travel => v0 | deny => v1) = v0) ∧
         ∀v0 v1. (case deny of travel => v0 | deny => v1) = v1

   [commands_distinct]  Theorem

      |- travel ≠ deny

   [commands_induction]  Theorem

      |- ∀P. P deny ∧ P travel ⇒ ∀a. P a

   [commands_nchotomy]  Theorem

      |- ∀a. (a = travel) ∨ (a = deny)

   [datatype_commands]  Theorem

      |- DATATYPE (commands travel deny)

   [datatype_staff]  Theorem

      |- DATATYPE (staff Jack Amtrack)

   [num2commands_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2commands r = num2commands r') ⇔ (r = r'))

   [num2commands_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2commands r) ∧ r < 2

   [num2commands_commands2num]  Theorem

      |- ∀a. num2commands (commands2num a) = a

   [num2commands_thm]  Theorem

      |- (num2commands 0 = travel) ∧ (num2commands 1 = deny)

   [num2staff_11]  Theorem

      |- ∀r r'. r < 2 ⇒ r' < 2 ⇒ ((num2staff r = num2staff r') ⇔ (r = r'))

   [num2staff_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2staff r) ∧ r < 2

   [num2staff_staff2num]  Theorem

      |- ∀a. num2staff (staff2num a) = a

   [num2staff_thm]  Theorem

      |- (num2staff 0 = Jack) ∧ (num2staff 1 = Amtrack)

   [question1Thm]  Theorem

      [oracles: DISK_THM] [axioms: ]
      [(M,Oi,Os) sat Name Jack controls prop travel,
       (M,Oi,Os) sat prop travel impf prop deny,
       (M,Oi,Os) sat Name Jack says prop travel]
      |- (M,Oi,Os) sat Name Jack says prop deny

   [staff2num_11]  Theorem

      |- ∀a a'. (staff2num a = staff2num a') ⇔ (a = a')

   [staff2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = staff2num a

   [staff2num_num2staff]  Theorem

      |- ∀r. r < 2 ⇔ (staff2num (num2staff r) = r)

   [staff2num_thm]  Theorem

      |- (staff2num Jack = 0) ∧ (staff2num Amtrack = 1)

   [staff_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f Jack = x0) ∧ (f Amtrack = x1)

   [staff_EQ_staff]  Theorem

      |- ∀a a'. (a = a') ⇔ (staff2num a = staff2num a')

   [staff_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = Jack) ⇒ (v0 = v0')) ∧
           ((M' = Amtrack) ⇒ (v1 = v1')) ⇒
           ((case M of Jack => v0 | Amtrack => v1) =
            case M' of Jack => v0' | Amtrack => v1')

   [staff_case_def]  Theorem

      |- (∀v0 v1. (case Jack of Jack => v0 | Amtrack => v1) = v0) ∧
         ∀v0 v1. (case Amtrack of Jack => v0 | Amtrack => v1) = v1

   [staff_distinct]  Theorem

      |- Jack ≠ Amtrack

   [staff_induction]  Theorem

      |- ∀P. P Amtrack ∧ P Jack ⇒ ∀a. P a

   [staff_nchotomy]  Theorem

      |- ∀a. (a = Jack) ∨ (a = Amtrack)


*)
end
