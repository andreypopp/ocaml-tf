(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_redis_linked_server

val azurerm_redis_linked_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_redis_cache_id:string prop ->
  linked_redis_cache_location:string prop ->
  resource_group_name:string prop ->
  server_role:string prop ->
  target_redis_cache_name:string prop ->
  unit ->
  azurerm_redis_linked_server

val yojson_of_azurerm_redis_linked_server :
  azurerm_redis_linked_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  geo_replicated_primary_host_name : string prop;
  id : string prop;
  linked_redis_cache_id : string prop;
  linked_redis_cache_location : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_role : string prop;
  target_redis_cache_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_redis_cache_id:string prop ->
  linked_redis_cache_location:string prop ->
  resource_group_name:string prop ->
  server_role:string prop ->
  target_redis_cache_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_redis_cache_id:string prop ->
  linked_redis_cache_location:string prop ->
  resource_group_name:string prop ->
  server_role:string prop ->
  target_redis_cache_name:string prop ->
  string ->
  t Tf_core.resource
