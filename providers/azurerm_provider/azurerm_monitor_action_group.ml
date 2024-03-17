(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_action_group__arm_role_receiver = {
  name : string prop;  (** name *)
  role_id : string prop;  (** role_id *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__arm_role_receiver *)

type azurerm_monitor_action_group__automation_runbook_receiver = {
  automation_account_id : string prop;  (** automation_account_id *)
  is_global_runbook : bool prop;  (** is_global_runbook *)
  name : string prop;  (** name *)
  runbook_name : string prop;  (** runbook_name *)
  service_uri : string prop;  (** service_uri *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
  webhook_resource_id : string prop;  (** webhook_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__automation_runbook_receiver *)

type azurerm_monitor_action_group__azure_app_push_receiver = {
  email_address : string prop;  (** email_address *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__azure_app_push_receiver *)

type azurerm_monitor_action_group__azure_function_receiver = {
  function_app_resource_id : string prop;
      (** function_app_resource_id *)
  function_name : string prop;  (** function_name *)
  http_trigger_url : string prop;  (** http_trigger_url *)
  name : string prop;  (** name *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__azure_function_receiver *)

type azurerm_monitor_action_group__email_receiver = {
  email_address : string prop;  (** email_address *)
  name : string prop;  (** name *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__email_receiver *)

type azurerm_monitor_action_group__event_hub_receiver = {
  event_hub_id : string prop option; [@option]  (** event_hub_id *)
  event_hub_name : string prop option; [@option]
      (** event_hub_name *)
  event_hub_namespace : string prop option; [@option]
      (** event_hub_namespace *)
  name : string prop;  (** name *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__event_hub_receiver *)

type azurerm_monitor_action_group__itsm_receiver = {
  connection_id : string prop;  (** connection_id *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  ticket_configuration : string prop;  (** ticket_configuration *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__itsm_receiver *)

type azurerm_monitor_action_group__logic_app_receiver = {
  callback_url : string prop;  (** callback_url *)
  name : string prop;  (** name *)
  resource_id : string prop;  (** resource_id *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__logic_app_receiver *)

type azurerm_monitor_action_group__sms_receiver = {
  country_code : string prop;  (** country_code *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__sms_receiver *)

type azurerm_monitor_action_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__timeouts *)

type azurerm_monitor_action_group__voice_receiver = {
  country_code : string prop;  (** country_code *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__voice_receiver *)

type azurerm_monitor_action_group__webhook_receiver__aad_auth = {
  identifier_uri : string prop option; [@option]
      (** identifier_uri *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__webhook_receiver__aad_auth *)

type azurerm_monitor_action_group__webhook_receiver = {
  name : string prop;  (** name *)
  service_uri : string prop;  (** service_uri *)
  use_common_alert_schema : bool prop option; [@option]
      (** use_common_alert_schema *)
  aad_auth :
    azurerm_monitor_action_group__webhook_receiver__aad_auth list;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_group__webhook_receiver *)

type azurerm_monitor_action_group = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  short_name : string prop;  (** short_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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

type t = {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_action_group ?enabled ?id ?location ?tags
    ?timeouts ~name ~resource_group_name ~short_name
    ~arm_role_receiver ~automation_runbook_receiver
    ~azure_app_push_receiver ~azure_function_receiver ~email_receiver
    ~event_hub_receiver ~itsm_receiver ~logic_app_receiver
    ~sms_receiver ~voice_receiver ~webhook_receiver __resource_id =
  let __resource_type = "azurerm_monitor_action_group" in
  let __resource =
    ({
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
      : azurerm_monitor_action_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_action_group __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       short_name =
         Prop.computed __resource_type __resource_id "short_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
