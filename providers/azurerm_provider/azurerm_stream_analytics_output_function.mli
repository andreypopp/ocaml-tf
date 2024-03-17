(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_function__timeouts
type azurerm_stream_analytics_output_function

val azurerm_stream_analytics_output_function :
  ?batch_max_count:float prop ->
  ?batch_max_in_bytes:float prop ->
  ?id:string prop ->
  ?timeouts:azurerm_stream_analytics_output_function__timeouts ->
  api_key:string prop ->
  function_app:string prop ->
  function_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_job_name:string prop ->
  string ->
  unit
