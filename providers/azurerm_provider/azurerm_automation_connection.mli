(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection__timeouts
type azurerm_automation_connection

val azurerm_automation_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_automation_connection__timeouts ->
  automation_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  values:(string * string prop) list ->
  string ->
  unit
