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

type azurerm_app_service_virtual_network_swift_connection

val azurerm_app_service_virtual_network_swift_connection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_app_service_virtual_network_swift_connection

val yojson_of_azurerm_app_service_virtual_network_swift_connection :
  azurerm_app_service_virtual_network_swift_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_id : string prop;
  id : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
