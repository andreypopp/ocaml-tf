(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?action_groups:string prop list ->
  ?custom_properties:(string * string prop) list ->
  unit ->
  action

type criteria__dimension

val criteria__dimension :
  name:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  criteria__dimension

type criteria__failing_periods

val criteria__failing_periods :
  minimum_failing_periods_to_trigger_alert:float prop ->
  number_of_evaluation_periods:float prop ->
  unit ->
  criteria__failing_periods

type criteria

val criteria :
  ?metric_measure_column:string prop ->
  ?resource_id_column:string prop ->
  ?dimension:criteria__dimension list ->
  ?failing_periods:criteria__failing_periods list ->
  operator:string prop ->
  query:string prop ->
  threshold:float prop ->
  time_aggregation_method:string prop ->
  unit ->
  criteria

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_scheduled_query_rules_alert_v2

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
  ?action:action list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  severity:float prop ->
  window_duration:string prop ->
  criteria:criteria list ->
  unit ->
  azurerm_monitor_scheduled_query_rules_alert_v2

val yojson_of_azurerm_monitor_scheduled_query_rules_alert_v2 :
  azurerm_monitor_scheduled_query_rules_alert_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
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
  ?action:action list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  severity:float prop ->
  window_duration:string prop ->
  criteria:criteria list ->
  string ->
  t

val make :
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
  ?action:action list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  severity:float prop ->
  window_duration:string prop ->
  criteria:criteria list ->
  string ->
  t Tf_core.resource
