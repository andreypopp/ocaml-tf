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

type azurerm_storage_container_immutability_policy

val azurerm_storage_container_immutability_policy :
  ?id:string prop ->
  ?locked:bool prop ->
  ?protected_append_writes_all_enabled:bool prop ->
  ?protected_append_writes_enabled:bool prop ->
  ?timeouts:timeouts ->
  immutability_period_in_days:float prop ->
  storage_container_resource_manager_id:string prop ->
  unit ->
  azurerm_storage_container_immutability_policy

val yojson_of_azurerm_storage_container_immutability_policy :
  azurerm_storage_container_immutability_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  immutability_period_in_days : float prop;
  locked : bool prop;
  protected_append_writes_all_enabled : bool prop;
  protected_append_writes_enabled : bool prop;
  storage_container_resource_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?locked:bool prop ->
  ?protected_append_writes_all_enabled:bool prop ->
  ?protected_append_writes_enabled:bool prop ->
  ?timeouts:timeouts ->
  immutability_period_in_days:float prop ->
  storage_container_resource_manager_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?locked:bool prop ->
  ?protected_append_writes_all_enabled:bool prop ->
  ?protected_append_writes_enabled:bool prop ->
  ?timeouts:timeouts ->
  immutability_period_in_days:float prop ->
  storage_container_resource_manager_id:string prop ->
  string ->
  t Tf_core.resource
