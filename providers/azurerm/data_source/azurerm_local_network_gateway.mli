(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp_settings = {
  asn : float prop;  (** asn *)
  bgp_peering_address : string prop;  (** bgp_peering_address *)
  peer_weight : float prop;  (** peer_weight *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_local_network_gateway

val azurerm_local_network_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_local_network_gateway

val yojson_of_azurerm_local_network_gateway :
  azurerm_local_network_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_space : string list prop;
  bgp_settings : bgp_settings list prop;
  gateway_address : string prop;
  gateway_fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
