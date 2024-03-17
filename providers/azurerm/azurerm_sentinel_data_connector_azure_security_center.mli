(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_azure_security_center__timeouts
type azurerm_sentinel_data_connector_azure_security_center

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

val azurerm_sentinel_data_connector_azure_security_center :
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_azure_security_center__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
