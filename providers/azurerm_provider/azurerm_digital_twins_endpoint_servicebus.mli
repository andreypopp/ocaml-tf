(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_endpoint_servicebus__timeouts
type azurerm_digital_twins_endpoint_servicebus

val azurerm_digital_twins_endpoint_servicebus :
  ?dead_letter_storage_secret:string ->
  ?timeouts:azurerm_digital_twins_endpoint_servicebus__timeouts ->
  digital_twins_id:string ->
  name:string ->
  servicebus_primary_connection_string:string ->
  servicebus_secondary_connection_string:string ->
  string ->
  unit
