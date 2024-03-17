(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_connection__routing__propagated_route_table
type azurerm_virtual_hub_connection__routing__static_vnet_route
type azurerm_virtual_hub_connection__routing
type azurerm_virtual_hub_connection__timeouts
type azurerm_virtual_hub_connection

type t = private {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  virtual_hub_id : string prop;
}

val azurerm_virtual_hub_connection :
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?timeouts:azurerm_virtual_hub_connection__timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  virtual_hub_id:string prop ->
  routing:azurerm_virtual_hub_connection__routing list ->
  string ->
  t
