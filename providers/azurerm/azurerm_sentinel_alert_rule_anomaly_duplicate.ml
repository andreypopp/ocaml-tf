(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type multi_select_observation = {
  name : string prop;  (** name *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** multi_select_observation *)

type prioritized_exclude_observation = {
  exclude : string prop option; [@option]  (** exclude *)
  name : string prop;  (** name *)
  prioritize : string prop option; [@option]  (** prioritize *)
}
[@@deriving yojson_of]
(** prioritized_exclude_observation *)

type single_select_observation = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** single_select_observation *)

type threshold_observation = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** threshold_observation *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type required_data_connector = {
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
  multi_select_observation : multi_select_observation list;
  prioritized_exclude_observation :
    prioritized_exclude_observation list;
  single_select_observation : single_select_observation list;
  threshold_observation : threshold_observation list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_anomaly_duplicate *)

let multi_select_observation ~name ~values () :
    multi_select_observation =
  { name; values }

let prioritized_exclude_observation ?exclude ?prioritize ~name () :
    prioritized_exclude_observation =
  { exclude; name; prioritize }

let single_select_observation ~name ~value () :
    single_select_observation =
  { name; value }

let threshold_observation ~name ~value () : threshold_observation =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_anomaly_duplicate ?id ?timeouts
    ~built_in_rule_id ~display_name ~enabled
    ~log_analytics_workspace_id ~mode ~multi_select_observation
    ~prioritized_exclude_observation ~single_select_observation
    ~threshold_observation () :
    azurerm_sentinel_alert_rule_anomaly_duplicate =
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

type t = {
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
  required_data_connector : required_data_connector list prop;
  settings_definition_id : string prop;
  tactics : string list prop;
  techniques : string list prop;
}

let register ?tf_module ?id ?timeouts ~built_in_rule_id ~display_name
    ~enabled ~log_analytics_workspace_id ~mode
    ~multi_select_observation ~prioritized_exclude_observation
    ~single_select_observation ~threshold_observation __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_anomaly_duplicate"
  in
  let __resource =
    azurerm_sentinel_alert_rule_anomaly_duplicate ?id ?timeouts
      ~built_in_rule_id ~display_name ~enabled
      ~log_analytics_workspace_id ~mode ~multi_select_observation
      ~prioritized_exclude_observation ~single_select_observation
      ~threshold_observation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_anomaly_duplicate
       __resource);
  let __resource_attributes =
    ({
       anomaly_settings_version =
         Prop.computed __resource_type __resource_id
           "anomaly_settings_version";
       anomaly_version =
         Prop.computed __resource_type __resource_id
           "anomaly_version";
       built_in_rule_id =
         Prop.computed __resource_type __resource_id
           "built_in_rule_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       is_default_settings =
         Prop.computed __resource_type __resource_id
           "is_default_settings";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       required_data_connector =
         Prop.computed __resource_type __resource_id
           "required_data_connector";
       settings_definition_id =
         Prop.computed __resource_type __resource_id
           "settings_definition_id";
       tactics =
         Prop.computed __resource_type __resource_id "tactics";
       techniques =
         Prop.computed __resource_type __resource_id "techniques";
     }
      : t)
  in
  __resource_attributes
