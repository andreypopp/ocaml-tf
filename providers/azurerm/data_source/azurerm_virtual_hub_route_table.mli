(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type route = {
  destinations : string prop list;  (** destinations *)
  destinations_type : string prop;  (** destinations_type *)
  name : string prop;  (** name *)
  next_hop : string prop;  (** next_hop *)
  next_hop_type : string prop;  (** next_hop_type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_hub_route_table

val azurerm_virtual_hub_route_table :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  unit ->
  azurerm_virtual_hub_route_table

val yojson_of_azurerm_virtual_hub_route_table :
  azurerm_virtual_hub_route_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  labels : string list prop;
  name : string prop;
  resource_group_name : string prop;
  route : route list prop;
  virtual_hub_id : string prop;
  virtual_hub_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_name:string prop ->
  string ->
  t Tf_core.resource
