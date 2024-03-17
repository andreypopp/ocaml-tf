(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts

type azurerm_sentinel_data_connector_threat_intelligence_taxii

type t = private {
  api_root_url : string prop;
  collection_id : string prop;
  display_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  lookback_date : string prop;
  name : string prop;
  password : string prop;
  polling_frequency : string prop;
  tenant_id : string prop;
  user_name : string prop;
}

val azurerm_sentinel_data_connector_threat_intelligence_taxii :
  ?id:string prop ->
  ?lookback_date:string prop ->
  ?password:string prop ->
  ?polling_frequency:string prop ->
  ?tenant_id:string prop ->
  ?user_name:string prop ->
  ?timeouts:
    azurerm_sentinel_data_connector_threat_intelligence_taxii__timeouts ->
  api_root_url:string prop ->
  collection_id:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
