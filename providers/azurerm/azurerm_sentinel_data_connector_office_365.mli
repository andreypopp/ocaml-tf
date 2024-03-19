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

type azurerm_sentinel_data_connector_office_365

val azurerm_sentinel_data_connector_office_365 :
  ?exchange_enabled:bool prop ->
  ?id:string prop ->
  ?sharepoint_enabled:bool prop ->
  ?teams_enabled:bool prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_office_365

val yojson_of_azurerm_sentinel_data_connector_office_365 :
  azurerm_sentinel_data_connector_office_365 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  exchange_enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  sharepoint_enabled : bool prop;
  teams_enabled : bool prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?exchange_enabled:bool prop ->
  ?id:string prop ->
  ?sharepoint_enabled:bool prop ->
  ?teams_enabled:bool prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
