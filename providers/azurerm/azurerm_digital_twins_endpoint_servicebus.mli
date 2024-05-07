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

type azurerm_digital_twins_endpoint_servicebus

val azurerm_digital_twins_endpoint_servicebus :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  name:string prop ->
  servicebus_primary_connection_string:string prop ->
  servicebus_secondary_connection_string:string prop ->
  unit ->
  azurerm_digital_twins_endpoint_servicebus

val yojson_of_azurerm_digital_twins_endpoint_servicebus :
  azurerm_digital_twins_endpoint_servicebus -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  id : string prop;
  name : string prop;
  servicebus_primary_connection_string : string prop;
  servicebus_secondary_connection_string : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  name:string prop ->
  servicebus_primary_connection_string:string prop ->
  servicebus_secondary_connection_string:string prop ->
  string ->
  t

val make :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  name:string prop ->
  servicebus_primary_connection_string:string prop ->
  servicebus_secondary_connection_string:string prop ->
  string ->
  t Tf_core.resource
