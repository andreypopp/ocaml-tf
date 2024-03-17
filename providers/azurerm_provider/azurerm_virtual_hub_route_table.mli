(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub_route_table__route
type azurerm_virtual_hub_route_table__timeouts
type azurerm_virtual_hub_route_table

val azurerm_virtual_hub_route_table :
  ?labels:string list ->
  ?timeouts:azurerm_virtual_hub_route_table__timeouts ->
  name:string ->
  virtual_hub_id:string ->
  route:azurerm_virtual_hub_route_table__route list ->
  string ->
  unit
