(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_diagnostic_setting__enabled_log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__enabled_log__retention_policy *)

type azurerm_monitor_diagnostic_setting__enabled_log = {
  category : string prop option; [@option]  (** category *)
  category_group : string prop option; [@option]
      (** category_group *)
  retention_policy :
    azurerm_monitor_diagnostic_setting__enabled_log__retention_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__enabled_log *)

type azurerm_monitor_diagnostic_setting__log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__log__retention_policy *)

type azurerm_monitor_diagnostic_setting__log = {
  category : string prop option; [@option]  (** category *)
  category_group : string prop option; [@option]
      (** category_group *)
  enabled : bool prop option; [@option]  (** enabled *)
  retention_policy :
    azurerm_monitor_diagnostic_setting__log__retention_policy list;
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__log *)

type azurerm_monitor_diagnostic_setting__metric__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__metric__retention_policy *)

type azurerm_monitor_diagnostic_setting__metric = {
  category : string prop;  (** category *)
  enabled : bool prop option; [@option]  (** enabled *)
  retention_policy :
    azurerm_monitor_diagnostic_setting__metric__retention_policy list;
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__metric *)

type azurerm_monitor_diagnostic_setting__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting__timeouts *)

type azurerm_monitor_diagnostic_setting = {
  eventhub_authorization_rule_id : string prop option; [@option]
      (** eventhub_authorization_rule_id *)
  eventhub_name : string prop option; [@option]  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  log_analytics_destination_type : string prop option; [@option]
      (** log_analytics_destination_type *)
  log_analytics_workspace_id : string prop option; [@option]
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  partner_solution_id : string prop option; [@option]
      (** partner_solution_id *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  target_resource_id : string prop;  (** target_resource_id *)
  enabled_log : azurerm_monitor_diagnostic_setting__enabled_log list;
  log : azurerm_monitor_diagnostic_setting__log list;
  metric : azurerm_monitor_diagnostic_setting__metric list;
  timeouts : azurerm_monitor_diagnostic_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_diagnostic_setting *)

type t = {
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_destination_type : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  partner_solution_id : string prop;
  storage_account_id : string prop;
  target_resource_id : string prop;
}

let azurerm_monitor_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_destination_type ?log_analytics_workspace_id
    ?partner_solution_id ?storage_account_id ?timeouts ~name
    ~target_resource_id ~enabled_log ~log ~metric __resource_id =
  let __resource_type = "azurerm_monitor_diagnostic_setting" in
  let __resource =
    ({
       eventhub_authorization_rule_id;
       eventhub_name;
       id;
       log_analytics_destination_type;
       log_analytics_workspace_id;
       name;
       partner_solution_id;
       storage_account_id;
       target_resource_id;
       enabled_log;
       log;
       metric;
       timeouts;
     }
      : azurerm_monitor_diagnostic_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_diagnostic_setting __resource);
  let __resource_attributes =
    ({
       eventhub_authorization_rule_id =
         Prop.computed __resource_type __resource_id
           "eventhub_authorization_rule_id";
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_destination_type =
         Prop.computed __resource_type __resource_id
           "log_analytics_destination_type";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       partner_solution_id =
         Prop.computed __resource_type __resource_id
           "partner_solution_id";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
