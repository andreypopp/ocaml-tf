(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_built_in__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_built_in__timeouts *)

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

type azurerm_sentinel_alert_rule_anomaly_built_in = {
  enabled : bool;  (** enabled *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  mode : string;  (** mode *)
  timeouts :
    azurerm_sentinel_alert_rule_anomaly_built_in__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_built_in *)

let azurerm_sentinel_alert_rule_anomaly_built_in ?timeouts ~enabled
    ~log_analytics_workspace_id ~mode __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_anomaly_built_in"
  in
  let __resource =
    { enabled; log_analytics_workspace_id; mode; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in
       __resource);
  ()
