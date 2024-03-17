(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_uda__input
type azurerm_stream_analytics_function_javascript_uda__output
type azurerm_stream_analytics_function_javascript_uda__timeouts
type azurerm_stream_analytics_function_javascript_uda

type t = private {
  id : string prop;
  name : string prop;
  script : string prop;
  stream_analytics_job_id : string prop;
}

val azurerm_stream_analytics_function_javascript_uda :
  ?id:string prop ->
  ?timeouts:
    azurerm_stream_analytics_function_javascript_uda__timeouts ->
  name:string prop ->
  script:string prop ->
  stream_analytics_job_id:string prop ->
  input:azurerm_stream_analytics_function_javascript_uda__input list ->
  output:
    azurerm_stream_analytics_function_javascript_uda__output list ->
  string ->
  t
