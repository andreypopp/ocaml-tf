(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_network_group__timeouts
type azurerm_network_manager_network_group

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
}

val azurerm_network_manager_network_group :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_network_manager_network_group__timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  string ->
  t
