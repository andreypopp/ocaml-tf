(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_availability_set__timeouts

type azurerm_system_center_virtual_machine_manager_availability_set

val azurerm_system_center_virtual_machine_manager_availability_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_system_center_virtual_machine_manager_availability_set__timeouts ->
  custom_location_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  system_center_virtual_machine_manager_server_id:string prop ->
  string ->
  unit
