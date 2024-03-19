(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_cidr_collection = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_collection *)

let aws_route53_cidr_collection ~name () :
    aws_route53_cidr_collection =
  { name }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  version : float prop;
}

let register ?tf_module ~name __resource_id =
  let __resource_type = "aws_route53_cidr_collection" in
  let __resource = aws_route53_cidr_collection ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
