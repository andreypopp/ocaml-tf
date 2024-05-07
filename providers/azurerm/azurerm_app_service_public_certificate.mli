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

type azurerm_app_service_public_certificate

val azurerm_app_service_public_certificate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  blob:string prop ->
  certificate_location:string prop ->
  certificate_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_public_certificate

val yojson_of_azurerm_app_service_public_certificate :
  azurerm_app_service_public_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_name : string prop;
  blob : string prop;
  certificate_location : string prop;
  certificate_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  blob:string prop ->
  certificate_location:string prop ->
  certificate_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  blob:string prop ->
  certificate_location:string prop ->
  certificate_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
