(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_redis_cache__timeouts
type azurerm_api_management_redis_cache

type t = private {
  api_management_id : string prop;
  cache_location : string prop;
  connection_string : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  redis_cache_id : string prop;
}

val azurerm_api_management_redis_cache :
  ?cache_location:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?redis_cache_id:string prop ->
  ?timeouts:azurerm_api_management_redis_cache__timeouts ->
  api_management_id:string prop ->
  connection_string:string prop ->
  name:string prop ->
  string ->
  t
