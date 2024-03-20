(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_hosted_zone_dnssec

val aws_route53_hosted_zone_dnssec :
  ?id:string prop ->
  ?signing_status:string prop ->
  hosted_zone_id:string prop ->
  unit ->
  aws_route53_hosted_zone_dnssec

val yojson_of_aws_route53_hosted_zone_dnssec :
  aws_route53_hosted_zone_dnssec -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hosted_zone_id : string prop;
  id : string prop;
  signing_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?signing_status:string prop ->
  hosted_zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?signing_status:string prop ->
  hosted_zone_id:string prop ->
  string ->
  t Tf_core.resource
