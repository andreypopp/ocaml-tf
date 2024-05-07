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

type azurerm_hpc_cache_blob_nfs_target

val azurerm_hpc_cache_blob_nfs_target :
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  usage_model:string prop ->
  unit ->
  azurerm_hpc_cache_blob_nfs_target

val yojson_of_azurerm_hpc_cache_blob_nfs_target :
  azurerm_hpc_cache_blob_nfs_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policy_name : string prop;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  namespace_path : string prop;
  resource_group_name : string prop;
  storage_container_id : string prop;
  usage_model : string prop;
  verification_timer_in_seconds : float prop;
  write_back_timer_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  usage_model:string prop ->
  string ->
  t

val make :
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  usage_model:string prop ->
  string ->
  t Tf_core.resource
