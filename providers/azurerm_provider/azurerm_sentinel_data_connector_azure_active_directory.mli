(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_active_directory__timeouts
type azurerm_sentinel_data_connector_azure_active_directory

val azurerm_sentinel_data_connector_azure_active_directory :
  ?id:string ->
  ?tenant_id:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_azure_active_directory__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
