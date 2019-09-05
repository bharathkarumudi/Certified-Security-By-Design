<<HOL message: Created theory "question1">>
Saved theorem _____ "question1Thm"
Theory: question1

Parents:
    cipher
    string

Theorems:
    question1Thm
      |- ∀signature.
           signVerify (pubK TrueSignatures) signature
             (SOME "pubK GoodBooks") ⇔
           (signature =
            sign (privK TrueSignatures) (hash (SOME "pubK GoodBooks")))
Exporting theory "question1" ... done.
Theory "question1" took 0.00337s to build
Completed load of question1Script
