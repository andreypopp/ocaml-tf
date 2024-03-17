(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts

type azurerm_sentinel_data_connector_threat_intelligence_taxii

val azurerm_sentinel_data_connector_threat_intelligence_taxii :
  ?id:string ->
  ?lookback_date:string ->
  ?password:string ->
  ?polling_frequency:string ->
  ?tenant_id:string ->
  ?user_name:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts ->
  api_root_url:string ->
  collection_id:string ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
