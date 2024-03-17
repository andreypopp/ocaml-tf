(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_blob_nfs_target__timeouts
type azurerm_hpc_cache_blob_nfs_target

val azurerm_hpc_cache_blob_nfs_target :
  ?access_policy_name:string ->
  ?id:string ->
  ?verification_timer_in_seconds:float ->
  ?write_back_timer_in_seconds:float ->
  ?timeouts:azurerm_hpc_cache_blob_nfs_target__timeouts ->
  cache_name:string ->
  name:string ->
  namespace_path:string ->
  resource_group_name:string ->
  storage_container_id:string ->
  usage_model:string ->
  string ->
  unit
