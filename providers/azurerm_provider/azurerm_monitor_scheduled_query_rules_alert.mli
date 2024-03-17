(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_alert__action
type azurerm_monitor_scheduled_query_rules_alert__timeouts

type azurerm_monitor_scheduled_query_rules_alert__trigger__metric_trigger

type azurerm_monitor_scheduled_query_rules_alert__trigger
type azurerm_monitor_scheduled_query_rules_alert

val azurerm_monitor_scheduled_query_rules_alert :
  ?authorized_resource_ids:string list ->
  ?auto_mitigation_enabled:bool ->
  ?description:string ->
  ?enabled:bool ->
  ?query_type:string ->
  ?severity:float ->
  ?tags:(string * string) list ->
  ?throttling:float ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_alert__timeouts ->
  data_source_id:string ->
  frequency:float ->
  location:string ->
  name:string ->
  query:string ->
  resource_group_name:string ->
  time_window:float ->
  action:azurerm_monitor_scheduled_query_rules_alert__action list ->
  trigger:azurerm_monitor_scheduled_query_rules_alert__trigger list ->
  string ->
  unit
