(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy = {
  days : float option; [@option]  (** days *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy *)

type azurerm_monitor_aad_diagnostic_setting__enabled_log = {
  category : string;  (** category *)
  retention_policy :
    azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__enabled_log *)

type azurerm_monitor_aad_diagnostic_setting__log__retention_policy = {
  days : float option; [@option]  (** days *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__log__retention_policy *)

type azurerm_monitor_aad_diagnostic_setting__log = {
  category : string;  (** category *)
  enabled : bool option; [@option]  (** enabled *)
  retention_policy :
    azurerm_monitor_aad_diagnostic_setting__log__retention_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__log *)

type azurerm_monitor_aad_diagnostic_setting__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting__timeouts *)

type azurerm_monitor_aad_diagnostic_setting = {
  eventhub_authorization_rule_id : string option; [@option]
      (** eventhub_authorization_rule_id *)
  eventhub_name : string option; [@option]  (** eventhub_name *)
  log_analytics_workspace_id : string option; [@option]
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  enabled_log :
    azurerm_monitor_aad_diagnostic_setting__enabled_log list;
  log : azurerm_monitor_aad_diagnostic_setting__log list;
  timeouts : azurerm_monitor_aad_diagnostic_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_aad_diagnostic_setting *)

let azurerm_monitor_aad_diagnostic_setting
    ?eventhub_authorization_rule_id ?eventhub_name
    ?log_analytics_workspace_id ?storage_account_id ?timeouts ~name
    ~enabled_log ~log __resource_id =
  let __resource_type = "azurerm_monitor_aad_diagnostic_setting" in
  let __resource =
    {
      eventhub_authorization_rule_id;
      eventhub_name;
      log_analytics_workspace_id;
      name;
      storage_account_id;
      enabled_log;
      log;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_aad_diagnostic_setting __resource);
  ()