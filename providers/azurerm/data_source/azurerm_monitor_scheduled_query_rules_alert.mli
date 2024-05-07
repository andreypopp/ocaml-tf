(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action = {
  action_group : string prop list;  (** action_group *)
  custom_webhook_payload : string prop;
      (** custom_webhook_payload *)
  email_subject : string prop;  (** email_subject *)
}

type trigger__metric_trigger = {
  metric_column : string prop;  (** metric_column *)
  metric_trigger_type : string prop;  (** metric_trigger_type *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
}

type trigger = {
  metric_trigger : trigger__metric_trigger list;
      (** metric_trigger *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_scheduled_query_rules_alert

val azurerm_monitor_scheduled_query_rules_alert :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_monitor_scheduled_query_rules_alert

val yojson_of_azurerm_monitor_scheduled_query_rules_alert :
  azurerm_monitor_scheduled_query_rules_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : action list prop;
  authorized_resource_ids : string list prop;
  data_source_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  query : string prop;
  query_type : string prop;
  resource_group_name : string prop;
  severity : float prop;
  tags : (string * string) list prop;
  throttling : float prop;
  time_window : float prop;
  trigger : trigger list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
