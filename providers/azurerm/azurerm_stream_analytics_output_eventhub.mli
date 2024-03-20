(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type serialization

val serialization :
  ?encoding:string prop ->
  ?field_delimiter:string prop ->
  ?format:string prop ->
  type_:string prop ->
  unit ->
  serialization

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_stream_analytics_output_eventhub

val azurerm_stream_analytics_output_eventhub :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?property_columns:string prop list ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  unit ->
  azurerm_stream_analytics_output_eventhub

val yojson_of_azurerm_stream_analytics_output_eventhub :
  azurerm_stream_analytics_output_eventhub -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?property_columns:string prop list ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  string ->
  t

val make :
  ?authentication_mode:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?property_columns:string prop list ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  string ->
  t Tf_core.resource
