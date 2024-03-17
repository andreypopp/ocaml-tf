(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_metric_alert__action = {
  action_group_id : string;  (** action_group_id *)
  webhook_properties : (string * string) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__action *)

type azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria = {
  component_id : string;  (** component_id *)
  failed_location_count : float;  (** failed_location_count *)
  web_test_id : string;  (** web_test_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria *)

type azurerm_monitor_metric_alert__criteria__dimension = {
  name : string;  (** name *)
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__criteria__dimension *)

type azurerm_monitor_metric_alert__criteria = {
  aggregation : string;  (** aggregation *)
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  operator : string;  (** operator *)
  skip_metric_validation : bool option; [@option]
      (** skip_metric_validation *)
  threshold : float;  (** threshold *)
  dimension : azurerm_monitor_metric_alert__criteria__dimension list;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__criteria *)

type azurerm_monitor_metric_alert__dynamic_criteria__dimension = {
  name : string;  (** name *)
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__dynamic_criteria__dimension *)

type azurerm_monitor_metric_alert__dynamic_criteria = {
  aggregation : string;  (** aggregation *)
  alert_sensitivity : string;  (** alert_sensitivity *)
  evaluation_failure_count : float option; [@option]
      (** evaluation_failure_count *)
  evaluation_total_count : float option; [@option]
      (** evaluation_total_count *)
  ignore_data_before : string option; [@option]
      (** ignore_data_before *)
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  operator : string;  (** operator *)
  skip_metric_validation : bool option; [@option]
      (** skip_metric_validation *)
  dimension :
    azurerm_monitor_metric_alert__dynamic_criteria__dimension list;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__dynamic_criteria *)

type azurerm_monitor_metric_alert__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert__timeouts *)

type azurerm_monitor_metric_alert = {
  auto_mitigate : bool option; [@option]  (** auto_mitigate *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  frequency : string option; [@option]  (** frequency *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scopes : string list;  (** scopes *)
  severity : float option; [@option]  (** severity *)
  tags : (string * string) list option; [@option]  (** tags *)
  window_size : string option; [@option]  (** window_size *)
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

let azurerm_monitor_metric_alert ?auto_mitigate ?description ?enabled
    ?frequency ?severity ?tags ?window_size ?timeouts ~name
    ~resource_group_name ~scopes ~action
    ~application_insights_web_test_location_availability_criteria
    ~criteria ~dynamic_criteria __resource_id =
  let __resource_type = "azurerm_monitor_metric_alert" in
  let __resource =
    {
      auto_mitigate;
      description;
      enabled;
      frequency;
      name;
      resource_group_name;
      scopes;
      severity;
      tags;
      window_size;
      action;
      application_insights_web_test_location_availability_criteria;
      criteria;
      dynamic_criteria;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_metric_alert __resource);
  ()
