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

type azurerm_log_analytics_linked_service

val azurerm_log_analytics_linked_service :
  ?id:string prop ->
  ?read_access_id:string prop ->
  ?write_access_id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_log_analytics_linked_service

val yojson_of_azurerm_log_analytics_linked_service :
  azurerm_log_analytics_linked_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  read_access_id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  write_access_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?read_access_id:string prop ->
  ?write_access_id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?read_access_id:string prop ->
  ?write_access_id:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
