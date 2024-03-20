(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log__filter

val log__filter :
  action:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  log__filter

type log

val log :
  ?aad_log_enabled:bool prop ->
  ?resource_log_enabled:bool prop ->
  ?subscription_log_enabled:bool prop ->
  filter:log__filter list ->
  unit ->
  log

type metric__filter

val metric__filter :
  action:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  metric__filter

type metric

val metric : filter:metric__filter list -> unit -> metric

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_datadog_monitor_tag_rule

val azurerm_datadog_monitor_tag_rule :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  datadog_monitor_id:string prop ->
  log:log list ->
  metric:metric list ->
  unit ->
  azurerm_datadog_monitor_tag_rule

val yojson_of_azurerm_datadog_monitor_tag_rule :
  azurerm_datadog_monitor_tag_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  datadog_monitor_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  datadog_monitor_id:string prop ->
  log:log list ->
  metric:metric list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  datadog_monitor_id:string prop ->
  log:log list ->
  metric:metric list ->
  string ->
  t Tf_core.resource
