(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_servicebus_subscription

val azurerm_servicebus_subscription :
  ?id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?topic_id:string prop ->
  ?topic_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_servicebus_subscription

val yojson_of_azurerm_servicebus_subscription :
  azurerm_servicebus_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_delete_on_idle : string prop;
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
  namespace_name : string prop;
  requires_session : bool prop;
  resource_group_name : string prop;
  topic_id : string prop;
  topic_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?topic_id:string prop ->
  ?topic_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace_name:string prop ->
  ?resource_group_name:string prop ->
  ?topic_id:string prop ->
  ?topic_name:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
