(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_job__identity
type azurerm_stream_analytics_job__job_storage_account
type azurerm_stream_analytics_job__timeouts
type azurerm_stream_analytics_job

val azurerm_stream_analytics_job :
  ?content_storage_policy:string ->
  ?events_late_arrival_max_delay_in_seconds:float ->
  ?events_out_of_order_max_delay_in_seconds:float ->
  ?events_out_of_order_policy:string ->
  ?output_error_policy:string ->
  ?sku_name:string ->
  ?stream_analytics_cluster_id:string ->
  ?streaming_units:float ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:azurerm_stream_analytics_job__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  transformation_query:string ->
  identity:azurerm_stream_analytics_job__identity list ->
  job_storage_account:
    azurerm_stream_analytics_job__job_storage_account list ->
  string ->
  unit
