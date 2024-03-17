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
  unit
