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

type azurerm_api_management_api_version_set

val azurerm_api_management_api_version_set :
  ?description:string prop ->
  ?id:string prop ->
  ?version_header_name:string prop ->
  ?version_query_name:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  versioning_scheme:string prop ->
  unit ->
  azurerm_api_management_api_version_set

val yojson_of_azurerm_api_management_api_version_set :
  azurerm_api_management_api_version_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  version_header_name : string prop;
  version_query_name : string prop;
  versioning_scheme : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?version_header_name:string prop ->
  ?version_query_name:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  versioning_scheme:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?version_header_name:string prop ->
  ?version_query_name:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  versioning_scheme:string prop ->
  string ->
  t Tf_core.resource
