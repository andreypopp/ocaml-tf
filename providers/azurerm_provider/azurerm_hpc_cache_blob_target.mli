(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_blob_target__timeouts
type azurerm_hpc_cache_blob_target

val azurerm_hpc_cache_blob_target :
  ?access_policy_name:string ->
  ?timeouts:azurerm_hpc_cache_blob_target__timeouts ->
  cache_name:string ->
  name:string ->
  namespace_path:string ->
  resource_group_name:string ->
  storage_container_id:string ->
  string ->
  unit
