(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_log__criteria__dimension
type azurerm_monitor_scheduled_query_rules_log__criteria
type azurerm_monitor_scheduled_query_rules_log__timeouts
type azurerm_monitor_scheduled_query_rules_log

val azurerm_monitor_scheduled_query_rules_log :
  ?authorized_resource_ids:string list ->
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_log__timeouts ->
  data_source_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  criteria:azurerm_monitor_scheduled_query_rules_log__criteria list ->
  string ->
  unit
