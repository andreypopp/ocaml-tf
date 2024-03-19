(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_data_connector_microsoft_cloud_app_security

val azurerm_sentinel_data_connector_microsoft_cloud_app_security :
  ?alerts_enabled:bool prop ->
  ?discovery_logs_enabled:bool prop ->
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_microsoft_cloud_app_security

val yojson_of_azurerm_sentinel_data_connector_microsoft_cloud_app_security :
  azurerm_sentinel_data_connector_microsoft_cloud_app_security ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  alerts_enabled : bool prop;
  discovery_logs_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alerts_enabled:bool prop ->
  ?discovery_logs_enabled:bool prop ->
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
