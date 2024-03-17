(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_diagnostic_setting__enabled_log__retention_policy
type azurerm_monitor_diagnostic_setting__enabled_log
type azurerm_monitor_diagnostic_setting__log__retention_policy
type azurerm_monitor_diagnostic_setting__log
type azurerm_monitor_diagnostic_setting__metric__retention_policy
type azurerm_monitor_diagnostic_setting__metric
type azurerm_monitor_diagnostic_setting__timeouts
type azurerm_monitor_diagnostic_setting

val azurerm_monitor_diagnostic_setting :
  ?eventhub_authorization_rule_id:string ->
  ?eventhub_name:string ->
  ?log_analytics_workspace_id:string ->
  ?partner_solution_id:string ->
  ?storage_account_id:string ->
  ?timeouts:azurerm_monitor_diagnostic_setting__timeouts ->
  name:string ->
  target_resource_id:string ->
  enabled_log:azurerm_monitor_diagnostic_setting__enabled_log list ->
  log:azurerm_monitor_diagnostic_setting__log list ->
  metric:azurerm_monitor_diagnostic_setting__metric list ->
  string ->
  unit
