(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type custom_bgp_addresses

val custom_bgp_addresses :
  ?secondary:string prop ->
  primary:string prop ->
  unit ->
  custom_bgp_addresses

type ipsec_policy

val ipsec_policy :
  ?sa_datasize:float prop ->
  ?sa_lifetime:float prop ->
  dh_group:string prop ->
  ike_encryption:string prop ->
  ike_integrity:string prop ->
  ipsec_encryption:string prop ->
  ipsec_integrity:string prop ->
  pfs_group:string prop ->
  unit ->
  ipsec_policy

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
  local_address_cidrs:string prop list ->
  remote_address_cidrs:string prop list ->
  unit ->
  traffic_selector_policy

type azurerm_virtual_network_gateway_connection

val azurerm_virtual_network_gateway_connection :
  ?authorization_key:string prop ->
  ?connection_mode:string prop ->
  ?connection_protocol:string prop ->
  ?dpd_timeout_seconds:float prop ->
  ?egress_nat_rule_ids:string prop list ->
  ?enable_bgp:bool prop ->
  ?express_route_circuit_id:string prop ->
  ?express_route_gateway_bypass:bool prop ->
  ?id:string prop ->
  ?ingress_nat_rule_ids:string prop list ->
  ?local_azure_ip_address_enabled:bool prop ->
  ?local_network_gateway_id:string prop ->
  ?peer_virtual_network_gateway_id:string prop ->
  ?routing_weight:float prop ->
  ?shared_key:string prop ->
  ?tags:(string * string prop) list ->
  ?use_policy_based_traffic_selectors:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  virtual_network_gateway_id:string prop ->
  custom_bgp_addresses:custom_bgp_addresses list ->
  ipsec_policy:ipsec_policy list ->
  traffic_selector_policy:traffic_selector_policy list ->
  unit ->
  azurerm_virtual_network_gateway_connection

val yojson_of_azurerm_virtual_network_gateway_connection :
  azurerm_virtual_network_gateway_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_key : string prop;
  connection_mode : string prop;
  connection_protocol : string prop;
  dpd_timeout_seconds : float prop;
  egress_nat_rule_ids : string list prop;
  enable_bgp : bool prop;
  express_route_circuit_id : string prop;
  express_route_gateway_bypass : bool prop;
  id : string prop;
  ingress_nat_rule_ids : string list prop;
  local_azure_ip_address_enabled : bool prop;
  local_network_gateway_id : string prop;
  location : string prop;
  name : string prop;
  peer_virtual_network_gateway_id : string prop;
  resource_group_name : string prop;
  routing_weight : float prop;
  shared_key : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  use_policy_based_traffic_selectors : bool prop;
  virtual_network_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorization_key:string prop ->
  ?connection_mode:string prop ->
  ?connection_protocol:string prop ->
  ?dpd_timeout_seconds:float prop ->
  ?egress_nat_rule_ids:string prop list ->
  ?enable_bgp:bool prop ->
  ?express_route_circuit_id:string prop ->
  ?express_route_gateway_bypass:bool prop ->
  ?id:string prop ->
  ?ingress_nat_rule_ids:string prop list ->
  ?local_azure_ip_address_enabled:bool prop ->
  ?local_network_gateway_id:string prop ->
  ?peer_virtual_network_gateway_id:string prop ->
  ?routing_weight:float prop ->
  ?shared_key:string prop ->
  ?tags:(string * string prop) list ->
  ?use_policy_based_traffic_selectors:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  virtual_network_gateway_id:string prop ->
  custom_bgp_addresses:custom_bgp_addresses list ->
  ipsec_policy:ipsec_policy list ->
  traffic_selector_policy:traffic_selector_policy list ->
  string ->
  t
