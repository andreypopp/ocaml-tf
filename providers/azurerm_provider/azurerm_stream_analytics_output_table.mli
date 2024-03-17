(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_table__timeouts
type azurerm_stream_analytics_output_table

val azurerm_stream_analytics_output_table :
  ?columns_to_remove:string prop list ->
  ?id:string prop ->
  ?timeouts:azurerm_stream_analytics_output_table__timeouts ->
  batch_size:float prop ->
  name:string prop ->
  partition_key:string prop ->
  resource_group_name:string prop ->
  row_key:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  string ->
  unit
