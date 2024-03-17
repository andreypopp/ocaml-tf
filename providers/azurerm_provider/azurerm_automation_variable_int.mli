(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_int__timeouts
type azurerm_automation_variable_int

val azurerm_automation_variable_int :
  ?description:string ->
  ?encrypted:bool ->
  ?value:float ->
  ?timeouts:azurerm_automation_variable_int__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
