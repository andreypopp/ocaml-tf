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

type azurerm_log_analytics_datasource_windows_event

val azurerm_log_analytics_datasource_windows_event :
  ?id:string prop ->
  ?timeouts:timeouts ->
  event_log_name:string prop ->
  event_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  unit ->
  azurerm_log_analytics_datasource_windows_event

val yojson_of_azurerm_log_analytics_datasource_windows_event :
  azurerm_log_analytics_datasource_windows_event -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  event_log_name : string prop;
  event_types : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  event_log_name:string prop ->
  event_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  event_log_name:string prop ->
  event_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  t Tf_core.resource
