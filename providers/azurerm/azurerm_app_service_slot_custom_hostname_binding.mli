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

type azurerm_app_service_slot_custom_hostname_binding

val azurerm_app_service_slot_custom_hostname_binding :
  ?id:string prop ->
  ?ssl_state:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:timeouts ->
  app_service_slot_id:string prop ->
  hostname:string prop ->
  unit ->
  azurerm_app_service_slot_custom_hostname_binding

val yojson_of_azurerm_app_service_slot_custom_hostname_binding :
  azurerm_app_service_slot_custom_hostname_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_service_slot_id : string prop;
  hostname : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ssl_state:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:timeouts ->
  app_service_slot_id:string prop ->
  hostname:string prop ->
  string ->
  t
