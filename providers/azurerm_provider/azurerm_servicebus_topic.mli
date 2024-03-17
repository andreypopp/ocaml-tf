(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_topic__timeouts
type azurerm_servicebus_topic

val azurerm_servicebus_topic :
  ?auto_delete_on_idle:string ->
  ?default_message_ttl:string ->
  ?duplicate_detection_history_time_window:string ->
  ?enable_batched_operations:bool ->
  ?enable_express:bool ->
  ?enable_partitioning:bool ->
  ?id:string ->
  ?max_message_size_in_kilobytes:float ->
  ?max_size_in_megabytes:float ->
  ?requires_duplicate_detection:bool ->
  ?status:string ->
  ?support_ordering:bool ->
  ?timeouts:azurerm_servicebus_topic__timeouts ->
  name:string ->
  namespace_id:string ->
  string ->
  unit
