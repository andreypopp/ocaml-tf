(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_endpoint_eventhub__timeouts
type azurerm_digital_twins_endpoint_eventhub

type t = private {
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventhub_primary_connection_string : string prop;
  eventhub_secondary_connection_string : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_digital_twins_endpoint_eventhub :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_digital_twins_endpoint_eventhub__timeouts ->
  digital_twins_id:string prop ->
  eventhub_primary_connection_string:string prop ->
  eventhub_secondary_connection_string:string prop ->
  name:string prop ->
  string ->
  t
