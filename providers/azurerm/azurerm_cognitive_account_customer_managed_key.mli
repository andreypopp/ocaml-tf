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

type azurerm_cognitive_account_customer_managed_key

val azurerm_cognitive_account_customer_managed_key :
  ?id:string prop ->
  ?identity_client_id:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  azurerm_cognitive_account_customer_managed_key

val yojson_of_azurerm_cognitive_account_customer_managed_key :
  azurerm_cognitive_account_customer_managed_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cognitive_account_id : string prop;
  id : string prop;
  identity_client_id : string prop;
  key_vault_key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?identity_client_id:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  key_vault_key_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?identity_client_id:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  key_vault_key_id:string prop ->
  string ->
  t Tf_core.resource
