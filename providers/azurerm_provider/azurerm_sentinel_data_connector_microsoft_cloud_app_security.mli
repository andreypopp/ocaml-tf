(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts

type azurerm_sentinel_data_connector_microsoft_cloud_app_security

val azurerm_sentinel_data_connector_microsoft_cloud_app_security :
  ?alerts_enabled:bool prop ->
  ?discovery_logs_enabled:bool prop ->
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_microsoft_cloud_app_security__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  unit
