(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation = {
  description : string;  (** description *)
  name : string;  (** name *)
  supported_values : string list;  (** supported_values *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation = {
  description : string;  (** description *)
  exclude : string option; [@option]  (** exclude *)
  name : string;  (** name *)
  prioritize : string option; [@option]  (** prioritize *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation = {
  description : string;  (** description *)
  name : string;  (** name *)
  supported_values : string list;  (** supported_values *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation = {
  description : string;  (** description *)
  max : string;  (** max *)
  min : string;  (** min *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__required_data_connector = {
  connector_id : string;  (** connector_id *)
  data_types : string list;  (** data_types *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_duplicate = {
  built_in_rule_id : string;  (** built_in_rule_id *)
  display_name : string;  (** display_name *)
  enabled : bool;  (** enabled *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  mode : string;  (** mode *)
  multi_select_observation :
    azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation
    list;
  prioritized_exclude_observation :
    azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation
    list;
  single_select_observation :
    azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation
    list;
  threshold_observation :
    azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation
    list;
  timeouts :
    azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate *)

let azurerm_sentinel_alert_rule_anomaly_duplicate ?timeouts
    ~built_in_rule_id ~display_name ~enabled
    ~log_analytics_workspace_id ~mode ~multi_select_observation
    ~prioritized_exclude_observation ~single_select_observation
    ~threshold_observation __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_anomaly_duplicate"
  in
  let __resource =
    {
      built_in_rule_id;
      display_name;
      enabled;
      log_analytics_workspace_id;
      mode;
      multi_select_observation;
      prioritized_exclude_observation;
      single_select_observation;
      threshold_observation;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate
       __resource);
  ()
