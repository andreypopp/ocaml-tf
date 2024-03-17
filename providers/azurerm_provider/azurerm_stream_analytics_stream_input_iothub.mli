(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_iothub__serialization
type azurerm_stream_analytics_stream_input_iothub__timeouts
type azurerm_stream_analytics_stream_input_iothub

val azurerm_stream_analytics_stream_input_iothub :
  ?id:string ->
  ?timeouts:azurerm_stream_analytics_stream_input_iothub__timeouts ->
  endpoint:string ->
  eventhub_consumer_group_name:string ->
  iothub_namespace:string ->
  name:string ->
  resource_group_name:string ->
  shared_access_policy_key:string ->
  shared_access_policy_name:string ->
  stream_analytics_job_name:string ->
  serialization:
    azurerm_stream_analytics_stream_input_iothub__serialization list ->
  string ->
  unit
