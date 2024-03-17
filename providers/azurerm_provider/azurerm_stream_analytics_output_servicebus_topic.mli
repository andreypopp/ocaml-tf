(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_servicebus_topic__serialization
type azurerm_stream_analytics_output_servicebus_topic__timeouts
type azurerm_stream_analytics_output_servicebus_topic

type t = private {
  authentication_mode : string prop;
  id : string prop;
  name : string prop;
  property_columns : string list prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
  system_property_columns : (string * string) list prop;
  topic_name : string prop;
}

val azurerm_stream_analytics_output_servicebus_topic :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?property_columns:string prop list ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?system_property_columns:(string * string prop) list ->
  ?timeouts:
    azurerm_stream_analytics_output_servicebus_topic__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_name:string prop ->
  topic_name:string prop ->
  serialization:
    azurerm_stream_analytics_output_servicebus_topic__serialization
    list ->
  string ->
  t
