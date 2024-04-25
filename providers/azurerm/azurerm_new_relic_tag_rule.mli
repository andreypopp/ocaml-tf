(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type log_tag_filter

val log_tag_filter :
  action:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  log_tag_filter

type metric_tag_filter

val metric_tag_filter :
  action:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  metric_tag_filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_new_relic_tag_rule

val azurerm_new_relic_tag_rule :
  ?activity_log_enabled:bool prop ->
  ?azure_active_directory_log_enabled:bool prop ->
  ?id:string prop ->
  ?metric_enabled:bool prop ->
  ?subscription_log_enabled:bool prop ->
  ?log_tag_filter:log_tag_filter list ->
  ?metric_tag_filter:metric_tag_filter list ->
  ?timeouts:timeouts ->
  monitor_id:string prop ->
  unit ->
  azurerm_new_relic_tag_rule

val yojson_of_azurerm_new_relic_tag_rule :
  azurerm_new_relic_tag_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  activity_log_enabled : bool prop;
  azure_active_directory_log_enabled : bool prop;
  id : string prop;
  metric_enabled : bool prop;
  monitor_id : string prop;
  subscription_log_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?activity_log_enabled:bool prop ->
  ?azure_active_directory_log_enabled:bool prop ->
  ?id:string prop ->
  ?metric_enabled:bool prop ->
  ?subscription_log_enabled:bool prop ->
  ?log_tag_filter:log_tag_filter list ->
  ?metric_tag_filter:metric_tag_filter list ->
  ?timeouts:timeouts ->
  monitor_id:string prop ->
  string ->
  t

val make :
  ?activity_log_enabled:bool prop ->
  ?azure_active_directory_log_enabled:bool prop ->
  ?id:string prop ->
  ?metric_enabled:bool prop ->
  ?subscription_log_enabled:bool prop ->
  ?log_tag_filter:log_tag_filter list ->
  ?metric_tag_filter:metric_tag_filter list ->
  ?timeouts:timeouts ->
  monitor_id:string prop ->
  string ->
  t Tf_core.resource
