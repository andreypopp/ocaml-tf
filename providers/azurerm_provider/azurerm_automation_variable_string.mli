(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_string__timeouts
type azurerm_automation_variable_string

val azurerm_automation_variable_string :
  ?description:string ->
  ?encrypted:bool ->
  ?value:string ->
  ?timeouts:azurerm_automation_variable_string__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
