(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_app_environment_storage

val azurerm_container_app_environment_storage :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_key:string prop ->
  access_mode:string prop ->
  account_name:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  share_name:string prop ->
  unit ->
  azurerm_container_app_environment_storage

val yojson_of_azurerm_container_app_environment_storage :
  azurerm_container_app_environment_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_key : string prop;
  access_mode : string prop;
  account_name : string prop;
  container_app_environment_id : string prop;
  id : string prop;
  name : string prop;
  share_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_key:string prop ->
  access_mode:string prop ->
  account_name:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  share_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_key:string prop ->
  access_mode:string prop ->
  account_name:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  share_name:string prop ->
  string ->
  t Tf_core.resource
