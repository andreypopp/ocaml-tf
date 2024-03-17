(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_data_export_rule__timeouts
type azurerm_log_analytics_data_export_rule

val azurerm_log_analytics_data_export_rule :
  ?enabled:bool ->
  ?timeouts:azurerm_log_analytics_data_export_rule__timeouts ->
  destination_resource_id:string ->
  name:string ->
  resource_group_name:string ->
  table_names:string list ->
  workspace_resource_id:string ->
  string ->
  unit
