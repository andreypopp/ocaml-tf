(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_blob_nfs_target__timeouts
type azurerm_hpc_cache_blob_nfs_target

val azurerm_hpc_cache_blob_nfs_target :
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:azurerm_hpc_cache_blob_nfs_target__timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  usage_model:string prop ->
  string ->
  unit
