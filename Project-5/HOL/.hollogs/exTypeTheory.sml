<<HOL message: Created theory "exType">>
Saved definition __ "APP_def"
Saved theorem _____ "LENGTH_APP"
Saved definition __ "Map_def"
Saved theorem _____ "Map_APP"
Exporting theory "exType" ... done.
Theory "exType" took 0.17078s to build
Theory: exType

Parents:
    indexedLists
    patternMatches

Term constants:
    APP   :α list -> α list -> α list
    Map   :(β -> α) -> β list -> α list

Definitions:
    APP_def
      |- (∀l. APP [] l = l) ∧ ∀h l1 l2. APP (h::l1) l2 = h::APP l1 l2
    Map_def
      |- (∀f. Map f [] = []) ∧ ∀f x f1. Map f (x::f1) = f x::Map f f1

Theorems:
    LENGTH_APP
      |- ∀l1 l2. LENGTH (APP l1 l2) = LENGTH l1 + LENGTH l2
    Map_APP
      |- Map f (APP l1 l2) = APP (Map f l1) (Map f l2)
Completed load of exTypeScript
