(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_linked_server__timeouts
type azurerm_redis_linked_server

val azurerm_redis_linked_server :
  ?id:string ->
  ?timeouts:azurerm_redis_linked_server__timeouts ->
  linked_redis_cache_id:string ->
  linked_redis_cache_location:string ->
  resource_group_name:string ->
  server_role:string ->
  target_redis_cache_name:string ->
  string ->
  unit
