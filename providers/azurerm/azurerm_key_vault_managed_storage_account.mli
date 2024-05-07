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

type azurerm_key_vault_managed_storage_account

val azurerm_key_vault_managed_storage_account :
  ?id:string prop ->
  ?regenerate_key_automatically:bool prop ->
  ?regeneration_period:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  unit ->
  azurerm_key_vault_managed_storage_account

val yojson_of_azurerm_key_vault_managed_storage_account :
  azurerm_key_vault_managed_storage_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  regenerate_key_automatically : bool prop;
  regeneration_period : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?regenerate_key_automatically:bool prop ->
  ?regeneration_period:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?regenerate_key_automatically:bool prop ->
  ?regeneration_period:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  string ->
  t Tf_core.resource
