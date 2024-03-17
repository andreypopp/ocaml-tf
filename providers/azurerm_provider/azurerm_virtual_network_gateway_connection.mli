(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_gateway_connection__custom_bgp_addresses
type azurerm_virtual_network_gateway_connection__ipsec_policy
type azurerm_virtual_network_gateway_connection__timeouts

type azurerm_virtual_network_gateway_connection__traffic_selector_policy

type azurerm_virtual_network_gateway_connection

val azurerm_virtual_network_gateway_connection :
  ?authorization_key:string ->
  ?connection_mode:string ->
  ?dpd_timeout_seconds:float ->
  ?egress_nat_rule_ids:string list ->
  ?express_route_circuit_id:string ->
  ?ingress_nat_rule_ids:string list ->
  ?local_azure_ip_address_enabled:bool ->
  ?local_network_gateway_id:string ->
  ?peer_virtual_network_gateway_id:string ->
  ?shared_key:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_virtual_network_gateway_connection__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  type_:string ->
  virtual_network_gateway_id:string ->
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
