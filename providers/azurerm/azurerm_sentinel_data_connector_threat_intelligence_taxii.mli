(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_data_connector_threat_intelligence_taxii

val azurerm_sentinel_data_connector_threat_intelligence_taxii :
  ?id:string prop ->
  ?lookback_date:string prop ->
  ?password:string prop ->
  ?polling_frequency:string prop ->
  ?tenant_id:string prop ->
  ?user_name:string prop ->
  ?timeouts:timeouts ->
  api_root_url:string prop ->
  collection_id:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_threat_intelligence_taxii

val yojson_of_azurerm_sentinel_data_connector_threat_intelligence_taxii :
  azurerm_sentinel_data_connector_threat_intelligence_taxii -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?lookback_date:string prop ->
  ?password:string prop ->
  ?polling_frequency:string prop ->
  ?tenant_id:string prop ->
  ?user_name:string prop ->
  ?timeouts:timeouts ->
  api_root_url:string prop ->
  collection_id:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?lookback_date:string prop ->
  ?password:string prop ->
  ?polling_frequency:string prop ->
  ?tenant_id:string prop ->
  ?user_name:string prop ->
  ?timeouts:timeouts ->
  api_root_url:string prop ->
  collection_id:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
