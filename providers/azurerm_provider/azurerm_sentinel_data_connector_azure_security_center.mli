(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_security_center__timeouts
type azurerm_sentinel_data_connector_azure_security_center

val azurerm_sentinel_data_connector_azure_security_center :
  ?id:string ->
  ?subscription_id:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_azure_security_center__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
