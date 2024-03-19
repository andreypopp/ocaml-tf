(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
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
  custom_location_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  custom_location_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  t
