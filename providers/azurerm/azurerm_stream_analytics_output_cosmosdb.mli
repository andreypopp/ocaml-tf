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

type azurerm_stream_analytics_output_cosmosdb

val azurerm_stream_analytics_output_cosmosdb :
  ?document_id:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  cosmosdb_account_key:string prop ->
  cosmosdb_sql_database_id:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  unit ->
  azurerm_stream_analytics_output_cosmosdb

val yojson_of_azurerm_stream_analytics_output_cosmosdb :
  azurerm_stream_analytics_output_cosmosdb -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_name : string prop;
  cosmosdb_account_key : string prop;
  cosmosdb_sql_database_id : string prop;
  document_id : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  stream_analytics_job_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?document_id:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  cosmosdb_account_key:string prop ->
  cosmosdb_sql_database_id:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  string ->
  t

val make :
  ?document_id:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  cosmosdb_account_key:string prop ->
  cosmosdb_sql_database_id:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  string ->
  t Tf_core.resource
