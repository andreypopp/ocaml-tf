(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_function__timeouts
type azurerm_stream_analytics_output_function

val azurerm_stream_analytics_output_function :
  ?batch_max_count:float ->
  ?batch_max_in_bytes:float ->
  ?id:string ->
  ?timeouts:azurerm_stream_analytics_output_function__timeouts ->
  api_key:string ->
  function_app:string ->
  function_name:string ->
  name:string ->
  resource_group_name:string ->
  stream_analytics_job_name:string ->
  string ->
  unit
