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

type azurerm_api_management_certificate

val azurerm_api_management_certificate :
  ?data:string prop ->
  ?id:string prop ->
  ?key_vault_identity_client_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_certificate

val yojson_of_azurerm_api_management_certificate :
  azurerm_api_management_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_name : string prop;
  data : string prop;
  expiration : string prop;
  id : string prop;
  key_vault_identity_client_id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  subject : string prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?data:string prop ->
  ?id:string prop ->
  ?key_vault_identity_client_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?data:string prop ->
  ?id:string prop ->
  ?key_vault_identity_client_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
