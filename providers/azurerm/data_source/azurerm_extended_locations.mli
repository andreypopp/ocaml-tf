(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_extended_locations

val azurerm_extended_locations :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  unit ->
  azurerm_extended_locations

val yojson_of_azurerm_extended_locations :
  azurerm_extended_locations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  extended_locations : string list prop;
  id : string prop;
  location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  string ->
  t Tf_core.resource
