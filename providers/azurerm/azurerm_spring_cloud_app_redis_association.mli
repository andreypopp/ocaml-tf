(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_redis_association__timeouts
type azurerm_spring_cloud_app_redis_association

type t = private {
  id : string prop;
  name : string prop;
  redis_access_key : string prop;
  redis_cache_id : string prop;
  spring_cloud_app_id : string prop;
  ssl_enabled : bool prop;
}

val azurerm_spring_cloud_app_redis_association :
  ?id:string prop ->
  ?ssl_enabled:bool prop ->
  ?timeouts:azurerm_spring_cloud_app_redis_association__timeouts ->
  name:string prop ->
  redis_access_key:string prop ->
  redis_cache_id:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t
