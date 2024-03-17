(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_nfs_target__namespace_junction
type azurerm_hpc_cache_nfs_target__timeouts
type azurerm_hpc_cache_nfs_target

val azurerm_hpc_cache_nfs_target :
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:azurerm_hpc_cache_nfs_target__timeouts ->
  cache_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_host_name:string prop ->
  usage_model:string prop ->
  namespace_junction:
    azurerm_hpc_cache_nfs_target__namespace_junction list ->
  string ->
  unit
