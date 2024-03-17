(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_event__timeouts
type azurerm_log_analytics_datasource_windows_event

type t = private {
  event_log_name : string prop;
  event_types : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

val azurerm_log_analytics_datasource_windows_event :
  ?id:string prop ->
  ?timeouts:azurerm_log_analytics_datasource_windows_event__timeouts ->
  event_log_name:string prop ->
  event_types:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  t
