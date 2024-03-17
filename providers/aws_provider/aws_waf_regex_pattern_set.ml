(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_waf_regex_pattern_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  regex_pattern_strings : string prop list option; [@option]
      (** regex_pattern_strings *)
}
[@@deriving yojson_of]
(** aws_waf_regex_pattern_set *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  regex_pattern_strings : string list prop;
}

let aws_waf_regex_pattern_set ?id ?regex_pattern_strings ~name
    __resource_id =
  let __resource_type = "aws_waf_regex_pattern_set" in
  let __resource =
    ({ id; name; regex_pattern_strings } : aws_waf_regex_pattern_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_regex_pattern_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       regex_pattern_strings =
         Prop.computed __resource_type __resource_id
           "regex_pattern_strings";
     }
      : t)
  in
  __resource_attributes
