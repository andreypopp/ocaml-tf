(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert_v2__action

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__dimension

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__failing_periods

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria
type azurerm_monitor_scheduled_query_rules_alert_v2__timeouts
type azurerm_monitor_scheduled_query_rules_alert_v2

type t = private {
  auto_mitigation_enabled : bool prop;
  created_with_api_version : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  evaluation_frequency : string prop;
  id : string prop;
  is_a_legacy_log_analytics_rule : bool prop;
  is_workspace_alerts_storage_configured : bool prop;
  location : string prop;
  mute_actions_after_alert_duration : string prop;
  name : string prop;
  query_time_range_override : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  severity : float prop;
  skip_query_validation : bool prop;
  tags : (string * string) list prop;
  target_resource_types : string list prop;
  window_duration : string prop;
  workspace_alerts_storage_enabled : bool prop;
}

val azurerm_monitor_scheduled_query_rules_alert_v2 :
  ?auto_mitigation_enabled:bool prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?evaluation_frequency:string prop ->
  ?id:string prop ->
  ?mute_actions_after_alert_duration:string prop ->
  ?query_time_range_override:string prop ->
  ?skip_query_validation:bool prop ->
  ?tags:(string * string prop) list ->
  ?target_resource_types:string prop list ->
  ?workspace_alerts_storage_enabled:bool prop ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_alert_v2__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  severity:float prop ->
  window_duration:string prop ->
  action:azurerm_monitor_scheduled_query_rules_alert_v2__action list ->
  criteria:
    azurerm_monitor_scheduled_query_rules_alert_v2__criteria list ->
  string ->
  t
