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

type azurerm_digital_twins_endpoint_eventgrid

val azurerm_digital_twins_endpoint_eventgrid :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventgrid_topic_endpoint:string prop ->
  eventgrid_topic_primary_access_key:string prop ->
  eventgrid_topic_secondary_access_key:string prop ->
  name:string prop ->
  unit ->
  azurerm_digital_twins_endpoint_eventgrid

val yojson_of_azurerm_digital_twins_endpoint_eventgrid :
  azurerm_digital_twins_endpoint_eventgrid -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dead_letter_storage_secret : string prop;
  digital_twins_id : string prop;
  eventgrid_topic_endpoint : string prop;
  eventgrid_topic_primary_access_key : string prop;
  eventgrid_topic_secondary_access_key : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventgrid_topic_endpoint:string prop ->
  eventgrid_topic_primary_access_key:string prop ->
  eventgrid_topic_secondary_access_key:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?dead_letter_storage_secret:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  digital_twins_id:string prop ->
  eventgrid_topic_endpoint:string prop ->
  eventgrid_topic_primary_access_key:string prop ->
  eventgrid_topic_secondary_access_key:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
