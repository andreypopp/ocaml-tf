(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_built_in__timeouts

type azurerm_sentinel_alert_rule_anomaly_built_in__multi_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  values : string prop list;  (** values *)
}

type azurerm_sentinel_alert_rule_anomaly_built_in__prioritized_exclude_observation = {
  description : string prop;  (** description *)
  exclude : string prop;  (** exclude *)
  name : string prop;  (** name *)
  prioritize : string prop;  (** prioritize *)
}

type azurerm_sentinel_alert_rule_anomaly_built_in__required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}

type azurerm_sentinel_alert_rule_anomaly_built_in__single_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  value : string prop;  (** value *)
}

type azurerm_sentinel_alert_rule_anomaly_built_in__threshold_observation = {
  description : string prop;  (** description *)
  max : string prop;  (** max *)
  min : string prop;  (** min *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type azurerm_sentinel_alert_rule_anomaly_built_in

type t = private {
  anomaly_settings_version : float prop;
  anomaly_version : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  mode : string prop;
  multi_select_observation :
    azurerm_sentinel_alert_rule_anomaly_built_in__multi_select_observation
    list
    prop;
  name : string prop;
  prioritized_exclude_observation :
    azurerm_sentinel_alert_rule_anomaly_built_in__prioritized_exclude_observation
    list
    prop;
  required_data_connector :
    azurerm_sentinel_alert_rule_anomaly_built_in__required_data_connector
    list
    prop;
  settings_definition_id : string prop;
  single_select_observation :
    azurerm_sentinel_alert_rule_anomaly_built_in__single_select_observation
    list
    prop;
  tactics : string list prop;
  techniques : string list prop;
  threshold_observation :
    azurerm_sentinel_alert_rule_anomaly_built_in__threshold_observation
    list
    prop;
}

val azurerm_sentinel_alert_rule_anomaly_built_in :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_sentinel_alert_rule_anomaly_built_in__timeouts ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  string ->
  t
