(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_blob_target__timeouts
type azurerm_hpc_cache_blob_target

type t = private {
  access_policy_name : string prop;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  namespace_path : string prop;
  resource_group_name : string prop;
  storage_container_id : string prop;
}

val azurerm_hpc_cache_blob_target :
  ?access_policy_name:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_hpc_cache_blob_target__timeouts ->
  cache_name:string prop ->
  name:string prop ->
  namespace_path:string prop ->
  resource_group_name:string prop ->
  storage_container_id:string prop ->
  string ->
  t
