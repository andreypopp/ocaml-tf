(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_connected_registry__notification
type azurerm_container_connected_registry__timeouts
type azurerm_container_connected_registry

val azurerm_container_connected_registry :
  ?audit_log_enabled:bool ->
  ?client_token_ids:string list ->
  ?id:string ->
  ?log_level:string ->
  ?mode:string ->
  ?parent_registry_id:string ->
  ?sync_message_ttl:string ->
  ?sync_schedule:string ->
  ?sync_window:string ->
  ?timeouts:azurerm_container_connected_registry__timeouts ->
  container_registry_id:string ->
  name:string ->
  sync_token_id:string ->
  notification:
    azurerm_container_connected_registry__notification list ->
  string ->
  unit
