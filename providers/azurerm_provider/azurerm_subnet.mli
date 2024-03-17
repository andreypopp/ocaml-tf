(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet__delegation__service_delegation
type azurerm_subnet__delegation
type azurerm_subnet__timeouts
type azurerm_subnet

val azurerm_subnet :
  ?enforce_private_link_endpoint_network_policies:bool prop ->
  ?enforce_private_link_service_network_policies:bool prop ->
  ?id:string prop ->
  ?private_endpoint_network_policies_enabled:bool prop ->
  ?private_link_service_network_policies_enabled:bool prop ->
  ?service_endpoint_policy_ids:string prop list ->
  ?service_endpoints:string prop list ->
  ?timeouts:azurerm_subnet__timeouts ->
  address_prefixes:string prop list ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_name:string prop ->
  delegation:azurerm_subnet__delegation list ->
  string ->
  unit
