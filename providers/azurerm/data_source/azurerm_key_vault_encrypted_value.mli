(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_encrypted_value

val azurerm_key_vault_encrypted_value :
  ?encrypted_data:string prop ->
  ?id:string prop ->
  ?plain_text_value:string prop ->
  ?timeouts:timeouts ->
  algorithm:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  azurerm_key_vault_encrypted_value

val yojson_of_azurerm_key_vault_encrypted_value :
  azurerm_key_vault_encrypted_value -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  decoded_plain_text_value : string prop;
  encrypted_data : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  plain_text_value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encrypted_data:string prop ->
  ?id:string prop ->
  ?plain_text_value:string prop ->
  ?timeouts:timeouts ->
  algorithm:string prop ->
  key_vault_key_id:string prop ->
  string ->
  t

val make :
  ?encrypted_data:string prop ->
  ?id:string prop ->
  ?plain_text_value:string prop ->
  ?timeouts:timeouts ->
  algorithm:string prop ->
  key_vault_key_id:string prop ->
  string ->
  t Tf_core.resource
