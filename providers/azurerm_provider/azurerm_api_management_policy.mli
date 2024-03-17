(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_policy__timeouts
type azurerm_api_management_policy

val azurerm_api_management_policy :
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:azurerm_api_management_policy__timeouts ->
  api_management_id:string prop ->
  string ->
  unit
