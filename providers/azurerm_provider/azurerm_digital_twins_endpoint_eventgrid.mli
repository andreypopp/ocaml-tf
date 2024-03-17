(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_endpoint_eventgrid__timeouts
type azurerm_digital_twins_endpoint_eventgrid

val azurerm_digital_twins_endpoint_eventgrid :
  ?dead_letter_storage_secret:string ->
  ?timeouts:azurerm_digital_twins_endpoint_eventgrid__timeouts ->
  digital_twins_id:string ->
  eventgrid_topic_endpoint:string ->
  eventgrid_topic_primary_access_key:string ->
  eventgrid_topic_secondary_access_key:string ->
  name:string ->
  string ->
  unit
