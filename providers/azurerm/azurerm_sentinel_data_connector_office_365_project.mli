(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_data_connector_office_365_project

val azurerm_sentinel_data_connector_office_365_project :
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_data_connector_office_365_project

val yojson_of_azurerm_sentinel_data_connector_office_365_project :
  azurerm_sentinel_data_connector_office_365_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tenant_id:string prop ->
  ?timeouts:timeouts ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
