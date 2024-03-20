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

type azurerm_virtual_desktop_host_pool_registration_info

val azurerm_virtual_desktop_host_pool_registration_info :
  ?id:string prop ->
  ?timeouts:timeouts ->
  expiration_date:string prop ->
  hostpool_id:string prop ->
  unit ->
  azurerm_virtual_desktop_host_pool_registration_info

val yojson_of_azurerm_virtual_desktop_host_pool_registration_info :
  azurerm_virtual_desktop_host_pool_registration_info -> json

(** RESOURCE REGISTRATION *)

type t = private {
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  expiration_date:string prop ->
  hostpool_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  expiration_date:string prop ->
  hostpool_id:string prop ->
  string ->
  t Tf_core.resource
