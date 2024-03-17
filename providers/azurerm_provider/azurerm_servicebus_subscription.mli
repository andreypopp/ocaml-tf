(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_subscription__client_scoped_subscription
type azurerm_servicebus_subscription__timeouts
type azurerm_servicebus_subscription

val azurerm_servicebus_subscription :
  ?auto_delete_on_idle:string ->
  ?client_scoped_subscription_enabled:bool ->
  ?dead_lettering_on_filter_evaluation_error:bool ->
  ?dead_lettering_on_message_expiration:bool ->
  ?default_message_ttl:string ->
  ?enable_batched_operations:bool ->
  ?forward_dead_lettered_messages_to:string ->
  ?forward_to:string ->
  ?id:string ->
  ?lock_duration:string ->
  ?requires_session:bool ->
  ?status:string ->
  ?timeouts:azurerm_servicebus_subscription__timeouts ->
  max_delivery_count:float ->
  name:string ->
  topic_id:string ->
  client_scoped_subscription:
    azurerm_servicebus_subscription__client_scoped_subscription list ->
  string ->
  unit
