(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property

type azurerm_sentinel_alert_rule_scheduled__alert_details_override

type azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping

type azurerm_sentinel_alert_rule_scheduled__entity_mapping
type azurerm_sentinel_alert_rule_scheduled__event_grouping

type azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping

type azurerm_sentinel_alert_rule_scheduled__incident_configuration
type azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping
type azurerm_sentinel_alert_rule_scheduled__timeouts
type azurerm_sentinel_alert_rule_scheduled

val azurerm_sentinel_alert_rule_scheduled :
  ?alert_rule_template_guid:string ->
  ?alert_rule_template_version:string ->
  ?custom_details:(string * string) list ->
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?query_frequency:string ->
  ?query_period:string ->
  ?suppression_duration:string ->
  ?suppression_enabled:bool ->
  ?tactics:string list ->
  ?techniques:string list ->
  ?trigger_operator:string ->
  ?trigger_threshold:float ->
  ?timeouts:azurerm_sentinel_alert_rule_scheduled__timeouts ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  query:string ->
  severity:string ->
  alert_details_override:
    azurerm_sentinel_alert_rule_scheduled__alert_details_override
    list ->
  entity_mapping:
    azurerm_sentinel_alert_rule_scheduled__entity_mapping list ->
  event_grouping:
    azurerm_sentinel_alert_rule_scheduled__event_grouping list ->
  incident_configuration:
    azurerm_sentinel_alert_rule_scheduled__incident_configuration
    list ->
  sentinel_entity_mapping:
    azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping
    list ->
  string ->
  unit
