(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_servicebus_topic__serialization
type azurerm_stream_analytics_output_servicebus_topic__timeouts
type azurerm_stream_analytics_output_servicebus_topic

val azurerm_stream_analytics_output_servicebus_topic :
  ?authentication_mode:string ->
  ?property_columns:string list ->
  ?shared_access_policy_key:string ->
  ?shared_access_policy_name:string ->
  ?system_property_columns:(string * string) list ->
  ?timeouts:
    azurerm_stream_analytics_output_servicebus_topic__timeouts ->
  name:string ->
  resource_group_name:string ->
  servicebus_namespace:string ->
  stream_analytics_job_name:string ->
  topic_name:string ->
  serialization:
    azurerm_stream_analytics_output_servicebus_topic__serialization
    list ->
  string ->
  unit
