structure project3bTheory :> project3bTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading project3bTheory ... " else ()
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
          ("project3b",
          Arbnum.fromString "1564193251",
          Arbnum.fromString "525262")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "project3b" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "bool"), ID("bool", "!"), ID("min", "fun"), ID("bool", "/\\"),
   ID("min", "="), ID("min", "==>")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2, 0, 0], TYOP [2, 1, 0], TYOP [2, 0, 1]]
  end
  val _ = Theory.incorporate_consts "project3b" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("p", 0), TMV("q", 0), TMV("r", 0), TMC(1, 2), TMC(3, 3), TMC(4, 3),
   TMC(5, 3)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op problem1Thm x = x
    val op problem1Thm =
    ThmBind.DT(((("project3b",0),[]),[]),
               [ThmBind.read"%6%0@%6%6%0@%1@2%6%6%1@%2@2%2@3"])
  fun op conjSymThm x = x
    val op conjSymThm =
    ThmBind.DT(((("project3b",1),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%5%4%0@%1@2%4%1@%0@2"])
  fun op conjSymThmAll x = x
    val op conjSymThmAll =
    ThmBind.DT(((("project3b",2),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%3%0%3%1%5%4$1@$0@2%4$0@$1@2|@|@"])

  val _ = DB.bindl "project3b"
  [("problem1Thm",problem1Thm,DB.Thm), ("conjSymThm",conjSymThm,DB.Thm),
   ("conjSymThmAll",conjSymThmAll,DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val project3b_grammars = merge_grammars ["indexedLists",
                                           "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="project3b"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val project3b_grammars = 
    Portable.## (addtyUDs,addtmUDs) project3b_grammars
  val _ = Parse.grammarDB_insert("project3b",project3b_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "project3b"
end
