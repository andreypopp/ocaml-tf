(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_datasource_windows_performance_counter__timeouts

type azurerm_log_analytics_datasource_windows_performance_counter

val azurerm_log_analytics_datasource_windows_performance_counter :
  ?id:string prop ->
  ?timeouts:
    azurerm_log_analytics_datasource_windows_performance_counter__timeouts ->
  counter_name:string prop ->
  instance_name:string prop ->
  interval_seconds:float prop ->
  name:string prop ->
  object_name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  unit
