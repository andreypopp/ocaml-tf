(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product_api__timeouts
type azurerm_api_management_product_api

type t = private {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
}

val azurerm_api_management_product_api :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_product_api__timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t
