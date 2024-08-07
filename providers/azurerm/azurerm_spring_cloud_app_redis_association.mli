(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_app_redis_association

val azurerm_spring_cloud_app_redis_association :
  ?id:string prop ->
  ?ssl_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  redis_access_key:string prop ->
  redis_cache_id:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_app_redis_association

val yojson_of_azurerm_spring_cloud_app_redis_association :
  azurerm_spring_cloud_app_redis_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  redis_access_key : string prop;
  redis_cache_id : string prop;
  spring_cloud_app_id : string prop;
  ssl_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ssl_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  redis_access_key:string prop ->
  redis_cache_id:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ssl_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  redis_access_key:string prop ->
  redis_cache_id:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
