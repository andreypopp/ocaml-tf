(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type password1

val password1 : ?expiry:string prop -> unit -> password1

type password2

val password2 : ?expiry:string prop -> unit -> password2

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_registry_token_password

val azurerm_container_registry_token_password :
  ?id:string prop ->
  ?password2:password2 list ->
  ?timeouts:timeouts ->
  container_registry_token_id:string prop ->
  password1:password1 list ->
  unit ->
  azurerm_container_registry_token_password

val yojson_of_azurerm_container_registry_token_password :
  azurerm_container_registry_token_password -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_registry_token_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?password2:password2 list ->
  ?timeouts:timeouts ->
  container_registry_token_id:string prop ->
  password1:password1 list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?password2:password2 list ->
  ?timeouts:timeouts ->
  container_registry_token_id:string prop ->
  password1:password1 list ->
  string ->
  t Tf_core.resource
