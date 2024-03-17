(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_active_directory__timeouts
type azurerm_sentinel_data_connector_azure_active_directory

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_azure_active_directory :
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_azure_active_directory__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
