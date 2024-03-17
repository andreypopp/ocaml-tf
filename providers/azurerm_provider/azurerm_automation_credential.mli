(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_credential__timeouts
type azurerm_automation_credential

val azurerm_automation_credential :
  ?description:string ->
  ?timeouts:azurerm_automation_credential__timeouts ->
  automation_account_name:string ->
  name:string ->
  password:string ->
  resource_group_name:string ->
  username:string ->
  string ->
  unit
