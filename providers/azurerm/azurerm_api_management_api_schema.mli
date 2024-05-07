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

type azurerm_api_management_api_schema

val azurerm_api_management_api_schema :
  ?components:string prop ->
  ?definitions:string prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  content_type:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  unit ->
  azurerm_api_management_api_schema

val yojson_of_azurerm_api_management_api_schema :
  azurerm_api_management_api_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  api_name : string prop;
  components : string prop;
  content_type : string prop;
  definitions : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?components:string prop ->
  ?definitions:string prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  content_type:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  string ->
  t

val make :
  ?components:string prop ->
  ?definitions:string prop ->
  ?id:string prop ->
  ?value:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  api_name:string prop ->
  content_type:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  string ->
  t Tf_core.resource
