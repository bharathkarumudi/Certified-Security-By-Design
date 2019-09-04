structure question2Theory :> question2Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading question2Theory ... " else ()
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
          ("question2",
          Arbnum.fromString "1567560763",
          Arbnum.fromString "145680")
          [("aclDrules",
           Arbnum.fromString "1534466515",
           Arbnum.fromString "648647")];
  val _ = Theory.incorporate_types "question2"
       [("roles", 0), ("principals", 0), ("people", 0), ("keyPrinc", 0),
        ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("question2", "roles"),
   ID("question2", "principals"), ID("question2", "keyPrinc"),
   ID("question2", "people"), ID("question2", "commands"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "ARB"),
   ID("question2", "Alice"), ID("question2", "Ap"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("question2", "Bob"), ID("bool", "COND"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("question2", "Key"), ID("arithmetic", "NUMERAL"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("question2", "PR"), ID("question2", "Role"), ID("num", "SUC"),
   ID("question2", "Staff"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("question2", "commands2num"), ID("question2", "commands_CASE"),
   ID("question2", "commands_size"), ID("aclfoundation", "controls"),
   ID("aclfoundation", "Form"), ID("question2", "debit"),
   ID("aclfoundation", "impf"), ID("question2", "keyPrinc_CASE"),
   ID("question2", "keyPrinc_size"), ID("question2", "num2commands"),
   ID("question2", "num2people"), ID("question2", "num2roles"),
   ID("question2", "pay"), ID("question2", "payee"),
   ID("question2", "payer"), ID("question2", "people2num"),
   ID("question2", "people_CASE"), ID("question2", "people_size"),
   ID("question2", "principals_CASE"), ID("question2", "principals_size"),
   ID("aclfoundation", "prop"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("question2", "roles2num"),
   ID("question2", "roles_CASE"), ID("question2", "roles_size"),
   ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 1, 5], TYOP [3], TYOP [0, 7, 0], TYOP [4],
   TYOP [0, 9, 3], TYOP [0, 10, 3], TYOP [0, 10, 11], TYOP [0, 7, 12],
   TYOP [5], TYOP [0, 14, 0], TYOP [0, 14, 5], TYOP [6], TYOP [0, 0, 1],
   TYOP [0, 0, 14], TYOP [0, 0, 17], TYOP [0, 9, 0], TYOP [0, 0, 3],
   TYOP [0, 22, 3], TYOP [0, 1, 3], TYOP [0, 24, 23], TYOP [0, 14, 3],
   TYOP [0, 26, 25], TYOP [0, 9, 27], TYOP [0, 17, 0], TYOP [0, 17, 5],
   TYOP [0, 14, 9], TYOP [0, 1, 9], TYOP [0, 9, 7], TYOP [0, 0, 9],
   TYOP [7], TYOP [9, 1, 0], TYOP [9, 14, 36], TYOP [8, 37],
   TYOP [0, 38, 35], TYOP [8, 9], TYOP [0, 40, 35], TYV "'e", TYV "'d",
   TYV "'b", TYOP [10, 17, 44, 7, 43, 42], TYOP [11, 43], TYOP [11, 42],
   TYOP [0, 17, 35], TYOP [0, 9, 35], TYOP [0, 14, 35], TYOP [0, 7, 35],
   TYOP [0, 1, 35], TYOP [0, 17, 48], TYOP [0, 17, 3], TYOP [0, 7, 3],
   TYOP [0, 34, 35], TYOP [0, 32, 56], TYOP [0, 31, 57], TYOP [0, 14, 50],
   TYOP [0, 33, 35], TYOP [0, 33, 60], TYOP [0, 9, 38], TYOP [0, 7, 40],
   TYOP [0, 1, 52], TYOP [0, 3, 35], TYOP [0, 65, 35], TYOP [0, 48, 35],
   TYOP [0, 67, 35], TYOP [0, 10, 35], TYOP [0, 69, 35], TYOP [0, 49, 35],
   TYOP [0, 71, 35], TYOP [0, 22, 35], TYOP [0, 73, 35], TYOP [0, 26, 35],
   TYOP [0, 75, 35], TYOP [0, 50, 35], TYOP [0, 77, 35], TYOP [0, 51, 35],
   TYOP [0, 79, 35], TYOP [0, 41, 35], TYOP [0, 81, 35], TYOP [0, 39, 35],
   TYOP [0, 83, 35], TYOP [0, 24, 35], TYOP [0, 85, 35], TYOP [0, 52, 35],
   TYOP [0, 87, 35], TYOP [0, 0, 35], TYOP [0, 89, 35], TYOP [0, 0, 0],
   TYOP [0, 0, 91], TYOP [9, 46, 47], TYOP [9, 45, 93], TYOP [0, 93, 94],
   TYOP [0, 45, 95], TYOP [0, 36, 37], TYOP [0, 14, 97], TYOP [0, 47, 93],
   TYOP [0, 46, 99], TYOP [0, 0, 36], TYOP [0, 1, 101], TYOP [0, 35, 35],
   TYOP [0, 35, 103], TYOP [0, 0, 89], TYOP [0, 3, 65], TYOP [0, 9, 49],
   TYOP [0, 7, 51], TYOP [0, 40, 41], TYOP [0, 38, 39], TYOP [0, 54, 35],
   TYOP [0, 111, 35], TYOP [0, 29, 35], TYOP [0, 113, 35],
   TYOP [0, 62, 35], TYOP [0, 115, 35], TYOP [0, 15, 35],
   TYOP [0, 117, 35], TYOP [0, 55, 35], TYOP [0, 119, 35],
   TYOP [0, 63, 35], TYOP [0, 121, 35], TYOP [0, 2, 35], TYOP [0, 123, 35],
   TYOP [0, 35, 5], TYOP [0, 0, 40], TYOP [0, 126, 40], TYOP [0, 9, 127],
   TYOP [0, 0, 128], TYOP [0, 0, 38], TYOP [0, 130, 38], TYOP [0, 37, 131],
   TYOP [0, 0, 132], TYOP [34, 7], TYOP [0, 7, 134], TYOP [0, 89, 113],
   TYOP [0, 89, 117], TYOP [0, 89, 123], TYOP [0, 41, 121],
   TYOP [0, 39, 115], TYOP [46, 17, 7, 43, 42], TYOP [0, 141, 141],
   TYOP [0, 134, 142], TYOP [0, 141, 142], TYOP [0, 17, 141],
   TYOP [0, 134, 134], TYOP [0, 134, 146], TYOP [0, 134, 143],
   TYOP [0, 141, 35], TYOP [0, 94, 149], TYOP [0, 134, 141],
   TYOP [0, 134, 151]]
  end
  val _ = Theory.incorporate_consts "question2" tyvector
     [("roles_size", 2), ("roles_CASE", 6), ("roles2num", 2),
      ("principals_size", 8), ("principals_CASE", 13), ("people_size", 15),
      ("people_CASE", 16), ("people2num", 15), ("payer", 1), ("payee", 1),
      ("pay", 17), ("num2roles", 18), ("num2people", 19),
      ("num2commands", 20), ("keyPrinc_size", 21), ("keyPrinc_CASE", 28),
      ("debit", 17), ("commands_size", 29), ("commands_CASE", 30),
      ("commands2num", 29), ("Staff", 31), ("Role", 32), ("PR", 33),
      ("Key", 33), ("Bob", 14), ("Ap", 34), ("Alice", 14)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'keyPrinc'", 39), TMV("'principals'", 41), TMV("M", 45),
   TMV("M", 17), TMV("M", 9), TMV("M", 14), TMV("M", 7), TMV("M", 1),
   TMV("M'", 17), TMV("M'", 9), TMV("M'", 14), TMV("M'", 7), TMV("M'", 1),
   TMV("Oi", 46), TMV("Operator", 1), TMV("Os", 47), TMV("P", 48),
   TMV("P", 49), TMV("P", 50), TMV("P", 51), TMV("P", 52), TMV("a", 17),
   TMV("a", 9), TMV("a", 0), TMV("a", 14), TMV("a", 1), TMV("a'", 17),
   TMV("a'", 9), TMV("a'", 0), TMV("a'", 14), TMV("a'", 1), TMV("a0", 40),
   TMV("a0", 38), TMV("commands", 53), TMV("f", 54), TMV("f", 10),
   TMV("f", 26), TMV("f", 24), TMV("f'", 10), TMV("f'", 26), TMV("f0", 10),
   TMV("f0", 26), TMV("f1", 10), TMV("f1", 24), TMV("f1'", 10),
   TMV("f1'", 24), TMV("f2", 22), TMV("f2'", 22), TMV("fn", 10),
   TMV("fn", 55), TMV("k", 9), TMV("keyPrinc", 58), TMV("kk", 9),
   TMV("m", 0), TMV("n", 0), TMV("p", 14), TMV("p", 7), TMV("people", 59),
   TMV("pp", 7), TMV("principals", 61), TMV("r", 0), TMV("r", 1),
   TMV("r'", 0), TMV("rep", 29), TMV("rep", 62), TMV("rep", 15),
   TMV("rep", 63), TMV("rep", 2), TMV("roles", 64), TMV("v0", 3),
   TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("x", 17), TMV("x", 14),
   TMV("x", 1), TMV("x0", 3), TMV("x1", 3), TMC(12, 66), TMC(12, 67),
   TMC(12, 68), TMC(12, 70), TMC(12, 72), TMC(12, 74), TMC(12, 76),
   TMC(12, 78), TMC(12, 80), TMC(12, 82), TMC(12, 84), TMC(12, 86),
   TMC(12, 88), TMC(12, 71), TMC(12, 90), TMC(12, 77), TMC(12, 79),
   TMC(12, 81), TMC(12, 83), TMC(12, 87), TMC(13, 92), TMC(14, 96),
   TMC(14, 98), TMC(14, 100), TMC(14, 102), TMC(15, 104), TMC(16, 0),
   TMC(17, 105), TMC(18, 106), TMC(18, 104), TMC(18, 53), TMC(18, 107),
   TMC(18, 105), TMC(18, 59), TMC(18, 108), TMC(18, 109), TMC(18, 110),
   TMC(18, 64), TMC(19, 104), TMC(20, 67), TMC(20, 112), TMC(20, 114),
   TMC(20, 70), TMC(20, 116), TMC(20, 76), TMC(20, 118), TMC(20, 120),
   TMC(20, 122), TMC(20, 86), TMC(20, 124), TMC(20, 71), TMC(20, 90),
   TMC(20, 77), TMC(20, 87), TMC(21, 0), TMC(21, 14), TMC(21, 1),
   TMC(22, 14), TMC(23, 34), TMC(24, 91), TMC(25, 91), TMC(26, 40),
   TMC(26, 38), TMC(27, 14), TMC(28, 125), TMC(29, 129), TMC(29, 133),
   TMC(30, 103), TMC(31, 33), TMC(32, 91), TMC(33, 135), TMC(35, 33),
   TMC(36, 32), TMC(37, 91), TMC(38, 31), TMC(39, 136), TMC(39, 137),
   TMC(39, 138), TMC(39, 139), TMC(39, 140), TMC(40, 0), TMC(41, 104),
   TMC(42, 29), TMC(43, 30), TMC(44, 29), TMC(45, 143), TMC(47, 17),
   TMC(48, 144), TMC(49, 28), TMC(50, 21), TMC(51, 20), TMC(52, 19),
   TMC(53, 18), TMC(54, 17), TMC(55, 1), TMC(56, 1), TMC(57, 15),
   TMC(58, 16), TMC(59, 15), TMC(60, 13), TMC(61, 8), TMC(62, 145),
   TMC(63, 147), TMC(64, 148), TMC(65, 2), TMC(66, 6), TMC(67, 2),
   TMC(68, 150), TMC(69, 143), TMC(70, 152), TMC(71, 103)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("question2",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%119%63%153%54%105$0@%147%138%158@3|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("question2",1),
                [("bool",[116]),("question2",[0])]),["DISK_THM"]),
               [ThmBind.read"%103%79%21%108%168%160$0@3$0@|@2%92%60%107%54%105$0@%147%138%158@3|$0@2%110%160%168$0@3$0@2|@2"])


  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("question2",13),[]),[]),
               [ThmBind.read"%79%73%110%162$0@2%104@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("question2",14),[]),[]),
               [ThmBind.read"%79%73%78%69%78%71%106%161$2@$1@$0@2%53%142%110$0@%104@2$2@$1@|%160$2@3|@|@|@"])
  fun op people_TY_DEF x = x
    val op people_TY_DEF =
    ThmBind.DT(((("question2",22),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%123%65%154%54%105$0@%147%138%158@3|@$0@|@"])
  fun op people_BIJ x = x
    val op people_BIJ =
    ThmBind.DT(((("question2",23),
                [("bool",[116]),("question2",[22])]),["DISK_THM"]),
               [ThmBind.read"%103%93%24%111%169%174$0@3$0@|@2%92%60%107%54%105$0@%147%138%158@3|$0@2%110%174%169$0@3$0@2|@2"])


  fun op people_size_def x = x
    val op people_size_def =
    ThmBind.DT(((("question2",35),[]),[]),
               [ThmBind.read"%93%74%110%176$0@2%104@|@"])
  fun op people_CASE x = x
    val op people_CASE =
    ThmBind.DT(((("question2",36),[]),[]),
               [ThmBind.read"%93%74%78%69%78%71%106%175$2@$1@$0@2%53%142%110$0@%104@2$2@$1@|%174$2@3|@|@|@"])
  fun op roles_TY_DEF x = x
    val op roles_TY_DEF =
    ThmBind.DT(((("question2",44),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%127%67%155%54%105$0@%147%138%158@3|@$0@|@"])
  fun op roles_BIJ x = x
    val op roles_BIJ =
    ThmBind.DT(((("question2",45),
                [("bool",[116]),("question2",[44])]),["DISK_THM"]),
               [ThmBind.read"%103%97%25%115%170%182$0@3$0@|@2%92%60%107%54%105$0@%147%138%158@3|$0@2%110%182%170$0@3$0@2|@2"])


  fun op roles_size_def x = x
    val op roles_size_def =
    ThmBind.DT(((("question2",57),[]),[]),
               [ThmBind.read"%97%75%110%184$0@2%104@|@"])
  fun op roles_CASE x = x
    val op roles_CASE =
    ThmBind.DT(((("question2",58),[]),[]),
               [ThmBind.read"%97%75%78%69%78%71%106%183$2@$1@$0@2%53%142%110$0@%104@2$2@$1@|%182$2@3|@|@|@"])
  fun op keyPrinc_TY_DEF x = x
    val op keyPrinc_TY_DEF =
    ThmBind.DT(((("question2",66),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%121%64%157%32%88%0%116%96%32%116%159%130%24%114$1@%24%144%104@%100$0@%102%134@%132@3%54%140|@|$0@2|@2%159%131%25%114$1@%25%144%151%104@2%100%133@%102$0@%132@3%54%140|@|$0@2|@2%129%23%114$1@%23%144%151%151%104@3%100%133@%102%134@$0@3%54%140|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op keyPrinc_case_def x = x
    val op keyPrinc_case_def =
    ThmBind.DT(((("question2",74),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%103%93%24%84%36%89%43%83%46%106%166%152$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%103%97%25%84%36%89%43%83%46%106%166%150$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%92%23%84%36%89%43%83%46%106%166%136$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op keyPrinc_size_def x = x
    val op keyPrinc_size_def =
    ThmBind.DT(((("question2",75),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%103%93%24%110%167%152$0@3%98%147%137%158@3%176$0@3|@2%103%97%25%110%167%150$0@3%98%147%137%158@3%184$0@3|@2%92%23%110%167%136$0@3%98%147%137%158@3$0@2|@3"])
  fun op principals_TY_DEF x = x
    val op principals_TY_DEF =
    ThmBind.DT(((("question2",83),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%125%66%156%31%87%1%116%95%31%116%159%128%22%113$1@%22%143%104@$0@%54%139|@|$0@2|@2%128%22%113$1@%22%143%151%104@2$0@%54%139|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op principals_case_def x = x
    val op principals_case_def =
    ThmBind.DT(((("question2",89),
                [("bool",[26,180]),("ind_type",[33,34]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%103%91%22%81%35%81%42%106%177%149$2@2$1@$0@2$1$2@2|@|@|@2%91%22%81%35%81%42%106%177%146$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op principals_size_def x = x
    val op principals_size_def =
    ThmBind.DT(((("question2",90),
                [("bool",[26,180]),("ind_type",[33,34]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%103%91%22%110%178%149$0@3%98%147%137%158@3%167$0@3|@2%91%22%110%178%146$0@3%98%147%137%158@3%167$0@3|@2"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("question2",2),[("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%79%21%108%168%160$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("question2",3),[("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%110%160%168$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("question2",4),
                [("bool",[26]),("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%92%60%92%62%116%105$1@%147%138%158@4%116%105$0@%147%138%158@4%107%108%168$1@2%168$0@3%110$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("question2",5),
                [("bool",[26]),("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%79%21%79%26%107%110%160$1@2%160$0@3%108$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("question2",6),
                [("bool",[25,62]),("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%79%21%129%60%103%108$1@%168$0@3%105$0@%147%138%158@4|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("question2",7),
                [("bool",[26]),("question2",[1])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%117%21%110$1@%160$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("question2",10),[("question2",[8,9])]),[]),
               [ThmBind.read"%103%108%168%104@2%171@2%108%168%147%137%158@4%164@2"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("question2",11),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("question2",[3,8,9])]),["DISK_THM"]),
               [ThmBind.read"%103%110%160%171@2%104@2%110%160%164@2%147%137%158@4"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("question2",12),
                [("bool",[57]),("question2",[5])]),["DISK_THM"]),
               [ThmBind.read"%79%21%79%26%107%108$1@$0@2%110%160$1@2%160$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("question2",15),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("question2",[11,14])]),["DISK_THM"]),
               [ThmBind.read"%103%78%69%78%71%106%161%171@$1@$0@2$1@|@|@2%78%69%78%71%106%161%164@$1@$0@2$0@|@|@2"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("question2",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%145%33%171@%164@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("question2",17),
                [("numeral",[3,6]),("question2",[11,12])]),["DISK_THM"]),
               [ThmBind.read"%188%108%171@%164@2"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("question2",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[6,8,9,15]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%79%3%79%8%78%69%78%71%116%103%108$3@$2@2%103%116%108$2@%171@2%106$1@%70@3%116%108$2@%164@2%106$0@%72@5%106%161$3@$1@$0@2%161$2@%70@%72@3|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("question2",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[6,8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%79%21%159%108$0@%171@2%108$0@%164@2|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("question2",20),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("question2",[11])]),["DISK_THM"]),
               [ThmBind.read"%78%76%78%77%118%34%103%106$0%171@2$2@2%106$0%164@2$1@2|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("question2",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[6,8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%80%16%116%103$0%164@2$0%171@3%79%21$1$0@|@2|@"])
  fun op num2people_people2num x = x
    val op num2people_people2num =
    ThmBind.DT(((("question2",24),[("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%93%24%111%169%174$0@3$0@|@"])
  fun op people2num_num2people x = x
    val op people2num_num2people =
    ThmBind.DT(((("question2",25),[("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%110%174%169$0@3$0@2|@"])
  fun op num2people_11 x = x
    val op num2people_11 =
    ThmBind.DT(((("question2",26),
                [("bool",[26]),("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%92%60%92%62%116%105$1@%147%138%158@4%116%105$0@%147%138%158@4%107%111%169$1@2%169$0@3%110$1@$0@4|@|@"])
  fun op people2num_11 x = x
    val op people2num_11 =
    ThmBind.DT(((("question2",27),
                [("bool",[26]),("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%93%24%93%29%107%110%174$1@2%174$0@3%111$1@$0@2|@|@"])
  fun op num2people_ONTO x = x
    val op num2people_ONTO =
    ThmBind.DT(((("question2",28),
                [("bool",[25,62]),("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%93%24%129%60%103%111$1@%169$0@3%105$0@%147%138%158@4|@|@"])
  fun op people2num_ONTO x = x
    val op people2num_ONTO =
    ThmBind.DT(((("question2",29),
                [("bool",[26]),("question2",[23])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%130%24%110$1@%174$0@2|@2|@"])
  fun op num2people_thm x = x
    val op num2people_thm =
    ThmBind.DT(((("question2",32),[("question2",[30,31])]),[]),
               [ThmBind.read"%103%111%169%104@2%135@2%111%169%147%137%158@4%141@2"])
  fun op people2num_thm x = x
    val op people2num_thm =
    ThmBind.DT(((("question2",33),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("question2",[25,30,31])]),["DISK_THM"]),
               [ThmBind.read"%103%110%174%135@2%104@2%110%174%141@2%147%137%158@4"])
  fun op people_EQ_people x = x
    val op people_EQ_people =
    ThmBind.DT(((("question2",34),
                [("bool",[57]),("question2",[27])]),["DISK_THM"]),
               [ThmBind.read"%93%24%93%29%107%111$1@$0@2%110%174$1@2%174$0@3|@|@"])
  fun op people_case_def x = x
    val op people_case_def =
    ThmBind.DT(((("question2",37),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("question2",[33,36])]),["DISK_THM"]),
               [ThmBind.read"%103%78%69%78%71%106%175%135@$1@$0@2$1@|@|@2%78%69%78%71%106%175%141@$1@$0@2$0@|@|@2"])
  fun op datatype_people x = x
    val op datatype_people =
    ThmBind.DT(((("question2",38),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%145%57%135@%141@2"])
  fun op people_distinct x = x
    val op people_distinct =
    ThmBind.DT(((("question2",39),
                [("numeral",[3,6]),("question2",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%188%111%135@%141@2"])
  fun op people_case_cong x = x
    val op people_case_cong =
    ThmBind.DT(((("question2",40),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[28,30,31,37]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%93%5%93%10%78%69%78%71%116%103%111$3@$2@2%103%116%111$2@%135@2%106$1@%70@3%116%111$2@%141@2%106$0@%72@5%106%175$3@$1@$0@2%175$2@%70@%72@3|@|@|@|@"])
  fun op people_nchotomy x = x
    val op people_nchotomy =
    ThmBind.DT(((("question2",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[28,30,31]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%93%24%159%111$0@%135@2%111$0@%141@2|@"])
  fun op people_Axiom x = x
    val op people_Axiom =
    ThmBind.DT(((("question2",42),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("question2",[33])]),["DISK_THM"]),
               [ThmBind.read"%78%76%78%77%122%36%103%106$0%135@2$2@2%106$0%141@2$1@2|@|@|@"])
  fun op people_induction x = x
    val op people_induction =
    ThmBind.DT(((("question2",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[28,30,31]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%85%18%116%103$0%135@2$0%141@3%93%24$1$0@|@2|@"])
  fun op num2roles_roles2num x = x
    val op num2roles_roles2num =
    ThmBind.DT(((("question2",46),[("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%97%25%115%170%182$0@3$0@|@"])
  fun op roles2num_num2roles x = x
    val op roles2num_num2roles =
    ThmBind.DT(((("question2",47),[("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%110%182%170$0@3$0@2|@"])
  fun op num2roles_11 x = x
    val op num2roles_11 =
    ThmBind.DT(((("question2",48),
                [("bool",[26]),("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%60%92%62%116%105$1@%147%138%158@4%116%105$0@%147%138%158@4%107%115%170$1@2%170$0@3%110$1@$0@4|@|@"])
  fun op roles2num_11 x = x
    val op roles2num_11 =
    ThmBind.DT(((("question2",49),
                [("bool",[26]),("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%97%25%97%30%107%110%182$1@2%182$0@3%115$1@$0@2|@|@"])
  fun op num2roles_ONTO x = x
    val op num2roles_ONTO =
    ThmBind.DT(((("question2",50),
                [("bool",[25,62]),("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%97%25%129%60%103%115$1@%170$0@3%105$0@%147%138%158@4|@|@"])
  fun op roles2num_ONTO x = x
    val op roles2num_ONTO =
    ThmBind.DT(((("question2",51),
                [("bool",[26]),("question2",[45])]),["DISK_THM"]),
               [ThmBind.read"%92%60%107%105$0@%147%138%158@4%131%25%110$1@%182$0@2|@2|@"])
  fun op num2roles_thm x = x
    val op num2roles_thm =
    ThmBind.DT(((("question2",54),[("question2",[52,53])]),[]),
               [ThmBind.read"%103%115%170%104@2%173@2%115%170%147%137%158@4%172@2"])
  fun op roles2num_thm x = x
    val op roles2num_thm =
    ThmBind.DT(((("question2",55),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("question2",[47,52,53])]),["DISK_THM"]),
               [ThmBind.read"%103%110%182%173@2%104@2%110%182%172@2%147%137%158@4"])
  fun op roles_EQ_roles x = x
    val op roles_EQ_roles =
    ThmBind.DT(((("question2",56),
                [("bool",[57]),("question2",[49])]),["DISK_THM"]),
               [ThmBind.read"%97%25%97%30%107%115$1@$0@2%110%182$1@2%182$0@3|@|@"])
  fun op roles_case_def x = x
    val op roles_case_def =
    ThmBind.DT(((("question2",59),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("question2",[55,58])]),["DISK_THM"]),
               [ThmBind.read"%103%78%69%78%71%106%183%173@$1@$0@2$1@|@|@2%78%69%78%71%106%183%172@$1@$0@2$0@|@|@2"])
  fun op datatype_roles x = x
    val op datatype_roles =
    ThmBind.DT(((("question2",60),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%145%68%173@%172@2"])
  fun op roles_distinct x = x
    val op roles_distinct =
    ThmBind.DT(((("question2",61),
                [("numeral",[3,6]),("question2",[55,56])]),["DISK_THM"]),
               [ThmBind.read"%188%115%173@%172@2"])
  fun op roles_case_cong x = x
    val op roles_case_cong =
    ThmBind.DT(((("question2",62),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[50,52,53,59]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%97%7%97%12%78%69%78%71%116%103%115$3@$2@2%103%116%115$2@%173@2%106$1@%70@3%116%115$2@%172@2%106$0@%72@5%106%183$3@$1@$0@2%183$2@%70@%72@3|@|@|@|@"])
  fun op roles_nchotomy x = x
    val op roles_nchotomy =
    ThmBind.DT(((("question2",63),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[50,52,53]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%97%25%159%115$0@%173@2%115$0@%172@2|@"])
  fun op roles_Axiom x = x
    val op roles_Axiom =
    ThmBind.DT(((("question2",64),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("question2",[55])]),["DISK_THM"]),
               [ThmBind.read"%78%76%78%77%126%37%103%106$0%173@2$2@2%106$0%172@2$1@2|@|@|@"])
  fun op roles_induction x = x
    val op roles_induction =
    ThmBind.DT(((("question2",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("question2",[50,52,53]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%90%20%116%103$0%172@2$0%173@3%97%25$1$0@|@2|@"])
  fun op datatype_keyPrinc x = x
    val op datatype_keyPrinc =
    ThmBind.DT(((("question2",76),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%145%51%152@%150@%136@2"])
  fun op keyPrinc_11 x = x
    val op keyPrinc_11 =
    ThmBind.DT(((("question2",77),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%103%93%24%93%29%107%109%152$1@2%152$0@3%111$1@$0@2|@|@2%103%97%25%97%30%107%109%150$1@2%150$0@3%115$1@$0@2|@|@2%92%23%92%28%107%109%136$1@2%136$0@3%110$1@$0@2|@|@3"])
  fun op keyPrinc_distinct x = x
    val op keyPrinc_distinct =
    ThmBind.DT(((("question2",78),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%103%97%30%93%24%188%109%152$0@2%150$1@3|@|@2%103%92%28%93%24%188%109%152$0@2%136$1@3|@|@2%92%28%97%25%188%109%150$0@2%136$1@3|@|@3"])
  fun op keyPrinc_case_cong x = x
    val op keyPrinc_case_cong =
    ThmBind.DT(((("question2",79),
                [("bool",[26,180]),
                 ("question2",[67,68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%91%4%91%9%84%36%89%43%83%46%116%103%109$4@$3@2%103%93%24%116%109$4@%152$0@3%106$3$0@2%39$0@3|@2%103%97%25%116%109$4@%150$0@3%106$2$0@2%45$0@3|@2%92%23%116%109$4@%136$0@3%106$1$0@2%47$0@3|@5%106%166$4@$2@$1@$0@2%166$3@%39@%45@%47@3|@|@|@|@|@"])
  fun op keyPrinc_nchotomy x = x
    val op keyPrinc_nchotomy =
    ThmBind.DT(((("question2",80),
                [("bool",[26,180]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%91%52%159%130%55%109$1@%152$0@2|@2%159%131%61%109$1@%150$0@2|@2%129%54%109$1@%136$0@2|@3|@"])
  fun op keyPrinc_Axiom x = x
    val op keyPrinc_Axiom =
    ThmBind.DT(((("question2",81),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%84%41%89%43%83%46%120%48%103%93%24%106$1%152$0@3$4$0@2|@2%103%97%25%106$1%150$0@3$3$0@2|@2%92%23%106$1%136$0@3$2$0@2|@3|@|@|@|@"])
  fun op keyPrinc_induction x = x
    val op keyPrinc_induction =
    ThmBind.DT(((("question2",82),
                [("bool",[26]),
                 ("question2",[67,68,69,70,71,72,73])]),["DISK_THM"]),
               [ThmBind.read"%82%17%116%103%93%55$1%152$0@2|@2%103%97%61$1%150$0@2|@2%92%54$1%136$0@2|@4%91%50$1$0@|@2|@"])
  fun op datatype_principals x = x
    val op datatype_principals =
    ThmBind.DT(((("question2",91),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%145%59%149@%146@2"])
  fun op principals_11 x = x
    val op principals_11 =
    ThmBind.DT(((("question2",92),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%103%91%22%91%27%107%112%149$1@2%149$0@3%109$1@$0@2|@|@2%91%22%91%27%107%112%146$1@2%146$0@3%109$1@$0@2|@|@2"])
  fun op principals_distinct x = x
    val op principals_distinct =
    ThmBind.DT(((("question2",93),
                [("bool",[25,26,46,53,62,180]),("ind_type",[33,34]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%91%27%91%22%188%112%149$0@2%146$1@3|@|@"])
  fun op principals_case_cong x = x
    val op principals_case_cong =
    ThmBind.DT(((("question2",94),
                [("bool",[26,180]),
                 ("question2",[84,85,86,87,88,89])]),["DISK_THM"]),
               [ThmBind.read"%94%6%94%11%81%35%81%42%116%103%112$3@$2@2%103%91%22%116%112$3@%149$0@3%106$2$0@2%38$0@3|@2%91%22%116%112$3@%146$0@3%106$1$0@2%44$0@3|@4%106%177$3@$1@$0@2%177$2@%38@%44@3|@|@|@|@"])
  fun op principals_nchotomy x = x
    val op principals_nchotomy =
    ThmBind.DT(((("question2",95),
                [("bool",[26,180]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%94%58%159%128%50%112$1@%149$0@2|@2%128%50%112$1@%146$0@2|@2|@"])
  fun op principals_Axiom x = x
    val op principals_Axiom =
    ThmBind.DT(((("question2",96),
                [("bool",[26,180]),("ind_type",[33,34]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%81%40%81%42%124%49%103%91%22%106$1%149$0@3$3$0@2|@2%91%22%106$1%146$0@3$2$0@2|@2|@|@|@"])
  fun op principals_induction x = x
    val op principals_induction =
    ThmBind.DT(((("question2",97),
                [("bool",[26]),
                 ("question2",[84,85,86,87,88])]),["DISK_THM"]),
               [ThmBind.read"%86%19%116%103%91%50$1%149$0@2|@2%91%50$1%146$0@2|@3%94%56$1$0@|@2|@"])
  fun op question2Thm x = x
    val op question2Thm =
    ThmBind.DT(((("question2",98),
                [("aclDrules",[3,4,16]),
                 ("aclrules",[23,24,32,33])]),["DISK_THM"]),
               [ThmBind.read"%116%185%99%2@%101%13@%15@3%163%148%149%150%173@4%179%171@4%116%185%99%2@%101%13@%15@3%181%148%149%152%135@4%148%149%150%173@4%179%171@4%116%185%99%2@%101%13@%15@3%186%180%148%146%152%135@4%148%149%150%173@5%179%171@4%116%185%99%2@%101%13@%15@3%165%179%171@2%179%164@4%116%185%99%2@%101%13@%15@3%187%148%146%150%172@4%148%149%150%172@6%116%185%99%2@%101%13@%15@3%186%148%146%150%172@4%187%148%146%152%135@4%148%149%152%135@7%116%185%99%2@%101%13@%15@3%163%148%149%150%172@4%187%148%146%152%135@4%148%149%152%135@7%185%99%2@%101%13@%15@3%186%180%148%146%152%141@4%148%149%150%14@5%179%164@10"])

  val _ = DB.bindl "question2"
  [("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_BIJ",commands_BIJ,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("commands_CASE",commands_CASE,DB.Def),
   ("people_TY_DEF",people_TY_DEF,DB.Def),
   ("people_BIJ",people_BIJ,DB.Def),
   ("people_size_def",people_size_def,DB.Def),
   ("people_CASE",people_CASE,DB.Def),
   ("roles_TY_DEF",roles_TY_DEF,DB.Def), ("roles_BIJ",roles_BIJ,DB.Def),
   ("roles_size_def",roles_size_def,DB.Def),
   ("roles_CASE",roles_CASE,DB.Def),
   ("keyPrinc_TY_DEF",keyPrinc_TY_DEF,DB.Def),
   ("keyPrinc_case_def",keyPrinc_case_def,DB.Def),
   ("keyPrinc_size_def",keyPrinc_size_def,DB.Def),
   ("principals_TY_DEF",principals_TY_DEF,DB.Def),
   ("principals_case_def",principals_case_def,DB.Def),
   ("principals_size_def",principals_size_def,DB.Def),
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
   ("num2people_people2num",num2people_people2num,DB.Thm),
   ("people2num_num2people",people2num_num2people,DB.Thm),
   ("num2people_11",num2people_11,DB.Thm),
   ("people2num_11",people2num_11,DB.Thm),
   ("num2people_ONTO",num2people_ONTO,DB.Thm),
   ("people2num_ONTO",people2num_ONTO,DB.Thm),
   ("num2people_thm",num2people_thm,DB.Thm),
   ("people2num_thm",people2num_thm,DB.Thm),
   ("people_EQ_people",people_EQ_people,DB.Thm),
   ("people_case_def",people_case_def,DB.Thm),
   ("datatype_people",datatype_people,DB.Thm),
   ("people_distinct",people_distinct,DB.Thm),
   ("people_case_cong",people_case_cong,DB.Thm),
   ("people_nchotomy",people_nchotomy,DB.Thm),
   ("people_Axiom",people_Axiom,DB.Thm),
   ("people_induction",people_induction,DB.Thm),
   ("num2roles_roles2num",num2roles_roles2num,DB.Thm),
   ("roles2num_num2roles",roles2num_num2roles,DB.Thm),
   ("num2roles_11",num2roles_11,DB.Thm),
   ("roles2num_11",roles2num_11,DB.Thm),
   ("num2roles_ONTO",num2roles_ONTO,DB.Thm),
   ("roles2num_ONTO",roles2num_ONTO,DB.Thm),
   ("num2roles_thm",num2roles_thm,DB.Thm),
   ("roles2num_thm",roles2num_thm,DB.Thm),
   ("roles_EQ_roles",roles_EQ_roles,DB.Thm),
   ("roles_case_def",roles_case_def,DB.Thm),
   ("datatype_roles",datatype_roles,DB.Thm),
   ("roles_distinct",roles_distinct,DB.Thm),
   ("roles_case_cong",roles_case_cong,DB.Thm),
   ("roles_nchotomy",roles_nchotomy,DB.Thm),
   ("roles_Axiom",roles_Axiom,DB.Thm),
   ("roles_induction",roles_induction,DB.Thm),
   ("datatype_keyPrinc",datatype_keyPrinc,DB.Thm),
   ("keyPrinc_11",keyPrinc_11,DB.Thm),
   ("keyPrinc_distinct",keyPrinc_distinct,DB.Thm),
   ("keyPrinc_case_cong",keyPrinc_case_cong,DB.Thm),
   ("keyPrinc_nchotomy",keyPrinc_nchotomy,DB.Thm),
   ("keyPrinc_Axiom",keyPrinc_Axiom,DB.Thm),
   ("keyPrinc_induction",keyPrinc_induction,DB.Thm),
   ("datatype_principals",datatype_principals,DB.Thm),
   ("principals_11",principals_11,DB.Thm),
   ("principals_distinct",principals_distinct,DB.Thm),
   ("principals_case_cong",principals_case_cong,DB.Thm),
   ("principals_nchotomy",principals_nchotomy,DB.Thm),
   ("principals_Axiom",principals_Axiom,DB.Thm),
   ("principals_induction",principals_induction,DB.Thm),
   ("question2Thm",question2Thm,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "question2",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY9.question2,8.commandsNTY9.question2,6.peopleNTY9.question2,5.rolesNTY9.question2,8.keyPrincNTY9.question2,10.principals"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "question2",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num4.%160OO12.num2commands4.%168OO3.pay4.%171OO5.debit4.%164OO13.commands_size4.%162OO13.commands_CASE4.%161OO4.case4.%161OO10.people2num4.%174OO10.num2people4.%169OO5.Alice4.%135OO3.Bob4.%141OO11.people_size4.%176OO11.people_CASE4.%175OO4.case4.%175OO9.roles2num4.%182OO9.num2roles4.%170OO5.payer4.%173OO5.payee4.%172OO10.roles_size4.%184OO10.roles_CASE4.%183OO4.case4.%183OO5.Staff4.%152OO4.Role4.%150OO2.Ap4.%136OO13.keyPrinc_CASE4.%166OO13.keyPrinc_size4.%167OO4.case4.%166OO2.PR4.%149OO3.Key4.%146OO15.principals_CASE4.%177OO15.principals_size4.%178OO4.case4.%177"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val question2_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="question2"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val question2_grammars = 
    Portable.## (addtyUDs,addtmUDs) question2_grammars
  val _ = Parse.grammarDB_insert("question2",question2_grammars)
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
           size=SOME(Parse.Term`(question2$commands_size) :question2$commands -> num$num`,
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
          {ax=ORIG people_Axiom,
           case_def=people_case_def,
           case_cong=people_case_cong,
           induction=ORIG people_induction,
           nchotomy=people_nchotomy,
           size=SOME(Parse.Term`(question2$people_size) :question2$people -> num$num`,
                     ORIG people_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME people_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2people_thm people2num_thm NONE tyinfo0
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
          {ax=ORIG roles_Axiom,
           case_def=roles_case_def,
           case_cong=roles_case_cong,
           induction=ORIG roles_induction,
           nchotomy=roles_nchotomy,
           size=SOME(Parse.Term`(question2$roles_size) :question2$roles -> num$num`,
                     ORIG roles_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME roles_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2roles_thm roles2num_thm NONE tyinfo0
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
          {ax=ORIG keyPrinc_Axiom,
           case_def=keyPrinc_case_def,
           case_cong=keyPrinc_case_cong,
           induction=ORIG keyPrinc_induction,
           nchotomy=keyPrinc_nchotomy,
           size=SOME(Parse.Term`(question2$keyPrinc_size) :question2$keyPrinc -> num$num`,
                     ORIG keyPrinc_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME keyPrinc_11,
           distinct=SOME keyPrinc_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
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
          {ax=ORIG principals_Axiom,
           case_def=principals_case_def,
           case_cong=principals_case_cong,
           induction=ORIG principals_induction,
           nchotomy=principals_nchotomy,
           size=SOME(Parse.Term`(question2$principals_size) :question2$principals -> num$num`,
                     ORIG principals_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME principals_11,
           distinct=SOME principals_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "question2"
end
