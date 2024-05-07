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

type azurerm_api_management_policy

val azurerm_api_management_policy :
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  unit ->
  azurerm_api_management_policy

val yojson_of_azurerm_api_management_policy :
  azurerm_api_management_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_id : string prop;
  id : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?xml_content:string prop ->
  ?xml_link:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  string ->
  t Tf_core.resource
