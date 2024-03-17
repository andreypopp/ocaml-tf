(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_reference_input_mssql__timeouts
type azurerm_stream_analytics_reference_input_mssql

type t = private {
  database : string prop;
  delta_snapshot_query : string prop;
  full_snapshot_query : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  refresh_interval_duration : string prop;
  refresh_type : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  username : string prop;
}

val azurerm_stream_analytics_reference_input_mssql :
  ?delta_snapshot_query:string prop ->
  ?id:string prop ->
  ?refresh_interval_duration:string prop ->
  ?table:string prop ->
  ?timeouts:azurerm_stream_analytics_reference_input_mssql__timeouts ->
  database:string prop ->
  full_snapshot_query:string prop ->
  name:string prop ->
  password:string prop ->
  refresh_type:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  username:string prop ->
  string ->
  t
