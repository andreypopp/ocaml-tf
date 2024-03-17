(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_anomaly_built_in__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_built_in__timeouts *)

type azurerm_sentinel_alert_rule_anomaly_built_in__multi_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__prioritized_exclude_observation = {
  description : string prop;  (** description *)
  exclude : string prop;  (** exclude *)
  name : string prop;  (** name *)
  prioritize : string prop;  (** prioritize *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__required_data_connector = {
  connector_id : string prop;  (** connector_id *)
  data_types : string prop list;  (** data_types *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__single_select_observation = {
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  supported_values : string prop list;  (** supported_values *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in__threshold_observation = {
  description : string prop;  (** description *)
  max : string prop;  (** max *)
  min : string prop;  (** min *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type azurerm_sentinel_alert_rule_anomaly_built_in = {
  display_name : string prop option; [@option]  (** display_name *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  mode : string prop;  (** mode *)
  name : string prop option; [@option]  (** name *)
  timeouts :
    azurerm_sentinel_alert_rule_anomaly_built_in__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_built_in *)

let azurerm_sentinel_alert_rule_anomaly_built_in ?display_name ?id
    ?name ?timeouts ~enabled ~log_analytics_workspace_id ~mode
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_anomaly_built_in"
  in
  let __resource =
    {
      display_name;
      enabled;
      id;
      log_analytics_workspace_id;
      mode;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in
       __resource);
  ()
