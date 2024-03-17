(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_profile__container_network_interface__ip_configuration

type azurerm_network_profile__container_network_interface
type azurerm_network_profile__timeouts
type azurerm_network_profile

val azurerm_network_profile :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_profile__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  container_network_interface:
    azurerm_network_profile__container_network_interface list ->
  string ->
  unit
