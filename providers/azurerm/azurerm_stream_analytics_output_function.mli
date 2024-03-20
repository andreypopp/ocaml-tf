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

type azurerm_stream_analytics_output_function

val azurerm_stream_analytics_output_function :
  ?batch_max_count:float prop ->
  ?batch_max_in_bytes:float prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  function_app:string prop ->
  function_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_job_name:string prop ->
  unit ->
  azurerm_stream_analytics_output_function

val yojson_of_azurerm_stream_analytics_output_function :
  azurerm_stream_analytics_output_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_key : string prop;
  batch_max_count : float prop;
  batch_max_in_bytes : float prop;
  function_app : string prop;
  function_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_job_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?batch_max_count:float prop ->
  ?batch_max_in_bytes:float prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  function_app:string prop ->
  function_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_job_name:string prop ->
  string ->
  t

val make :
  ?batch_max_count:float prop ->
  ?batch_max_in_bytes:float prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  function_app:string prop ->
  function_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  stream_analytics_job_name:string prop ->
  string ->
  t Tf_core.resource
