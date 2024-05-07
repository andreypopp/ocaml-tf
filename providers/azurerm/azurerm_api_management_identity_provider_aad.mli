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

type azurerm_api_management_identity_provider_aad

val azurerm_api_management_identity_provider_aad :
  ?id:string prop ->
  ?signin_tenant:string prop ->
  ?timeouts:timeouts ->
  allowed_tenants:string prop list ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_identity_provider_aad

val yojson_of_azurerm_api_management_identity_provider_aad :
  azurerm_api_management_identity_provider_aad -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_tenants : string list prop;
  api_management_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  resource_group_name : string prop;
  signin_tenant : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?signin_tenant:string prop ->
  ?timeouts:timeouts ->
  allowed_tenants:string prop list ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?signin_tenant:string prop ->
  ?timeouts:timeouts ->
  allowed_tenants:string prop list ->
  api_management_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
