(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_solution__plan
type azurerm_log_analytics_solution__timeouts
type azurerm_log_analytics_solution

val azurerm_log_analytics_solution :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_solution__timeouts ->
  location:string prop ->
  resource_group_name:string prop ->
  solution_name:string prop ->
  workspace_name:string prop ->
  workspace_resource_id:string prop ->
  plan:azurerm_log_analytics_solution__plan list ->
  string ->
  unit
