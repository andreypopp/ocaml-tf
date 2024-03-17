(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_certificate__key_vault_key
type azurerm_logic_app_integration_account_certificate__timeouts
type azurerm_logic_app_integration_account_certificate

val azurerm_logic_app_integration_account_certificate :
  ?id:string ->
  ?metadata:string ->
  ?public_certificate:string ->
  ?timeouts:
    azurerm_logic_app_integration_account_certificate__timeouts ->
  integration_account_name:string ->
  name:string ->
  resource_group_name:string ->
  key_vault_key:
    azurerm_logic_app_integration_account_certificate__key_vault_key
    list ->
  string ->
  unit
