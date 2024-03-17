(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence__timeouts
type azurerm_sentinel_data_connector_threat_intelligence

val azurerm_sentinel_data_connector_threat_intelligence :
  ?id:string ->
  ?lookback_date:string ->
  ?tenant_id:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_threat_intelligence__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
