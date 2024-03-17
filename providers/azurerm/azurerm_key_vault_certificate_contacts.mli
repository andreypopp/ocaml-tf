(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_certificate_contacts__contact
type azurerm_key_vault_certificate_contacts__timeouts
type azurerm_key_vault_certificate_contacts
type t = private { id : string prop; key_vault_id : string prop }

val azurerm_key_vault_certificate_contacts :
  ?id:string prop ->
  ?timeouts:azurerm_key_vault_certificate_contacts__timeouts ->
  key_vault_id:string prop ->
  contact:azurerm_key_vault_certificate_contacts__contact list ->
  string ->
  t
