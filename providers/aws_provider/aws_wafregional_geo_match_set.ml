(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_wafregional_geo_match_set__geo_match_constraint = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_wafregional_geo_match_set__geo_match_constraint *)

type aws_wafregional_geo_match_set = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  geo_match_constraint :
    aws_wafregional_geo_match_set__geo_match_constraint list;
}
[@@deriving yojson_of]
(** aws_wafregional_geo_match_set *)

let aws_wafregional_geo_match_set ?id ~name ~geo_match_constraint
    __resource_id =
  let __resource_type = "aws_wafregional_geo_match_set" in
  let __resource = { id; name; geo_match_constraint } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_wafregional_geo_match_set __resource);
  ()
