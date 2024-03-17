(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_cosmosdb__timeouts
type azurerm_stream_analytics_output_cosmosdb

val azurerm_stream_analytics_output_cosmosdb :
  ?document_id:string ->
  ?partition_key:string ->
  ?timeouts:azurerm_stream_analytics_output_cosmosdb__timeouts ->
  container_name:string ->
  cosmosdb_account_key:string ->
  cosmosdb_sql_database_id:string ->
  name:string ->
  stream_analytics_job_id:string ->
  string ->
  unit
