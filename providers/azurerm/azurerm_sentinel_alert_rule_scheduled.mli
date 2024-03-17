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

type t = private {
  alert_rule_template_guid : string prop;
  alert_rule_template_version : string prop;
  custom_details : (string * string) list prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  query_frequency : string prop;
  query_period : string prop;
  severity : string prop;
  suppression_duration : string prop;
  suppression_enabled : bool prop;
  tactics : string list prop;
  techniques : string list prop;
  trigger_operator : string prop;
  trigger_threshold : float prop;
}

val azurerm_sentinel_alert_rule_scheduled :
  ?alert_rule_template_guid:string prop ->
  ?alert_rule_template_version:string prop ->
  ?custom_details:(string * string prop) list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?query_frequency:string prop ->
  ?query_period:string prop ->
  ?suppression_duration:string prop ->
  ?suppression_enabled:bool prop ->
  ?tactics:string prop list ->
  ?techniques:string prop list ->
  ?trigger_operator:string prop ->
  ?trigger_threshold:float prop ->
  ?timeouts:azurerm_sentinel_alert_rule_scheduled__timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  severity:string prop ->
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
  t
