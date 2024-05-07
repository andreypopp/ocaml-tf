(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type zone_mappings = {
  logical_zone : string prop;  (** logical_zone *)
  physical_zone : string prop;  (** physical_zone *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_location

val azurerm_location :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  unit ->
  azurerm_location

val yojson_of_azurerm_location : azurerm_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  location : string prop;
  zone_mappings : zone_mappings list prop;
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
