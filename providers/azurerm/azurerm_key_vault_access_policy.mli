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

type azurerm_key_vault_access_policy

val azurerm_key_vault_access_policy :
  ?application_id:string prop ->
  ?certificate_permissions:string prop list ->
  ?id:string prop ->
  ?key_permissions:string prop list ->
  ?secret_permissions:string prop list ->
  ?storage_permissions:string prop list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_key_vault_access_policy

val yojson_of_azurerm_key_vault_access_policy :
  azurerm_key_vault_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  certificate_permissions : string list prop;
  id : string prop;
  key_permissions : string list prop;
  key_vault_id : string prop;
  object_id : string prop;
  secret_permissions : string list prop;
  storage_permissions : string list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_id:string prop ->
  ?certificate_permissions:string prop list ->
  ?id:string prop ->
  ?key_permissions:string prop list ->
  ?secret_permissions:string prop list ->
  ?storage_permissions:string prop list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?application_id:string prop ->
  ?certificate_permissions:string prop list ->
  ?id:string prop ->
  ?key_permissions:string prop list ->
  ?secret_permissions:string prop list ->
  ?storage_permissions:string prop list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
