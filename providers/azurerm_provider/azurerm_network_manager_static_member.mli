(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_static_member__timeouts
type azurerm_network_manager_static_member

val azurerm_network_manager_static_member :
  ?id:string ->
  ?timeouts:azurerm_network_manager_static_member__timeouts ->
  name:string ->
  network_group_id:string ->
  target_virtual_network_id:string ->
  string ->
  unit
