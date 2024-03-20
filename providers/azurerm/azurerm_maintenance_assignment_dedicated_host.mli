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

type azurerm_maintenance_assignment_dedicated_host

val azurerm_maintenance_assignment_dedicated_host :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_id:string prop ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  unit ->
  azurerm_maintenance_assignment_dedicated_host

val yojson_of_azurerm_maintenance_assignment_dedicated_host :
  azurerm_maintenance_assignment_dedicated_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dedicated_host_id : string prop;
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_id:string prop ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dedicated_host_id:string prop ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  string ->
  t Tf_core.resource
