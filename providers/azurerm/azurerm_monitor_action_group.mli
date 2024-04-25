(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type arm_role_receiver

val arm_role_receiver :
  ?use_common_alert_schema:bool prop ->
  name:string prop ->
  role_id:string prop ->
  unit ->
  arm_role_receiver

type automation_runbook_receiver

val automation_runbook_receiver :
  ?use_common_alert_schema:bool prop ->
  automation_account_id:string prop ->
  is_global_runbook:bool prop ->
  name:string prop ->
  runbook_name:string prop ->
  service_uri:string prop ->
  webhook_resource_id:string prop ->
  unit ->
  automation_runbook_receiver

type azure_app_push_receiver

val azure_app_push_receiver :
  email_address:string prop ->
  name:string prop ->
  unit ->
  azure_app_push_receiver

type azure_function_receiver

val azure_function_receiver :
  ?use_common_alert_schema:bool prop ->
  function_app_resource_id:string prop ->
  function_name:string prop ->
  http_trigger_url:string prop ->
  name:string prop ->
  unit ->
  azure_function_receiver

type email_receiver

val email_receiver :
  ?use_common_alert_schema:bool prop ->
  email_address:string prop ->
  name:string prop ->
  unit ->
  email_receiver

type event_hub_receiver

val event_hub_receiver :
  ?event_hub_id:string prop ->
  ?event_hub_name:string prop ->
  ?event_hub_namespace:string prop ->
  ?subscription_id:string prop ->
  ?tenant_id:string prop ->
  ?use_common_alert_schema:bool prop ->
  name:string prop ->
  unit ->
  event_hub_receiver

type itsm_receiver

val itsm_receiver :
  connection_id:string prop ->
  name:string prop ->
  region:string prop ->
  ticket_configuration:string prop ->
  workspace_id:string prop ->
  unit ->
  itsm_receiver

type logic_app_receiver

val logic_app_receiver :
  ?use_common_alert_schema:bool prop ->
  callback_url:string prop ->
  name:string prop ->
  resource_id:string prop ->
  unit ->
  logic_app_receiver

type sms_receiver

val sms_receiver :
  country_code:string prop ->
  name:string prop ->
  phone_number:string prop ->
  unit ->
  sms_receiver

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type voice_receiver

val voice_receiver :
  country_code:string prop ->
  name:string prop ->
  phone_number:string prop ->
  unit ->
  voice_receiver

type webhook_receiver__aad_auth

val webhook_receiver__aad_auth :
  ?identifier_uri:string prop ->
  ?tenant_id:string prop ->
  object_id:string prop ->
  unit ->
  webhook_receiver__aad_auth

type webhook_receiver

val webhook_receiver :
  ?use_common_alert_schema:bool prop ->
  ?aad_auth:webhook_receiver__aad_auth list ->
  name:string prop ->
  service_uri:string prop ->
  unit ->
  webhook_receiver

type azurerm_monitor_action_group

val azurerm_monitor_action_group :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?arm_role_receiver:arm_role_receiver list ->
  ?automation_runbook_receiver:automation_runbook_receiver list ->
  ?azure_app_push_receiver:azure_app_push_receiver list ->
  ?azure_function_receiver:azure_function_receiver list ->
  ?email_receiver:email_receiver list ->
  ?event_hub_receiver:event_hub_receiver list ->
  ?itsm_receiver:itsm_receiver list ->
  ?logic_app_receiver:logic_app_receiver list ->
  ?sms_receiver:sms_receiver list ->
  ?timeouts:timeouts ->
  ?voice_receiver:voice_receiver list ->
  ?webhook_receiver:webhook_receiver list ->
  name:string prop ->
  resource_group_name:string prop ->
  short_name:string prop ->
  unit ->
  azurerm_monitor_action_group

val yojson_of_azurerm_monitor_action_group :
  azurerm_monitor_action_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  short_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?arm_role_receiver:arm_role_receiver list ->
  ?automation_runbook_receiver:automation_runbook_receiver list ->
  ?azure_app_push_receiver:azure_app_push_receiver list ->
  ?azure_function_receiver:azure_function_receiver list ->
  ?email_receiver:email_receiver list ->
  ?event_hub_receiver:event_hub_receiver list ->
  ?itsm_receiver:itsm_receiver list ->
  ?logic_app_receiver:logic_app_receiver list ->
  ?sms_receiver:sms_receiver list ->
  ?timeouts:timeouts ->
  ?voice_receiver:voice_receiver list ->
  ?webhook_receiver:webhook_receiver list ->
  name:string prop ->
  resource_group_name:string prop ->
  short_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?arm_role_receiver:arm_role_receiver list ->
  ?automation_runbook_receiver:automation_runbook_receiver list ->
  ?azure_app_push_receiver:azure_app_push_receiver list ->
  ?azure_function_receiver:azure_function_receiver list ->
  ?email_receiver:email_receiver list ->
  ?event_hub_receiver:event_hub_receiver list ->
  ?itsm_receiver:itsm_receiver list ->
  ?logic_app_receiver:logic_app_receiver list ->
  ?sms_receiver:sms_receiver list ->
  ?timeouts:timeouts ->
  ?voice_receiver:voice_receiver list ->
  ?webhook_receiver:webhook_receiver list ->
  name:string prop ->
  resource_group_name:string prop ->
  short_name:string prop ->
  string ->
  t Tf_core.resource
