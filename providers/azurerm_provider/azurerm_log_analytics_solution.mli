(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_solution__plan
type azurerm_log_analytics_solution__timeouts
type azurerm_log_analytics_solution

val azurerm_log_analytics_solution :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_solution__timeouts ->
  location:string ->
  resource_group_name:string ->
  solution_name:string ->
  workspace_name:string ->
  workspace_resource_id:string ->
  plan:azurerm_log_analytics_solution__plan list ->
  string ->
  unit
