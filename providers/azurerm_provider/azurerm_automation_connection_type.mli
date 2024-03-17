(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_connection_type__field
type azurerm_automation_connection_type__timeouts
type azurerm_automation_connection_type

val azurerm_automation_connection_type :
  ?is_global:bool ->
  ?timeouts:azurerm_automation_connection_type__timeouts ->
  automation_account_name:string ->
  name:string ->
  resource_group_name:string ->
  field:azurerm_automation_connection_type__field list ->
  string ->
  unit
