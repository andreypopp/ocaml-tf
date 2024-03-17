(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_blob__serialization
type azurerm_stream_analytics_stream_input_blob__timeouts
type azurerm_stream_analytics_stream_input_blob

val azurerm_stream_analytics_stream_input_blob :
  ?timeouts:azurerm_stream_analytics_stream_input_blob__timeouts ->
  date_format:string ->
  name:string ->
  path_pattern:string ->
  resource_group_name:string ->
  storage_account_key:string ->
  storage_account_name:string ->
  storage_container_name:string ->
  stream_analytics_job_name:string ->
  time_format:string ->
  serialization:
    azurerm_stream_analytics_stream_input_blob__serialization list ->
  string ->
  unit
