(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_iothub__serialization
type azurerm_stream_analytics_stream_input_iothub__timeouts
type azurerm_stream_analytics_stream_input_iothub

val azurerm_stream_analytics_stream_input_iothub :
  ?id:string prop ->
  ?timeouts:azurerm_stream_analytics_stream_input_iothub__timeouts ->
  endpoint:string prop ->
  eventhub_consumer_group_name:string prop ->
  iothub_namespace:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  shared_access_policy_key:string prop ->
  shared_access_policy_name:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:
    azurerm_stream_analytics_stream_input_iothub__serialization list ->
  string ->
  unit
