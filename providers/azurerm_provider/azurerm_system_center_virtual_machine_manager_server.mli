(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_server__timeouts
type azurerm_system_center_virtual_machine_manager_server

val azurerm_system_center_virtual_machine_manager_server :
  ?id:string ->
  ?port:float ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_system_center_virtual_machine_manager_server__timeouts ->
  custom_location_id:string ->
  fqdn:string ->
  location:string ->
  name:string ->
  password:string ->
  resource_group_name:string ->
  username:string ->
  string ->
  unit
