(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence__timeouts
type azurerm_sentinel_data_connector_threat_intelligence

type t = private {
  id : string prop;
  log_analytics_workspace_id : string prop;
  lookback_date : string prop;
  name : string prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_threat_intelligence :
  ?id:string prop ->
  ?lookback_date:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_threat_intelligence__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
