(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_redis_association__timeouts
type azurerm_spring_cloud_app_redis_association

val azurerm_spring_cloud_app_redis_association :
  ?id:string ->
  ?ssl_enabled:bool ->
  ?timeouts:azurerm_spring_cloud_app_redis_association__timeouts ->
  name:string ->
  redis_access_key:string ->
  redis_cache_id:string ->
  spring_cloud_app_id:string ->
  string ->
  unit
