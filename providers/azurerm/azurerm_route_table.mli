(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_table__timeouts

type azurerm_route_table__route = {
  address_prefix : string prop;  (** address_prefix *)
  name : string prop;  (** name *)
  next_hop_in_ip_address : string prop;
      (** next_hop_in_ip_address *)
  next_hop_type : string prop;  (** next_hop_type *)
}

type azurerm_route_table

type t = private {
  disable_bgp_route_propagation : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  route : azurerm_route_table__route list prop;
  subnets : string list prop;
  tags : (string * string) list prop;
}

val azurerm_route_table :
  ?disable_bgp_route_propagation:bool prop ->
  ?id:string prop ->
  ?route:azurerm_route_table__route list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_route_table__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
