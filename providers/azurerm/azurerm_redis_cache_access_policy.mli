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

type azurerm_redis_cache_access_policy

val azurerm_redis_cache_access_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  permissions:string prop ->
  redis_cache_id:string prop ->
  unit ->
  azurerm_redis_cache_access_policy

val yojson_of_azurerm_redis_cache_access_policy :
  azurerm_redis_cache_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  permissions : string prop;
  redis_cache_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  permissions:string prop ->
  redis_cache_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  permissions:string prop ->
  redis_cache_id:string prop ->
  string ->
  t Tf_core.resource
