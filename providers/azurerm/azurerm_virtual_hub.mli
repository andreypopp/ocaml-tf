(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type route

val route :
  address_prefixes:string prop list ->
  next_hop_ip_address:string prop ->
  unit ->
  route

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_hub

val azurerm_virtual_hub :
  ?address_prefix:string prop ->
  ?hub_routing_preference:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_router_auto_scale_min_capacity:float prop ->
  ?virtual_wan_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  route:route list ->
  unit ->
  azurerm_virtual_hub

val yojson_of_azurerm_virtual_hub : azurerm_virtual_hub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_prefix : string prop;
  default_route_table_id : string prop;
  hub_routing_preference : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_auto_scale_min_capacity : float prop;
  virtual_router_ips : string list prop;
  virtual_wan_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?address_prefix:string prop ->
  ?hub_routing_preference:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_router_auto_scale_min_capacity:float prop ->
  ?virtual_wan_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  route:route list ->
  string ->
  t

val make :
  ?address_prefix:string prop ->
  ?hub_routing_preference:string prop ->
  ?id:string prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_router_auto_scale_min_capacity:float prop ->
  ?virtual_wan_id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  route:route list ->
  string ->
  t Tf_core.resource
