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

type azurerm_virtual_hub_route_table_route

val azurerm_virtual_hub_route_table_route :
  ?id:string prop ->
  ?next_hop_type:string prop ->
  ?timeouts:timeouts ->
  destinations:string prop list ->
  destinations_type:string prop ->
  name:string prop ->
  next_hop:string prop ->
  route_table_id:string prop ->
  unit ->
  azurerm_virtual_hub_route_table_route

val yojson_of_azurerm_virtual_hub_route_table_route :
  azurerm_virtual_hub_route_table_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destinations : string list prop;
  destinations_type : string prop;
  id : string prop;
  name : string prop;
  next_hop : string prop;
  next_hop_type : string prop;
  route_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?next_hop_type:string prop ->
  ?timeouts:timeouts ->
  destinations:string prop list ->
  destinations_type:string prop ->
  name:string prop ->
  next_hop:string prop ->
  route_table_id:string prop ->
  string ->
  t
