(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_product__timeouts
type azurerm_api_management_product

type t = private {
  api_management_name : string prop;
  approval_required : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  product_id : string prop;
  published : bool prop;
  resource_group_name : string prop;
  subscription_required : bool prop;
  subscriptions_limit : float prop;
  terms : string prop;
}

val azurerm_api_management_product :
  ?approval_required:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?subscription_required:bool prop ->
  ?subscriptions_limit:float prop ->
  ?terms:string prop ->
  ?timeouts:azurerm_api_management_product__timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  product_id:string prop ->
  published:bool prop ->
  resource_group_name:string prop ->
  string ->
  t
