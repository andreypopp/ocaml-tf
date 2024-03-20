(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_topic

val azurerm_servicebus_topic :
  ?auto_delete_on_idle:string prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?id:string prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?status:string prop ->
  ?support_ordering:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  unit ->
  azurerm_servicebus_topic

val yojson_of_azurerm_servicebus_topic :
  azurerm_servicebus_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_delete_on_idle : string prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  id : string prop;
  max_message_size_in_kilobytes : float prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  requires_duplicate_detection : bool prop;
  status : string prop;
  support_ordering : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_delete_on_idle:string prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?id:string prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?status:string prop ->
  ?support_ordering:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t

val make :
  ?auto_delete_on_idle:string prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?id:string prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?status:string prop ->
  ?support_ordering:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t Tf_core.resource
