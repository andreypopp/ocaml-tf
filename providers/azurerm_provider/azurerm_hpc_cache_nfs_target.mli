(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_nfs_target__namespace_junction
type azurerm_hpc_cache_nfs_target__timeouts
type azurerm_hpc_cache_nfs_target

val azurerm_hpc_cache_nfs_target :
  ?id:string ->
  ?verification_timer_in_seconds:float ->
  ?write_back_timer_in_seconds:float ->
  ?timeouts:azurerm_hpc_cache_nfs_target__timeouts ->
  cache_name:string ->
  name:string ->
  resource_group_name:string ->
  target_host_name:string ->
  usage_model:string ->
  namespace_junction:
    azurerm_hpc_cache_nfs_target__namespace_junction list ->
  string ->
  unit
