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

type azurerm_system_center_virtual_machine_manager_availability_set

val azurerm_system_center_virtual_machine_manager_availability_set :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  unit ->
  azurerm_system_center_virtual_machine_manager_availability_set

val yojson_of_azurerm_system_center_virtual_machine_manager_availability_set :
  azurerm_system_center_virtual_machine_manager_availability_set ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_location_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  t Tf_core.resource
