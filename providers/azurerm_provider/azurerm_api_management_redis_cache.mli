(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_redis_cache__timeouts
type azurerm_api_management_redis_cache

val azurerm_api_management_redis_cache :
  ?cache_location:string ->
  ?description:string ->
  ?id:string ->
  ?redis_cache_id:string ->
  ?timeouts:azurerm_api_management_redis_cache__timeouts ->
  api_management_id:string ->
  connection_string:string ->
  name:string ->
  string ->
  unit
