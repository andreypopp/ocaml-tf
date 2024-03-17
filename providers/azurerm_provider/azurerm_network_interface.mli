(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface__ip_configuration
type azurerm_network_interface__timeouts
type azurerm_network_interface

val azurerm_network_interface :
  ?auxiliary_mode:string ->
  ?auxiliary_sku:string ->
  ?edge_zone:string ->
  ?enable_accelerated_networking:bool ->
  ?enable_ip_forwarding:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_interface__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  ip_configuration:azurerm_network_interface__ip_configuration list ->
  string ->
  unit
