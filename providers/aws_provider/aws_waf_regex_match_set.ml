(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_waf_regex_match_set__regex_match_tuple__field_to_match = {
  data : string option; [@option]  (** data *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_waf_regex_match_set__regex_match_tuple__field_to_match *)

type aws_waf_regex_match_set__regex_match_tuple = {
  regex_pattern_set_id : string;  (** regex_pattern_set_id *)
  text_transformation : string;  (** text_transformation *)
  field_to_match :
    aws_waf_regex_match_set__regex_match_tuple__field_to_match list;
}
[@@deriving yojson_of]
(** aws_waf_regex_match_set__regex_match_tuple *)

type aws_waf_regex_match_set = {
  name : string;  (** name *)
  regex_match_tuple : aws_waf_regex_match_set__regex_match_tuple list;
}
[@@deriving yojson_of]
(** aws_waf_regex_match_set *)

let aws_waf_regex_match_set ~name ~regex_match_tuple __resource_id =
  let __resource_type = "aws_waf_regex_match_set" in
  let __resource = { name; regex_match_tuple } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_regex_match_set __resource);
  ()