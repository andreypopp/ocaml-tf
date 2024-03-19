(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type routing__propagated_route_table

val routing__propagated_route_table :
  ?labels:string prop list ->
  route_table_ids:string prop list ->
  unit ->
  routing__propagated_route_table

type routing

val routing :
  ?inbound_route_map_id:string prop ->
  ?outbound_route_map_id:string prop ->
  associated_route_table:string prop ->
  propagated_route_table:routing__propagated_route_table list ->
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

type traffic_selector_policy

val traffic_selector_policy :
  local_address_ranges:string prop list ->
  remote_address_ranges:string prop list ->
  unit ->
  traffic_selector_policy

type vpn_link__custom_bgp_address

val vpn_link__custom_bgp_address :
  ip_address:string prop ->
  ip_configuration_id:string prop ->
  unit ->
  vpn_link__custom_bgp_address

type vpn_link__ipsec_policy

val vpn_link__ipsec_policy :
  dh_group:string prop ->
  encryption_algorithm:string prop ->
  ike_encryption_algorithm:string prop ->
  ike_integrity_algorithm:string prop ->
  integrity_algorithm:string prop ->
  pfs_group:string prop ->
  sa_data_size_kb:float prop ->
  sa_lifetime_sec:float prop ->
  unit ->
  vpn_link__ipsec_policy

type vpn_link

val vpn_link :
  ?bandwidth_mbps:float prop ->
  ?bgp_enabled:bool prop ->
  ?connection_mode:string prop ->
  ?egress_nat_rule_ids:string prop list ->
  ?ingress_nat_rule_ids:string prop list ->
  ?local_azure_ip_address_enabled:bool prop ->
  ?policy_based_traffic_selector_enabled:bool prop ->
  ?protocol:string prop ->
  ?ratelimit_enabled:bool prop ->
  ?route_weight:float prop ->
  ?shared_key:string prop ->
  name:string prop ->
  vpn_site_link_id:string prop ->
  custom_bgp_address:vpn_link__custom_bgp_address list ->
  ipsec_policy:vpn_link__ipsec_policy list ->
  unit ->
  vpn_link

type azurerm_vpn_gateway_connection

val azurerm_vpn_gateway_connection :
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_vpn_site_id:string prop ->
  vpn_gateway_id:string prop ->
  routing:routing list ->
  traffic_selector_policy:traffic_selector_policy list ->
  vpn_link:vpn_link list ->
  unit ->
  azurerm_vpn_gateway_connection

val yojson_of_azurerm_vpn_gateway_connection :
  azurerm_vpn_gateway_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_vpn_site_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  remote_vpn_site_id:string prop ->
  vpn_gateway_id:string prop ->
  routing:routing list ->
  traffic_selector_policy:traffic_selector_policy list ->
  vpn_link:vpn_link list ->
  string ->
  t
