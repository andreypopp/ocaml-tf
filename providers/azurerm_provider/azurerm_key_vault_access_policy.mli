(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_access_policy__timeouts
type azurerm_key_vault_access_policy

val azurerm_key_vault_access_policy :
  ?application_id:string prop ->
  ?certificate_permissions:string prop list ->
  ?id:string prop ->
  ?key_permissions:string prop list ->
  ?secret_permissions:string prop list ->
  ?storage_permissions:string prop list ->
  ?timeouts:azurerm_key_vault_access_policy__timeouts ->
  key_vault_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  unit
