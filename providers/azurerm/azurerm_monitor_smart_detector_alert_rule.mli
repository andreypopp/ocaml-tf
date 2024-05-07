(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action_group

val action_group :
  ?email_subject:string prop ->
  ?webhook_payload:string prop ->
  ids:string prop list ->
  unit ->
  action_group

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_smart_detector_alert_rule

val azurerm_monitor_smart_detector_alert_rule :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?throttling_duration:string prop ->
  ?timeouts:timeouts ->
  detector_type:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_resource_ids:string prop list ->
  severity:string prop ->
  action_group:action_group list ->
  unit ->
  azurerm_monitor_smart_detector_alert_rule

val yojson_of_azurerm_monitor_smart_detector_alert_rule :
  azurerm_monitor_smart_detector_alert_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  detector_type : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_resource_ids : string list prop;
  severity : string prop;
  tags : (string * string) list prop;
  throttling_duration : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?throttling_duration:string prop ->
  ?timeouts:timeouts ->
  detector_type:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_resource_ids:string prop list ->
  severity:string prop ->
  action_group:action_group list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?throttling_duration:string prop ->
  ?timeouts:timeouts ->
  detector_type:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_resource_ids:string prop list ->
  severity:string prop ->
  action_group:action_group list ->
  string ->
  t Tf_core.resource
