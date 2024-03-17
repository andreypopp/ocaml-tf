(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_bgp_connection__timeouts
type azurerm_virtual_hub_bgp_connection

val azurerm_virtual_hub_bgp_connection :
  ?virtual_network_connection_id:string ->
  ?timeouts:azurerm_virtual_hub_bgp_connection__timeouts ->
  name:string ->
  peer_asn:float ->
  peer_ip:string ->
  virtual_hub_id:string ->
  string ->
  unit
