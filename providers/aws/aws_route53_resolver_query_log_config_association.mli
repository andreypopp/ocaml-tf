(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_query_log_config_association

val aws_route53_resolver_query_log_config_association :
  ?id:string prop ->
  resolver_query_log_config_id:string prop ->
  resource_id:string prop ->
  unit ->
  aws_route53_resolver_query_log_config_association

val yojson_of_aws_route53_resolver_query_log_config_association :
  aws_route53_resolver_query_log_config_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  resolver_query_log_config_id:string prop ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  resolver_query_log_config_id:string prop ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
