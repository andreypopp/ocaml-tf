(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type multi_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  values : string prop list;  (** values *)
}

type prioritized_exclude_observation = {
  description : string prop;  (** description *)
  exclude : string prop;  (** exclude *)
  name : string prop;  (** name *)
  prioritize : string prop;  (** prioritize *)
}

type required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}

type single_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  value : string prop;  (** value *)
}

type threshold_observation = {
  description : string prop;  (** description *)
  max : string prop;  (** max *)
  min : string prop;  (** min *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_alert_rule_anomaly_built_in

val azurerm_sentinel_alert_rule_anomaly_built_in :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  unit ->
  azurerm_sentinel_alert_rule_anomaly_built_in

val yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in :
  azurerm_sentinel_alert_rule_anomaly_built_in -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  anomaly_settings_version : float prop;
  anomaly_version : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  mode : string prop;
  multi_select_observation : multi_select_observation list prop;
  name : string prop;
  prioritized_exclude_observation :
    prioritized_exclude_observation list prop;
  required_data_connector : required_data_connector list prop;
  settings_definition_id : string prop;
  single_select_observation : single_select_observation list prop;
  tactics : string list prop;
  techniques : string list prop;
  threshold_observation : threshold_observation list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  string ->
  t Tf_core.resource
