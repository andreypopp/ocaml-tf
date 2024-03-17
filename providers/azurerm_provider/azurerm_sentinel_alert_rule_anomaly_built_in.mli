(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_built_in__timeouts

type azurerm_sentinel_alert_rule_anomaly_built_in__multi_select_observation = {
  description : string;  (** description *)
  name : string;  (** name *)
  supported_values : string list;  (** supported_values *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__prioritized_exclude_observation = {
  description : string;  (** description *)
  exclude : string;  (** exclude *)
  name : string;  (** name *)
  prioritize : string;  (** prioritize *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__required_data_connector = {
  connector_id : string;  (** connector_id *)
  data_types : string list;  (** data_types *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__single_select_observation = {
  description : string;  (** description *)
  name : string;  (** name *)
  supported_values : string list;  (** supported_values *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__threshold_observation = {
  description : string;  (** description *)
  max : string;  (** max *)
  min : string;  (** min *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in

val azurerm_sentinel_alert_rule_anomaly_built_in :
  ?timeouts:azurerm_sentinel_alert_rule_anomaly_built_in__timeouts ->
  enabled:bool ->
  log_analytics_workspace_id:string ->
  mode:string ->
  string ->
  unit
