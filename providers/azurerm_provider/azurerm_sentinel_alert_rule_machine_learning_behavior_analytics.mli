(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics

val azurerm_sentinel_alert_rule_machine_learning_behavior_analytics :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  unit
