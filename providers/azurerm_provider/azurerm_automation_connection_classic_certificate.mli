(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_classic_certificate__timeouts
type azurerm_automation_connection_classic_certificate

val azurerm_automation_connection_classic_certificate :
  ?description:string ->
  ?id:string ->
  ?timeouts:
    azurerm_automation_connection_classic_certificate__timeouts ->
  automation_account_name:string ->
  certificate_asset_name:string ->
  name:string ->
  resource_group_name:string ->
  subscription_id:string ->
  subscription_name:string ->
  string ->
  unit
