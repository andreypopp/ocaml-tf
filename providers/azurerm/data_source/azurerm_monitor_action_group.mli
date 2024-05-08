(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type arm_role_receiver = {
  name : string prop;  (** name *)
  role_id : string prop;  (** role_id *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type automation_runbook_receiver = {
  automation_account_id : string prop;  (** automation_account_id *)
  is_global_runbook : bool prop;  (** is_global_runbook *)
  name : string prop;  (** name *)
  runbook_name : string prop;  (** runbook_name *)
  service_uri : string prop;  (** service_uri *)
  use_common_alert_schema : bool prop;
      (** use_common_alert_schema *)
  webhook_resource_id : string prop;  (** webhook_resource_id *)
}

type azure_app_push_receiver = {
  email_address : string prop;  (** email_address *)
  name : string prop;  (** name *)
}

type azure_function_receiver = {
  function_app_resource_id : string prop;
      (** function_app_resource_id *)
  function_name : string prop;  (** function_name *)
  http_trigger_url : string prop;  (** http_trigger_url *)
  name : string prop;  (** name *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type email_receiver = {
  email_address : string prop;  (** email_address *)
  name : string prop;  (** name *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type event_hub_receiver = {
  event_hub_id : string prop;  (** event_hub_id *)
  event_hub_name : string prop;  (** event_hub_name *)
  event_hub_namespace : string prop;  (** event_hub_namespace *)
  name : string prop;  (** name *)
  subscription_id : string prop;  (** subscription_id *)
  tenant_id : string prop;  (** tenant_id *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type itsm_receiver = {
  connection_id : string prop;  (** connection_id *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  ticket_configuration : string prop;  (** ticket_configuration *)
  workspace_id : string prop;  (** workspace_id *)
}

type logic_app_receiver = {
  callback_url : string prop;  (** callback_url *)
  name : string prop;  (** name *)
  resource_id : string prop;  (** resource_id *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type sms_receiver = {
  country_code : string prop;  (** country_code *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}

type voice_receiver = {
  country_code : string prop;  (** country_code *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
}

type webhook_receiver__aad_auth = {
  identifier_uri : string prop;  (** identifier_uri *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop;  (** tenant_id *)
}

type webhook_receiver = {
  aad_auth : webhook_receiver__aad_auth list;
      [@default []] [@yojson_drop_default ( = )]
      (** aad_auth *)
  name : string prop;  (** name *)
  service_uri : string prop;  (** service_uri *)
  use_common_alert_schema : bool prop;  (** use_common_alert_schema *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_action_group

val azurerm_monitor_action_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_monitor_action_group

val yojson_of_azurerm_monitor_action_group :
  azurerm_monitor_action_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arm_role_receiver : arm_role_receiver list prop;
  automation_runbook_receiver :
    automation_runbook_receiver list prop;
  azure_app_push_receiver : azure_app_push_receiver list prop;
  azure_function_receiver : azure_function_receiver list prop;
  email_receiver : email_receiver list prop;
  enabled : bool prop;
  event_hub_receiver : event_hub_receiver list prop;
  id : string prop;
  itsm_receiver : itsm_receiver list prop;
  logic_app_receiver : logic_app_receiver list prop;
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  sms_receiver : sms_receiver list prop;
  voice_receiver : voice_receiver list prop;
  webhook_receiver : webhook_receiver list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
