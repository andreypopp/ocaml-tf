(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics

val azurerm_sentinel_alert_rule_machine_learning_behavior_analytics :
  ?enabled:bool ->
  ?timeouts:
    azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts ->
  alert_rule_template_guid:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
