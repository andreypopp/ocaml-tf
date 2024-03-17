(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_cidr_collection = { name : string  (** name *) }
[@@deriving yojson_of]
(** aws_route53_cidr_collection *)

let aws_route53_cidr_collection ~name __resource_id =
  let __resource_type = "aws_route53_cidr_collection" in
  let __resource = { name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_cidr_collection __resource);
  ()
