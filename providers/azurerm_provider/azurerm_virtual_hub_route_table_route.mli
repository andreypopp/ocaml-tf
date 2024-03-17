(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_route_table_route__timeouts
type azurerm_virtual_hub_route_table_route

val azurerm_virtual_hub_route_table_route :
  ?id:string prop ->
  ?next_hop_type:string prop ->
  ?timeouts:azurerm_virtual_hub_route_table_route__timeouts ->
  destinations:string prop list ->
  destinations_type:string prop ->
  name:string prop ->
  next_hop:string prop ->
  route_table_id:string prop ->
  string ->
  unit
