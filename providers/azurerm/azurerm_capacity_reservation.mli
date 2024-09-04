(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku

val sku : capacity:float prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_capacity_reservation

val azurerm_capacity_reservation :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  capacity_reservation_group_id:string prop ->
  name:string prop ->
  sku:sku list ->
  unit ->
  azurerm_capacity_reservation

val yojson_of_azurerm_capacity_reservation :
  azurerm_capacity_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capacity_reservation_group_id : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  capacity_reservation_group_id:string prop ->
  name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  capacity_reservation_group_id:string prop ->
  name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
