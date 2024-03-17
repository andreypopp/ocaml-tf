(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_subscription__client_scoped_subscription
type azurerm_servicebus_subscription__timeouts
type azurerm_servicebus_subscription

type t = private {
  auto_delete_on_idle : string prop;
  client_scoped_subscription_enabled : bool prop;
  dead_lettering_on_filter_evaluation_error : bool prop;
  dead_lettering_on_message_expiration : bool prop;
  default_message_ttl : string prop;
  enable_batched_operations : bool prop;
  forward_dead_lettered_messages_to : string prop;
  forward_to : string prop;
  id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  name : string prop;
  requires_session : bool prop;
  status : string prop;
  topic_id : string prop;
}

val azurerm_servicebus_subscription :
  ?auto_delete_on_idle:string prop ->
  ?client_scoped_subscription_enabled:bool prop ->
  ?dead_lettering_on_filter_evaluation_error:bool prop ->
  ?dead_lettering_on_message_expiration:bool prop ->
  ?default_message_ttl:string prop ->
  ?enable_batched_operations:bool prop ->
  ?forward_dead_lettered_messages_to:string prop ->
  ?forward_to:string prop ->
  ?id:string prop ->
  ?lock_duration:string prop ->
  ?requires_session:bool prop ->
  ?status:string prop ->
  ?timeouts:azurerm_servicebus_subscription__timeouts ->
  max_delivery_count:float prop ->
  name:string prop ->
  topic_id:string prop ->
  client_scoped_subscription:
    azurerm_servicebus_subscription__client_scoped_subscription list ->
  string ->
  t
