(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_object__timeouts
type azurerm_automation_variable_object

val azurerm_automation_variable_object :
  ?description:string ->
  ?encrypted:bool ->
  ?value:string ->
  ?timeouts:azurerm_automation_variable_object__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
