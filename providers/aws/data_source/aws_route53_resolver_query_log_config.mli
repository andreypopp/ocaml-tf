(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_route53_resolver_query_log_config

val aws_route53_resolver_query_log_config :
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_query_log_config_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
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
  resolver_query_log_config_id : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_query_log_config_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?resolver_query_log_config_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
