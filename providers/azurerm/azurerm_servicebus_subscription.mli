(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type client_scoped_subscription

val client_scoped_subscription :
  ?client_id:string prop ->
  ?is_client_scoped_subscription_shareable:bool prop ->
  unit ->
  client_scoped_subscription

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_subscription

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
  ?timeouts:timeouts ->
  max_delivery_count:float prop ->
  name:string prop ->
  topic_id:string prop ->
  client_scoped_subscription:client_scoped_subscription list ->
  unit ->
  azurerm_servicebus_subscription

val yojson_of_azurerm_servicebus_subscription :
  azurerm_servicebus_subscription -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  max_delivery_count:float prop ->
  name:string prop ->
  topic_id:string prop ->
  client_scoped_subscription:client_scoped_subscription list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  max_delivery_count:float prop ->
  name:string prop ->
  topic_id:string prop ->
  client_scoped_subscription:client_scoped_subscription list ->
  string ->
  t Tf_core.resource
