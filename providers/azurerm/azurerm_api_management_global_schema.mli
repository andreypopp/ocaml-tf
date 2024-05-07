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

type azurerm_api_management_global_schema

val azurerm_api_management_global_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  azurerm_api_management_global_schema

val yojson_of_azurerm_api_management_global_schema :
  azurerm_api_management_global_schema -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  type_ : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  type_:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  resource_group_name:string prop ->
  schema_id:string prop ->
  type_:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
