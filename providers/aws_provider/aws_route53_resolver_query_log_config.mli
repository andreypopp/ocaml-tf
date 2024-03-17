(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_query_log_config

val aws_route53_resolver_query_log_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  name:string prop ->
  string ->
  unit
