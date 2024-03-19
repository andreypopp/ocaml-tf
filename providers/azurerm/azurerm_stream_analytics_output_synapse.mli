(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_output_synapse

val azurerm_stream_analytics_output_synapse :
  ?id:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  user:string prop ->
  unit ->
  azurerm_stream_analytics_output_synapse

val yojson_of_azurerm_stream_analytics_output_synapse :
  azurerm_stream_analytics_output_synapse -> json

(** RESOURCE REGISTRATION *)

type t = private {
  database : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  name:string prop ->
  password:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  user:string prop ->
  string ->
  t
