(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type alert_details_override__dynamic_property

val alert_details_override__dynamic_property :
  name:string prop ->
  value:string prop ->
  unit ->
  alert_details_override__dynamic_property

type alert_details_override

val alert_details_override :
  ?description_format:string prop ->
  ?display_name_format:string prop ->
  ?severity_column_name:string prop ->
  ?tactics_column_name:string prop ->
  ?dynamic_property:alert_details_override__dynamic_property list ->
  unit ->
  alert_details_override

type entity_mapping__field_mapping

val entity_mapping__field_mapping :
  column_name:string prop ->
  identifier:string prop ->
  unit ->
  entity_mapping__field_mapping

type entity_mapping

val entity_mapping :
  entity_type:string prop ->
  field_mapping:entity_mapping__field_mapping list ->
  unit ->
  entity_mapping

type event_grouping

val event_grouping :
  aggregation_method:string prop -> unit -> event_grouping

type incident__grouping

val incident__grouping :
  ?by_alert_details:string prop list ->
  ?by_custom_details:string prop list ->
  ?by_entities:string prop list ->
  ?enabled:bool prop ->
  ?entity_matching_method:string prop ->
  ?lookback_duration:string prop ->
  ?reopen_closed_incidents:bool prop ->
  unit ->
  incident__grouping

type incident

val incident :
  create_incident_enabled:bool prop ->
  grouping:incident__grouping list ->
  unit ->
  incident

type sentinel_entity_mapping

val sentinel_entity_mapping :
  column_name:string prop -> unit -> sentinel_entity_mapping

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_alert_rule_nrt

val azurerm_sentinel_alert_rule_nrt :
  ?alert_rule_template_guid:string prop ->
  ?alert_rule_template_version:string prop ->
  ?custom_details:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?suppression_duration:string prop ->
  ?suppression_enabled:bool prop ->
  ?tactics:string prop list ->
  ?techniques:string prop list ->
  ?alert_details_override:alert_details_override list ->
  ?entity_mapping:entity_mapping list ->
  ?event_grouping:event_grouping list ->
  ?incident:incident list ->
  ?sentinel_entity_mapping:sentinel_entity_mapping list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  severity:string prop ->
  unit ->
  azurerm_sentinel_alert_rule_nrt

val yojson_of_azurerm_sentinel_alert_rule_nrt :
  azurerm_sentinel_alert_rule_nrt -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alert_rule_template_guid : string prop;
  alert_rule_template_version : string prop;
  custom_details : string Tf_core.assoc prop;
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

val register :
  ?tf_module:tf_module ->
  ?alert_rule_template_guid:string prop ->
  ?alert_rule_template_version:string prop ->
  ?custom_details:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?suppression_duration:string prop ->
  ?suppression_enabled:bool prop ->
  ?tactics:string prop list ->
  ?techniques:string prop list ->
  ?alert_details_override:alert_details_override list ->
  ?entity_mapping:entity_mapping list ->
  ?event_grouping:event_grouping list ->
  ?incident:incident list ->
  ?sentinel_entity_mapping:sentinel_entity_mapping list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  severity:string prop ->
  string ->
  t

val make :
  ?alert_rule_template_guid:string prop ->
  ?alert_rule_template_version:string prop ->
  ?custom_details:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?suppression_duration:string prop ->
  ?suppression_enabled:bool prop ->
  ?tactics:string prop list ->
  ?techniques:string prop list ->
  ?alert_details_override:alert_details_override list ->
  ?entity_mapping:entity_mapping list ->
  ?event_grouping:event_grouping list ->
  ?incident:incident list ->
  ?sentinel_entity_mapping:sentinel_entity_mapping list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  severity:string prop ->
  string ->
  t Tf_core.resource
