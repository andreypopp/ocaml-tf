(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_datetime__timeouts
type azurerm_automation_variable_datetime

val azurerm_automation_variable_datetime :
  ?description:string ->
  ?encrypted:bool ->
  ?id:string ->
  ?value:string ->
  ?timeouts:azurerm_automation_variable_datetime__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
