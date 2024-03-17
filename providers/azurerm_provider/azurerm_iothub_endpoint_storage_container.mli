(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_storage_container__timeouts
type azurerm_iothub_endpoint_storage_container

val azurerm_iothub_endpoint_storage_container :
  ?authentication_type:string prop ->
  ?batch_frequency_in_seconds:float prop ->
  ?connection_string:string prop ->
  ?encoding:string prop ->
  ?endpoint_uri:string prop ->
  ?file_name_format:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?max_chunk_size_in_bytes:float prop ->
  ?timeouts:azurerm_iothub_endpoint_storage_container__timeouts ->
  container_name:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
