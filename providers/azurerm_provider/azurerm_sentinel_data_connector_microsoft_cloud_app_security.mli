(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts

type azurerm_sentinel_data_connector_microsoft_cloud_app_security

val azurerm_sentinel_data_connector_microsoft_cloud_app_security :
  ?alerts_enabled:bool ->
  ?discovery_logs_enabled:bool ->
  ?id:string ->
  ?tenant_id:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
