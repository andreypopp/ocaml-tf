(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?custom_webhook_payload:string prop ->
  ?email_subject:string prop ->
  action_group:string prop list ->
  unit ->
  action

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trigger__metric_trigger

val trigger__metric_trigger :
  ?metric_column:string prop ->
  metric_trigger_type:string prop ->
  operator:string prop ->
  threshold:float prop ->
  unit ->
  trigger__metric_trigger

type trigger

val trigger :
  ?metric_trigger:trigger__metric_trigger list ->
  operator:string prop ->
  threshold:float prop ->
  unit ->
  trigger

type azurerm_monitor_scheduled_query_rules_alert

val azurerm_monitor_scheduled_query_rules_alert :
  ?authorized_resource_ids:string prop list ->
  ?auto_mitigation_enabled:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?query_type:string prop ->
  ?severity:float prop ->
  ?tags:(string * string prop) list ->
  ?throttling:float prop ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  frequency:float prop ->
  location:string prop ->
  name:string prop ->
  query:string prop ->
  resource_group_name:string prop ->
  time_window:float prop ->
  action:action list ->
  trigger:trigger list ->
  unit ->
  azurerm_monitor_scheduled_query_rules_alert

val yojson_of_azurerm_monitor_scheduled_query_rules_alert :
  azurerm_monitor_scheduled_query_rules_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorized_resource_ids : string list prop;
  auto_mitigation_enabled : bool prop;
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
}

val register :
  ?tf_module:tf_module ->
  ?authorized_resource_ids:string prop list ->
  ?auto_mitigation_enabled:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?query_type:string prop ->
  ?severity:float prop ->
  ?tags:(string * string prop) list ->
  ?throttling:float prop ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  frequency:float prop ->
  location:string prop ->
  name:string prop ->
  query:string prop ->
  resource_group_name:string prop ->
  time_window:float prop ->
  action:action list ->
  trigger:trigger list ->
  string ->
  t

val make :
  ?authorized_resource_ids:string prop list ->
  ?auto_mitigation_enabled:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?query_type:string prop ->
  ?severity:float prop ->
  ?tags:(string * string prop) list ->
  ?throttling:float prop ->
  ?timeouts:timeouts ->
  data_source_id:string prop ->
  frequency:float prop ->
  location:string prop ->
  name:string prop ->
  query:string prop ->
  resource_group_name:string prop ->
  time_window:float prop ->
  action:action list ->
  trigger:trigger list ->
  string ->
  t Tf_core.resource
