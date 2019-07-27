signature project3bTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val conjSymThm : thm
    val conjSymThmAll : thm
    val problem1Thm : thm

  val project3b_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "project3b"

   [patternMatches] Parent theory of "project3b"

   [conjSymThm]  Theorem

      |- p ∧ q ⇔ q ∧ p

   [conjSymThmAll]  Theorem

      |- ∀p q. p ∧ q ⇔ q ∧ p

   [problem1Thm]  Theorem

      |- p ⇒ (p ⇒ q) ⇒ (q ⇒ r) ⇒ r


*)
end
