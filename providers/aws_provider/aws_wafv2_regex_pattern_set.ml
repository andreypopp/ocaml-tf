(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafv2_regex_pattern_set__regular_expression = {
  regex_string : string;  (** regex_string *)
}
[@@deriving yojson_of]
(** aws_wafv2_regex_pattern_set__regular_expression *)

type aws_wafv2_regex_pattern_set = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  scope : string;  (** scope *)
  tags : (string * string) list option; [@option]  (** tags *)
  regular_expression :
    aws_wafv2_regex_pattern_set__regular_expression list;
}
[@@deriving yojson_of]
(** aws_wafv2_regex_pattern_set *)

let aws_wafv2_regex_pattern_set ?description ?tags ~name ~scope
    ~regular_expression __resource_id =
  let __resource_type = "aws_wafv2_regex_pattern_set" in
  let __resource =
    { description; name; scope; tags; regular_expression }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafv2_regex_pattern_set __resource);
  ()