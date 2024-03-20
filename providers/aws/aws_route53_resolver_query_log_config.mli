(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_resolver_query_log_config

val aws_route53_resolver_query_log_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  name:string prop ->
  unit ->
  aws_route53_resolver_query_log_config

val yojson_of_aws_route53_resolver_query_log_config :
  aws_route53_resolver_query_log_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
