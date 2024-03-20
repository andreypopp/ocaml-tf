(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_services_vault_hyperv_site

val azurerm_site_recovery_services_vault_hyperv_site :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  unit ->
  azurerm_site_recovery_services_vault_hyperv_site

val yojson_of_azurerm_site_recovery_services_vault_hyperv_site :
  azurerm_site_recovery_services_vault_hyperv_site -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t Tf_core.resource
