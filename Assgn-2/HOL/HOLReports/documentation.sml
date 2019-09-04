
app
 load
 ["question1Theory", "question2Theory", "EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["question1", "question2"] "exam1Report";
