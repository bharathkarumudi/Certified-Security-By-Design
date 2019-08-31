structure question1Theory :> question1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading question1Theory ... " else ()
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
          ("question1",
          Arbnum.fromString "1566506459",
          Arbnum.fromString "920124")
          [("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "question1"
       [("staff", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("question1", "commands"), ID("min", "fun"), ID("num", "num"),
   ID("question1", "staff"), ID("aclfoundation", "Kripke"),
   ID("aclfoundation", "po"), ID("min", "bool"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("question1", "Amtrack"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("bool", "COND"), ID("bool", "DATATYPE"),
   ID("question1", "Jack"), ID("arithmetic", "NUMERAL"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("bool", "TYPE_DEFINITION"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("question1", "commands2num"),
   ID("question1", "commands_CASE"), ID("question1", "commands_size"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "Form"),
   ID("question1", "deny"), ID("aclfoundation", "impf"),
   ID("question1", "num2commands"), ID("question1", "num2staff"),
   ID("aclfoundation", "prop"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("question1", "staff2num"),
   ID("question1", "staff_CASE"), ID("question1", "staff_size"),
   ID("question1", "travel"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 4, 5], TYOP [1, 2, 6], TYOP [1, 1, 2], TYOP [1, 1, 0],
   TYOP [1, 0, 1], TYOP [1, 0, 6], TYV "'e", TYV "'d", TYV "'b",
   TYOP [4, 0, 14, 2, 13, 12], TYOP [5, 13], TYOP [5, 12], TYOP [6],
   TYOP [1, 0, 18], TYOP [1, 2, 18], TYOP [1, 0, 19], TYOP [1, 0, 4],
   TYOP [1, 2, 4], TYOP [1, 2, 20], TYOP [1, 4, 18], TYOP [1, 25, 18],
   TYOP [1, 19, 18], TYOP [1, 27, 18], TYOP [1, 20, 18], TYOP [1, 29, 18],
   TYOP [1, 1, 18], TYOP [1, 31, 18], TYOP [9, 16, 17], TYOP [9, 15, 33],
   TYOP [1, 33, 34], TYOP [1, 15, 35], TYOP [1, 17, 33], TYOP [1, 16, 37],
   TYOP [1, 18, 18], TYOP [1, 18, 39], TYOP [1, 1, 31], TYOP [1, 4, 25],
   TYOP [1, 22, 18], TYOP [1, 43, 18], TYOP [1, 10, 18], TYOP [1, 45, 18],
   TYOP [1, 23, 18], TYOP [1, 47, 18], TYOP [1, 3, 18], TYOP [1, 49, 18],
   TYOP [1, 1, 1], TYOP [1, 18, 6], TYOP [24, 2], TYOP [1, 2, 53],
   TYOP [1, 31, 45], TYOP [1, 31, 49], TYOP [32, 0, 2, 13, 12],
   TYOP [1, 57, 57], TYOP [1, 53, 58], TYOP [1, 57, 58], TYOP [1, 0, 57],
   TYOP [1, 57, 18], TYOP [1, 34, 62]]
  end
  val _ = Theory.incorporate_consts "question1" tyvector
     [("travel", 0), ("staff_size", 3), ("staff_CASE", 7),
      ("staff2num", 3), ("num2staff", 8), ("num2commands", 9), ("deny", 0),
      ("commands_size", 10), ("commands_CASE", 11), ("commands2num", 10),
      ("Jack", 2), ("Amtrack", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 15), TMV("M", 0), TMV("M", 2), TMV("M'", 0), TMV("M'", 2),
   TMV("Oi", 16), TMV("Os", 17), TMV("P", 19), TMV("P", 20), TMV("a", 0),
   TMV("a", 2), TMV("a'", 0), TMV("a'", 2), TMV("commands", 21),
   TMV("f", 22), TMV("f", 23), TMV("m", 1), TMV("n", 1), TMV("r", 1),
   TMV("r'", 1), TMV("rep", 10), TMV("rep", 3), TMV("staff", 24),
   TMV("v0", 4), TMV("v0'", 4), TMV("v1", 4), TMV("v1'", 4), TMV("x", 0),
   TMV("x", 2), TMV("x0", 4), TMV("x1", 4), TMC(7, 26), TMC(7, 27),
   TMC(7, 28), TMC(7, 30), TMC(7, 32), TMC(7, 29), TMC(8, 36), TMC(8, 38),
   TMC(10, 40), TMC(11, 1), TMC(12, 41), TMC(13, 42), TMC(13, 40),
   TMC(13, 21), TMC(13, 41), TMC(13, 24), TMC(14, 40), TMC(15, 27),
   TMC(15, 44), TMC(15, 46), TMC(15, 48), TMC(15, 50), TMC(15, 32),
   TMC(15, 29), TMC(16, 2), TMC(17, 51), TMC(18, 51), TMC(19, 52),
   TMC(20, 39), TMC(21, 2), TMC(22, 51), TMC(23, 54), TMC(25, 55),
   TMC(25, 56), TMC(26, 1), TMC(27, 40), TMC(28, 10), TMC(29, 11),
   TMC(30, 10), TMC(31, 59), TMC(33, 0), TMC(34, 60), TMC(35, 9),
   TMC(36, 8), TMC(37, 61), TMC(38, 63), TMC(39, 59), TMC(40, 3),
   TMC(41, 7), TMC(42, 3), TMC(43, 0), TMC(44, 39)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("question1",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%50%20%63%17%41$0@%61%57%65@3|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("question1",1),
                [("bool",[116]),("question1",[0])]),["DISK_THM"]),
               [ThmBind.read"%39%32%9%44%73%67$0@3$0@|@2%35%18%43%17%41$0@%61%57%65@3|$0@2%45%67%73$0@3$0@2|@2"])


  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("question1",13),[]),[]),
               [ThmBind.read"%32%27%45%69$0@2%40@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("question1",14),[]),[]),
               [ThmBind.read"%32%27%31%23%31%25%42%68$2@$1@$0@2%16%58%45$0@%40@2$2@$1@|%67$2@3|@|@|@"])
  fun op staff_TY_DEF x = x
    val op staff_TY_DEF =
    ThmBind.DT(((("question1",22),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%52%21%64%17%41$0@%61%57%65@3|@$0@|@"])
  fun op staff_BIJ x = x
    val op staff_BIJ =
    ThmBind.DT(((("question1",23),
                [("bool",[116]),("question1",[22])]),["DISK_THM"]),
               [ThmBind.read"%39%36%10%46%74%78$0@3$0@|@2%35%18%43%17%41$0@%61%57%65@3|$0@2%45%78%74$0@3$0@2|@2"])


  fun op staff_size_def x = x
    val op staff_size_def =
    ThmBind.DT(((("question1",35),[]),[]),
               [ThmBind.read"%36%28%45%80$0@2%40@|@"])
  fun op staff_CASE x = x
    val op staff_CASE =
    ThmBind.DT(((("question1",36),[]),[]),
               [ThmBind.read"%36%28%31%23%31%25%42%79$2@$1@$0@2%16%58%45$0@%40@2$2@$1@|%78$2@3|@|@|@"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("question1",2),[("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%32%9%44%73%67$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("question1",3),[("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%18%43%41$0@%61%57%65@4%45%67%73$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("question1",4),
                [("bool",[26]),("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%18%35%19%47%41$1@%61%57%65@4%47%41$0@%61%57%65@4%43%44%73$1@2%73$0@3%45$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("question1",5),
                [("bool",[26]),("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%32%9%32%11%43%45%67$1@2%67$0@3%44$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("question1",6),
                [("bool",[25,62]),("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%32%9%53%18%39%44$1@%73$0@3%41$0@%61%57%65@4|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("question1",7),
                [("bool",[26]),("question1",[1])]),["DISK_THM"]),
               [ThmBind.read"%35%18%43%41$0@%61%57%65@4%48%9%45$1@%67$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("question1",10),[("question1",[8,9])]),[]),
               [ThmBind.read"%39%44%73%40@2%81@2%44%73%61%56%65@4%71@2"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("question1",11),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("question1",[3,8,9])]),["DISK_THM"]),
               [ThmBind.read"%39%45%67%81@2%40@2%45%67%71@2%61%56%65@4"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("question1",12),
                [("bool",[57]),("question1",[5])]),["DISK_THM"]),
               [ThmBind.read"%32%9%32%11%43%44$1@$0@2%45%67$1@2%67$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("question1",15),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("question1",[11,14])]),["DISK_THM"]),
               [ThmBind.read"%39%31%23%31%25%42%68%81@$1@$0@2$1@|@|@2%31%23%31%25%42%68%71@$1@$0@2$0@|@|@2"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("question1",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%59%13%81@%71@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("question1",17),
                [("numeral",[3,6]),("question1",[11,12])]),["DISK_THM"]),
               [ThmBind.read"%82%44%81@%71@2"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("question1",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[6,8,9,15]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%32%1%32%3%31%23%31%25%47%39%44$3@$2@2%39%47%44$2@%81@2%42$1@%24@3%47%44$2@%71@2%42$0@%26@5%42%68$3@$1@$0@2%68$2@%24@%26@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("question1",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[6,8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%32%9%66%44$0@%81@2%44$0@%71@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("question1",20),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("question1",[11])]),["DISK_THM"]),
               [ThmBind.read"%31%29%31%30%49%14%39%42$0%81@2$2@2%42$0%71@2$1@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("question1",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[6,8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%33%7%47%39$0%71@2$0%81@3%32%9$1$0@|@2|@"])
  fun op num2staff_staff2num x = x
    val op num2staff_staff2num =
    ThmBind.DT(((("question1",24),[("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%36%10%46%74%78$0@3$0@|@"])
  fun op staff2num_num2staff x = x
    val op staff2num_num2staff =
    ThmBind.DT(((("question1",25),[("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%35%18%43%41$0@%61%57%65@4%45%78%74$0@3$0@2|@"])
  fun op num2staff_11 x = x
    val op num2staff_11 =
    ThmBind.DT(((("question1",26),
                [("bool",[26]),("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%35%18%35%19%47%41$1@%61%57%65@4%47%41$0@%61%57%65@4%43%46%74$1@2%74$0@3%45$1@$0@4|@|@"])
  fun op staff2num_11 x = x
    val op staff2num_11 =
    ThmBind.DT(((("question1",27),
                [("bool",[26]),("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%36%10%36%12%43%45%78$1@2%78$0@3%46$1@$0@2|@|@"])
  fun op num2staff_ONTO x = x
    val op num2staff_ONTO =
    ThmBind.DT(((("question1",28),
                [("bool",[25,62]),("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%36%10%53%18%39%46$1@%74$0@3%41$0@%61%57%65@4|@|@"])
  fun op staff2num_ONTO x = x
    val op staff2num_ONTO =
    ThmBind.DT(((("question1",29),
                [("bool",[26]),("question1",[23])]),["DISK_THM"]),
               [ThmBind.read"%35%18%43%41$0@%61%57%65@4%54%10%45$1@%78$0@2|@2|@"])
  fun op num2staff_thm x = x
    val op num2staff_thm =
    ThmBind.DT(((("question1",32),[("question1",[30,31])]),[]),
               [ThmBind.read"%39%46%74%40@2%60@2%46%74%61%56%65@4%55@2"])
  fun op staff2num_thm x = x
    val op staff2num_thm =
    ThmBind.DT(((("question1",33),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("question1",[25,30,31])]),["DISK_THM"]),
               [ThmBind.read"%39%45%78%60@2%40@2%45%78%55@2%61%56%65@4"])
  fun op staff_EQ_staff x = x
    val op staff_EQ_staff =
    ThmBind.DT(((("question1",34),
                [("bool",[57]),("question1",[27])]),["DISK_THM"]),
               [ThmBind.read"%36%10%36%12%43%46$1@$0@2%45%78$1@2%78$0@3|@|@"])
  fun op staff_case_def x = x
    val op staff_case_def =
    ThmBind.DT(((("question1",37),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("question1",[33,36])]),["DISK_THM"]),
               [ThmBind.read"%39%31%23%31%25%42%79%60@$1@$0@2$1@|@|@2%31%23%31%25%42%79%55@$1@$0@2$0@|@|@2"])
  fun op datatype_staff x = x
    val op datatype_staff =
    ThmBind.DT(((("question1",38),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%59%22%60@%55@2"])
  fun op staff_distinct x = x
    val op staff_distinct =
    ThmBind.DT(((("question1",39),
                [("numeral",[3,6]),("question1",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%82%46%60@%55@2"])
  fun op staff_case_cong x = x
    val op staff_case_cong =
    ThmBind.DT(((("question1",40),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[28,30,31,37]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%36%2%36%4%31%23%31%25%47%39%46$3@$2@2%39%47%46$2@%60@2%42$1@%24@3%47%46$2@%55@2%42$0@%26@5%42%79$3@$1@$0@2%79$2@%24@%26@3|@|@|@|@"])
  fun op staff_nchotomy x = x
    val op staff_nchotomy =
    ThmBind.DT(((("question1",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[28,30,31]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%36%10%66%46$0@%60@2%46$0@%55@2|@"])
  fun op staff_Axiom x = x
    val op staff_Axiom =
    ThmBind.DT(((("question1",42),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("question1",[33])]),["DISK_THM"]),
               [ThmBind.read"%31%29%31%30%51%15%39%42$0%60@2$2@2%42$0%55@2$1@2|@|@|@"])
  fun op staff_induction x = x
    val op staff_induction =
    ThmBind.DT(((("question1",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question1",[28,30,31]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%34%8%47%39$0%55@2$0%60@3%36%10$1$0@|@2|@"])
  fun op question1Thm x = x
    val op question1Thm =
    ThmBind.DT(((("question1",44),
                [("aclDrules",[3]),("aclrules",[23,24])]),["DISK_THM"]),
               [ThmBind.read"%76%37%0@%38%5@%6@3%77%62%60@2%75%71@3",
                ThmBind.read"%76%37%0@%38%5@%6@3%70%62%60@2%75%81@3",
                ThmBind.read"%76%37%0@%38%5@%6@3%72%75%81@2%75%71@3",
                ThmBind.read"%76%37%0@%38%5@%6@3%77%62%60@2%75%81@3"])

  val _ = DB.bindl "question1"
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
   ("staff_induction",staff_induction,DB.Thm),
   ("question1Thm",question1Thm,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "question1",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY9.question1,8.commandsNTY9.question1,5.staff"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "question1",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num3.%67OO12.num2commands3.%73OO6.travel3.%81OO4.deny3.%71OO13.commands_size3.%69OO13.commands_CASE3.%68OO4.case3.%68OO9.staff2num3.%78OO9.num2staff3.%74OO4.Jack3.%60OO7.Amtrack3.%55OO10.staff_size3.%80OO10.staff_CASE3.%79OO4.case3.%79"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val question1_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="question1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val question1_grammars = 
    Portable.## (addtyUDs,addtmUDs) question1_grammars
  val _ = Parse.grammarDB_insert("question1",question1_grammars)
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
           size=SOME(Parse.Term`(question1$commands_size) :question1$commands -> num$num`,
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
           size=SOME(Parse.Term`(question1$staff_size) :question1$staff -> num$num`,
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
val _ = Theory.load_complete "question1"
end
