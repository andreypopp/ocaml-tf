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
  ?timeouts:timeouts ->
  container_name:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_endpoint_storage_container

val yojson_of_azurerm_iothub_endpoint_storage_container :
  azurerm_iothub_endpoint_storage_container -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_type : string prop;
  batch_frequency_in_seconds : float prop;
  connection_string : string prop;
  container_name : string prop;
  encoding : string prop;
  endpoint_uri : string prop;
  file_name_format : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  max_chunk_size_in_bytes : float prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_type:string prop ->
  ?batch_frequency_in_seconds:float prop ->
  ?connection_string:string prop ->
  ?encoding:string prop ->
  ?endpoint_uri:string prop ->
  ?file_name_format:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?max_chunk_size_in_bytes:float prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?authentication_type:string prop ->
  ?batch_frequency_in_seconds:float prop ->
  ?connection_string:string prop ->
  ?encoding:string prop ->
  ?endpoint_uri:string prop ->
  ?file_name_format:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?max_chunk_size_in_bytes:float prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  iothub_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
