(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_resource_guard__timeouts
type azurerm_data_protection_resource_guard

val azurerm_data_protection_resource_guard :
  ?tags:(string * string) list ->
  ?vault_critical_operation_exclusion_list:string list ->
  ?timeouts:azurerm_data_protection_resource_guard__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
