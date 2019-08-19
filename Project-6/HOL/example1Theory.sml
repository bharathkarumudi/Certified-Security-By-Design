structure example1Theory :> example1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading example1Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclDrulesTheory
  in end;
  val _ = Theory.link_parents
          ("example1",
          Arbnum.fromString "1566180096",
          Arbnum.fromString "93737")
          [("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "example1"
       [("staff", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("example1", "staff"),
   ID("example1", "commands"), ID("min", "bool"), ID("bool", "!"),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("example1", "Alice"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("example1", "Bob"), ID("bool", "COND"), ID("example1", "Carol"),
   ID("bool", "DATATYPE"), ID("example1", "Dan"),
   ID("arithmetic", "NUMERAL"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("example1", "abort"),
   ID("example1", "commands2num"), ID("example1", "commands_CASE"),
   ID("example1", "commands_size"), ID("example1", "go"),
   ID("example1", "launch"), ID("example1", "nogo"),
   ID("example1", "num2commands"), ID("example1", "num2staff"),
   ID("example1", "staff2num"), ID("example1", "staff_CASE"),
   ID("example1", "staff_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 3, 6], TYOP [0, 1, 7],
   TYOP [0, 0, 1], TYOP [3], TYOP [0, 0, 10], TYOP [0, 10, 0],
   TYOP [0, 10, 7], TYOP [4], TYOP [0, 10, 14], TYOP [0, 1, 14],
   TYOP [0, 10, 15], TYOP [0, 10, 17], TYOP [0, 10, 18], TYOP [0, 10, 3],
   TYOP [0, 1, 3], TYOP [0, 1, 16], TYOP [0, 1, 22], TYOP [0, 1, 23],
   TYOP [0, 3, 14], TYOP [0, 25, 14], TYOP [0, 15, 14], TYOP [0, 27, 14],
   TYOP [0, 16, 14], TYOP [0, 29, 14], TYOP [0, 0, 14], TYOP [0, 31, 14],
   TYOP [0, 14, 14], TYOP [0, 14, 33], TYOP [0, 0, 31], TYOP [0, 3, 25],
   TYOP [0, 20, 14], TYOP [0, 37, 14], TYOP [0, 12, 14], TYOP [0, 39, 14],
   TYOP [0, 21, 14], TYOP [0, 41, 14], TYOP [0, 2, 14], TYOP [0, 43, 14],
   TYOP [0, 0, 0], TYOP [0, 14, 5], TYOP [0, 31, 39], TYOP [0, 31, 43]]
  end
  val _ = Theory.incorporate_consts "example1" tyvector
     [("staff_size", 2), ("staff_CASE", 8), ("staff2num", 2),
      ("num2staff", 9), ("num2commands", 11), ("nogo", 10), ("launch", 10),
      ("go", 10), ("commands_size", 12), ("commands_CASE", 13),
      ("commands2num", 12), ("abort", 10), ("Dan", 1), ("Carol", 1),
      ("Bob", 1), ("Alice", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 10), TMV("M", 1), TMV("M'", 10), TMV("M'", 1), TMV("P", 15),
   TMV("P", 16), TMV("a", 10), TMV("a", 1), TMV("a'", 10), TMV("a'", 1),
   TMV("commands", 19), TMV("f", 20), TMV("f", 21), TMV("m", 0),
   TMV("n", 0), TMV("r", 0), TMV("r'", 0), TMV("rep", 12), TMV("rep", 2),
   TMV("staff", 24), TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3),
   TMV("v1'", 3), TMV("v2", 3), TMV("v2'", 3), TMV("v3", 3), TMV("v3'", 3),
   TMV("x", 10), TMV("x", 1), TMV("x0", 3), TMV("x1", 3), TMV("x2", 3),
   TMV("x3", 3), TMC(5, 26), TMC(5, 27), TMC(5, 28), TMC(5, 30),
   TMC(5, 32), TMC(5, 29), TMC(6, 34), TMC(7, 0), TMC(8, 35), TMC(9, 36),
   TMC(9, 34), TMC(9, 17), TMC(9, 35), TMC(9, 22), TMC(10, 34),
   TMC(11, 27), TMC(11, 38), TMC(11, 40), TMC(11, 42), TMC(11, 44),
   TMC(11, 32), TMC(11, 29), TMC(12, 1), TMC(13, 45), TMC(14, 45),
   TMC(15, 1), TMC(16, 46), TMC(17, 1), TMC(18, 33), TMC(19, 1),
   TMC(20, 45), TMC(21, 47), TMC(21, 48), TMC(22, 0), TMC(23, 34),
   TMC(24, 10), TMC(25, 12), TMC(26, 13), TMC(27, 12), TMC(28, 10),
   TMC(29, 10), TMC(30, 10), TMC(31, 11), TMC(32, 9), TMC(33, 2),
   TMC(34, 8), TMC(35, 2), TMC(36, 33)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("example1",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%51%17%65%14%42$0@%64%58%57%67@4|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("example1",1),
                [("bool",[116]),("example1",[0])]),["DISK_THM"]),
               [ThmBind.read"%40%35%6%45%76%70$0@3$0@|@2%38%15%44%14%42$0@%64%58%57%67@4|$0@2%46%70%76$0@3$0@2|@2"])




  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("example1",15),[]),[]),
               [ThmBind.read"%35%28%46%72$0@2%41@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("example1",16),[]),[]),
               [ThmBind.read"%35%28%34%20%34%22%34%24%34%26%43%71$4@$3@$2@$1@$0@2%13%60%42$0@%64%57%67@4$4@%60%42$0@%64%58%67@4$3@%60%46$0@%64%58%67@4$2@$1@3|%70$4@3|@|@|@|@|@"])
  fun op staff_TY_DEF x = x
    val op staff_TY_DEF =
    ThmBind.DT(((("example1",24),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%53%18%66%14%42$0@%64%58%57%67@4|@$0@|@"])
  fun op staff_BIJ x = x
    val op staff_BIJ =
    ThmBind.DT(((("example1",25),
                [("bool",[116]),("example1",[24])]),["DISK_THM"]),
               [ThmBind.read"%40%39%7%47%77%78$0@3$0@|@2%38%15%44%14%42$0@%64%58%57%67@4|$0@2%46%78%77$0@3$0@2|@2"])




  fun op staff_size_def x = x
    val op staff_size_def =
    ThmBind.DT(((("example1",39),[]),[]),
               [ThmBind.read"%39%29%46%80$0@2%41@|@"])
  fun op staff_CASE x = x
    val op staff_CASE =
    ThmBind.DT(((("example1",40),[]),[]),
               [ThmBind.read"%39%29%34%20%34%22%34%24%34%26%43%79$4@$3@$2@$1@$0@2%13%60%42$0@%64%57%67@4$4@%60%42$0@%64%58%67@4$3@%60%46$0@%64%58%67@4$2@$1@3|%78$4@3|@|@|@|@|@"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("example1",2),[("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%6%45%76%70$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("example1",3),[("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%15%44%42$0@%64%58%57%67@5%46%70%76$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("example1",4),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%15%38%16%48%42$1@%64%58%57%67@5%48%42$0@%64%58%57%67@5%44%45%76$1@2%76$0@3%46$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("example1",5),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%6%35%8%44%46%70$1@2%70$0@3%45$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("example1",6),
                [("bool",[25,62]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%6%54%15%40%45$1@%76$0@3%42$0@%64%58%57%67@5|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("example1",7),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%15%44%42$0@%64%58%57%67@5%49%6%46$1@%70$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("example1",12),[("example1",[8,9,10,11])]),[]),
               [ThmBind.read"%40%45%76%41@2%73@2%40%45%76%64%57%67@4%75@2%40%45%76%64%58%67@4%74@2%45%76%64%57%57%67@5%69@4"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("example1",13),
                [("bool",[25,53]),("example1",[3,8,9,10,11]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%40%46%70%73@2%41@2%40%46%70%75@2%64%57%67@4%40%46%70%74@2%64%58%67@4%46%70%69@2%64%57%57%67@7"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("example1",14),
                [("bool",[57]),("example1",[5])]),["DISK_THM"]),
               [ThmBind.read"%35%6%35%8%44%45$1@$0@2%46%70$1@2%70$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("example1",17),
                [("bool",[53,55,63]),("example1",[13,16]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%40%34%20%34%22%34%24%34%26%43%71%73@$3@$2@$1@$0@2$3@|@|@|@|@2%40%34%20%34%22%34%24%34%26%43%71%75@$3@$2@$1@$0@2$2@|@|@|@|@2%40%34%20%34%22%34%24%34%26%43%71%74@$3@$2@$1@$0@2$1@|@|@|@|@2%34%20%34%22%34%24%34%26%43%71%69@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("example1",18),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%62%10%73@%75@%74@%69@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("example1",19),
                [("example1",[13,14]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%40%81%45%73@%75@3%40%81%45%73@%74@3%40%81%45%73@%69@3%40%81%45%75@%74@3%40%81%45%75@%69@3%81%45%74@%69@7"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("example1",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11,17]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%35%0%35%2%34%20%34%22%34%24%34%26%48%40%45$5@$4@2%40%48%45$4@%73@2%43$3@%21@3%40%48%45$4@%75@2%43$2@%23@3%40%48%45$4@%74@2%43$1@%25@3%48%45$4@%69@2%43$0@%27@7%43%71$5@$3@$2@$1@$0@2%71$4@%21@%23@%25@%27@3|@|@|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("example1",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%35%6%68%45$0@%73@2%68%45$0@%75@2%68%45$0@%74@2%45$0@%69@4|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("example1",22),
                [("bool",[8,14,25,53,55,63]),("example1",[13]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%34%30%34%31%34%32%34%33%50%11%40%43$0%73@2$4@2%40%43$0%75@2$3@2%40%43$0%74@2$2@2%43$0%69@2$1@4|@|@|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("example1",23),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%36%4%48%40$0%69@2%40$0%73@2%40$0%74@2$0%75@5%35%6$1$0@|@2|@"])
  fun op num2staff_staff2num x = x
    val op num2staff_staff2num =
    ThmBind.DT(((("example1",26),[("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%39%7%47%77%78$0@3$0@|@"])
  fun op staff2num_num2staff x = x
    val op staff2num_num2staff =
    ThmBind.DT(((("example1",27),[("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%38%15%44%42$0@%64%58%57%67@5%46%78%77$0@3$0@2|@"])
  fun op num2staff_11 x = x
    val op num2staff_11 =
    ThmBind.DT(((("example1",28),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%38%15%38%16%48%42$1@%64%58%57%67@5%48%42$0@%64%58%57%67@5%44%47%77$1@2%77$0@3%46$1@$0@4|@|@"])
  fun op staff2num_11 x = x
    val op staff2num_11 =
    ThmBind.DT(((("example1",29),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%39%7%39%9%44%46%78$1@2%78$0@3%47$1@$0@2|@|@"])
  fun op num2staff_ONTO x = x
    val op num2staff_ONTO =
    ThmBind.DT(((("example1",30),
                [("bool",[25,62]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%39%7%54%15%40%47$1@%77$0@3%42$0@%64%58%57%67@5|@|@"])
  fun op staff2num_ONTO x = x
    val op staff2num_ONTO =
    ThmBind.DT(((("example1",31),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%38%15%44%42$0@%64%58%57%67@5%55%7%46$1@%78$0@2|@2|@"])
  fun op num2staff_thm x = x
    val op num2staff_thm =
    ThmBind.DT(((("example1",36),[("example1",[32,33,34,35])]),[]),
               [ThmBind.read"%40%47%77%41@2%56@2%40%47%77%64%57%67@4%59@2%40%47%77%64%58%67@4%61@2%47%77%64%57%57%67@5%63@4"])
  fun op staff2num_thm x = x
    val op staff2num_thm =
    ThmBind.DT(((("example1",37),
                [("bool",[25,53]),("example1",[27,32,33,34,35]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%40%46%78%56@2%41@2%40%46%78%59@2%64%57%67@4%40%46%78%61@2%64%58%67@4%46%78%63@2%64%57%57%67@7"])
  fun op staff_EQ_staff x = x
    val op staff_EQ_staff =
    ThmBind.DT(((("example1",38),
                [("bool",[57]),("example1",[29])]),["DISK_THM"]),
               [ThmBind.read"%39%7%39%9%44%47$1@$0@2%46%78$1@2%78$0@3|@|@"])
  fun op staff_case_def x = x
    val op staff_case_def =
    ThmBind.DT(((("example1",41),
                [("bool",[53,55,63]),("example1",[37,40]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%40%34%20%34%22%34%24%34%26%43%79%56@$3@$2@$1@$0@2$3@|@|@|@|@2%40%34%20%34%22%34%24%34%26%43%79%59@$3@$2@$1@$0@2$2@|@|@|@|@2%40%34%20%34%22%34%24%34%26%43%79%61@$3@$2@$1@$0@2$1@|@|@|@|@2%34%20%34%22%34%24%34%26%43%79%63@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_staff x = x
    val op datatype_staff =
    ThmBind.DT(((("example1",42),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%62%19%56@%59@%61@%63@2"])
  fun op staff_distinct x = x
    val op staff_distinct =
    ThmBind.DT(((("example1",43),
                [("example1",[37,38]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%40%81%47%56@%59@3%40%81%47%56@%61@3%40%81%47%56@%63@3%40%81%47%59@%61@3%40%81%47%59@%63@3%81%47%61@%63@7"])
  fun op staff_case_cong x = x
    val op staff_case_cong =
    ThmBind.DT(((("example1",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35,41]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%39%1%39%3%34%20%34%22%34%24%34%26%48%40%47$5@$4@2%40%48%47$4@%56@2%43$3@%21@3%40%48%47$4@%59@2%43$2@%23@3%40%48%47$4@%61@2%43$1@%25@3%48%47$4@%63@2%43$0@%27@7%43%79$5@$3@$2@$1@$0@2%79$4@%21@%23@%25@%27@3|@|@|@|@|@|@"])
  fun op staff_nchotomy x = x
    val op staff_nchotomy =
    ThmBind.DT(((("example1",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%39%7%68%47$0@%56@2%68%47$0@%59@2%68%47$0@%61@2%47$0@%63@4|@"])
  fun op staff_Axiom x = x
    val op staff_Axiom =
    ThmBind.DT(((("example1",46),
                [("bool",[8,14,25,53,55,63]),("example1",[37]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%34%30%34%31%34%32%34%33%52%12%40%43$0%56@2$4@2%40%43$0%59@2$3@2%40%43$0%61@2$2@2%43$0%63@2$1@4|@|@|@|@|@"])
  fun op staff_induction x = x
    val op staff_induction =
    ThmBind.DT(((("example1",47),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%37%5%48%40$0%56@2%40$0%59@2%40$0%61@2$0%63@5%39%7$1$0@|@2|@"])

  val _ = DB.bindl "example1"
  [("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_BIJ",commands_BIJ,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("commands_CASE",commands_CASE,DB.Def),
   ("staff_TY_DEF",staff_TY_DEF,DB.Def), ("staff_BIJ",staff_BIJ,DB.Def),
   ("staff_size_def",staff_size_def,DB.Def),
   ("staff_CASE",staff_CASE,DB.Def),
   ("num2commands_commands2num",num2commands_commands2num,DB.Thm),
   ("commands2num_num2commands",commands2num_num2commands,DB.Thm),
   ("num2commands_11",num2commands_11,DB.Thm),
   ("commands2num_11",commands2num_11,DB.Thm),
   ("num2commands_ONTO",num2commands_ONTO,DB.Thm),
   ("commands2num_ONTO",commands2num_ONTO,DB.Thm),
   ("num2commands_thm",num2commands_thm,DB.Thm),
   ("commands2num_thm",commands2num_thm,DB.Thm),
   ("commands_EQ_commands",commands_EQ_commands,DB.Thm),
   ("commands_case_def",commands_case_def,DB.Thm),
   ("datatype_commands",datatype_commands,DB.Thm),
   ("commands_distinct",commands_distinct,DB.Thm),
   ("commands_case_cong",commands_case_cong,DB.Thm),
   ("commands_nchotomy",commands_nchotomy,DB.Thm),
   ("commands_Axiom",commands_Axiom,DB.Thm),
   ("commands_induction",commands_induction,DB.Thm),
   ("num2staff_staff2num",num2staff_staff2num,DB.Thm),
   ("staff2num_num2staff",staff2num_num2staff,DB.Thm),
   ("num2staff_11",num2staff_11,DB.Thm),
   ("staff2num_11",staff2num_11,DB.Thm),
   ("num2staff_ONTO",num2staff_ONTO,DB.Thm),
   ("staff2num_ONTO",staff2num_ONTO,DB.Thm),
   ("num2staff_thm",num2staff_thm,DB.Thm),
   ("staff2num_thm",staff2num_thm,DB.Thm),
   ("staff_EQ_staff",staff_EQ_staff,DB.Thm),
   ("staff_case_def",staff_case_def,DB.Thm),
   ("datatype_staff",datatype_staff,DB.Thm),
   ("staff_distinct",staff_distinct,DB.Thm),
   ("staff_case_cong",staff_case_cong,DB.Thm),
   ("staff_nchotomy",staff_nchotomy,DB.Thm),
   ("staff_Axiom",staff_Axiom,DB.Thm),
   ("staff_induction",staff_induction,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "example1",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY8.example1,8.commandsNTY8.example1,5.staff"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "example1",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num3.%70OO12.num2commands3.%76OO2.go3.%73OO4.nogo3.%75OO6.launch3.%74OO5.abort3.%69OO13.commands_size3.%72OO13.commands_CASE3.%71OO4.case3.%71OO9.staff2num3.%78OO9.num2staff3.%77OO5.Alice3.%56OO3.Bob3.%59OO5.Carol3.%61OO3.Dan3.%63OO10.staff_size3.%80OO10.staff_CASE3.%79OO4.case3.%79"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val example1_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="example1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val example1_grammars = 
    Portable.## (addtyUDs,addtmUDs) example1_grammars
  val _ = Parse.grammarDB_insert("example1",example1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG commands_Axiom,
           case_def=commands_case_def,
           case_cong=commands_case_cong,
           induction=ORIG commands_induction,
           nchotomy=commands_nchotomy,
           size=SOME(Parse.Term`(example1$commands_size) :example1$commands -> num$num`,
                     ORIG commands_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME commands_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2commands_thm commands2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG staff_Axiom,
           case_def=staff_case_def,
           case_cong=staff_case_cong,
           induction=ORIG staff_induction,
           nchotomy=staff_nchotomy,
           size=SOME(Parse.Term`(example1$staff_size) :example1$staff -> num$num`,
                     ORIG staff_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME staff_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2staff_thm staff2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "example1"
end
