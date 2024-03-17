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

val azurerm_sentinel_alert_rule_anomaly_built_in :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_sentinel_alert_rule_anomaly_built_in__timeouts ->
  enabled:bool prop ->
  log_analytics_workspace_id:string prop ->
  mode:string prop ->
  string ->
  unit
