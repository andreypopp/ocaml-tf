(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_data_export_rule__timeouts
type azurerm_log_analytics_data_export_rule

val azurerm_log_analytics_data_export_rule :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_log_analytics_data_export_rule__timeouts ->
  destination_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  table_names:string prop list ->
  workspace_resource_id:string prop ->
  string ->
  unit
