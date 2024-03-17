(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_peering__timeouts
type azurerm_virtual_network_peering

val azurerm_virtual_network_peering :
  ?allow_forwarded_traffic:bool ->
  ?allow_gateway_transit:bool ->
  ?allow_virtual_network_access:bool ->
  ?id:string ->
  ?triggers:(string * string) list ->
  ?use_remote_gateways:bool ->
  ?timeouts:azurerm_virtual_network_peering__timeouts ->
  name:string ->
  remote_virtual_network_id:string ->
  resource_group_name:string ->
  virtual_network_name:string ->
  string ->
  unit
