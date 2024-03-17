(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route__timeouts
type azurerm_route

val azurerm_route :
  ?id:string ->
  ?next_hop_in_ip_address:string ->
  ?timeouts:azurerm_route__timeouts ->
  address_prefix:string ->
  name:string ->
  next_hop_type:string ->
  resource_group_name:string ->
  route_table_name:string ->
  string ->
  unit
