(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_output_mssql

val azurerm_stream_analytics_output_mssql :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?max_batch_count:float prop ->
  ?max_writer_count:float prop ->
  ?password:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  unit ->
  azurerm_stream_analytics_output_mssql

val yojson_of_azurerm_stream_analytics_output_mssql :
  azurerm_stream_analytics_output_mssql -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?max_batch_count:float prop ->
  ?max_writer_count:float prop ->
  ?password:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  string ->
  t

val make :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?max_batch_count:float prop ->
  ?max_writer_count:float prop ->
  ?password:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  string ->
  t Tf_core.resource
