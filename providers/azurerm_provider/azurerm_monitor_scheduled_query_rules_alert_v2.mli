(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert_v2__action

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__dimension

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__failing_periods

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria
type azurerm_monitor_scheduled_query_rules_alert_v2__timeouts
type azurerm_monitor_scheduled_query_rules_alert_v2

val azurerm_monitor_scheduled_query_rules_alert_v2 :
  ?auto_mitigation_enabled:bool ->
  ?description:string ->
  ?display_name:string ->
  ?enabled:bool ->
  ?evaluation_frequency:string ->
  ?id:string ->
  ?mute_actions_after_alert_duration:string ->
  ?query_time_range_override:string ->
  ?skip_query_validation:bool ->
  ?tags:(string * string) list ->
  ?target_resource_types:string list ->
  ?workspace_alerts_storage_enabled:bool ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_alert_v2__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scopes:string list ->
  severity:float ->
  window_duration:string ->
  action:azurerm_monitor_scheduled_query_rules_alert_v2__action list ->
  criteria:
    azurerm_monitor_scheduled_query_rules_alert_v2__criteria list ->
  string ->
  unit
