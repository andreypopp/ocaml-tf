(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_custom_provider__action
type azurerm_custom_provider__resource_type
type azurerm_custom_provider__timeouts
type azurerm_custom_provider__validation
type azurerm_custom_provider

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_custom_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_custom_provider__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  action:azurerm_custom_provider__action list ->
  resource_type:azurerm_custom_provider__resource_type list ->
  validation:azurerm_custom_provider__validation list ->
  string ->
  t
