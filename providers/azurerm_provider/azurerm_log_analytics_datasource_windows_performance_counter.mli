(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_performance_counter__timeouts

type azurerm_log_analytics_datasource_windows_performance_counter

val azurerm_log_analytics_datasource_windows_performance_counter :
  ?id:string ->
  ?timeouts:
    azurerm_log_analytics_datasource_windows_performance_counter__timeouts ->
  counter_name:string ->
  instance_name:string ->
  interval_seconds:float ->
  name:string ->
  object_name:string ->
  resource_group_name:string ->
  workspace_name:string ->
  string ->
  unit
