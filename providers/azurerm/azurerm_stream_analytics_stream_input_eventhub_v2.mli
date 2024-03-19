(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type azurerm_stream_analytics_stream_input_eventhub_v2

val azurerm_stream_analytics_stream_input_eventhub_v2 :
  ?authentication_mode:string prop ->
  ?eventhub_consumer_group_name:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_id:string prop ->
  serialization:serialization list ->
  unit ->
  azurerm_stream_analytics_stream_input_eventhub_v2

val yojson_of_azurerm_stream_analytics_stream_input_eventhub_v2 :
  azurerm_stream_analytics_stream_input_eventhub_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_mode : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  servicebus_namespace : string prop;
  shared_access_policy_key : string prop;
  shared_access_policy_name : string prop;
  stream_analytics_job_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_mode:string prop ->
  ?eventhub_consumer_group_name:string prop ->
  ?id:string prop ->
  ?partition_key:string prop ->
  ?shared_access_policy_key:string prop ->
  ?shared_access_policy_name:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  servicebus_namespace:string prop ->
  stream_analytics_job_id:string prop ->
  serialization:serialization list ->
  string ->
  t
