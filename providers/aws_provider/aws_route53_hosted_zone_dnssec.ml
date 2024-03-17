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

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  signing_status : string prop;
}

let aws_route53_hosted_zone_dnssec ?id ?signing_status
    ~hosted_zone_id __resource_id =
  let __resource_type = "aws_route53_hosted_zone_dnssec" in
  let __resource =
    ({ hosted_zone_id; id; signing_status }
      : aws_route53_hosted_zone_dnssec)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_hosted_zone_dnssec __resource);
  let __resource_attributes =
    ({
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
       signing_status =
         Prop.computed __resource_type __resource_id "signing_status";
     }
      : t)
  in
  __resource_attributes
