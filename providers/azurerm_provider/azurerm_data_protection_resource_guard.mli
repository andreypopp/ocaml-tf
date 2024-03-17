(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_resource_guard__timeouts
type azurerm_data_protection_resource_guard

val azurerm_data_protection_resource_guard :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?vault_critical_operation_exclusion_list:string prop list ->
  ?timeouts:azurerm_data_protection_resource_guard__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
