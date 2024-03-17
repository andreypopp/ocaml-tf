(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy *)

type azurerm_monitor_aad_diagnostic_setting__enabled_log = {
  category : string prop;  (** category *)
  retention_policy :
    azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__enabled_log *)

type azurerm_monitor_aad_diagnostic_setting__log__retention_policy = {
  days : float prop option; [@option]  (** days *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__log__retention_policy *)

type azurerm_monitor_aad_diagnostic_setting__log = {
  category : string prop;  (** category *)
  enabled : bool prop option; [@option]  (** enabled *)
  retention_policy :
    azurerm_monitor_aad_diagnostic_setting__log__retention_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__log *)

type azurerm_monitor_aad_diagnostic_setting__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__timeouts *)

type azurerm_monitor_aad_diagnostic_setting = {
  eventhub_authorization_rule_id : string prop option; [@option]
      (** eventhub_authorization_rule_id *)
  eventhub_name : string prop option; [@option]  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop option; [@option]
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  enabled_log :
    azurerm_monitor_aad_diagnostic_setting__enabled_log list;
  log : azurerm_monitor_aad_diagnostic_setting__log list;
  timeouts : azurerm_monitor_aad_diagnostic_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting *)

type t = {
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  storage_account_id : string prop;
}

let azurerm_monitor_aad_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name ?id
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log __resource_id =
  let __resource_type = "azurerm_monitor_aad_diagnostic_setting" in
  let __resource =
    ({
       eventhub_authorization_rule_id;
       eventhub_name;
       id;
       log_analytics_workspace_id;
       name;
       storage_account_id;
       enabled_log;
       log;
       timeouts;
     }
      : azurerm_monitor_aad_diagnostic_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_aad_diagnostic_setting __resource);
  let __resource_attributes =
    ({
       eventhub_authorization_rule_id =
         Prop.computed __resource_type __resource_id
           "eventhub_authorization_rule_id";
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
