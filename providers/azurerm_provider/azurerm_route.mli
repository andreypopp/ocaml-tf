(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route__timeouts
type azurerm_route

val azurerm_route :
  ?id:string prop ->
  ?next_hop_in_ip_address:string prop ->
  ?timeouts:azurerm_route__timeouts ->
  address_prefix:string prop ->
  name:string prop ->
  next_hop_type:string prop ->
  resource_group_name:string prop ->
  route_table_name:string prop ->
  string ->
  unit
