(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_metric_alert__action = {
  action_group_id : string prop;  (** action_group_id *)
  webhook_properties : (string * string prop) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__action *)

type azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria = {
  component_id : string prop;  (** component_id *)
  failed_location_count : float prop;  (** failed_location_count *)
  web_test_id : string prop;  (** web_test_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria *)

type azurerm_monitor_metric_alert__criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__criteria__dimension *)

type azurerm_monitor_metric_alert__criteria = {
  aggregation : string prop;  (** aggregation *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  operator : string prop;  (** operator *)
  skip_metric_validation : bool prop option; [@option]
      (** skip_metric_validation *)
  threshold : float prop;  (** threshold *)
  dimension : azurerm_monitor_metric_alert__criteria__dimension list;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__criteria *)

type azurerm_monitor_metric_alert__dynamic_criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__dynamic_criteria__dimension *)

type azurerm_monitor_metric_alert__dynamic_criteria = {
  aggregation : string prop;  (** aggregation *)
  alert_sensitivity : string prop;  (** alert_sensitivity *)
  evaluation_failure_count : float prop option; [@option]
      (** evaluation_failure_count *)
  evaluation_total_count : float prop option; [@option]
      (** evaluation_total_count *)
  ignore_data_before : string prop option; [@option]
      (** ignore_data_before *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  operator : string prop;  (** operator *)
  skip_metric_validation : bool prop option; [@option]
      (** skip_metric_validation *)
  dimension :
    azurerm_monitor_metric_alert__dynamic_criteria__dimension list;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__dynamic_criteria *)

type azurerm_monitor_metric_alert__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__timeouts *)

type azurerm_monitor_metric_alert = {
  auto_mitigate : bool prop option; [@option]  (** auto_mitigate *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : string prop option; [@option]  (** frequency *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  severity : float prop option; [@option]  (** severity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_location : string prop option; [@option]
      (** The location of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes. *)
  target_resource_type : string prop option; [@option]
      (** The resource type (e.g. Microsoft.Compute/virtualMachines) of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes. *)
  window_size : string prop option; [@option]  (** window_size *)
  action : azurerm_monitor_metric_alert__action list;
  application_insights_web_test_location_availability_criteria :
    azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria
    list;
  criteria : azurerm_monitor_metric_alert__criteria list;
  dynamic_criteria :
    azurerm_monitor_metric_alert__dynamic_criteria list;
  timeouts : azurerm_monitor_metric_alert__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert *)

type t = {
  auto_mitigate : bool prop;
  description : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  severity : float prop;
  tags : (string * string) list prop;
  target_resource_location : string prop;
  target_resource_type : string prop;
  window_size : string prop;
}

let azurerm_monitor_metric_alert ?auto_mitigate ?description ?enabled
    ?frequency ?id ?severity ?tags ?target_resource_location
    ?target_resource_type ?window_size ?timeouts ~name
    ~resource_group_name ~scopes ~action
    ~application_insights_web_test_location_availability_criteria
    ~criteria ~dynamic_criteria __resource_id =
  let __resource_type = "azurerm_monitor_metric_alert" in
  let __resource =
    ({
       auto_mitigate;
       description;
       enabled;
       frequency;
       id;
       name;
       resource_group_name;
       scopes;
       severity;
       tags;
       target_resource_location;
       target_resource_type;
       window_size;
       action;
       application_insights_web_test_location_availability_criteria;
       criteria;
       dynamic_criteria;
       timeouts;
     }
      : azurerm_monitor_metric_alert)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_metric_alert __resource);
  let __resource_attributes =
    ({
       auto_mitigate =
         Prop.computed __resource_type __resource_id "auto_mitigate";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scopes = Prop.computed __resource_type __resource_id "scopes";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       tags = Prop.computed __resource_type __resource_id "tags";
       target_resource_location =
         Prop.computed __resource_type __resource_id
           "target_resource_location";
       target_resource_type =
         Prop.computed __resource_type __resource_id
           "target_resource_type";
       window_size =
         Prop.computed __resource_type __resource_id "window_size";
     }
      : t)
  in
  __resource_attributes
