(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_configuration__route__propagated_route_table

val connection_configuration__route__propagated_route_table :
  ?labels:string prop list ->
  ids:string prop list ->
  unit ->
  connection_configuration__route__propagated_route_table

type connection_configuration__route

val connection_configuration__route :
  ?inbound_route_map_id:string prop ->
  ?outbound_route_map_id:string prop ->
  associated_route_table_id:string prop ->
  propagated_route_table:
    connection_configuration__route__propagated_route_table list ->
  unit ->
  connection_configuration__route

type connection_configuration__vpn_client_address_pool

val connection_configuration__vpn_client_address_pool :
  address_prefixes:string prop list ->
  unit ->
  connection_configuration__vpn_client_address_pool

type connection_configuration

val connection_configuration :
  ?internet_security_enabled:bool prop ->
  name:string prop ->
  route:connection_configuration__route list ->
  vpn_client_address_pool:
    connection_configuration__vpn_client_address_pool list ->
  unit ->
  connection_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_point_to_site_vpn_gateway

val azurerm_point_to_site_vpn_gateway :
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?routing_preference_internet_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_unit:float prop ->
  virtual_hub_id:string prop ->
  vpn_server_configuration_id:string prop ->
  connection_configuration:connection_configuration list ->
  unit ->
  azurerm_point_to_site_vpn_gateway

val yojson_of_azurerm_point_to_site_vpn_gateway :
  azurerm_point_to_site_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_servers : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference_internet_enabled : bool prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
  vpn_server_configuration_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?routing_preference_internet_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_unit:float prop ->
  virtual_hub_id:string prop ->
  vpn_server_configuration_id:string prop ->
  connection_configuration:connection_configuration list ->
  string ->
  t

val make :
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?routing_preference_internet_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_unit:float prop ->
  virtual_hub_id:string prop ->
  vpn_server_configuration_id:string prop ->
  connection_configuration:connection_configuration list ->
  string ->
  t Tf_core.resource
