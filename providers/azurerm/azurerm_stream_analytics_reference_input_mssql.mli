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

type azurerm_stream_analytics_reference_input_mssql

val azurerm_stream_analytics_reference_input_mssql :
  ?delta_snapshot_query:string prop ->
  ?id:string prop ->
  ?refresh_interval_duration:string prop ->
  ?table:string prop ->
  ?timeouts:timeouts ->
  database:string prop ->
  full_snapshot_query:string prop ->
  name:string prop ->
  password:string prop ->
  refresh_type:string prop ->
  resource_group_name:string prop ->
  server:string prop ->
  stream_analytics_job_name:string prop ->
  username:string prop ->
  unit ->
  azurerm_stream_analytics_reference_input_mssql

val yojson_of_azurerm_stream_analytics_reference_input_mssql :
  azurerm_stream_analytics_reference_input_mssql -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?delta_snapshot_query:string prop ->
  ?id:string prop ->
  ?refresh_interval_duration:string prop ->
  ?table:string prop ->
  ?timeouts:timeouts ->
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

val make :
  ?delta_snapshot_query:string prop ->
  ?id:string prop ->
  ?refresh_interval_duration:string prop ->
  ?table:string prop ->
  ?timeouts:timeouts ->
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
  t Tf_core.resource
