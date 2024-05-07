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

type azurerm_management_lock

val azurerm_management_lock :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  lock_level:string prop ->
  name:string prop ->
  scope:string prop ->
  unit ->
  azurerm_management_lock

val yojson_of_azurerm_management_lock :
  azurerm_management_lock -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  lock_level : string prop;
  name : string prop;
  notes : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  lock_level:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:timeouts ->
  lock_level:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
