(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type event_handler__auth

val event_handler__auth :
  managed_identity_id:string prop -> unit -> event_handler__auth

type event_handler

val event_handler :
  ?system_events:string prop list ->
  ?user_event_pattern:string prop ->
  url_template:string prop ->
  auth:event_handler__auth list ->
  unit ->
  event_handler

type event_listener

val event_listener :
  ?system_event_name_filter:string prop list ->
  ?user_event_name_filter:string prop list ->
  eventhub_name:string prop ->
  eventhub_namespace_name:string prop ->
  unit ->
  event_listener

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_web_pubsub_hub

val azurerm_web_pubsub_hub :
  ?anonymous_connections_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  web_pubsub_id:string prop ->
  event_handler:event_handler list ->
  event_listener:event_listener list ->
  unit ->
  azurerm_web_pubsub_hub

val yojson_of_azurerm_web_pubsub_hub : azurerm_web_pubsub_hub -> json

(** RESOURCE REGISTRATION *)

type t = private {
  anonymous_connections_enabled : bool prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?anonymous_connections_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  web_pubsub_id:string prop ->
  event_handler:event_handler list ->
  event_listener:event_listener list ->
  string ->
  t
