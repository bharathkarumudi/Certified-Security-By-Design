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
  local open cipherTheory stringTheory
  in end;
  val _ = Theory.link_parents
          ("question1",
          Arbnum.fromString "1567560765",
          Arbnum.fromString "466152")
          [("cipher",
           Arbnum.fromString "1567560762",
           Arbnum.fromString "43904"),
           ("string",
           Arbnum.fromString "1503148899",
           Arbnum.fromString "21753")];
  val _ = Theory.incorporate_types "question1" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("cipher", "asymMsg"), ID("cipher", "digest"), ID("list", "list"),
   ID("string", "char"), ID("bool", "!"), ID("min", "fun"),
   ID("min", "bool"), ID("min", "="), ID("arithmetic", "BIT1"),
   ID("num", "num"), ID("arithmetic", "BIT2"), ID("string", "CHR"),
   ID("list", "CONS"), ID("list", "NIL"), ID("arithmetic", "NUMERAL"),
   ID("option", "SOME"), ID("option", "option"), ID("arithmetic", "ZERO"),
   ID("cipher", "hash"), ID("cipher", "privK"), ID("cipher", "pKey"),
   ID("cipher", "pubK"), ID("cipher", "sign"), ID("cipher", "signVerify")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'a", TYOP [3], TYOP [2, 1], TYOP [1, 2], TYOP [0, 3, 0], TYOP [6],
   TYOP [5, 4, 5], TYOP [5, 6, 5], TYOP [5, 4, 6], TYOP [5, 5, 5],
   TYOP [5, 5, 9], TYOP [9], TYOP [5, 11, 11], TYOP [5, 11, 1],
   TYOP [5, 2, 2], TYOP [5, 1, 14], TYOP [16, 2], TYOP [5, 2, 16],
   TYOP [5, 16, 3], TYOP [20, 0], TYOP [5, 0, 19], TYOP [5, 3, 4],
   TYOP [5, 19, 21], TYOP [5, 16, 5], TYOP [5, 4, 23], TYOP [5, 19, 24]]
  end
  val _ = Theory.incorporate_consts "question1" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("TrueSignatures", 0), TMV("signature", 4), TMC(4, 7), TMC(7, 8),
   TMC(7, 10), TMC(8, 12), TMC(10, 12), TMC(11, 13), TMC(12, 15),
   TMC(13, 2), TMC(14, 12), TMC(15, 17), TMC(17, 11), TMC(18, 18),
   TMC(19, 20), TMC(21, 20), TMC(22, 22), TMC(23, 25)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op question1Thm x = x
    val op question1Thm =
    ThmBind.DT(((("question1",0),
                [("bool",[25,35,55]),("cipher",[87])]),["DISK_THM"]),
               [ThmBind.read"%2%1%4%17%15%0@2$0@%11%8%7%10%6%5%5%5%6%6%12@9%8%7%10%5%6%6%5%6%6%12@9%8%7%10%6%6%5%5%5%6%12@9%8%7%10%5%5%6%6%5%5%12@9%8%7%10%6%5%5%5%5%12@8%8%7%10%5%5%5%6%5%5%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%6%5%6%5%5%6%12@9%8%7%10%6%6%5%5%5%5%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%6%6%5%6%12@9%8%7%10%5%5%6%5%6%6%12@9%9@17%3$0@%16%14%0@2%13%11%8%7%10%6%5%5%5%6%6%12@9%8%7%10%5%6%6%5%6%6%12@9%8%7%10%6%6%5%5%5%6%12@9%8%7%10%5%5%6%6%5%5%12@9%8%7%10%6%5%5%5%5%12@8%8%7%10%5%5%5%6%5%5%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%6%5%6%5%5%6%12@9%8%7%10%6%6%5%5%5%5%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%5%5%6%6%12@9%8%7%10%5%5%6%6%5%6%12@9%8%7%10%5%5%6%5%6%6%12@9%9@19|@"])

  val _ = DB.bindl "question1" [("question1Thm",question1Thm,DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val question1_grammars = merge_grammars ["cipher", "string"]
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

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "question1"
end
