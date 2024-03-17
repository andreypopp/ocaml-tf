(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_connected_registry__notification
type azurerm_container_connected_registry__timeouts
type azurerm_container_connected_registry

val azurerm_container_connected_registry :
  ?audit_log_enabled:bool prop ->
  ?client_token_ids:string prop list ->
  ?id:string prop ->
  ?log_level:string prop ->
  ?mode:string prop ->
  ?parent_registry_id:string prop ->
  ?sync_message_ttl:string prop ->
  ?sync_schedule:string prop ->
  ?sync_window:string prop ->
  ?timeouts:azurerm_container_connected_registry__timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  sync_token_id:string prop ->
  notification:
    azurerm_container_connected_registry__notification list ->
  string ->
  unit
