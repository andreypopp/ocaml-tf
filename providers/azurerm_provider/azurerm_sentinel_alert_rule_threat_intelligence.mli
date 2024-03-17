(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_threat_intelligence__timeouts
type azurerm_sentinel_alert_rule_threat_intelligence

val azurerm_sentinel_alert_rule_threat_intelligence :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_sentinel_alert_rule_threat_intelligence__timeouts ->
  alert_rule_template_guid:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  unit
