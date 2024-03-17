(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_int__timeouts
type azurerm_automation_variable_int

val azurerm_automation_variable_int :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:float prop ->
  ?timeouts:azurerm_automation_variable_int__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
