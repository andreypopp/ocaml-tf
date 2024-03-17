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

type t = {
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

let azurerm_sentinel_alert_rule_anomaly_built_in ?display_name ?id
    ?name ?timeouts ~enabled ~log_analytics_workspace_id ~mode
    __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_anomaly_built_in"
  in
  let __resource =
    ({
       display_name;
       enabled;
       id;
       log_analytics_workspace_id;
       mode;
       name;
       timeouts;
     }
      : azurerm_sentinel_alert_rule_anomaly_built_in)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_anomaly_built_in
       __resource);
  let __resource_attributes =
    ({
       anomaly_settings_version =
         Prop.computed __resource_type __resource_id
           "anomaly_settings_version";
       anomaly_version =
         Prop.computed __resource_type __resource_id
           "anomaly_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       mode = Prop.computed __resource_type __resource_id "mode";
       multi_select_observation =
         Prop.computed __resource_type __resource_id
           "multi_select_observation";
       name = Prop.computed __resource_type __resource_id "name";
       prioritized_exclude_observation =
         Prop.computed __resource_type __resource_id
           "prioritized_exclude_observation";
       required_data_connector =
         Prop.computed __resource_type __resource_id
           "required_data_connector";
       settings_definition_id =
         Prop.computed __resource_type __resource_id
           "settings_definition_id";
       single_select_observation =
         Prop.computed __resource_type __resource_id
           "single_select_observation";
       tactics =
         Prop.computed __resource_type __resource_id "tactics";
       techniques =
         Prop.computed __resource_type __resource_id "techniques";
       threshold_observation =
         Prop.computed __resource_type __resource_id
           "threshold_observation";
     }
      : t)
  in
  __resource_attributes
