(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_cidr_location = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  cidr_collection_id : string prop;  (** cidr_collection_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_location *)

type t = {
  cidr_blocks : string list prop;
  cidr_collection_id : string prop;
  id : string prop;
  name : string prop;
}

let aws_route53_cidr_location ~cidr_blocks ~cidr_collection_id ~name
    __resource_id =
  let __resource_type = "aws_route53_cidr_location" in
  let __resource =
    ({ cidr_blocks; cidr_collection_id; name }
      : aws_route53_cidr_location)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_cidr_location __resource);
  let __resource_attributes =
    ({
       cidr_blocks =
         Prop.computed __resource_type __resource_id "cidr_blocks";
       cidr_collection_id =
         Prop.computed __resource_type __resource_id
           "cidr_collection_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
