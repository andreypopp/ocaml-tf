(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53_zone_association = {
  vpc_id : string;  (** vpc_id *)
  zone_id : string;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_zone_association *)

let aws_route53_zone_association ~vpc_id ~zone_id __resource_id =
  let __resource_type = "aws_route53_zone_association" in
  let __resource = { vpc_id; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_zone_association __resource);
  ()