(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_static_member__timeouts
type azurerm_network_manager_static_member

type t = private {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

val azurerm_network_manager_static_member :
  ?id:string prop ->
  ?timeouts:azurerm_network_manager_static_member__timeouts ->
  name:string prop ->
  network_group_id:string prop ->
  target_virtual_network_id:string prop ->
  string ->
  t
