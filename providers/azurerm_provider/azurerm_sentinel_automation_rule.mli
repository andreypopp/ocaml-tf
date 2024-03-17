(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_automation_rule__action_incident
type azurerm_sentinel_automation_rule__action_playbook
type azurerm_sentinel_automation_rule__condition
type azurerm_sentinel_automation_rule__timeouts
type azurerm_sentinel_automation_rule

val azurerm_sentinel_automation_rule :
  ?condition_json:string ->
  ?enabled:bool ->
  ?expiration:string ->
  ?id:string ->
  ?triggers_on:string ->
  ?triggers_when:string ->
  ?timeouts:azurerm_sentinel_automation_rule__timeouts ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  order:float ->
  action_incident:
    azurerm_sentinel_automation_rule__action_incident list ->
  action_playbook:
    azurerm_sentinel_automation_rule__action_playbook list ->
  condition:azurerm_sentinel_automation_rule__condition list ->
  string ->
  unit
