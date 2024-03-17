(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_operation_policy__timeouts
type azurerm_api_management_api_operation_policy

type t = private {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  operation_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

val azurerm_api_management_api_operation_policy :
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:azurerm_api_management_api_operation_policy__timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  operation_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t
