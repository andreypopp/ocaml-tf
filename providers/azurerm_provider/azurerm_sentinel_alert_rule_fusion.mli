(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_fusion__source__sub_type
type azurerm_sentinel_alert_rule_fusion__source
type azurerm_sentinel_alert_rule_fusion__timeouts
type azurerm_sentinel_alert_rule_fusion

val azurerm_sentinel_alert_rule_fusion :
  ?enabled:bool ->
  ?id:string ->
  ?timeouts:azurerm_sentinel_alert_rule_fusion__timeouts ->
  alert_rule_template_guid:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  source:azurerm_sentinel_alert_rule_fusion__source list ->
  string ->
  unit
