(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_vpc_association_authorization = {
  id : string option; [@option]  (** id *)
  vpc_id : string;  (** vpc_id *)
  vpc_region : string option; [@option]  (** vpc_region *)
  zone_id : string;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_vpc_association_authorization *)

let aws_route53_vpc_association_authorization ?id ?vpc_region ~vpc_id
    ~zone_id __resource_id =
  let __resource_type =
    "aws_route53_vpc_association_authorization"
  in
  let __resource = { id; vpc_id; vpc_region; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_vpc_association_authorization __resource);
  ()
