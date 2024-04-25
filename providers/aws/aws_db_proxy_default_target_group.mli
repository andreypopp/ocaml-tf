(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_pool_config

val connection_pool_config :
  ?connection_borrow_timeout:float prop ->
  ?init_query:string prop ->
  ?max_connections_percent:float prop ->
  ?max_idle_connections_percent:float prop ->
  ?session_pinning_filters:string prop list ->
  unit ->
  connection_pool_config

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_db_proxy_default_target_group

val aws_db_proxy_default_target_group :
  ?id:string prop ->
  ?connection_pool_config:connection_pool_config list ->
  ?timeouts:timeouts ->
  db_proxy_name:string prop ->
  unit ->
  aws_db_proxy_default_target_group

val yojson_of_aws_db_proxy_default_target_group :
  aws_db_proxy_default_target_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  db_proxy_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?connection_pool_config:connection_pool_config list ->
  ?timeouts:timeouts ->
  db_proxy_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?connection_pool_config:connection_pool_config list ->
  ?timeouts:timeouts ->
  db_proxy_name:string prop ->
  string ->
  t Tf_core.resource
