(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_linked_server__timeouts
type azurerm_redis_linked_server

type t = private {
  geo_replicated_primary_host_name : string prop;
  id : string prop;
  linked_redis_cache_id : string prop;
  linked_redis_cache_location : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_role : string prop;
  target_redis_cache_name : string prop;
}

val azurerm_redis_linked_server :
  ?id:string prop ->
  ?timeouts:azurerm_redis_linked_server__timeouts ->
  linked_redis_cache_id:string prop ->
  linked_redis_cache_location:string prop ->
  resource_group_name:string prop ->
  server_role:string prop ->
  target_redis_cache_name:string prop ->
  string ->
  t
