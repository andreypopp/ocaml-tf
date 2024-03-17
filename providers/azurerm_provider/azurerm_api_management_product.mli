(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product__timeouts
type azurerm_api_management_product

val azurerm_api_management_product :
  ?approval_required:bool ->
  ?description:string ->
  ?subscription_required:bool ->
  ?subscriptions_limit:float ->
  ?terms:string ->
  ?timeouts:azurerm_api_management_product__timeouts ->
  api_management_name:string ->
  display_name:string ->
  product_id:string ->
  published:bool ->
  resource_group_name:string ->
  string ->
  unit
