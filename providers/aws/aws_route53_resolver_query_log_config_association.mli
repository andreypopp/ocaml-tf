(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_query_log_config_association

type t = private {
  id : string prop;
  resolver_query_log_config_id : string prop;
  resource_id : string prop;
}

val aws_route53_resolver_query_log_config_association :
  ?id:string prop ->
  resolver_query_log_config_id:string prop ->
  resource_id:string prop ->
  string ->
  t
