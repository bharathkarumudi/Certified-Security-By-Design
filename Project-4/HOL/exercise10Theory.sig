signature exercise10Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val problemonethm : thm
    val problemtwothm : thm

  val exercise10_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "exercise10"

   [patternMatches] Parent theory of "exercise10"

   [problemonethm]  Theorem

      [oracles: ] [axioms: ] [P s, ∀x. P x ⇒ M x] |- M s

   [problemtwothm]  Theorem

      [oracles: DISK_THM] [axioms: ] [¬s, r ⇒ s, p ∧ q ⇒ r] |- p ⇒ ¬q


*)
end
