
val problem1Thm =
let
 val th1 = ASSUME ``p:bool``
 val th2 = ASSUME ``p ==> q``
 val th3 = ASSUME ``q ==> r``
 val th4 = MP th2 th1
 val th5 = MP th3 th4
 val th6 = DISCH (hd(hyp th3)) th5
 val th7 = DISCH (hd(hyp th2)) th6
in
  DISCH (hd(hyp th1)) th7
end;

val _ = save_thm("problem1Thm", problem1Thm);