(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_action_rule_suppression__condition__alert_context
type azurerm_monitor_action_rule_suppression__condition__alert_rule_id
type azurerm_monitor_action_rule_suppression__condition__description
type azurerm_monitor_action_rule_suppression__condition__monitor

type azurerm_monitor_action_rule_suppression__condition__monitor_service

type azurerm_monitor_action_rule_suppression__condition__severity

type azurerm_monitor_action_rule_suppression__condition__target_resource_type

type azurerm_monitor_action_rule_suppression__condition
type azurerm_monitor_action_rule_suppression__scope
type azurerm_monitor_action_rule_suppression__suppression__schedule
type azurerm_monitor_action_rule_suppression__suppression
type azurerm_monitor_action_rule_suppression__timeouts
type azurerm_monitor_action_rule_suppression

val azurerm_monitor_action_rule_suppression :
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_action_rule_suppression__timeouts ->
  name:string ->
  resource_group_name:string ->
  condition:azurerm_monitor_action_rule_suppression__condition list ->
  scope:azurerm_monitor_action_rule_suppression__scope list ->
  suppression:
    azurerm_monitor_action_rule_suppression__suppression list ->
  string ->
  unit
