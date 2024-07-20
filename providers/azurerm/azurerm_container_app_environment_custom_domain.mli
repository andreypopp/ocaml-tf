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

type azurerm_container_app_environment_custom_domain

val azurerm_container_app_environment_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_blob_base64:string prop ->
  certificate_password:string prop ->
  container_app_environment_id:string prop ->
  dns_suffix:string prop ->
  unit ->
  azurerm_container_app_environment_custom_domain

val yojson_of_azurerm_container_app_environment_custom_domain :
  azurerm_container_app_environment_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_blob_base64 : string prop;
  certificate_password : string prop;
  container_app_environment_id : string prop;
  dns_suffix : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_blob_base64:string prop ->
  certificate_password:string prop ->
  container_app_environment_id:string prop ->
  dns_suffix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_blob_base64:string prop ->
  certificate_password:string prop ->
  container_app_environment_id:string prop ->
  dns_suffix:string prop ->
  string ->
  t Tf_core.resource
