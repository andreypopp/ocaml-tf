(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification

val notification :
  ?digest:string prop ->
  ?tag:string prop ->
  action:string prop ->
  name:string prop ->
  unit ->
  notification

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  sync_token_id:string prop ->
  notification:notification list ->
  unit ->
  azurerm_container_connected_registry

val yojson_of_azurerm_container_connected_registry :
  azurerm_container_connected_registry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  audit_log_enabled : bool prop;
  client_token_ids : string list prop;
  container_registry_id : string prop;
  id : string prop;
  log_level : string prop;
  mode : string prop;
  name : string prop;
  parent_registry_id : string prop;
  sync_message_ttl : string prop;
  sync_schedule : string prop;
  sync_token_id : string prop;
  sync_window : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_log_enabled:bool prop ->
  ?client_token_ids:string prop list ->
  ?id:string prop ->
  ?log_level:string prop ->
  ?mode:string prop ->
  ?parent_registry_id:string prop ->
  ?sync_message_ttl:string prop ->
  ?sync_schedule:string prop ->
  ?sync_window:string prop ->
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  sync_token_id:string prop ->
  notification:notification list ->
  string ->
  t

val make :
  ?audit_log_enabled:bool prop ->
  ?client_token_ids:string prop list ->
  ?id:string prop ->
  ?log_level:string prop ->
  ?mode:string prop ->
  ?parent_registry_id:string prop ->
  ?sync_message_ttl:string prop ->
  ?sync_schedule:string prop ->
  ?sync_window:string prop ->
  ?timeouts:timeouts ->
  container_registry_id:string prop ->
  name:string prop ->
  sync_token_id:string prop ->
  notification:notification list ->
  string ->
  t Tf_core.resource
