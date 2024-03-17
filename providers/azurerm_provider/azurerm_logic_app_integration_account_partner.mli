(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_partner__business_identity
type azurerm_logic_app_integration_account_partner__timeouts
type azurerm_logic_app_integration_account_partner

val azurerm_logic_app_integration_account_partner :
  ?id:string prop ->
  ?metadata:string prop ->
  ?timeouts:azurerm_logic_app_integration_account_partner__timeouts ->
  integration_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  business_identity:
    azurerm_logic_app_integration_account_partner__business_identity
    list ->
  string ->
  unit
