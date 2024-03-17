(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_uda__input
type azurerm_stream_analytics_function_javascript_uda__output
type azurerm_stream_analytics_function_javascript_uda__timeouts
type azurerm_stream_analytics_function_javascript_uda

val azurerm_stream_analytics_function_javascript_uda :
  ?id:string ->
  ?timeouts:
    azurerm_stream_analytics_function_javascript_uda__timeouts ->
  name:string ->
  script:string ->
  stream_analytics_job_id:string ->
  input:azurerm_stream_analytics_function_javascript_uda__input list ->
  output:
    azurerm_stream_analytics_function_javascript_uda__output list ->
  string ->
  unit
