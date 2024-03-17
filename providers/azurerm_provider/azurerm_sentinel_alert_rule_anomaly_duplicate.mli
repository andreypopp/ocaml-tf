(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation

type azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts

type azurerm_sentinel_alert_rule_anomaly_duplicate__required_data_connector = {
  connector_id : string;  (** connector_id *)
  data_types : string list;  (** data_types *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_duplicate

val azurerm_sentinel_alert_rule_anomaly_duplicate :
  ?timeouts:azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts ->
  built_in_rule_id:string ->
  display_name:string ->
  enabled:bool ->
  log_analytics_workspace_id:string ->
  mode:string ->
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
