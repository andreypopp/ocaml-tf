(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_job_schedule__timeouts
type azurerm_stream_analytics_job_schedule

type t = private {
  id : string prop;
  last_output_time : string prop;
  start_mode : string prop;
  start_time : string prop;
  stream_analytics_job_id : string prop;
}

val azurerm_stream_analytics_job_schedule :
  ?id:string prop ->
  ?start_time:string prop ->
  ?timeouts:azurerm_stream_analytics_job_schedule__timeouts ->
  start_mode:string prop ->
  stream_analytics_job_id:string prop ->
  string ->
  t
