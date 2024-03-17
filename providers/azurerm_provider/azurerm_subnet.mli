(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet__delegation__service_delegation
type azurerm_subnet__delegation
type azurerm_subnet__timeouts
type azurerm_subnet

val azurerm_subnet :
  ?service_endpoint_policy_ids:string list ->
  ?service_endpoints:string list ->
  ?timeouts:azurerm_subnet__timeouts ->
  address_prefixes:string list ->
  name:string ->
  resource_group_name:string ->
  virtual_network_name:string ->
  delegation:azurerm_subnet__delegation list ->
  string ->
  unit
