(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property

type azurerm_sentinel_alert_rule_nrt__alert_details_override
type azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping
type azurerm_sentinel_alert_rule_nrt__entity_mapping
type azurerm_sentinel_alert_rule_nrt__event_grouping
type azurerm_sentinel_alert_rule_nrt__incident__grouping
type azurerm_sentinel_alert_rule_nrt__incident
type azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping
type azurerm_sentinel_alert_rule_nrt__timeouts
type azurerm_sentinel_alert_rule_nrt

val azurerm_sentinel_alert_rule_nrt :
  ?alert_rule_template_guid:string ->
  ?alert_rule_template_version:string ->
  ?custom_details:(string * string) list ->
  ?description:string ->
  ?enabled:bool ->
  ?suppression_duration:string ->
  ?suppression_enabled:bool ->
  ?tactics:string list ->
  ?techniques:string list ->
  ?timeouts:azurerm_sentinel_alert_rule_nrt__timeouts ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  query:string ->
  severity:string ->
  alert_details_override:
    azurerm_sentinel_alert_rule_nrt__alert_details_override list ->
  entity_mapping:azurerm_sentinel_alert_rule_nrt__entity_mapping list ->
  event_grouping:azurerm_sentinel_alert_rule_nrt__event_grouping list ->
  incident:azurerm_sentinel_alert_rule_nrt__incident list ->
  sentinel_entity_mapping:
    azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping list ->
  string ->
  unit
