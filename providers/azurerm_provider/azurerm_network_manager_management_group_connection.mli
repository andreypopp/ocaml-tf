(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_management_group_connection__timeouts
type azurerm_network_manager_management_group_connection

val azurerm_network_manager_management_group_connection :
  ?description:string ->
  ?id:string ->
  ?timeouts:
    azurerm_network_manager_management_group_connection__timeouts ->
  management_group_id:string ->
  name:string ->
  network_manager_id:string ->
  string ->
  unit
