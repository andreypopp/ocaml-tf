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

type azurerm_container_app_custom_domain

val azurerm_container_app_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_binding_type:string prop ->
  container_app_environment_certificate_id:string prop ->
  container_app_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_container_app_custom_domain

val yojson_of_azurerm_container_app_custom_domain :
  azurerm_container_app_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_binding_type : string prop;
  container_app_environment_certificate_id : string prop;
  container_app_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_binding_type:string prop ->
  container_app_environment_certificate_id:string prop ->
  container_app_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_binding_type:string prop ->
  container_app_environment_certificate_id:string prop ->
  container_app_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
