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

type azurerm_servicebus_queue

val azurerm_servicebus_queue :
  ?auto_delete_on_idle:string prop ->
  ?dead_lettering_on_message_expiration:bool prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?forward_dead_lettered_messages_to:string prop ->
  ?forward_to:string prop ->
  ?id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?requires_session:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  unit ->
  azurerm_servicebus_queue

val yojson_of_azurerm_servicebus_queue :
  azurerm_servicebus_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_delete_on_idle : string prop;
  dead_lettering_on_message_expiration : bool prop;
  default_message_ttl : string prop;
  duplicate_detection_history_time_window : string prop;
  enable_batched_operations : bool prop;
  enable_express : bool prop;
  enable_partitioning : bool prop;
  forward_dead_lettered_messages_to : string prop;
  forward_to : string prop;
  id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  max_message_size_in_kilobytes : float prop;
  max_size_in_megabytes : float prop;
  name : string prop;
  namespace_id : string prop;
  requires_duplicate_detection : bool prop;
  requires_session : bool prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_delete_on_idle:string prop ->
  ?dead_lettering_on_message_expiration:bool prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?forward_dead_lettered_messages_to:string prop ->
  ?forward_to:string prop ->
  ?id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?requires_session:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t

val make :
  ?auto_delete_on_idle:string prop ->
  ?dead_lettering_on_message_expiration:bool prop ->
  ?default_message_ttl:string prop ->
  ?duplicate_detection_history_time_window:string prop ->
  ?enable_batched_operations:bool prop ->
  ?enable_express:bool prop ->
  ?enable_partitioning:bool prop ->
  ?forward_dead_lettered_messages_to:string prop ->
  ?forward_to:string prop ->
  ?id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?max_message_size_in_kilobytes:float prop ->
  ?max_size_in_megabytes:float prop ->
  ?requires_duplicate_detection:bool prop ->
  ?requires_session:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_id:string prop ->
  string ->
  t Tf_core.resource
