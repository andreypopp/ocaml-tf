(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_integration_account_agreement__guest_identity
type azurerm_logic_app_integration_account_agreement__host_identity
type azurerm_logic_app_integration_account_agreement__timeouts
type azurerm_logic_app_integration_account_agreement

val azurerm_logic_app_integration_account_agreement :
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_logic_app_integration_account_agreement__timeouts ->
  agreement_type:string ->
  content:string ->
  guest_partner_name:string ->
  host_partner_name:string ->
  integration_account_name:string ->
  name:string ->
  resource_group_name:string ->
  guest_identity:
    azurerm_logic_app_integration_account_agreement__guest_identity
    list ->
  host_identity:
    azurerm_logic_app_integration_account_agreement__host_identity
    list ->
  string ->
  unit
