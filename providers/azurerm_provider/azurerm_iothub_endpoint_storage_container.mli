(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_endpoint_storage_container__timeouts
type azurerm_iothub_endpoint_storage_container

val azurerm_iothub_endpoint_storage_container :
  ?authentication_type:string ->
  ?batch_frequency_in_seconds:float ->
  ?connection_string:string ->
  ?encoding:string ->
  ?endpoint_uri:string ->
  ?file_name_format:string ->
  ?identity_id:string ->
  ?max_chunk_size_in_bytes:float ->
  ?timeouts:azurerm_iothub_endpoint_storage_container__timeouts ->
  container_name:string ->
  iothub_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
