(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_topic__timeouts
type azurerm_servicebus_topic

val azurerm_servicebus_topic :
  ?enable_batched_operations:bool ->
  ?enable_express:bool ->
  ?enable_partitioning:bool ->
  ?requires_duplicate_detection:bool ->
  ?status:string ->
  ?support_ordering:bool ->
  ?timeouts:azurerm_servicebus_topic__timeouts ->
  name:string ->
  namespace_id:string ->
  string ->
  unit
