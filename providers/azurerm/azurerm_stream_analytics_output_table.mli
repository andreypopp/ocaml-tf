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

type azurerm_stream_analytics_output_table

val azurerm_stream_analytics_output_table :
  ?columns_to_remove:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  batch_size:float prop ->
  name:string prop ->
  partition_key:string prop ->
  resource_group_name:string prop ->
  row_key:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  stream_analytics_job_name:string prop ->
  table:string prop ->
  unit ->
  azurerm_stream_analytics_output_table

val yojson_of_azurerm_stream_analytics_output_table :
  azurerm_stream_analytics_output_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  batch_size : float prop;
  columns_to_remove : string list prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  row_key : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?columns_to_remove:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
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
  t

val make :
  ?columns_to_remove:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
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
  t Tf_core.resource
