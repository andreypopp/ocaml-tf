(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_table__timeouts
type azurerm_stream_analytics_output_table

val azurerm_stream_analytics_output_table :
  ?columns_to_remove:string list ->
  ?timeouts:azurerm_stream_analytics_output_table__timeouts ->
  batch_size:float ->
  name:string ->
  partition_key:string ->
  resource_group_name:string ->
  row_key:string ->
  storage_account_key:string ->
  storage_account_name:string ->
  stream_analytics_job_name:string ->
  table:string ->
  string ->
  unit
