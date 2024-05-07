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

type azurerm_api_management_api_tag_description

val azurerm_api_management_api_tag_description :
  ?description:string prop ->
  ?external_documentation_description:string prop ->
  ?external_documentation_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_tag_id:string prop ->
  unit ->
  azurerm_api_management_api_tag_description

val yojson_of_azurerm_api_management_api_tag_description :
  azurerm_api_management_api_tag_description -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_tag_id : string prop;
  description : string prop;
  external_documentation_description : string prop;
  external_documentation_url : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?external_documentation_description:string prop ->
  ?external_documentation_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_tag_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?external_documentation_description:string prop ->
  ?external_documentation_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_tag_id:string prop ->
  string ->
  t Tf_core.resource
