(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_cidr_collection = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_collection *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  version : float prop;
}

let aws_route53_cidr_collection ~name __resource_id =
  let __resource_type = "aws_route53_cidr_collection" in
  let __resource = ({ name } : aws_route53_cidr_collection) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_cidr_collection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
