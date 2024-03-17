(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection__timeouts
type azurerm_automation_connection

val azurerm_automation_connection :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_automation_connection__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  type_:string ->
  values:(string * string) list ->
  string ->
  unit
