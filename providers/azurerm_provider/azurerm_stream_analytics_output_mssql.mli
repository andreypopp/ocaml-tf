(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_mssql__timeouts
type azurerm_stream_analytics_output_mssql

val azurerm_stream_analytics_output_mssql :
  ?authentication_mode:string ->
  ?max_batch_count:float ->
  ?max_writer_count:float ->
  ?password:string ->
  ?user:string ->
  ?timeouts:azurerm_stream_analytics_output_mssql__timeouts ->
  database:string ->
  name:string ->
  resource_group_name:string ->
  server:string ->
  stream_analytics_job_name:string ->
  table:string ->
  string ->
  unit
