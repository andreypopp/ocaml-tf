(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tag_filter

val tag_filter :
  ?value:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  tag_filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logz_tag_rule

val azurerm_logz_tag_rule :
  ?id:string prop ->
  ?send_aad_logs:bool prop ->
  ?send_activity_logs:bool prop ->
  ?send_subscription_logs:bool prop ->
  ?tag_filter:tag_filter list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  unit ->
  azurerm_logz_tag_rule

val yojson_of_azurerm_logz_tag_rule : azurerm_logz_tag_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  logz_monitor_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?send_aad_logs:bool prop ->
  ?send_activity_logs:bool prop ->
  ?send_subscription_logs:bool prop ->
  ?tag_filter:tag_filter list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?send_aad_logs:bool prop ->
  ?send_activity_logs:bool prop ->
  ?send_subscription_logs:bool prop ->
  ?tag_filter:tag_filter list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  string ->
  t Tf_core.resource
