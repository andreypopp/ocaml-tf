(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product_tag__timeouts
type azurerm_api_management_product_tag

val azurerm_api_management_product_tag :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_product_tag__timeouts ->
  api_management_name:string prop ->
  api_management_product_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
