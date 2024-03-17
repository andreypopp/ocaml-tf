(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_local_network_gateway__bgp_settings
type azurerm_local_network_gateway__timeouts
type azurerm_local_network_gateway

val azurerm_local_network_gateway :
  ?address_space:string list ->
  ?gateway_address:string ->
  ?gateway_fqdn:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_local_network_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  bgp_settings:azurerm_local_network_gateway__bgp_settings list ->
  string ->
  unit
