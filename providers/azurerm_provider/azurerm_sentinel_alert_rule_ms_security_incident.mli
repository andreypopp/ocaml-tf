(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_ms_security_incident__timeouts
type azurerm_sentinel_alert_rule_ms_security_incident

val azurerm_sentinel_alert_rule_ms_security_incident :
  ?alert_rule_template_guid:string ->
  ?description:string ->
  ?display_name_exclude_filter:string list ->
  ?enabled:bool ->
  ?timeouts:
    azurerm_sentinel_alert_rule_ms_security_incident__timeouts ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  product_filter:string ->
  severity_filter:string list ->
  string ->
  unit
