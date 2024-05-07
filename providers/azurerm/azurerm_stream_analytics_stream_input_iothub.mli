(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type serialization

val serialization :
  ?encoding:string prop ->
  ?field_delimiter:string prop ->
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

type azurerm_stream_analytics_stream_input_iothub

val azurerm_stream_analytics_stream_input_iothub :
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint:string prop ->
  eventhub_consumer_group_name:string prop ->
  iothub_namespace:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  shared_access_policy_key:string prop ->
  shared_access_policy_name:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  unit ->
  azurerm_stream_analytics_stream_input_iothub

val yojson_of_azurerm_stream_analytics_stream_input_iothub :
  azurerm_stream_analytics_stream_input_iothub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  endpoint : string prop;
  eventhub_consumer_group_name : string prop;
  id : string prop;
  iothub_namespace : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint:string prop ->
  eventhub_consumer_group_name:string prop ->
  iothub_namespace:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  shared_access_policy_key:string prop ->
  shared_access_policy_name:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  endpoint:string prop ->
  eventhub_consumer_group_name:string prop ->
  iothub_namespace:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  shared_access_policy_key:string prop ->
  shared_access_policy_name:string prop ->
  stream_analytics_job_name:string prop ->
  serialization:serialization list ->
  string ->
  t Tf_core.resource
