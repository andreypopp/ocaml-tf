(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type developer_portal

val developer_portal :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  developer_portal

type gateway

val gateway :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?default_ssl_binding:bool prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  gateway

type management

val management :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  management

type portal

val portal :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  portal

type scm

val scm :
  ?certificate:string prop ->
  ?certificate_password:string prop ->
  ?key_vault_id:string prop ->
  ?negotiate_client_certificate:bool prop ->
  ?ssl_keyvault_identity_client_id:string prop ->
  host_name:string prop ->
  unit ->
  scm

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_api_management_custom_domain

val azurerm_api_management_custom_domain :
  ?id:string prop ->
  ?developer_portal:developer_portal list ->
  ?gateway:gateway list ->
  ?management:management list ->
  ?portal:portal list ->
  ?scm:scm list ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  unit ->
  azurerm_api_management_custom_domain

val yojson_of_azurerm_api_management_custom_domain :
  azurerm_api_management_custom_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?developer_portal:developer_portal list ->
  ?gateway:gateway list ->
  ?management:management list ->
  ?portal:portal list ->
  ?scm:scm list ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?developer_portal:developer_portal list ->
  ?gateway:gateway list ->
  ?management:management list ->
  ?portal:portal list ->
  ?scm:scm list ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  string ->
  t Tf_core.resource
