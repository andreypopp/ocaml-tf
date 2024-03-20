(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_vault_key

val key_vault_key :
  ?key_version:string prop ->
  key_name:string prop ->
  key_vault_id:string prop ->
  unit ->
  key_vault_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_integration_account_certificate

val azurerm_logic_app_integration_account_certificate :
  ?id:string prop ->
  ?metadata:string prop ->
  ?public_certificate:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  key_vault_key:key_vault_key list ->
  unit ->
  azurerm_logic_app_integration_account_certificate

val yojson_of_azurerm_logic_app_integration_account_certificate :
  azurerm_logic_app_integration_account_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  public_certificate : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:string prop ->
  ?public_certificate:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  key_vault_key:key_vault_key list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:string prop ->
  ?public_certificate:string prop ->
  ?timeouts:timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  key_vault_key:key_vault_key list ->
  string ->
  t Tf_core.resource
