(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_endpoint_eventhub__timeouts
type azurerm_digital_twins_endpoint_eventhub

val azurerm_digital_twins_endpoint_eventhub :
  ?dead_letter_storage_secret:string ->
  ?timeouts:azurerm_digital_twins_endpoint_eventhub__timeouts ->
  digital_twins_id:string ->
  eventhub_primary_connection_string:string ->
  eventhub_secondary_connection_string:string ->
  name:string ->
  string ->
  unit
