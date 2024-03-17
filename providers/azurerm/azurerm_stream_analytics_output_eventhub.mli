(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stream_analytics_output_eventhub__serialization
type azurerm_stream_analytics_output_eventhub__timeouts
type azurerm_stream_analytics_output_eventhub

type t = private {
  authentication_mode : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  property_columns : string list prop;
  resource_group_name : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

val azurerm_stream_analytics_output_eventhub :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?property_columns:string prop list ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:azurerm_stream_analytics_output_eventhub__timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:
    azurerm_stream_analytics_output_eventhub__serialization list ->
  string ->
  t
