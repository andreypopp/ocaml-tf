(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing__propagated_route_table

val routing__propagated_route_table :
  ?labels:string prop list ->
  ?route_table_ids:string prop list ->
  unit ->
  routing__propagated_route_table

type routing__static_vnet_route

val routing__static_vnet_route :
  ?address_prefixes:string prop list ->
  ?name:string prop ->
  ?next_hop_ip_address:string prop ->
  unit ->
  routing__static_vnet_route

type routing

val routing :
  ?associated_route_table_id:string prop ->
  ?inbound_route_map_id:string prop ->
  ?outbound_route_map_id:string prop ->
  ?static_vnet_local_route_override_criteria:string prop ->
  ?propagated_route_table:routing__propagated_route_table list ->
  ?static_vnet_route:routing__static_vnet_route list ->
  unit ->
  routing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_hub_connection

val azurerm_virtual_hub_connection :
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_virtual_hub_connection

val yojson_of_azurerm_virtual_hub_connection :
  azurerm_virtual_hub_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?routing:routing list ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_virtual_network_id:string prop ->
  virtual_hub_id:string prop ->
  string ->
  t Tf_core.resource
