(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts

type azurerm_sentinel_data_connector_microsoft_threat_intelligence

val azurerm_sentinel_data_connector_microsoft_threat_intelligence :
  ?bing_safety_phishing_url_lookback_date:string ->
  ?microsoft_emerging_threat_feed_lookback_date:string ->
  ?timeouts:
    azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
