(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_iot__timeouts
type azurerm_sentinel_data_connector_iot

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

val azurerm_sentinel_data_connector_iot :
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?timeouts:azurerm_sentinel_data_connector_iot__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
