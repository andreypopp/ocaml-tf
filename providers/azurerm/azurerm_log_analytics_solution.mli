(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type plan

val plan :
  ?promotion_code:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_log_analytics_solution

val azurerm_log_analytics_solution :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  resource_group_name:string prop ->
  solution_name:string prop ->
  workspace_name:string prop ->
  workspace_resource_id:string prop ->
  plan:plan list ->
  unit ->
  azurerm_log_analytics_solution

val yojson_of_azurerm_log_analytics_solution :
  azurerm_log_analytics_solution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  solution_name : string prop;
  tags : (string * string) list prop;
  workspace_name : string prop;
  workspace_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  resource_group_name:string prop ->
  solution_name:string prop ->
  workspace_name:string prop ->
  workspace_resource_id:string prop ->
  plan:plan list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  resource_group_name:string prop ->
  solution_name:string prop ->
  workspace_name:string prop ->
  workspace_resource_id:string prop ->
  plan:plan list ->
  string ->
  t Tf_core.resource
