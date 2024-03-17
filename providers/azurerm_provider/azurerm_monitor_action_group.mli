(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_action_group__arm_role_receiver
type azurerm_monitor_action_group__automation_runbook_receiver
type azurerm_monitor_action_group__azure_app_push_receiver
type azurerm_monitor_action_group__azure_function_receiver
type azurerm_monitor_action_group__email_receiver
type azurerm_monitor_action_group__event_hub_receiver
type azurerm_monitor_action_group__itsm_receiver
type azurerm_monitor_action_group__logic_app_receiver
type azurerm_monitor_action_group__sms_receiver
type azurerm_monitor_action_group__timeouts
type azurerm_monitor_action_group__voice_receiver
type azurerm_monitor_action_group__webhook_receiver__aad_auth
type azurerm_monitor_action_group__webhook_receiver
type azurerm_monitor_action_group

val azurerm_monitor_action_group :
  ?enabled:bool ->
  ?id:string ->
  ?location:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_action_group__timeouts ->
  name:string ->
  resource_group_name:string ->
  short_name:string ->
  arm_role_receiver:
    azurerm_monitor_action_group__arm_role_receiver list ->
  automation_runbook_receiver:
    azurerm_monitor_action_group__automation_runbook_receiver list ->
  azure_app_push_receiver:
    azurerm_monitor_action_group__azure_app_push_receiver list ->
  azure_function_receiver:
    azurerm_monitor_action_group__azure_function_receiver list ->
  email_receiver:azurerm_monitor_action_group__email_receiver list ->
  event_hub_receiver:
    azurerm_monitor_action_group__event_hub_receiver list ->
  itsm_receiver:azurerm_monitor_action_group__itsm_receiver list ->
  logic_app_receiver:
    azurerm_monitor_action_group__logic_app_receiver list ->
  sms_receiver:azurerm_monitor_action_group__sms_receiver list ->
  voice_receiver:azurerm_monitor_action_group__voice_receiver list ->
  webhook_receiver:
    azurerm_monitor_action_group__webhook_receiver list ->
  string ->
  unit
