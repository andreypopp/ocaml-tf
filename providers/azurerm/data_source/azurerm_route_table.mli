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

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_route_table

val azurerm_route_table :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_route_table

val yojson_of_azurerm_route_table : azurerm_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bgp_route_propagation_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
