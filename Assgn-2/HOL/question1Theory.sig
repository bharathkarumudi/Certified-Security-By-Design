signature question1Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val question1Thm : thm

  val question1_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [cipher] Parent theory of "question1"

   [string] Parent theory of "question1"

   [question1Thm]  Theorem

      |- ∀signature.
           signVerify (pubK TrueSignatures) signature
             (SOME "pubK GoodBooks") ⇔
           (signature =
            sign (privK TrueSignatures) (hash (SOME "pubK GoodBooks")))


*)
end
