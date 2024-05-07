(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_api_management_product_group

val azurerm_api_management_product_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_product_group

val yojson_of_azurerm_api_management_product_group :
  azurerm_api_management_product_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  group_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  product_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
