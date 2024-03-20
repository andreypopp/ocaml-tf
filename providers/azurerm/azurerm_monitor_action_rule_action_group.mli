(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition__alert_context

val condition__alert_context :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__alert_context

type condition__alert_rule_id

val condition__alert_rule_id :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__alert_rule_id

type condition__description

val condition__description :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__description

type condition__monitor

val condition__monitor :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__monitor

type condition__monitor_service

val condition__monitor_service :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__monitor_service

type condition__severity

val condition__severity :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__severity

type condition__target_resource_type

val condition__target_resource_type :
  operator:string prop ->
  values:string prop list ->
  unit ->
  condition__target_resource_type

type condition

val condition :
  alert_context:condition__alert_context list ->
  alert_rule_id:condition__alert_rule_id list ->
  description:condition__description list ->
  monitor:condition__monitor list ->
  monitor_service:condition__monitor_service list ->
  severity:condition__severity list ->
  target_resource_type:condition__target_resource_type list ->
  unit ->
  condition

type scope

val scope :
  resource_ids:string prop list -> type_:string prop -> unit -> scope

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_action_rule_action_group

val azurerm_monitor_action_rule_action_group :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  action_group_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  condition:condition list ->
  scope:scope list ->
  unit ->
  azurerm_monitor_action_rule_action_group

val yojson_of_azurerm_monitor_action_rule_action_group :
  azurerm_monitor_action_rule_action_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action_group_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  action_group_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  condition:condition list ->
  scope:scope list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  action_group_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  condition:condition list ->
  scope:scope list ->
  string ->
  t Tf_core.resource
