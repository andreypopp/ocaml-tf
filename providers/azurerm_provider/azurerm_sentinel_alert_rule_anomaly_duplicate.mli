(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts

type azurerm_sentinel_alert_rule_anomaly_duplicate__required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}

type azurerm_sentinel_alert_rule_anomaly_duplicate

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
  required_data_connector :
    azurerm_sentinel_alert_rule_anomaly_duplicate__required_data_connector
    list
    prop;
  settings_definition_id : string prop;
  tactics : string list prop;
  techniques : string list prop;
}

val azurerm_sentinel_alert_rule_anomaly_duplicate :
  ?id:string prop ->
  ?timeouts:azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts ->
  built_in_rule_id:string prop ->
  display_name:string prop ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  multi_select_observation:
    azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation
    list ->
  prioritized_exclude_observation:
    azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation
    list ->
  single_select_observation:
    azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation
    list ->
  threshold_observation:
    azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation
    list ->
  string ->
  t
