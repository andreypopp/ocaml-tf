(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_powerbi__timeouts
type azurerm_stream_analytics_output_powerbi

val azurerm_stream_analytics_output_powerbi :
  ?token_user_display_name:string ->
  ?token_user_principal_name:string ->
  ?timeouts:azurerm_stream_analytics_output_powerbi__timeouts ->
  dataset:string ->
  group_id:string ->
  group_name:string ->
  name:string ->
  stream_analytics_job_id:string ->
  table:string ->
  string ->
  unit
