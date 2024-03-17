(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_operation_tag__timeouts
type azurerm_api_management_api_operation_tag

type t = private {
  api_operation_id : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

val azurerm_api_management_api_operation_tag :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_api_operation_tag__timeouts ->
  api_operation_id:string prop ->
  display_name:string prop ->
  name:string prop ->
  string ->
  t
