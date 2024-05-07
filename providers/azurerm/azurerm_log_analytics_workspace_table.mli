(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_log_analytics_workspace_table

val azurerm_log_analytics_workspace_table :
  ?id:string prop ->
  ?plan:string prop ->
  ?retention_in_days:float prop ->
  ?total_retention_in_days:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_log_analytics_workspace_table

val yojson_of_azurerm_log_analytics_workspace_table :
  azurerm_log_analytics_workspace_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  plan : string prop;
  retention_in_days : float prop;
  total_retention_in_days : float prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?plan:string prop ->
  ?retention_in_days:float prop ->
  ?total_retention_in_days:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?plan:string prop ->
  ?retention_in_days:float prop ->
  ?total_retention_in_days:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
