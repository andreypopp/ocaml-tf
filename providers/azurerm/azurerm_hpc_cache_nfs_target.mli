(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type namespace_junction

val namespace_junction :
  ?access_policy_name:string prop ->
  ?target_path:string prop ->
  namespace_path:string prop ->
  nfs_export:string prop ->
  unit ->
  namespace_junction

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_hpc_cache_nfs_target

val azurerm_hpc_cache_nfs_target :
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_host_name:string prop ->
  usage_model:string prop ->
  namespace_junction:namespace_junction list ->
  unit ->
  azurerm_hpc_cache_nfs_target

val yojson_of_azurerm_hpc_cache_nfs_target :
  azurerm_hpc_cache_nfs_target -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cache_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  target_host_name : string prop;
  usage_model : string prop;
  verification_timer_in_seconds : float prop;
  write_back_timer_in_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_host_name:string prop ->
  usage_model:string prop ->
  namespace_junction:namespace_junction list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?verification_timer_in_seconds:float prop ->
  ?write_back_timer_in_seconds:float prop ->
  ?timeouts:timeouts ->
  cache_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  target_host_name:string prop ->
  usage_model:string prop ->
  namespace_junction:namespace_junction list ->
  string ->
  t Tf_core.resource
