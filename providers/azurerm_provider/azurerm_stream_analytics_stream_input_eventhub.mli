(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_eventhub__serialization
type azurerm_stream_analytics_stream_input_eventhub__timeouts
type azurerm_stream_analytics_stream_input_eventhub

val azurerm_stream_analytics_stream_input_eventhub :
  ?authentication_mode:string ->
  ?eventhub_consumer_group_name:string ->
  ?partition_key:string ->
  ?shared_access_policy_key:string ->
  ?shared_access_policy_name:string ->
  ?timeouts:azurerm_stream_analytics_stream_input_eventhub__timeouts ->
  eventhub_name:string ->
  name:string ->
  resource_group_name:string ->
  servicebus_namespace:string ->
  stream_analytics_job_name:string ->
  serialization:
    azurerm_stream_analytics_stream_input_eventhub__serialization
    list ->
  string ->
  unit
