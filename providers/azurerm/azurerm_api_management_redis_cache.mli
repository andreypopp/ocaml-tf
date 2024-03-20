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

type azurerm_api_management_redis_cache

val azurerm_api_management_redis_cache :
  ?cache_location:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?redis_cache_id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  connection_string:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_redis_cache

val yojson_of_azurerm_api_management_redis_cache :
  azurerm_api_management_redis_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_id : string prop;
  cache_location : string prop;
  connection_string : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  redis_cache_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_location:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?redis_cache_id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  connection_string:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?cache_location:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?redis_cache_id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  connection_string:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
