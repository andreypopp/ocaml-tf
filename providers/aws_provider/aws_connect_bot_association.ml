(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_bot_association__lex_bot = {
  lex_region : string option; [@option]  (** lex_region *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_bot_association__lex_bot *)

type aws_connect_bot_association = {
  instance_id : string;  (** instance_id *)
  lex_bot : aws_connect_bot_association__lex_bot list;
}
[@@deriving yojson_of]
(** aws_connect_bot_association *)

let aws_connect_bot_association ~instance_id ~lex_bot __resource_id =
  let __resource_type = "aws_connect_bot_association" in
  let __resource = { instance_id; lex_bot } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_bot_association __resource);
  ()