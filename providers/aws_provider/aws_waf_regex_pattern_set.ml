(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_regex_pattern_set = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  regex_pattern_strings : string list option; [@option]
      (** regex_pattern_strings *)
}
[@@deriving yojson_of]
(** aws_waf_regex_pattern_set *)

let aws_waf_regex_pattern_set ?id ?regex_pattern_strings ~name
    __resource_id =
  let __resource_type = "aws_waf_regex_pattern_set" in
  let __resource = { id; name; regex_pattern_strings } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_regex_pattern_set __resource);
  ()
