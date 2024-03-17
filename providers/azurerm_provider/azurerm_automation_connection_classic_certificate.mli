(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_classic_certificate__timeouts
type azurerm_automation_connection_classic_certificate

val azurerm_automation_connection_classic_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_automation_connection_classic_certificate__timeouts ->
  automation_account_name:string prop ->
  certificate_asset_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  subscription_name:string prop ->
  string ->
  unit
