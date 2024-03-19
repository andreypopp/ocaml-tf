(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type geo_match_constraint = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** geo_match_constraint *)

type aws_waf_geo_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  geo_match_constraint : geo_match_constraint list;
}
[@@deriving yojson_of]
(** aws_waf_geo_match_set *)

let geo_match_constraint ~type_ ~value () : geo_match_constraint =
  { type_; value }

let aws_waf_geo_match_set ?id ~name ~geo_match_constraint () :
    aws_waf_geo_match_set =
  { id; name; geo_match_constraint }

type t = { arn : string prop; id : string prop; name : string prop }

let register ?tf_module ?id ~name ~geo_match_constraint __resource_id
    =
  let __resource_type = "aws_waf_geo_match_set" in
  let __resource =
    aws_waf_geo_match_set ?id ~name ~geo_match_constraint ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_waf_geo_match_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
