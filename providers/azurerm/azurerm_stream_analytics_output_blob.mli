(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type serialization

val serialization :
  ?encoding:string prop ->
  ?field_delimiter:string prop ->
  ?format:string prop ->
  type_:string prop ->
  unit ->
  serialization

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_output_blob

val azurerm_stream_analytics_output_blob :
  ?authentication_mode:string prop ->
  ?batch_max_wait_time:string prop ->
  ?batch_min_rows:float prop ->
  ?blob_write_mode:string prop ->
  ?id:string prop ->
  ?storage_account_key:string prop ->
  ?timeouts:timeouts ->
  date_format:string prop ->
  name:string prop ->
  path_pattern:string prop ->
  resource_group_name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  stream_analytics_job_name:string prop ->
  time_format:string prop ->
  serialization:serialization list ->
  unit ->
  azurerm_stream_analytics_output_blob

val yojson_of_azurerm_stream_analytics_output_blob :
  azurerm_stream_analytics_output_blob -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_mode : string prop;
  batch_max_wait_time : string prop;
  batch_min_rows : float prop;
  blob_write_mode : string prop;
  date_format : string prop;
  id : string prop;
  name : string prop;
  path_pattern : string prop;
  resource_group_name : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  stream_analytics_job_name : string prop;
  time_format : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_mode:string prop ->
  ?batch_max_wait_time:string prop ->
  ?batch_min_rows:float prop ->
  ?blob_write_mode:string prop ->
  ?id:string prop ->
  ?storage_account_key:string prop ->
  ?timeouts:timeouts ->
  date_format:string prop ->
  name:string prop ->
  path_pattern:string prop ->
  resource_group_name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  stream_analytics_job_name:string prop ->
  time_format:string prop ->
  serialization:serialization list ->
  string ->
  t

val make :
  ?authentication_mode:string prop ->
  ?batch_max_wait_time:string prop ->
  ?batch_min_rows:float prop ->
  ?blob_write_mode:string prop ->
  ?id:string prop ->
  ?storage_account_key:string prop ->
  ?timeouts:timeouts ->
  date_format:string prop ->
  name:string prop ->
  path_pattern:string prop ->
  resource_group_name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  stream_analytics_job_name:string prop ->
  time_format:string prop ->
  serialization:serialization list ->
  string ->
  t Tf_core.resource
