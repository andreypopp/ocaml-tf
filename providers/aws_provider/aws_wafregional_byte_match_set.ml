(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafregional_byte_match_set__byte_match_tuples__field_to_match = {
  data : string option; [@option]  (** data *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_byte_match_set__byte_match_tuples__field_to_match *)

type aws_wafregional_byte_match_set__byte_match_tuples = {
  positional_constraint : string;  (** positional_constraint *)
  target_string : string option; [@option]  (** target_string *)
  text_transformation : string;  (** text_transformation *)
  field_to_match :
    aws_wafregional_byte_match_set__byte_match_tuples__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_byte_match_set__byte_match_tuples *)

type aws_wafregional_byte_match_set = {
  name : string;  (** name *)
  byte_match_tuples :
    aws_wafregional_byte_match_set__byte_match_tuples list;
}
[@@deriving yojson_of]
(** aws_wafregional_byte_match_set *)

let aws_wafregional_byte_match_set ~name ~byte_match_tuples
    __resource_id =
  let __resource_type = "aws_wafregional_byte_match_set" in
  let __resource = { name; byte_match_tuples } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_byte_match_set __resource);
  ()