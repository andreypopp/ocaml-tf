(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_job_schedule__timeouts
type azurerm_stream_analytics_job_schedule

val azurerm_stream_analytics_job_schedule :
  ?id:string ->
  ?start_time:string ->
  ?timeouts:azurerm_stream_analytics_job_schedule__timeouts ->
  start_mode:string ->
  stream_analytics_job_id:string ->
  string ->
  unit
