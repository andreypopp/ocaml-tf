(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_api_operation_policy

val azurerm_api_management_api_operation_policy :
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_api_operation_policy

val yojson_of_azurerm_api_management_api_operation_policy :
  azurerm_api_management_api_operation_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  operation_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t
