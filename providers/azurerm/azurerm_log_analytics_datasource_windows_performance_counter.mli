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

type azurerm_log_analytics_datasource_windows_performance_counter

val azurerm_log_analytics_datasource_windows_performance_counter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  counter_name:string prop ->
  instance_name:string prop ->
  interval_seconds:float prop ->
  name:string prop ->
  object_name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  unit ->
  azurerm_log_analytics_datasource_windows_performance_counter

val yojson_of_azurerm_log_analytics_datasource_windows_performance_counter :
  azurerm_log_analytics_datasource_windows_performance_counter ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  counter_name : string prop;
  id : string prop;
  instance_name : string prop;
  interval_seconds : float prop;
  name : string prop;
  object_name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  counter_name:string prop ->
  instance_name:string prop ->
  interval_seconds:float prop ->
  name:string prop ->
  object_name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  counter_name:string prop ->
  instance_name:string prop ->
  interval_seconds:float prop ->
  name:string prop ->
  object_name:string prop ->
  resource_group_name:string prop ->
  workspace_name:string prop ->
  string ->
  t Tf_core.resource
