(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface__ip_configuration
type azurerm_network_interface__timeouts
type azurerm_network_interface

val azurerm_network_interface :
  ?auxiliary_mode:string prop ->
  ?auxiliary_sku:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?id:string prop ->
  ?internal_dns_name_label:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_interface__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:azurerm_network_interface__ip_configuration list ->
  string ->
  unit
