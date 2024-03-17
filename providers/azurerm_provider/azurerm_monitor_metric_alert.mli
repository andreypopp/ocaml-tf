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
  ?auto_mitigate:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?severity:float prop ->
  ?tags:(string * string prop) list ->
  ?target_resource_location:string prop ->
  ?target_resource_type:string prop ->
  ?window_size:string prop ->
  ?timeouts:azurerm_monitor_metric_alert__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:azurerm_monitor_metric_alert__action list ->
  application_insights_web_test_location_availability_criteria:
    azurerm_monitor_metric_alert__application_insights_web_test_location_availability_criteria
    list ->
  criteria:azurerm_monitor_metric_alert__criteria list ->
  dynamic_criteria:
    azurerm_monitor_metric_alert__dynamic_criteria list ->
  string ->
  unit
