(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_bgp_connection__timeouts
type azurerm_virtual_hub_bgp_connection

type t = private {
  id : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  virtual_hub_id : string prop;
  virtual_network_connection_id : string prop;
}

val azurerm_virtual_hub_bgp_connection :
  ?id:string prop ->
  ?virtual_network_connection_id:string prop ->
  ?timeouts:azurerm_virtual_hub_bgp_connection__timeouts ->
  name:string prop ->
  peer_asn:float prop ->
  peer_ip:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t
