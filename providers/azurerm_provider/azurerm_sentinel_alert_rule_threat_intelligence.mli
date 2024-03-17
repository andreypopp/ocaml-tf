(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_threat_intelligence__timeouts
type azurerm_sentinel_alert_rule_threat_intelligence

val azurerm_sentinel_alert_rule_threat_intelligence :
  ?enabled:bool ->
  ?id:string ->
  ?timeouts:azurerm_sentinel_alert_rule_threat_intelligence__timeouts ->
  alert_rule_template_guid:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
