(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_access_policy__timeouts
type azurerm_key_vault_access_policy

val azurerm_key_vault_access_policy :
  ?application_id:string ->
  ?certificate_permissions:string list ->
  ?id:string ->
  ?key_permissions:string list ->
  ?secret_permissions:string list ->
  ?storage_permissions:string list ->
  ?timeouts:azurerm_key_vault_access_policy__timeouts ->
  key_vault_id:string ->
  object_id:string ->
  tenant_id:string ->
  string ->
  unit
