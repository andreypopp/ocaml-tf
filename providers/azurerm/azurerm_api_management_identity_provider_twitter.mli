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

type azurerm_api_management_identity_provider_twitter

val azurerm_api_management_identity_provider_twitter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  api_management_name:string prop ->
  api_secret_key:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_identity_provider_twitter

val yojson_of_azurerm_api_management_identity_provider_twitter :
  azurerm_api_management_identity_provider_twitter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_key : string prop;
  api_management_name : string prop;
  api_secret_key : string prop;
  id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  api_management_name:string prop ->
  api_secret_key:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_key:string prop ->
  api_management_name:string prop ->
  api_secret_key:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
