(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_function_app_host_keys

val azurerm_function_app_host_keys :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_function_app_host_keys

val yojson_of_azurerm_function_app_host_keys :
  azurerm_function_app_host_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blobs_extension_key : string prop;
  default_function_key : string prop;
  durabletask_extension_key : string prop;
  event_grid_extension_config_key : string prop;
  event_grid_extension_key : string prop;
  id : string prop;
  name : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  signalr_extension_key : string prop;
  webpubsub_extension_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
