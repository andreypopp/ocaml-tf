(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_api_management_product_tag

val azurerm_api_management_product_tag :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_management_product_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_product_tag

val yojson_of_azurerm_api_management_product_tag :
  azurerm_api_management_product_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  api_management_product_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_management_product_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
