(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_hub__route
type azurerm_virtual_hub__timeouts
type azurerm_virtual_hub

val azurerm_virtual_hub :
  ?address_prefix:string prop ->
  ?hub_routing_preference:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_router_auto_scale_min_capacity:float prop ->
  ?virtual_wan_id:string prop ->
  ?timeouts:azurerm_virtual_hub__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  route:azurerm_virtual_hub__route list ->
  string ->
  unit
