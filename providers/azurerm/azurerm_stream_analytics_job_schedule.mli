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

type azurerm_stream_analytics_job_schedule

val azurerm_stream_analytics_job_schedule :
  ?id:string prop ->
  ?start_time:string prop ->
  ?timeouts:timeouts ->
  start_mode:string prop ->
  stream_analytics_job_id:string prop ->
  unit ->
  azurerm_stream_analytics_job_schedule

val yojson_of_azurerm_stream_analytics_job_schedule :
  azurerm_stream_analytics_job_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  last_output_time : string prop;
  start_mode : string prop;
  start_time : string prop;
  stream_analytics_job_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?timeouts:timeouts ->
  start_mode:string prop ->
  stream_analytics_job_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?start_time:string prop ->
  ?timeouts:timeouts ->
  start_mode:string prop ->
  stream_analytics_job_id:string prop ->
  string ->
  t Tf_core.resource
