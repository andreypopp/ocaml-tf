(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_system_center_virtual_machine_manager_server__timeouts
type azurerm_system_center_virtual_machine_manager_server

type t = private {
  custom_location_id : string prop;
  fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  username : string prop;
}

val azurerm_system_center_virtual_machine_manager_server :
  ?id:string prop ->
  ?port:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_system_center_virtual_machine_manager_server__timeouts ->
  custom_location_id:string prop ->
  fqdn:string prop ->
  location:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  username:string prop ->
  string ->
  t
