(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input

val input :
  ?configuration_parameter:bool prop ->
  type_:string prop ->
  unit ->
  input

type output

val output : type_:string prop -> unit -> output

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_function_javascript_uda

val azurerm_stream_analytics_function_javascript_uda :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  script:string prop ->
  stream_analytics_job_id:string prop ->
  input:input list ->
  output:output list ->
  unit ->
  azurerm_stream_analytics_function_javascript_uda

val yojson_of_azurerm_stream_analytics_function_javascript_uda :
  azurerm_stream_analytics_function_javascript_uda -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  script : string prop;
  stream_analytics_job_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  script:string prop ->
  stream_analytics_job_id:string prop ->
  input:input list ->
  output:output list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  script:string prop ->
  stream_analytics_job_id:string prop ->
  input:input list ->
  output:output list ->
  string ->
  t Tf_core.resource
