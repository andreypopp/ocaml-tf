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

type azurerm_api_management_api_release

val azurerm_api_management_api_release :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  api_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_api_release

val yojson_of_azurerm_api_management_api_release :
  azurerm_api_management_api_release -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  id : string prop;
  name : string prop;
  notes : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  api_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  api_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
