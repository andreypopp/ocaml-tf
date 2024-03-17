(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product_group__timeouts
type azurerm_api_management_product_group

val azurerm_api_management_product_group :
  ?id:string ->
  ?timeouts:azurerm_api_management_product_group__timeouts ->
  api_management_name:string ->
  group_name:string ->
  product_id:string ->
  resource_group_name:string ->
  string ->
  unit
