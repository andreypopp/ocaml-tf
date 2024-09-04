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

type azurerm_maps_creator

val azurerm_maps_creator :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  maps_account_id:string prop ->
  name:string prop ->
  storage_units:float prop ->
  unit ->
  azurerm_maps_creator

val yojson_of_azurerm_maps_creator : azurerm_maps_creator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  maps_account_id : string prop;
  name : string prop;
  storage_units : float prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  maps_account_id:string prop ->
  name:string prop ->
  storage_units:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  maps_account_id:string prop ->
  name:string prop ->
  storage_units:float prop ->
  string ->
  t Tf_core.resource
