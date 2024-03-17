(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_endpoint_servicebus__timeouts
type azurerm_digital_twins_endpoint_servicebus

type t = private {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  id : string prop;
  name : string prop;
  servicebus_primary_connection_string : string prop;
  servicebus_secondary_connection_string : string prop;
}

val azurerm_digital_twins_endpoint_servicebus :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_digital_twins_endpoint_servicebus__timeouts ->
  digital_twins_id:string prop ->
  name:string prop ->
  servicebus_primary_connection_string:string prop ->
  servicebus_secondary_connection_string:string prop ->
  string ->
  t
