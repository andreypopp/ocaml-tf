(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_powershell72_module__module_link__hash
type azurerm_automation_powershell72_module__module_link
type azurerm_automation_powershell72_module__timeouts
type azurerm_automation_powershell72_module

val azurerm_automation_powershell72_module :
  ?timeouts:azurerm_automation_powershell72_module__timeouts ->
  automation_account_id:string ->
  name:string ->
  module_link:
    azurerm_automation_powershell72_module__module_link list ->
  string ->
  unit
