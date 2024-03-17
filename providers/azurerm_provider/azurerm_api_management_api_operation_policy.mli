(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_operation_policy__timeouts
type azurerm_api_management_api_operation_policy

val azurerm_api_management_api_operation_policy :
  ?id:string ->
  ?xml_content:string ->
  ?xml_link:string ->
  ?timeouts:azurerm_api_management_api_operation_policy__timeouts ->
  api_management_name:string ->
  api_name:string ->
  operation_id:string ->
  resource_group_name:string ->
  string ->
  unit
