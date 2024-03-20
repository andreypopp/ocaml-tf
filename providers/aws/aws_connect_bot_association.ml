(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lex_bot = {
  lex_region : string prop option; [@option]  (** lex_region *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** lex_bot *)

type aws_connect_bot_association = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  lex_bot : lex_bot list;
}
[@@deriving yojson_of]
(** aws_connect_bot_association *)

let lex_bot ?lex_region ~name () : lex_bot = { lex_region; name }

let aws_connect_bot_association ?id ~instance_id ~lex_bot () :
    aws_connect_bot_association =
  { id; instance_id; lex_bot }

type t = { id : string prop; instance_id : string prop }

let make ?id ~instance_id ~lex_bot __id =
  let __type = "aws_connect_bot_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_bot_association
        (aws_connect_bot_association ?id ~instance_id ~lex_bot ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_id ~lex_bot __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_id ~lex_bot __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
