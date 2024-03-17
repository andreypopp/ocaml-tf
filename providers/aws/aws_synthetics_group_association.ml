(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_synthetics_group_association = {
  canary_arn : string prop;  (** canary_arn *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_synthetics_group_association *)

type t = {
  canary_arn : string prop;
  group_arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
}

let aws_synthetics_group_association ?id ~canary_arn ~group_name
    __resource_id =
  let __resource_type = "aws_synthetics_group_association" in
  let __resource =
    ({ canary_arn; group_name; id }
      : aws_synthetics_group_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_synthetics_group_association __resource);
  let __resource_attributes =
    ({
       canary_arn =
         Prop.computed __resource_type __resource_id "canary_arn";
       group_arn =
         Prop.computed __resource_type __resource_id "group_arn";
       group_id =
         Prop.computed __resource_type __resource_id "group_id";
       group_name =
         Prop.computed __resource_type __resource_id "group_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
