(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_certificate__key_vault_key
type azurerm_logic_app_integration_account_certificate__timeouts
type azurerm_logic_app_integration_account_certificate

type t = private {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  public_certificate : string prop;
  resource_group_name : string prop;
}

val azurerm_logic_app_integration_account_certificate :
  ?id:string prop ->
  ?metadata:string prop ->
  ?public_certificate:string prop ->
  ?timeouts:
    azurerm_logic_app_integration_account_certificate__timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  key_vault_key:
    azurerm_logic_app_integration_account_certificate__key_vault_key
    list ->
  string ->
  t
