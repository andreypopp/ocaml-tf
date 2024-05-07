(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_dnssec_config

val aws_route53_resolver_dnssec_config :
  ?id:string prop ->
  resource_id:string prop ->
  unit ->
  aws_route53_resolver_dnssec_config

val yojson_of_aws_route53_resolver_dnssec_config :
  aws_route53_resolver_dnssec_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
  validation_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
