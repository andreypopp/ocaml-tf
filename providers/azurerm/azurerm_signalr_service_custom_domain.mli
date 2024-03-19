(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_signalr_service_custom_domain

val azurerm_signalr_service_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  signalr_custom_certificate_id:string prop ->
  signalr_service_id:string prop ->
  unit ->
  azurerm_signalr_service_custom_domain

val yojson_of_azurerm_signalr_service_custom_domain :
  azurerm_signalr_service_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  signalr_custom_certificate_id : string prop;
  signalr_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  signalr_custom_certificate_id:string prop ->
  signalr_service_id:string prop ->
  string ->
  t
