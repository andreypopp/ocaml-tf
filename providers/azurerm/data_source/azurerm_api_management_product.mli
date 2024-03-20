(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_api_management_product

val azurerm_api_management_product :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_product

val yojson_of_azurerm_api_management_product :
  azurerm_api_management_product -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
