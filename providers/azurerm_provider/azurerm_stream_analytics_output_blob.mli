(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_blob__serialization
type azurerm_stream_analytics_output_blob__timeouts
type azurerm_stream_analytics_output_blob

val azurerm_stream_analytics_output_blob :
  ?authentication_mode:string ->
  ?batch_max_wait_time:string ->
  ?batch_min_rows:float ->
  ?blob_write_mode:string ->
  ?storage_account_key:string ->
  ?timeouts:azurerm_stream_analytics_output_blob__timeouts ->
  date_format:string ->
  name:string ->
  path_pattern:string ->
  resource_group_name:string ->
  storage_account_name:string ->
  storage_container_name:string ->
  stream_analytics_job_name:string ->
  time_format:string ->
  serialization:
    azurerm_stream_analytics_output_blob__serialization list ->
  string ->
  unit
