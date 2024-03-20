(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_monitor_private_link_scoped_service

val azurerm_monitor_private_link_scoped_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_name:string prop ->
  unit ->
  azurerm_monitor_private_link_scoped_service

val yojson_of_azurerm_monitor_private_link_scoped_service :
  azurerm_monitor_private_link_scoped_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  linked_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  linked_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_name:string prop ->
  string ->
  t Tf_core.resource
