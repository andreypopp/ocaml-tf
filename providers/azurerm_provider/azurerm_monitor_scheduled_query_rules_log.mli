(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_scheduled_query_rules_log__criteria__dimension
type azurerm_monitor_scheduled_query_rules_log__criteria
type azurerm_monitor_scheduled_query_rules_log__timeouts
type azurerm_monitor_scheduled_query_rules_log

val azurerm_monitor_scheduled_query_rules_log :
  ?authorized_resource_ids:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_monitor_scheduled_query_rules_log__timeouts ->
  data_source_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  criteria:azurerm_monitor_scheduled_query_rules_log__criteria list ->
  string ->
  unit
