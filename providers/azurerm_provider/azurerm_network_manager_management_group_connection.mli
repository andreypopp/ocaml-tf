(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_management_group_connection__timeouts
type azurerm_network_manager_management_group_connection

type t = private {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val azurerm_network_manager_management_group_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_network_manager_management_group_connection__timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t
