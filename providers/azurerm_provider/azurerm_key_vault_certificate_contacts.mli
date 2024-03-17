(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_certificate_contacts__contact
type azurerm_key_vault_certificate_contacts__timeouts
type azurerm_key_vault_certificate_contacts

val azurerm_key_vault_certificate_contacts :
  ?timeouts:azurerm_key_vault_certificate_contacts__timeouts ->
  key_vault_id:string ->
  contact:azurerm_key_vault_certificate_contacts__contact list ->
  string ->
  unit
