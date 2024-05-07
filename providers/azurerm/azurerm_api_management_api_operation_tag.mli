(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_api_operation_tag

val azurerm_api_management_api_operation_tag :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_operation_id:string prop ->
  display_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_api_operation_tag

val yojson_of_azurerm_api_management_api_operation_tag :
  azurerm_api_management_api_operation_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_operation_id : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_operation_id:string prop ->
  display_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_operation_id:string prop ->
  display_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
