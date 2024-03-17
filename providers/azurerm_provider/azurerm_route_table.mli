(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_table__timeouts

type azurerm_route_table__route = {
  address_prefix : string;  (** address_prefix *)
  name : string;  (** name *)
  next_hop_in_ip_address : string;  (** next_hop_in_ip_address *)
  next_hop_type : string;  (** next_hop_type *)
}
[@@deriving yojson_of]

type azurerm_route_table

val azurerm_route_table :
  ?disable_bgp_route_propagation:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_route_table__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
