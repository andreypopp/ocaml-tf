(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product_policy__timeouts
type azurerm_api_management_product_policy

val azurerm_api_management_product_policy :
  ?xml_link:string ->
  ?timeouts:azurerm_api_management_product_policy__timeouts ->
  api_management_name:string ->
  product_id:string ->
  resource_group_name:string ->
  string ->
  unit
