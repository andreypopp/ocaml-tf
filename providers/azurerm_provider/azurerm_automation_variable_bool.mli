(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_bool__timeouts
type azurerm_automation_variable_bool

val azurerm_automation_variable_bool :
  ?description:string ->
  ?encrypted:bool ->
  ?value:bool ->
  ?timeouts:azurerm_automation_variable_bool__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
