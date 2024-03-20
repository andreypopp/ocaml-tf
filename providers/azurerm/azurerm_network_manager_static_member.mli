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

type azurerm_network_manager_static_member

val azurerm_network_manager_static_member :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_group_id:string prop ->
  target_virtual_network_id:string prop ->
  unit ->
  azurerm_network_manager_static_member

val yojson_of_azurerm_network_manager_static_member :
  azurerm_network_manager_static_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_group_id:string prop ->
  target_virtual_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  network_group_id:string prop ->
  target_virtual_network_id:string prop ->
  string ->
  t Tf_core.resource
