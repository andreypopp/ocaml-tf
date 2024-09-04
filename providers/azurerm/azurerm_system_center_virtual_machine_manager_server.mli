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

type azurerm_system_center_virtual_machine_manager_server

val azurerm_system_center_virtual_machine_manager_server :
  ?id:string prop ->
  ?port:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  fqdn:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  unit ->
  azurerm_system_center_virtual_machine_manager_server

val yojson_of_azurerm_system_center_virtual_machine_manager_server :
  azurerm_system_center_virtual_machine_manager_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_location_id : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?port:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  fqdn:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?port:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  fqdn:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
