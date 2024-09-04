(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_route_server

val azurerm_route_server :
  ?branch_to_branch_traffic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  public_ip_address_id:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_route_server

val yojson_of_azurerm_route_server : azurerm_route_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  branch_to_branch_traffic_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_ip_address_id : string prop;
  resource_group_name : string prop;
  routing_state : string prop;
  sku : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  virtual_router_asn : float prop;
  virtual_router_ips : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?branch_to_branch_traffic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  public_ip_address_id:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?branch_to_branch_traffic_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  public_ip_address_id:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
