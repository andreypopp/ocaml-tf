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

type azurerm_lighthouse_assignment

val azurerm_lighthouse_assignment :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  lighthouse_definition_id:string prop ->
  scope:string prop ->
  unit ->
  azurerm_lighthouse_assignment

val yojson_of_azurerm_lighthouse_assignment :
  azurerm_lighthouse_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  lighthouse_definition_id : string prop;
  name : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  lighthouse_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  lighthouse_definition_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
