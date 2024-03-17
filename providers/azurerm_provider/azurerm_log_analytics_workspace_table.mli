(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_workspace_table__timeouts
type azurerm_log_analytics_workspace_table

type t = private {
  id : string prop;
  name : string prop;
  plan : string prop;
  retention_in_days : float prop;
  total_retention_in_days : float prop;
  workspace_id : string prop;
}

val azurerm_log_analytics_workspace_table :
  ?id:string prop ->
  ?plan:string prop ->
  ?retention_in_days:float prop ->
  ?total_retention_in_days:float prop ->
  ?timeouts:azurerm_log_analytics_workspace_table__timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t
