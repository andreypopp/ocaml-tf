(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~instance_id ~lex_bot __resource_id =
  let __resource_type = "aws_connect_bot_association" in
  let __resource =
    aws_connect_bot_association ?id ~instance_id ~lex_bot ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_bot_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
     }
      : t)
  in
  __resource_attributes
