
fun andImp2Imp term =
let
 val(conjTerm,r)= dest_imp(term)
 val(p,q) = dest_conj(conjTerm)
 
in
  mk_imp(p,(mk_imp(q,r)))
end;

(**** Test Case *****)
andImp2Imp ``(p/\q) ==> r``