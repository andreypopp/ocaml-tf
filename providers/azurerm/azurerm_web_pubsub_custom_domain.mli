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

type azurerm_web_pubsub_custom_domain

val azurerm_web_pubsub_custom_domain :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  web_pubsub_custom_certificate_id:string prop ->
  web_pubsub_id:string prop ->
  unit ->
  azurerm_web_pubsub_custom_domain

val yojson_of_azurerm_web_pubsub_custom_domain :
  azurerm_web_pubsub_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  web_pubsub_custom_certificate_id : string prop;
  web_pubsub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  web_pubsub_custom_certificate_id:string prop ->
  web_pubsub_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  web_pubsub_custom_certificate_id:string prop ->
  web_pubsub_id:string prop ->
  string ->
  t Tf_core.resource
