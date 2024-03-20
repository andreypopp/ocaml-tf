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

type azurerm_spring_cloud_custom_domain

val azurerm_spring_cloud_custom_domain :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  unit ->
  azurerm_spring_cloud_custom_domain

val yojson_of_azurerm_spring_cloud_custom_domain :
  azurerm_spring_cloud_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_name : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_app_id : string prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t

val make :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t Tf_core.resource
