(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_pubsub_hub__event_handler__auth
type azurerm_web_pubsub_hub__event_handler
type azurerm_web_pubsub_hub__event_listener
type azurerm_web_pubsub_hub__timeouts
type azurerm_web_pubsub_hub

val azurerm_web_pubsub_hub :
  ?anonymous_connections_enabled:bool ->
  ?timeouts:azurerm_web_pubsub_hub__timeouts ->
  name:string ->
  web_pubsub_id:string ->
  event_handler:azurerm_web_pubsub_hub__event_handler list ->
  event_listener:azurerm_web_pubsub_hub__event_listener list ->
  string ->
  unit
