(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_action_rule_action_group__condition__alert_context

type azurerm_monitor_action_rule_action_group__condition__alert_rule_id

type azurerm_monitor_action_rule_action_group__condition__description
type azurerm_monitor_action_rule_action_group__condition__monitor

type azurerm_monitor_action_rule_action_group__condition__monitor_service

type azurerm_monitor_action_rule_action_group__condition__severity

type azurerm_monitor_action_rule_action_group__condition__target_resource_type

type azurerm_monitor_action_rule_action_group__condition
type azurerm_monitor_action_rule_action_group__scope
type azurerm_monitor_action_rule_action_group__timeouts
type azurerm_monitor_action_rule_action_group

val azurerm_monitor_action_rule_action_group :
  ?description:string ->
  ?enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_action_rule_action_group__timeouts ->
  action_group_id:string ->
  name:string ->
  resource_group_name:string ->
  condition:azurerm_monitor_action_rule_action_group__condition list ->
  scope:azurerm_monitor_action_rule_action_group__scope list ->
  string ->
  unit
