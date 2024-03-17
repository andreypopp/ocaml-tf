(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_mssql__timeouts
type azurerm_stream_analytics_output_mssql

type t = private {
  authentication_mode : string prop;
  database : string prop;
  id : string prop;
  max_batch_count : float prop;
  max_writer_count : float prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop;
}

val azurerm_stream_analytics_output_mssql :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?max_batch_count:float prop ->
  ?max_writer_count:float prop ->
  ?password:string prop ->
  ?user:string prop ->
  ?timeouts:azurerm_stream_analytics_output_mssql__timeouts ->
  database:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  string ->
  t
