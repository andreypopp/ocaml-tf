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

type azurerm_dev_center_gallery

val azurerm_dev_center_gallery :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  shared_gallery_id:string prop ->
  unit ->
  azurerm_dev_center_gallery

val yojson_of_azurerm_dev_center_gallery :
  azurerm_dev_center_gallery -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  shared_gallery_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  shared_gallery_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  shared_gallery_id:string prop ->
  string ->
  t Tf_core.resource
