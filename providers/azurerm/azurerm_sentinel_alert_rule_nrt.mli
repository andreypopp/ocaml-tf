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
  severity : string prop;
  suppression_duration : string prop;
  suppression_enabled : bool prop;
  tactics : string list prop;
  techniques : string list prop;
}

val azurerm_sentinel_alert_rule_nrt :
  ?alert_rule_template_guid:string prop ->
  ?alert_rule_template_version:string prop ->
  ?custom_details:(string * string prop) list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?suppression_duration:string prop ->
  ?suppression_enabled:bool prop ->
  ?tactics:string prop list ->
  ?techniques:string prop list ->
  ?timeouts:azurerm_sentinel_alert_rule_nrt__timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  severity:string prop ->
  alert_details_override:
    azurerm_sentinel_alert_rule_nrt__alert_details_override list ->
  entity_mapping:azurerm_sentinel_alert_rule_nrt__entity_mapping list ->
  event_grouping:azurerm_sentinel_alert_rule_nrt__event_grouping list ->
  incident:azurerm_sentinel_alert_rule_nrt__incident list ->
  sentinel_entity_mapping:
    azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping list ->
  string ->
  t
