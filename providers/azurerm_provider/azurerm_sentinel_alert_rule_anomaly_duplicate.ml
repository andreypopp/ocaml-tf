(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__multi_select_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation = {
  description : string prop;  (** description *)
  exclude : string prop option; [@option]  (** exclude *)
  name : string prop;  (** name *)
  prioritize : string prop option; [@option]  (** prioritize *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__prioritized_exclude_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__single_select_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation = {
  description : string prop;  (** description *)
  max : string prop;  (** max *)
  min : string prop;  (** min *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__threshold_observation *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate__timeouts *)

type azurerm_sentinel_alert_rule_anomaly_duplicate__required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_duplicate = {
  built_in_rule_id : string prop;  (** built_in_rule_id *)
  display_name : string prop;  (** display_name *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  mode : string prop;  (** mode *)
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

let azurerm_sentinel_alert_rule_anomaly_duplicate ?id ?timeouts
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
      id;
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
