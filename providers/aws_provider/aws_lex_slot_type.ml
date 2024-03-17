(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_slot_type__enumeration_value = {
  synonyms : string list option; [@option]  (** synonyms *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_lex_slot_type__enumeration_value *)

type aws_lex_slot_type__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_slot_type__timeouts *)

type aws_lex_slot_type = {
  create_version : bool option; [@option]  (** create_version *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  value_selection_strategy : string option; [@option]
      (** value_selection_strategy *)
  enumeration_value : aws_lex_slot_type__enumeration_value list;
  timeouts : aws_lex_slot_type__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_slot_type *)

let aws_lex_slot_type ?create_version ?description
    ?value_selection_strategy ?timeouts ~name ~enumeration_value
    __resource_id =
  let __resource_type = "aws_lex_slot_type" in
  let __resource =
    {
      create_version;
      description;
      name;
      value_selection_strategy;
      enumeration_value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_slot_type __resource);
  ()
