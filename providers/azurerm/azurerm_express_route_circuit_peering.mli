(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipv6__microsoft_peering

val ipv6__microsoft_peering :
  ?advertised_communities:string prop list ->
  ?advertised_public_prefixes:string prop list ->
  ?customer_asn:float prop ->
  ?routing_registry_name:string prop ->
  unit ->
  ipv6__microsoft_peering

type ipv6

val ipv6 :
  ?enabled:bool prop ->
  ?route_filter_id:string prop ->
  ?microsoft_peering:ipv6__microsoft_peering list ->
  primary_peer_address_prefix:string prop ->
  secondary_peer_address_prefix:string prop ->
  unit ->
  ipv6

type microsoft_peering_config

val microsoft_peering_config :
  ?advertised_communities:string prop list ->
  ?customer_asn:float prop ->
  ?routing_registry_name:string prop ->
  advertised_public_prefixes:string prop list ->
  unit ->
  microsoft_peering_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_circuit_peering

val azurerm_express_route_circuit_peering :
  ?id:string prop ->
  ?ipv4_enabled:bool prop ->
  ?peer_asn:float prop ->
  ?primary_peer_address_prefix:string prop ->
  ?route_filter_id:string prop ->
  ?secondary_peer_address_prefix:string prop ->
  ?shared_key:string prop ->
  ?ipv6:ipv6 list ->
  ?microsoft_peering_config:microsoft_peering_config list ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  vlan_id:float prop ->
  unit ->
  azurerm_express_route_circuit_peering

val yojson_of_azurerm_express_route_circuit_peering :
  azurerm_express_route_circuit_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  azure_asn : float prop;
  express_route_circuit_name : string prop;
  gateway_manager_etag : string prop;
  id : string prop;
  ipv4_enabled : bool prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_azure_port : string prop;
  primary_peer_address_prefix : string prop;
  resource_group_name : string prop;
  route_filter_id : string prop;
  secondary_azure_port : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ipv4_enabled:bool prop ->
  ?peer_asn:float prop ->
  ?primary_peer_address_prefix:string prop ->
  ?route_filter_id:string prop ->
  ?secondary_peer_address_prefix:string prop ->
  ?shared_key:string prop ->
  ?ipv6:ipv6 list ->
  ?microsoft_peering_config:microsoft_peering_config list ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  vlan_id:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ipv4_enabled:bool prop ->
  ?peer_asn:float prop ->
  ?primary_peer_address_prefix:string prop ->
  ?route_filter_id:string prop ->
  ?secondary_peer_address_prefix:string prop ->
  ?shared_key:string prop ->
  ?ipv6:ipv6 list ->
  ?microsoft_peering_config:microsoft_peering_config list ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  vlan_id:float prop ->
  string ->
  t Tf_core.resource
