(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_account_customer_managed_key

val azurerm_storage_account_customer_managed_key :
  ?federated_identity_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_uri:string prop ->
  ?key_version:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  key_name:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_account_customer_managed_key

val yojson_of_azurerm_storage_account_customer_managed_key :
  azurerm_storage_account_customer_managed_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  federated_identity_client_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_vault_uri : string prop;
  key_version : string prop;
  storage_account_id : string prop;
  user_assigned_identity_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?federated_identity_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_uri:string prop ->
  ?key_version:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:timeouts ->
  key_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t
