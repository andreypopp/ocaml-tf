(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_reference_input_mssql__timeouts
type azurerm_stream_analytics_reference_input_mssql

val azurerm_stream_analytics_reference_input_mssql :
  ?delta_snapshot_query:string ->
  ?id:string ->
  ?refresh_interval_duration:string ->
  ?table:string ->
  ?timeouts:azurerm_stream_analytics_reference_input_mssql__timeouts ->
  database:string ->
  full_snapshot_query:string ->
  name:string ->
  password:string ->
  refresh_type:string ->
  resource_group_name:string ->
  server:string ->
  stream_analytics_job_name:string ->
  username:string ->
  string ->
  unit
