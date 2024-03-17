(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_udf__input
type azurerm_stream_analytics_function_javascript_udf__output
type azurerm_stream_analytics_function_javascript_udf__timeouts
type azurerm_stream_analytics_function_javascript_udf

val azurerm_stream_analytics_function_javascript_udf :
  ?id:string prop ->
  ?timeouts:
    azurerm_stream_analytics_function_javascript_udf__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  script:string prop ->
  stream_analytics_job_name:string prop ->
  input:azurerm_stream_analytics_function_javascript_udf__input list ->
  output:
    azurerm_stream_analytics_function_javascript_udf__output list ->
  string ->
  unit
