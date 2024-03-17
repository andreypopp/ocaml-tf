(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_gateway_connection__custom_bgp_addresses
type azurerm_virtual_network_gateway_connection__ipsec_policy
type azurerm_virtual_network_gateway_connection__timeouts

type azurerm_virtual_network_gateway_connection__traffic_selector_policy

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
  ?timeouts:azurerm_virtual_network_gateway_connection__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  virtual_network_gateway_id:string prop ->
  custom_bgp_addresses:
    azurerm_virtual_network_gateway_connection__custom_bgp_addresses
    list ->
  ipsec_policy:
    azurerm_virtual_network_gateway_connection__ipsec_policy list ->
  traffic_selector_policy:
    azurerm_virtual_network_gateway_connection__traffic_selector_policy
    list ->
  string ->
  unit
