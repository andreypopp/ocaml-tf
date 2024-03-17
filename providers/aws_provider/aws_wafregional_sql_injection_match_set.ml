(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_wafregional_sql_injection_match_set__sql_injection_match_tuple__field_to_match = {
  data : string option; [@option]  (** data *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_wafregional_sql_injection_match_set__sql_injection_match_tuple__field_to_match *)

type aws_wafregional_sql_injection_match_set__sql_injection_match_tuple = {
  text_transformation : string;  (** text_transformation *)
  field_to_match :
    aws_wafregional_sql_injection_match_set__sql_injection_match_tuple__field_to_match
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_sql_injection_match_set__sql_injection_match_tuple *)

type aws_wafregional_sql_injection_match_set = {
  name : string;  (** name *)
  sql_injection_match_tuple :
    aws_wafregional_sql_injection_match_set__sql_injection_match_tuple
    list;
}
[@@deriving yojson_of]
(** aws_wafregional_sql_injection_match_set *)

let aws_wafregional_sql_injection_match_set ~name
    ~sql_injection_match_tuple __resource_id =
  let __resource_type = "aws_wafregional_sql_injection_match_set" in
  let __resource = { name; sql_injection_match_tuple } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_sql_injection_match_set __resource);
  ()
