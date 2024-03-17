(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_hosted_zone_dnssec = {
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  id : string prop option; [@option]  (** id *)
  signing_status : string prop option; [@option]
      (** signing_status *)
}
[@@deriving yojson_of]
(** aws_route53_hosted_zone_dnssec *)

let aws_route53_hosted_zone_dnssec ?id ?signing_status
    ~hosted_zone_id __resource_id =
  let __resource_type = "aws_route53_hosted_zone_dnssec" in
  let __resource = { hosted_zone_id; id; signing_status } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_hosted_zone_dnssec __resource);
  ()
