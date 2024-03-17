(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_event__timeouts
type azurerm_log_analytics_datasource_windows_event

val azurerm_log_analytics_datasource_windows_event :
  ?id:string ->
  ?timeouts:azurerm_log_analytics_datasource_windows_event__timeouts ->
  event_log_name:string ->
  event_types:string list ->
  name:string ->
  resource_group_name:string ->
  workspace_name:string ->
  string ->
  unit
