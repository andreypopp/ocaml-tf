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

type azurerm_digital_twins_endpoint_eventhub

val azurerm_digital_twins_endpoint_eventhub :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventhub_primary_connection_string:string prop ->
  eventhub_secondary_connection_string:string prop ->
  name:string prop ->
  unit ->
  azurerm_digital_twins_endpoint_eventhub

val yojson_of_azurerm_digital_twins_endpoint_eventhub :
  azurerm_digital_twins_endpoint_eventhub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventhub_primary_connection_string : string prop;
  eventhub_secondary_connection_string : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventhub_primary_connection_string:string prop ->
  eventhub_secondary_connection_string:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventhub_primary_connection_string:string prop ->
  eventhub_secondary_connection_string:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
