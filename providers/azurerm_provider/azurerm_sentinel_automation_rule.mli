(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_automation_rule__action_incident
type azurerm_sentinel_automation_rule__action_playbook
type azurerm_sentinel_automation_rule__condition
type azurerm_sentinel_automation_rule__timeouts
type azurerm_sentinel_automation_rule

type t = private {
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

val azurerm_sentinel_automation_rule :
  ?condition_json:string prop ->
  ?enabled:bool prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?triggers_on:string prop ->
  ?triggers_when:string prop ->
  ?timeouts:azurerm_sentinel_automation_rule__timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  order:float prop ->
  action_incident:
    azurerm_sentinel_automation_rule__action_incident list ->
  action_playbook:
    azurerm_sentinel_automation_rule__action_playbook list ->
  condition:azurerm_sentinel_automation_rule__condition list ->
  string ->
  t
