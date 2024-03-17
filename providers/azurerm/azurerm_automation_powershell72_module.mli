(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_powershell72_module__module_link__hash
type azurerm_automation_powershell72_module__module_link
type azurerm_automation_powershell72_module__timeouts
type azurerm_automation_powershell72_module

type t = private {
  automation_account_id : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_automation_powershell72_module :
  ?id:string prop ->
  ?timeouts:azurerm_automation_powershell72_module__timeouts ->
  automation_account_id:string prop ->
  name:string prop ->
  module_link:
    azurerm_automation_powershell72_module__module_link list ->
  string ->
  t
