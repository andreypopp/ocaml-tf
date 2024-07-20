(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type inventory_items = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  uuid : string prop;  (** uuid *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_system_center_virtual_machine_manager_inventory_items

val azurerm_system_center_virtual_machine_manager_inventory_items :
  ?id:string prop ->
  ?timeouts:timeouts ->
  inventory_type:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  unit ->
  azurerm_system_center_virtual_machine_manager_inventory_items

val yojson_of_azurerm_system_center_virtual_machine_manager_inventory_items :
  azurerm_system_center_virtual_machine_manager_inventory_items ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  inventory_items : inventory_items list prop;
  inventory_type : string prop;
  system_center_virtual_machine_manager_server_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  inventory_type:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  inventory_type:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  t Tf_core.resource
