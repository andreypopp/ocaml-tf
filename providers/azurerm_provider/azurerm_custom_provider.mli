(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_custom_provider__action
type azurerm_custom_provider__resource_type
type azurerm_custom_provider__timeouts
type azurerm_custom_provider__validation
type azurerm_custom_provider

val azurerm_custom_provider :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_custom_provider__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  action:azurerm_custom_provider__action list ->
  resource_type:azurerm_custom_provider__resource_type list ->
  validation:azurerm_custom_provider__validation list ->
  string ->
  unit
