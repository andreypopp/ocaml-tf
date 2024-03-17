(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_dns_servers__timeouts
type azurerm_virtual_network_dns_servers

val azurerm_virtual_network_dns_servers :
  ?dns_servers:string list ->
  ?timeouts:azurerm_virtual_network_dns_servers__timeouts ->
  virtual_network_id:string ->
  string ->
  unit
