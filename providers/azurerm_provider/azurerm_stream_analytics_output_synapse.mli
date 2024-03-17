(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_synapse__timeouts
type azurerm_stream_analytics_output_synapse

val azurerm_stream_analytics_output_synapse :
  ?id:string ->
  ?timeouts:azurerm_stream_analytics_output_synapse__timeouts ->
  database:string ->
  name:string ->
  password:string ->
  resource_group_name:string ->
  server:string ->
  stream_analytics_job_name:string ->
  table:string ->
  user:string ->
  string ->
  unit
