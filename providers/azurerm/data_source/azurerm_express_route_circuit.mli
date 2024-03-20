(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type peerings = {
  azure_asn : float prop;  (** azure_asn *)
  peer_asn : float prop;  (** peer_asn *)
  peering_type : string prop;  (** peering_type *)
  primary_peer_address_prefix : string prop;
      (** primary_peer_address_prefix *)
  secondary_peer_address_prefix : string prop;
      (** secondary_peer_address_prefix *)
  shared_key : string prop;  (** shared_key *)
  vlan_id : float prop;  (** vlan_id *)
}

type service_provider_properties = {
  bandwidth_in_mbps : float prop;  (** bandwidth_in_mbps *)
  peering_location : string prop;  (** peering_location *)
  service_provider_name : string prop;  (** service_provider_name *)
}

type sku = {
  family : string prop;  (** family *)
  tier : string prop;  (** tier *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_express_route_circuit

val azurerm_express_route_circuit :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_express_route_circuit

val yojson_of_azurerm_express_route_circuit :
  azurerm_express_route_circuit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  peerings : peerings list prop;
  resource_group_name : string prop;
  service_key : string prop;
  service_provider_properties :
    service_provider_properties list prop;
  service_provider_provisioning_state : string prop;
  sku : sku list prop;
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
