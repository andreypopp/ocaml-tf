(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_hosted_zone_dnssec

type t = private {
  hosted_zone_id : string prop;
  id : string prop;
  signing_status : string prop;
}

val aws_route53_hosted_zone_dnssec :
  ?id:string prop ->
  ?signing_status:string prop ->
  hosted_zone_id:string prop ->
  string ->
  t
