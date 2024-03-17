(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_udf__input
type azurerm_stream_analytics_function_javascript_udf__output
type azurerm_stream_analytics_function_javascript_udf__timeouts
type azurerm_stream_analytics_function_javascript_udf

val azurerm_stream_analytics_function_javascript_udf :
  ?timeouts:
    azurerm_stream_analytics_function_javascript_udf__timeouts ->
  name:string ->
  resource_group_name:string ->
  script:string ->
  stream_analytics_job_name:string ->
  input:azurerm_stream_analytics_function_javascript_udf__input list ->
  output:
    azurerm_stream_analytics_function_javascript_udf__output list ->
  string ->
  unit
