(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type route

val route :
  ?next_hop_type:string prop ->
  destinations:string prop list ->
  destinations_type:string prop ->
  name:string prop ->
  next_hop:string prop ->
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

type azurerm_virtual_hub_route_table

val azurerm_virtual_hub_route_table :
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  route:route list ->
  unit ->
  azurerm_virtual_hub_route_table

val yojson_of_azurerm_virtual_hub_route_table :
  azurerm_virtual_hub_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  labels : string list prop;
  name : string prop;
  virtual_hub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  route:route list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  virtual_hub_id:string prop ->
  route:route list ->
  string ->
  t Tf_core.resource
