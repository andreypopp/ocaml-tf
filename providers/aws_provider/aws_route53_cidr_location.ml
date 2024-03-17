(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_cidr_location = {
  cidr_blocks : string list;  (** cidr_blocks *)
  cidr_collection_id : string;  (** cidr_collection_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_location *)

let aws_route53_cidr_location ~cidr_blocks ~cidr_collection_id ~name
    __resource_id =
  let __resource_type = "aws_route53_cidr_location" in
  let __resource = { cidr_blocks; cidr_collection_id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_cidr_location __resource);
  ()
