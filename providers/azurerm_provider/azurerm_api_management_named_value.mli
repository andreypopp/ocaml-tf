(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_named_value__timeouts
type azurerm_api_management_named_value__value_from_key_vault
type azurerm_api_management_named_value

val azurerm_api_management_named_value :
  ?secret:bool ->
  ?tags:string list ->
  ?value:string ->
  ?timeouts:azurerm_api_management_named_value__timeouts ->
  api_management_name:string ->
  display_name:string ->
  name:string ->
  resource_group_name:string ->
  value_from_key_vault:
    azurerm_api_management_named_value__value_from_key_vault list ->
  string ->
  unit
