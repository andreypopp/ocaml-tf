(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type route = {
  address_prefix : string prop;  (** address_prefix *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop;
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_route_table

val azurerm_route_table :
  ?bgp_route_propagation_enabled:bool prop ->
  ?disable_bgp_route_propagation:bool prop ->
  ?id:string prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_route_table

val yojson_of_azurerm_route_table : azurerm_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bgp_route_propagation_enabled : bool prop;
  disable_bgp_route_propagation : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?bgp_route_propagation_enabled:bool prop ->
  ?disable_bgp_route_propagation:bool prop ->
  ?id:string prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?bgp_route_propagation_enabled:bool prop ->
  ?disable_bgp_route_propagation:bool prop ->
  ?id:string prop ->
  ?route:route list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
