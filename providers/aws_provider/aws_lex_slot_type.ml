(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_slot_type__enumeration_value = {
  synonyms : string prop list option; [@option]  (** synonyms *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_lex_slot_type__enumeration_value *)

type aws_lex_slot_type__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_slot_type__timeouts *)

type aws_lex_slot_type = {
  create_version : bool prop option; [@option]  (** create_version *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value_selection_strategy : string prop option; [@option]
      (** value_selection_strategy *)
  enumeration_value : aws_lex_slot_type__enumeration_value list;
  timeouts : aws_lex_slot_type__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_slot_type *)

let aws_lex_slot_type ?create_version ?description ?id
    ?value_selection_strategy ?timeouts ~name ~enumeration_value
    __resource_id =
  let __resource_type = "aws_lex_slot_type" in
  let __resource =
    {
      create_version;
      description;
      id;
      name;
      value_selection_strategy;
      enumeration_value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_slot_type __resource);
  ()
