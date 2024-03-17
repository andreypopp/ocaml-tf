(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_connection__routing__propagated_route_table
type azurerm_virtual_hub_connection__routing__static_vnet_route
type azurerm_virtual_hub_connection__routing
type azurerm_virtual_hub_connection__timeouts
type azurerm_virtual_hub_connection

val azurerm_virtual_hub_connection :
  ?id:string ->
  ?internet_security_enabled:bool ->
  ?timeouts:azurerm_virtual_hub_connection__timeouts ->
  name:string ->
  remote_virtual_network_id:string ->
  virtual_hub_id:string ->
  routing:azurerm_virtual_hub_connection__routing list ->
  string ->
  unit
