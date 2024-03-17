(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_variable_datetime__timeouts
type azurerm_automation_variable_datetime

val azurerm_automation_variable_datetime :
  ?description:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:azurerm_automation_variable_datetime__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
