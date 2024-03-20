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

type azurerm_network_manager_management_group_connection

val azurerm_network_manager_management_group_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  unit ->
  azurerm_network_manager_management_group_connection

val yojson_of_azurerm_network_manager_management_group_connection :
  azurerm_network_manager_management_group_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t Tf_core.resource
