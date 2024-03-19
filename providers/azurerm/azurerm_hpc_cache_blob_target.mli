(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_hpc_cache_blob_target

val azurerm_hpc_cache_blob_target :
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  unit ->
  azurerm_hpc_cache_blob_target

val yojson_of_azurerm_hpc_cache_blob_target :
  azurerm_hpc_cache_blob_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy_name : string prop;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  namespace_path : string prop;
  resource_group_name : string prop;
  storage_container_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  string ->
  t
