(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_storage_sync_group

val azurerm_storage_sync_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_sync_id:string prop ->
  unit ->
  azurerm_storage_sync_group

val yojson_of_azurerm_storage_sync_group :
  azurerm_storage_sync_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  storage_sync_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_sync_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_sync_id:string prop ->
  string ->
  t Tf_core.resource
