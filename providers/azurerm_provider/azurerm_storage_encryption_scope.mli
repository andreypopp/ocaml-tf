(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_encryption_scope__timeouts
type azurerm_storage_encryption_scope

type t = private {
  id : string prop;
  infrastructure_encryption_required : bool prop;
  key_vault_key_id : string prop;
  name : string prop;
  source : string prop;
  storage_account_id : string prop;
}

val azurerm_storage_encryption_scope :
  ?id:string prop ->
  ?infrastructure_encryption_required:bool prop ->
  ?key_vault_key_id:string prop ->
  ?timeouts:azurerm_storage_encryption_scope__timeouts ->
  name:string prop ->
  source:string prop ->
  storage_account_id:string prop ->
  string ->
  t
