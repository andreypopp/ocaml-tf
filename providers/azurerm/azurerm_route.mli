(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_route

val azurerm_route :
  ?id:string prop ->
  ?next_hop_in_ip_address:string prop ->
  ?timeouts:timeouts ->
  address_prefix:string prop ->
  name:string prop ->
  next_hop_type:string prop ->
  resource_group_name:string prop ->
  route_table_name:string prop ->
  unit ->
  azurerm_route

val yojson_of_azurerm_route : azurerm_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_prefix : string prop;
  id : string prop;
  name : string prop;
  next_hop_in_ip_address : string prop;
  next_hop_type : string prop;
  resource_group_name : string prop;
  route_table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?next_hop_in_ip_address:string prop ->
  ?timeouts:timeouts ->
  address_prefix:string prop ->
  name:string prop ->
  next_hop_type:string prop ->
  resource_group_name:string prop ->
  route_table_name:string prop ->
  string ->
  t
