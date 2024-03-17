(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_module__module_link__hash
type azurerm_automation_module__module_link
type azurerm_automation_module__timeouts
type azurerm_automation_module

val azurerm_automation_module :
  ?id:string ->
  ?timeouts:azurerm_automation_module__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  module_link:azurerm_automation_module__module_link list ->
  string ->
  unit
