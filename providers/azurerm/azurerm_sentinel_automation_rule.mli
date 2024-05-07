(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action_incident

val action_incident :
  ?classification:string prop ->
  ?classification_comment:string prop ->
  ?labels:string prop list ->
  ?owner_id:string prop ->
  ?severity:string prop ->
  ?status:string prop ->
  order:float prop ->
  unit ->
  action_incident

type action_playbook

val action_playbook :
  ?tenant_id:string prop ->
  logic_app_id:string prop ->
  order:float prop ->
  unit ->
  action_playbook

type condition

val condition :
  operator:string prop ->
  property:string prop ->
  values:string prop list ->
  unit ->
  condition

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_automation_rule

val azurerm_sentinel_automation_rule :
  ?condition_json:string prop ->
  ?enabled:bool prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?triggers_on:string prop ->
  ?triggers_when:string prop ->
  ?action_incident:action_incident list ->
  ?action_playbook:action_playbook list ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  order:float prop ->
  unit ->
  azurerm_sentinel_automation_rule

val yojson_of_azurerm_sentinel_automation_rule :
  azurerm_sentinel_automation_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  condition_json : string prop;
  display_name : string prop;
  enabled : bool prop;
  expiration : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  order : float prop;
  triggers_on : string prop;
  triggers_when : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?condition_json:string prop ->
  ?enabled:bool prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?triggers_on:string prop ->
  ?triggers_when:string prop ->
  ?action_incident:action_incident list ->
  ?action_playbook:action_playbook list ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  order:float prop ->
  string ->
  t

val make :
  ?condition_json:string prop ->
  ?enabled:bool prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?triggers_on:string prop ->
  ?triggers_when:string prop ->
  ?action_incident:action_incident list ->
  ?action_playbook:action_playbook list ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  order:float prop ->
  string ->
  t Tf_core.resource
