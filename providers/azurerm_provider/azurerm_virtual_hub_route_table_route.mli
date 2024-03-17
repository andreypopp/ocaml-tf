(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_route_table_route__timeouts
type azurerm_virtual_hub_route_table_route

val azurerm_virtual_hub_route_table_route :
  ?next_hop_type:string ->
  ?timeouts:azurerm_virtual_hub_route_table_route__timeouts ->
  destinations:string list ->
  destinations_type:string ->
  name:string ->
  next_hop:string ->
  route_table_id:string ->
  string ->
  unit
