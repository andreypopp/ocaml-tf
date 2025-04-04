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

type azurerm_virtual_network_peering

val azurerm_virtual_network_peering :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?local_subnet_names:string prop list ->
  ?only_ipv6_peering_enabled:bool prop ->
  ?peer_complete_virtual_networks_enabled:bool prop ->
  ?remote_subnet_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  unit ->
  azurerm_virtual_network_peering

val yojson_of_azurerm_virtual_network_peering :
  azurerm_virtual_network_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  local_subnet_names : string list prop;
  name : string prop;
  only_ipv6_peering_enabled : bool prop;
  peer_complete_virtual_networks_enabled : bool prop;
  remote_subnet_names : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  triggers : string Tf_core.assoc prop;
  use_remote_gateways : bool prop;
  virtual_network_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?local_subnet_names:string prop list ->
  ?only_ipv6_peering_enabled:bool prop ->
  ?peer_complete_virtual_networks_enabled:bool prop ->
  ?remote_subnet_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t

val make :
  ?allow_forwarded_traffic:bool prop ->
  ?allow_gateway_transit:bool prop ->
  ?allow_virtual_network_access:bool prop ->
  ?id:string prop ->
  ?local_subnet_names:string prop list ->
  ?only_ipv6_peering_enabled:bool prop ->
  ?peer_complete_virtual_networks_enabled:bool prop ->
  ?remote_subnet_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  ?use_remote_gateways:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  string ->
  t Tf_core.resource
