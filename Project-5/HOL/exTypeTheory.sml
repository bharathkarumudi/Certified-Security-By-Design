structure exTypeTheory :> exTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exTypeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("exType",
          Arbnum.fromString "1565492718",
          Arbnum.fromString "350420")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "exType" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("bool", "!"),
   ID("min", "bool"), ID("arithmetic", "+"), ID("num", "num"),
   ID("bool", "/\\"), ID("min", "="), ID("exType", "APP"),
   ID("list", "CONS"), ID("list", "LENGTH"), ID("exType", "Map"),
   ID("list", "NIL")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [1, 0], TYV "'b", TYOP [1, 2], TYOP [0, 3, 1],
   TYOP [0, 2, 0], TYOP [0, 5, 4], TYOP [0, 1, 1], TYOP [0, 1, 7],
   TYOP [3], TYOP [0, 0, 9], TYOP [0, 10, 9], TYOP [0, 2, 9],
   TYOP [0, 12, 9], TYOP [0, 5, 9], TYOP [0, 14, 9], TYOP [0, 1, 9],
   TYOP [0, 16, 9], TYOP [0, 3, 9], TYOP [0, 18, 9], TYOP [5],
   TYOP [0, 20, 20], TYOP [0, 20, 21], TYOP [0, 9, 9], TYOP [0, 9, 23],
   TYOP [0, 1, 16], TYOP [0, 20, 9], TYOP [0, 20, 26], TYOP [0, 3, 3],
   TYOP [0, 3, 28], TYOP [0, 0, 7], TYOP [0, 2, 28], TYOP [0, 1, 20]]
  end
  val _ = Theory.incorporate_consts "exType" tyvector
     [("Map", 6), ("APP", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("f", 5), TMV("f1", 3), TMV("h", 0), TMV("l", 1), TMV("l1", 1),
   TMV("l1", 3), TMV("l2", 1), TMV("l2", 3), TMV("x", 2), TMC(2, 11),
   TMC(2, 13), TMC(2, 15), TMC(2, 17), TMC(2, 19), TMC(4, 22), TMC(6, 24),
   TMC(7, 25), TMC(7, 27), TMC(8, 8), TMC(8, 29), TMC(9, 30), TMC(9, 31),
   TMC(10, 32), TMC(11, 6), TMC(12, 1), TMC(12, 3)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op APP_def x = x
    val op APP_def =
    ThmBind.DT(((("exType",0),[("list",[13])]),["DISK_THM"]),
               [ThmBind.read"%15%12%3%16%18%24@$0@2$0@|@2%9%2%12%4%12%6%16%18%20$2@$1@2$0@2%20$2@%18$1@$0@3|@|@|@2"])
  fun op Map_def x = x
    val op Map_def =
    ThmBind.DT(((("exType",2),[("list",[13])]),["DISK_THM"]),
               [ThmBind.read"%15%11%0%16%23$0@%25@2%24@|@2%11%0%10%8%13%1%16%23$2@%21$1@$0@3%20$2$1@2%23$2@$0@3|@|@|@2"])
  fun op LENGTH_APP x = x
    val op LENGTH_APP =
    ThmBind.DT(((("exType",1),
                [("arithmetic",[24]),("bool",[14,25,35,55]),("exType",[0]),
                 ("list",[22,43])]),["DISK_THM"]),
               [ThmBind.read"%12%4%12%6%17%22%18$1@$0@3%14%22$1@2%22$0@3|@|@"])
  fun op Map_APP x = x
    val op Map_APP =
    ThmBind.DT(((("exType",3),
                [("bool",[14,25,35,55]),("exType",[0,2]),
                 ("list",[43])]),["DISK_THM"]),
               [ThmBind.read"%16%23%0@%19%5@%7@3%18%23%0@%5@2%23%0@%7@3"])

  val _ = DB.bindl "exType"
  [("APP_def",APP_def,DB.Def), ("Map_def",Map_def,DB.Def),
   ("LENGTH_APP",LENGTH_APP,DB.Thm), ("Map_APP",Map_APP,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "compute",
    read = ThmBind.read,
    data = "exType.APP_def exType.Map_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO3.APP3.%18OO3.Map3.%23"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exType_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exType_grammars = 
    Portable.## (addtyUDs,addtmUDs) exType_grammars
  val _ = Parse.grammarDB_insert("exType",exType_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "exType"
end
