(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_reference_input_blob__serialization
type azurerm_stream_analytics_reference_input_blob__timeouts
type azurerm_stream_analytics_reference_input_blob

val azurerm_stream_analytics_reference_input_blob :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?storage_account_key:string prop ->
  ?timeouts:azurerm_stream_analytics_reference_input_blob__timeouts ->
  date_format:string prop ->
  name:string prop ->
  path_pattern:string prop ->
  resource_group_name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  stream_analytics_job_name:string prop ->
  time_format:string prop ->
  serialization:
    azurerm_stream_analytics_reference_input_blob__serialization list ->
  string ->
  unit
