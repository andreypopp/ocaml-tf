(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_access_policy

val azurerm_key_vault_access_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_key_vault_access_policy

val yojson_of_azurerm_key_vault_access_policy :
  azurerm_key_vault_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_permissions : string list prop;
  id : string prop;
  key_permissions : string list prop;
  name : string prop;
  secret_permissions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
