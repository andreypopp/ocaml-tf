(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_eventhub_v2__serialization
type azurerm_stream_analytics_stream_input_eventhub_v2__timeouts
type azurerm_stream_analytics_stream_input_eventhub_v2

val azurerm_stream_analytics_stream_input_eventhub_v2 :
  ?authentication_mode:string ->
  ?eventhub_consumer_group_name:string ->
  ?id:string ->
  ?partition_key:string ->
  ?shared_access_policy_key:string ->
  ?shared_access_policy_name:string ->
  ?timeouts:
    azurerm_stream_analytics_stream_input_eventhub_v2__timeouts ->
  eventhub_name:string ->
  name:string ->
  servicebus_namespace:string ->
  stream_analytics_job_id:string ->
  serialization:
    azurerm_stream_analytics_stream_input_eventhub_v2__serialization
    list ->
  string ->
  unit
