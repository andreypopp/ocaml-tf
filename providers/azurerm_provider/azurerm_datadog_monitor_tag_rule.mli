(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor_tag_rule__log__filter
type azurerm_datadog_monitor_tag_rule__log
type azurerm_datadog_monitor_tag_rule__metric__filter
type azurerm_datadog_monitor_tag_rule__metric
type azurerm_datadog_monitor_tag_rule__timeouts
type azurerm_datadog_monitor_tag_rule

val azurerm_datadog_monitor_tag_rule :
  ?id:string ->
  ?name:string ->
  ?timeouts:azurerm_datadog_monitor_tag_rule__timeouts ->
  datadog_monitor_id:string ->
  log:azurerm_datadog_monitor_tag_rule__log list ->
  metric:azurerm_datadog_monitor_tag_rule__metric list ->
  string ->
  unit
