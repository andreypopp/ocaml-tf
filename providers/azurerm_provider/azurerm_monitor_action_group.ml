(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_action_group__arm_role_receiver = {
  name : string;  (** name *)
  role_id : string;  (** role_id *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__arm_role_receiver *)

type azurerm_monitor_action_group__automation_runbook_receiver = {
  automation_account_id : string;  (** automation_account_id *)
  is_global_runbook : bool;  (** is_global_runbook *)
  name : string;  (** name *)
  runbook_name : string;  (** runbook_name *)
  service_uri : string;  (** service_uri *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
  webhook_resource_id : string;  (** webhook_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__automation_runbook_receiver *)

type azurerm_monitor_action_group__azure_app_push_receiver = {
  email_address : string;  (** email_address *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__azure_app_push_receiver *)

type azurerm_monitor_action_group__azure_function_receiver = {
  function_app_resource_id : string;  (** function_app_resource_id *)
  function_name : string;  (** function_name *)
  http_trigger_url : string;  (** http_trigger_url *)
  name : string;  (** name *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__azure_function_receiver *)

type azurerm_monitor_action_group__email_receiver = {
  email_address : string;  (** email_address *)
  name : string;  (** name *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__email_receiver *)

type azurerm_monitor_action_group__event_hub_receiver = {
  event_hub_id : string option; [@option]  (** event_hub_id *)
  event_hub_name : string option; [@option]  (** event_hub_name *)
  event_hub_namespace : string option; [@option]
      (** event_hub_namespace *)
  name : string;  (** name *)
  subscription_id : string option; [@option]  (** subscription_id *)
  tenant_id : string option; [@option]  (** tenant_id *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__event_hub_receiver *)

type azurerm_monitor_action_group__itsm_receiver = {
  connection_id : string;  (** connection_id *)
  name : string;  (** name *)
  region : string;  (** region *)
  ticket_configuration : string;  (** ticket_configuration *)
  workspace_id : string;  (** workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__itsm_receiver *)

type azurerm_monitor_action_group__logic_app_receiver = {
  callback_url : string;  (** callback_url *)
  name : string;  (** name *)
  resource_id : string;  (** resource_id *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__logic_app_receiver *)

type azurerm_monitor_action_group__sms_receiver = {
  country_code : string;  (** country_code *)
  name : string;  (** name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__sms_receiver *)

type azurerm_monitor_action_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__timeouts *)

type azurerm_monitor_action_group__voice_receiver = {
  country_code : string;  (** country_code *)
  name : string;  (** name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__voice_receiver *)

type azurerm_monitor_action_group__webhook_receiver__aad_auth = {
  identifier_uri : string option; [@option]  (** identifier_uri *)
  object_id : string;  (** object_id *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__webhook_receiver__aad_auth *)

type azurerm_monitor_action_group__webhook_receiver = {
  name : string;  (** name *)
  service_uri : string;  (** service_uri *)
  use_common_alert_schema : bool option; [@option]
      (** use_common_alert_schema *)
  aad_auth :
    azurerm_monitor_action_group__webhook_receiver__aad_auth list;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__webhook_receiver *)

type azurerm_monitor_action_group = {
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  short_name : string;  (** short_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  arm_role_receiver :
    azurerm_monitor_action_group__arm_role_receiver list;
  automation_runbook_receiver :
    azurerm_monitor_action_group__automation_runbook_receiver list;
  azure_app_push_receiver :
    azurerm_monitor_action_group__azure_app_push_receiver list;
  azure_function_receiver :
    azurerm_monitor_action_group__azure_function_receiver list;
  email_receiver : azurerm_monitor_action_group__email_receiver list;
  event_hub_receiver :
    azurerm_monitor_action_group__event_hub_receiver list;
  itsm_receiver : azurerm_monitor_action_group__itsm_receiver list;
  logic_app_receiver :
    azurerm_monitor_action_group__logic_app_receiver list;
  sms_receiver : azurerm_monitor_action_group__sms_receiver list;
  timeouts : azurerm_monitor_action_group__timeouts option;
  voice_receiver : azurerm_monitor_action_group__voice_receiver list;
  webhook_receiver :
    azurerm_monitor_action_group__webhook_receiver list;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group *)

let azurerm_monitor_action_group ?enabled ?id ?location ?tags
    ?timeouts ~name ~resource_group_name ~short_name
    ~arm_role_receiver ~automation_runbook_receiver
    ~azure_app_push_receiver ~azure_function_receiver ~email_receiver
    ~event_hub_receiver ~itsm_receiver ~logic_app_receiver
    ~sms_receiver ~voice_receiver ~webhook_receiver __resource_id =
  let __resource_type = "azurerm_monitor_action_group" in
  let __resource =
    {
      enabled;
      id;
      location;
      name;
      resource_group_name;
      short_name;
      tags;
      arm_role_receiver;
      automation_runbook_receiver;
      azure_app_push_receiver;
      azure_function_receiver;
      email_receiver;
      event_hub_receiver;
      itsm_receiver;
      logic_app_receiver;
      sms_receiver;
      timeouts;
      voice_receiver;
      webhook_receiver;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_action_group __resource);
  ()
