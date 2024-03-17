(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_workspace_extended_auditing_policy__timeouts
type azurerm_synapse_workspace_extended_auditing_policy

val azurerm_synapse_workspace_extended_auditing_policy :
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:
    azurerm_synapse_workspace_extended_auditing_policy__timeouts ->
  synapse_workspace_id:string prop ->
  string ->
  unit
