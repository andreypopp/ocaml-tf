(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_queue__timeouts
type azurerm_servicebus_queue

val azurerm_servicebus_queue :
  ?dead_lettering_on_message_expiration:bool ->
  ?enable_batched_operations:bool ->
  ?enable_express:bool ->
  ?enable_partitioning:bool ->
  ?forward_dead_lettered_messages_to:string ->
  ?forward_to:string ->
  ?max_delivery_count:float ->
  ?requires_duplicate_detection:bool ->
  ?requires_session:bool ->
  ?status:string ->
  ?timeouts:azurerm_servicebus_queue__timeouts ->
  name:string ->
  namespace_id:string ->
  string ->
  unit
