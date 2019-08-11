
app
 load
 ["exTypeTheory", "nexpTheory", "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["exType", "nexp"] "project5Report";
