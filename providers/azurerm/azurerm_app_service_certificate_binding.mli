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

type azurerm_app_service_certificate_binding

val azurerm_app_service_certificate_binding :
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_id:string prop ->
  hostname_binding_id:string prop ->
  ssl_state:string prop ->
  unit ->
  azurerm_app_service_certificate_binding

val yojson_of_azurerm_app_service_certificate_binding :
  azurerm_app_service_certificate_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_service_name : string prop;
  certificate_id : string prop;
  hostname : string prop;
  hostname_binding_id : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  certificate_id:string prop ->
  hostname_binding_id:string prop ->
  ssl_state:string prop ->
  string ->
  t
