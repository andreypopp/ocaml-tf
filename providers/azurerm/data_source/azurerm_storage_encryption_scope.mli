(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_encryption_scope

val azurerm_storage_encryption_scope :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_encryption_scope

val yojson_of_azurerm_storage_encryption_scope :
  azurerm_storage_encryption_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key_vault_key_id : string prop;
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
