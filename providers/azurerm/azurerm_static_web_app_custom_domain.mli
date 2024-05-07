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

type azurerm_static_web_app_custom_domain

val azurerm_static_web_app_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  static_web_app_id:string prop ->
  validation_type:string prop ->
  unit ->
  azurerm_static_web_app_custom_domain

val yojson_of_azurerm_static_web_app_custom_domain :
  azurerm_static_web_app_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  static_web_app_id : string prop;
  validation_token : string prop;
  validation_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  static_web_app_id:string prop ->
  validation_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  static_web_app_id:string prop ->
  validation_type:string prop ->
  string ->
  t Tf_core.resource
