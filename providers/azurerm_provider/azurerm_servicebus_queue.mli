(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_queue__timeouts
type azurerm_servicebus_queue

val azurerm_servicebus_queue :
  ?auto_delete_on_idle:string ->
  ?dead_lettering_on_message_expiration:bool ->
  ?default_message_ttl:string ->
  ?duplicate_detection_history_time_window:string ->
  ?enable_batched_operations:bool ->
  ?enable_express:bool ->
  ?enable_partitioning:bool ->
  ?forward_dead_lettered_messages_to:string ->
  ?forward_to:string ->
  ?id:string ->
  ?lock_duration:string ->
  ?max_delivery_count:float ->
  ?max_message_size_in_kilobytes:float ->
  ?max_size_in_megabytes:float ->
  ?requires_duplicate_detection:bool ->
  ?requires_session:bool ->
  ?status:string ->
  ?timeouts:azurerm_servicebus_queue__timeouts ->
  name:string ->
  namespace_id:string ->
  string ->
  unit
