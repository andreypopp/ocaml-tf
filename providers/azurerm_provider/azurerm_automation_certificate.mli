(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_certificate__timeouts
type azurerm_automation_certificate

val azurerm_automation_certificate :
  ?description:string ->
  ?timeouts:azurerm_automation_certificate__timeouts ->
  automation_account_name:string ->
  base64:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
