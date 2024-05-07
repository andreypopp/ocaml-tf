(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_hub_bgp_connection

val azurerm_virtual_hub_bgp_connection :
  ?id:string prop ->
  ?virtual_network_connection_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_asn:float prop ->
  peer_ip:string prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_virtual_hub_bgp_connection

val yojson_of_azurerm_virtual_hub_bgp_connection :
  azurerm_virtual_hub_bgp_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  virtual_hub_id : string prop;
  virtual_network_connection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?virtual_network_connection_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_asn:float prop ->
  peer_ip:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?virtual_network_connection_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  peer_asn:float prop ->
  peer_ip:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t Tf_core.resource
