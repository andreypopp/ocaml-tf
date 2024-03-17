(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_activity_log_alert__action
type azurerm_monitor_activity_log_alert__criteria__resource_health
type azurerm_monitor_activity_log_alert__criteria__service_health
type azurerm_monitor_activity_log_alert__criteria
type azurerm_monitor_activity_log_alert__timeouts
type azurerm_monitor_activity_log_alert

val azurerm_monitor_activity_log_alert :
  ?description:string ->
  ?enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_activity_log_alert__timeouts ->
  name:string ->
  resource_group_name:string ->
  scopes:string list ->
  action:azurerm_monitor_activity_log_alert__action list ->
  criteria:azurerm_monitor_activity_log_alert__criteria list ->
  string ->
  unit
