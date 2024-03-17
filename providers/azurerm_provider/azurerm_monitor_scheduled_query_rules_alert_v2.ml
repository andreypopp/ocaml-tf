(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert_v2__action = {
  action_groups : string prop list option; [@option]
      (** action_groups *)
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2__action *)

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2__criteria__dimension *)

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria__failing_periods = {
  minimum_failing_periods_to_trigger_alert : float prop;
      (** minimum_failing_periods_to_trigger_alert *)
  number_of_evaluation_periods : float prop;
      (** number_of_evaluation_periods *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2__criteria__failing_periods *)

type azurerm_monitor_scheduled_query_rules_alert_v2__criteria = {
  metric_measure_column : string prop option; [@option]
      (** metric_measure_column *)
  operator : string prop;  (** operator *)
  query : string prop;  (** query *)
  resource_id_column : string prop option; [@option]
      (** resource_id_column *)
  threshold : float prop;  (** threshold *)
  time_aggregation_method : string prop;
      (** time_aggregation_method *)
  dimension :
    azurerm_monitor_scheduled_query_rules_alert_v2__criteria__dimension
    list;
  failing_periods :
    azurerm_monitor_scheduled_query_rules_alert_v2__criteria__failing_periods
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2__criteria *)

type azurerm_monitor_scheduled_query_rules_alert_v2__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2__timeouts *)

type azurerm_monitor_scheduled_query_rules_alert_v2 = {
  auto_mitigation_enabled : bool prop option; [@option]
      (** auto_mitigation_enabled *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  evaluation_frequency : string prop option; [@option]
      (** evaluation_frequency *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mute_actions_after_alert_duration : string prop option; [@option]
      (** mute_actions_after_alert_duration *)
  name : string prop;  (** name *)
  query_time_range_override : string prop option; [@option]
      (** query_time_range_override *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  severity : float prop;  (** severity *)
  skip_query_validation : bool prop option; [@option]
      (** skip_query_validation *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_types : string prop list option; [@option]
      (** target_resource_types *)
  window_duration : string prop;  (** window_duration *)
  workspace_alerts_storage_enabled : bool prop option; [@option]
      (** workspace_alerts_storage_enabled *)
  action :
    azurerm_monitor_scheduled_query_rules_alert_v2__action list;
  criteria :
    azurerm_monitor_scheduled_query_rules_alert_v2__criteria list;
  timeouts :
    azurerm_monitor_scheduled_query_rules_alert_v2__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2 *)

let azurerm_monitor_scheduled_query_rules_alert_v2
    ?auto_mitigation_enabled ?description ?display_name ?enabled
    ?evaluation_frequency ?id ?mute_actions_after_alert_duration
    ?query_time_range_override ?skip_query_validation ?tags
    ?target_resource_types ?workspace_alerts_storage_enabled
    ?timeouts ~location ~name ~resource_group_name ~scopes ~severity
    ~window_duration ~action ~criteria __resource_id =
  let __resource_type =
    "azurerm_monitor_scheduled_query_rules_alert_v2"
  in
  let __resource =
    {
      auto_mitigation_enabled;
      description;
      display_name;
      enabled;
      evaluation_frequency;
      id;
      location;
      mute_actions_after_alert_duration;
      name;
      query_time_range_override;
      resource_group_name;
      scopes;
      severity;
      skip_query_validation;
      tags;
      target_resource_types;
      window_duration;
      workspace_alerts_storage_enabled;
      action;
      criteria;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_scheduled_query_rules_alert_v2
       __resource);
  ()
