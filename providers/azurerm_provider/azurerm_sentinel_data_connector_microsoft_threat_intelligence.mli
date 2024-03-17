(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts

type azurerm_sentinel_data_connector_microsoft_threat_intelligence

type t = private {
  bing_safety_phishing_url_lookback_date : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  microsoft_emerging_threat_feed_lookback_date : string prop;
  name : string prop;
  tenant_id : string prop;
}

val azurerm_sentinel_data_connector_microsoft_threat_intelligence :
  ?bing_safety_phishing_url_lookback_date:string prop ->
  ?id:string prop ->
  ?microsoft_emerging_threat_feed_lookback_date:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_microsoft_threat_intelligence__timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
