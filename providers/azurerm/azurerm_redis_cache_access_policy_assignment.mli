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

type azurerm_redis_cache_access_policy_assignment

val azurerm_redis_cache_access_policy_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy_name:string prop ->
  name:string prop ->
  object_id:string prop ->
  object_id_alias:string prop ->
  redis_cache_id:string prop ->
  unit ->
  azurerm_redis_cache_access_policy_assignment

val yojson_of_azurerm_redis_cache_access_policy_assignment :
  azurerm_redis_cache_access_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policy_name : string prop;
  id : string prop;
  name : string prop;
  object_id : string prop;
  object_id_alias : string prop;
  redis_cache_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy_name:string prop ->
  name:string prop ->
  object_id:string prop ->
  object_id_alias:string prop ->
  redis_cache_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy_name:string prop ->
  name:string prop ->
  object_id:string prop ->
  object_id_alias:string prop ->
  redis_cache_id:string prop ->
  string ->
  t Tf_core.resource
