(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_partner__business_identity
type azurerm_logic_app_integration_account_partner__timeouts
type azurerm_logic_app_integration_account_partner

val azurerm_logic_app_integration_account_partner :
  ?metadata:string ->
  ?timeouts:azurerm_logic_app_integration_account_partner__timeouts ->
  integration_account_name:string ->
  name:string ->
  resource_group_name:string ->
  business_identity:
    azurerm_logic_app_integration_account_partner__business_identity
    list ->
  string ->
  unit
