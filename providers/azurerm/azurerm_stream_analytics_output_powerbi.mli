(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_powerbi__timeouts
type azurerm_stream_analytics_output_powerbi

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

val azurerm_stream_analytics_output_powerbi :
  ?id:string prop ->
  ?token_user_display_name:string prop ->
  ?token_user_principal_name:string prop ->
  ?timeouts:azurerm_stream_analytics_output_powerbi__timeouts ->
  dataset:string prop ->
  group_id:string prop ->
  group_name:string prop ->
  name:string prop ->
  stream_analytics_job_id:string prop ->
  table:string prop ->
  string ->
  t
