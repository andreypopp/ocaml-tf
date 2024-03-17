(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_certificate__timeouts
type azurerm_automation_connection_certificate

val azurerm_automation_connection_certificate :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_automation_connection_certificate__timeouts ->
  automation_account_name:string ->
  automation_certificate_name:string ->
  name:string ->
  resource_group_name:string ->
  subscription_id:string ->
  string ->
  unit
