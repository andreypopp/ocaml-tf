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

type azurerm_spring_cloud_application_live_view

val azurerm_spring_cloud_application_live_view :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_application_live_view

val yojson_of_azurerm_spring_cloud_application_live_view :
  azurerm_spring_cloud_application_live_view -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource
