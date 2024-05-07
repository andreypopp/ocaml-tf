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

type azurerm_synapse_workspace_extended_auditing_policy

val azurerm_synapse_workspace_extended_auditing_policy :
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  synapse_workspace_id:string prop ->
  unit ->
  azurerm_synapse_workspace_extended_auditing_policy

val yojson_of_azurerm_synapse_workspace_extended_auditing_policy :
  azurerm_synapse_workspace_extended_auditing_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
  synapse_workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  synapse_workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  synapse_workspace_id:string prop ->
  string ->
  t Tf_core.resource
