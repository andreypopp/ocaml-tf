(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_certificate_issuer__admin
type azurerm_key_vault_certificate_issuer__timeouts
type azurerm_key_vault_certificate_issuer

val azurerm_key_vault_certificate_issuer :
  ?account_id:string ->
  ?org_id:string ->
  ?password:string ->
  ?timeouts:azurerm_key_vault_certificate_issuer__timeouts ->
  key_vault_id:string ->
  name:string ->
  provider_name:string ->
  admin:azurerm_key_vault_certificate_issuer__admin list ->
  string ->
  unit
