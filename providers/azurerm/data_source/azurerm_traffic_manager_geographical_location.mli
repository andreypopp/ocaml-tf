(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_traffic_manager_geographical_location

val azurerm_traffic_manager_geographical_location :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_traffic_manager_geographical_location

val yojson_of_azurerm_traffic_manager_geographical_location :
  azurerm_traffic_manager_geographical_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
