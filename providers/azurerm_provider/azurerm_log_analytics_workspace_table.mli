(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_workspace_table__timeouts
type azurerm_log_analytics_workspace_table

val azurerm_log_analytics_workspace_table :
  ?plan:string ->
  ?retention_in_days:float ->
  ?total_retention_in_days:float ->
  ?timeouts:azurerm_log_analytics_workspace_table__timeouts ->
  name:string ->
  workspace_id:string ->
  string ->
  unit
