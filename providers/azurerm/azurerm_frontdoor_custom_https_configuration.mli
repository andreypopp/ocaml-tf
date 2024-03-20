(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_https_configuration

val custom_https_configuration :
  ?azure_key_vault_certificate_secret_name:string prop ->
  ?azure_key_vault_certificate_secret_version:string prop ->
  ?azure_key_vault_certificate_vault_id:string prop ->
  ?certificate_source:string prop ->
  unit ->
  custom_https_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_frontdoor_custom_https_configuration

val azurerm_frontdoor_custom_https_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  custom_https_provisioning_enabled:bool prop ->
  frontend_endpoint_id:string prop ->
  custom_https_configuration:custom_https_configuration list ->
  unit ->
  azurerm_frontdoor_custom_https_configuration

val yojson_of_azurerm_frontdoor_custom_https_configuration :
  azurerm_frontdoor_custom_https_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  custom_https_provisioning_enabled : bool prop;
  frontend_endpoint_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  custom_https_provisioning_enabled:bool prop ->
  frontend_endpoint_id:string prop ->
  custom_https_configuration:custom_https_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  custom_https_provisioning_enabled:bool prop ->
  frontend_endpoint_id:string prop ->
  custom_https_configuration:custom_https_configuration list ->
  string ->
  t Tf_core.resource
