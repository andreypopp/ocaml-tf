(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_availability_set__timeouts

type azurerm_system_center_virtual_machine_manager_availability_set

val azurerm_system_center_virtual_machine_manager_availability_set :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_system_center_virtual_machine_manager_availability_set__timeouts ->
  custom_location_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  system_center_virtual_machine_manager_server_id:string ->
  string ->
  unit
