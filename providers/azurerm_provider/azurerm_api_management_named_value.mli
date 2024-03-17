(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_named_value__timeouts
type azurerm_api_management_named_value__value_from_key_vault
type azurerm_api_management_named_value

type t = private {
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop;
  tags : string list prop;
  value : string prop;
}

val azurerm_api_management_named_value :
  ?id:string prop ->
  ?secret:bool prop ->
  ?tags:string prop list ->
  ?value:string prop ->
  ?timeouts:azurerm_api_management_named_value__timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  value_from_key_vault:
    azurerm_api_management_named_value__value_from_key_vault list ->
  string ->
  t
