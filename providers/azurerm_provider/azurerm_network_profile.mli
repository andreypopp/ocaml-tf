(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_profile__container_network_interface__ip_configuration

type azurerm_network_profile__container_network_interface
type azurerm_network_profile__timeouts
type azurerm_network_profile

type t = private {
  container_network_interface_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_network_profile :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_profile__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  container_network_interface:
    azurerm_network_profile__container_network_interface list ->
  string ->
  t
