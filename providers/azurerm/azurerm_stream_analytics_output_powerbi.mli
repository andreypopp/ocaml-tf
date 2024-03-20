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

type azurerm_stream_analytics_output_powerbi

val azurerm_stream_analytics_output_powerbi :
  ?id:string prop ->
  ?token_user_display_name:string prop ->
  ?token_user_principal_name:string prop ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  group_id:string prop ->
  group_name:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  table:string prop ->
  unit ->
  azurerm_stream_analytics_output_powerbi

val yojson_of_azurerm_stream_analytics_output_powerbi :
  azurerm_stream_analytics_output_powerbi -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dataset : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  stream_analytics_job_id : string prop;
  table : string prop;
  token_user_display_name : string prop;
  token_user_principal_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?token_user_display_name:string prop ->
  ?token_user_principal_name:string prop ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  group_id:string prop ->
  group_name:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  table:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?token_user_display_name:string prop ->
  ?token_user_principal_name:string prop ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  group_id:string prop ->
  group_name:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  table:string prop ->
  string ->
  t Tf_core.resource
