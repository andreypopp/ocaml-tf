(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type bgp_settings__peering_addresses

val bgp_settings__peering_addresses :
  ?apipa_addresses:string prop list ->
  ?ip_configuration_name:string prop ->
  unit ->
  bgp_settings__peering_addresses

type bgp_settings

val bgp_settings :
  ?asn:float prop ->
  ?peer_weight:float prop ->
  peering_addresses:bgp_settings__peering_addresses list ->
  unit ->
  bgp_settings

type custom_route

val custom_route :
  ?address_prefixes:string prop list -> unit -> custom_route

type ip_configuration

val ip_configuration :
  ?name:string prop ->
  ?private_ip_address_allocation:string prop ->
  public_ip_address_id:string prop ->
  subnet_id:string prop ->
  unit ->
  ip_configuration

type policy_group__policy_member

val policy_group__policy_member :
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  policy_group__policy_member

type policy_group

val policy_group :
  ?is_default:bool prop ->
  ?priority:float prop ->
  name:string prop ->
  policy_member:policy_group__policy_member list ->
  unit ->
  policy_group

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpn_client_configuration__ipsec_policy

val vpn_client_configuration__ipsec_policy :
  dh_group:string prop ->
  ike_encryption:string prop ->
  ike_integrity:string prop ->
  ipsec_encryption:string prop ->
  ipsec_integrity:string prop ->
  pfs_group:string prop ->
  sa_data_size_in_kilobytes:float prop ->
  sa_lifetime_in_seconds:float prop ->
  unit ->
  vpn_client_configuration__ipsec_policy

type vpn_client_configuration__radius_server

val vpn_client_configuration__radius_server :
  address:string prop ->
  score:float prop ->
  secret:string prop ->
  unit ->
  vpn_client_configuration__radius_server

type vpn_client_configuration__revoked_certificate

val vpn_client_configuration__revoked_certificate :
  name:string prop ->
  thumbprint:string prop ->
  unit ->
  vpn_client_configuration__revoked_certificate

type vpn_client_configuration__root_certificate

val vpn_client_configuration__root_certificate :
  name:string prop ->
  public_cert_data:string prop ->
  unit ->
  vpn_client_configuration__root_certificate

type vpn_client_configuration__virtual_network_gateway_client_connection

val vpn_client_configuration__virtual_network_gateway_client_connection :
  address_prefixes:string prop list ->
  name:string prop ->
  policy_group_names:string prop list ->
  unit ->
  vpn_client_configuration__virtual_network_gateway_client_connection

type vpn_client_configuration

val vpn_client_configuration :
  ?aad_audience:string prop ->
  ?aad_issuer:string prop ->
  ?aad_tenant:string prop ->
  ?radius_server_address:string prop ->
  ?radius_server_secret:string prop ->
  ?vpn_auth_types:string prop list ->
  ?vpn_client_protocols:string prop list ->
  address_space:string prop list ->
  ipsec_policy:vpn_client_configuration__ipsec_policy list ->
  radius_server:vpn_client_configuration__radius_server list ->
  revoked_certificate:
    vpn_client_configuration__revoked_certificate list ->
  root_certificate:vpn_client_configuration__root_certificate list ->
  virtual_network_gateway_client_connection:
    vpn_client_configuration__virtual_network_gateway_client_connection
    list ->
  unit ->
  vpn_client_configuration

type azurerm_virtual_network_gateway

val azurerm_virtual_network_gateway :
  ?active_active:bool prop ->
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?default_local_network_gateway_id:string prop ->
  ?dns_forwarding_enabled:bool prop ->
  ?edge_zone:string prop ->
  ?enable_bgp:bool prop ->
  ?generation:string prop ->
  ?id:string prop ->
  ?ip_sec_replay_protection_enabled:bool prop ->
  ?private_ip_address_enabled:bool prop ->
  ?remote_vnet_traffic_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_wan_traffic_enabled:bool prop ->
  ?vpn_type:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  type_:string prop ->
  bgp_settings:bgp_settings list ->
  custom_route:custom_route list ->
  ip_configuration:ip_configuration list ->
  policy_group:policy_group list ->
  vpn_client_configuration:vpn_client_configuration list ->
  unit ->
  azurerm_virtual_network_gateway

val yojson_of_azurerm_virtual_network_gateway :
  azurerm_virtual_network_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active_active : bool prop;
  bgp_route_translation_for_nat_enabled : bool prop;
  default_local_network_gateway_id : string prop;
  dns_forwarding_enabled : bool prop;
  edge_zone : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_sec_replay_protection_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  remote_vnet_traffic_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  virtual_wan_traffic_enabled : bool prop;
  vpn_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_active:bool prop ->
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?default_local_network_gateway_id:string prop ->
  ?dns_forwarding_enabled:bool prop ->
  ?edge_zone:string prop ->
  ?enable_bgp:bool prop ->
  ?generation:string prop ->
  ?id:string prop ->
  ?ip_sec_replay_protection_enabled:bool prop ->
  ?private_ip_address_enabled:bool prop ->
  ?remote_vnet_traffic_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_wan_traffic_enabled:bool prop ->
  ?vpn_type:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  type_:string prop ->
  bgp_settings:bgp_settings list ->
  custom_route:custom_route list ->
  ip_configuration:ip_configuration list ->
  policy_group:policy_group list ->
  vpn_client_configuration:vpn_client_configuration list ->
  string ->
  t
