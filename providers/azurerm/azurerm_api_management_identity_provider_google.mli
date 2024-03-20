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

type azurerm_api_management_identity_provider_google

val azurerm_api_management_identity_provider_google :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_identity_provider_google

val yojson_of_azurerm_api_management_identity_provider_google :
  azurerm_api_management_identity_provider_google -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
