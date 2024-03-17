(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub__route
type azurerm_virtual_hub__timeouts
type azurerm_virtual_hub

val azurerm_virtual_hub :
  ?address_prefix:string ->
  ?hub_routing_preference:string ->
  ?id:string ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?virtual_router_auto_scale_min_capacity:float ->
  ?virtual_wan_id:string ->
  ?timeouts:azurerm_virtual_hub__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  route:azurerm_virtual_hub__route list ->
  string ->
  unit
