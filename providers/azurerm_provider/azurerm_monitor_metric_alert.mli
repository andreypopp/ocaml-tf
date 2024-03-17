(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_metric_alert__action

type azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria

type azurerm_monitor_metric_alert__criteria__dimension
type azurerm_monitor_metric_alert__criteria
type azurerm_monitor_metric_alert__dynamic_criteria__dimension
type azurerm_monitor_metric_alert__dynamic_criteria
type azurerm_monitor_metric_alert__timeouts
type azurerm_monitor_metric_alert

val azurerm_monitor_metric_alert :
  ?auto_mitigate:bool ->
  ?description:string ->
  ?enabled:bool ->
  ?frequency:string ->
  ?id:string ->
  ?severity:float ->
  ?tags:(string * string) list ->
  ?target_resource_location:string ->
  ?target_resource_type:string ->
  ?window_size:string ->
  ?timeouts:azurerm_monitor_metric_alert__timeouts ->
  name:string ->
  resource_group_name:string ->
  scopes:string list ->
  action:azurerm_monitor_metric_alert__action list ->
  application_insights_web_test_location_availability_criteria:
    azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria
    list ->
  criteria:azurerm_monitor_metric_alert__criteria list ->
  dynamic_criteria:
    azurerm_monitor_metric_alert__dynamic_criteria list ->
  string ->
  unit
