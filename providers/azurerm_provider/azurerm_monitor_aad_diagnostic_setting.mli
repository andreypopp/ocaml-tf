(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_aad_diagnostic_setting__enabled_log__retention_policy

type azurerm_monitor_aad_diagnostic_setting__enabled_log
type azurerm_monitor_aad_diagnostic_setting__log__retention_policy
type azurerm_monitor_aad_diagnostic_setting__log
type azurerm_monitor_aad_diagnostic_setting__timeouts
type azurerm_monitor_aad_diagnostic_setting

val azurerm_monitor_aad_diagnostic_setting :
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:azurerm_monitor_aad_diagnostic_setting__timeouts ->
  name:string prop ->
  enabled_log:
    azurerm_monitor_aad_diagnostic_setting__enabled_log list ->
  log:azurerm_monitor_aad_diagnostic_setting__log list ->
  string ->
  unit
