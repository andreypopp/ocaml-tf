(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}

type multi_select_observation

val multi_select_observation :
  name:string prop ->
  values:string prop list ->
  unit ->
  multi_select_observation

type prioritized_exclude_observation

val prioritized_exclude_observation :
  ?exclude:string prop ->
  ?prioritize:string prop ->
  name:string prop ->
  unit ->
  prioritized_exclude_observation

type single_select_observation

val single_select_observation :
  name:string prop ->
  value:string prop ->
  unit ->
  single_select_observation

type threshold_observation

val threshold_observation :
  name:string prop ->
  value:string prop ->
  unit ->
  threshold_observation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_alert_rule_anomaly_duplicate

val azurerm_sentinel_alert_rule_anomaly_duplicate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  built_in_rule_id:string prop ->
  display_name:string prop ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  multi_select_observation:multi_select_observation list ->
  prioritized_exclude_observation:
    prioritized_exclude_observation list ->
  single_select_observation:single_select_observation list ->
  threshold_observation:threshold_observation list ->
  unit ->
  azurerm_sentinel_alert_rule_anomaly_duplicate

val yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate :
  azurerm_sentinel_alert_rule_anomaly_duplicate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  anomaly_settings_version : float prop;
  anomaly_version : string prop;
  built_in_rule_id : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  is_default_settings : bool prop;
  log_analytics_workspace_id : string prop;
  mode : string prop;
  name : string prop;
  required_data_connector : required_data_connector list prop;
  settings_definition_id : string prop;
  tactics : string list prop;
  techniques : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  built_in_rule_id:string prop ->
  display_name:string prop ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  multi_select_observation:multi_select_observation list ->
  prioritized_exclude_observation:
    prioritized_exclude_observation list ->
  single_select_observation:single_select_observation list ->
  threshold_observation:threshold_observation list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  built_in_rule_id:string prop ->
  display_name:string prop ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  multi_select_observation:multi_select_observation list ->
  prioritized_exclude_observation:
    prioritized_exclude_observation list ->
  single_select_observation:single_select_observation list ->
  threshold_observation:threshold_observation list ->
  string ->
  t Tf_core.resource
