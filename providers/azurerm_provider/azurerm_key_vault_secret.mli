(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_secret__timeouts
type azurerm_key_vault_secret

val azurerm_key_vault_secret :
  ?content_type:string ->
  ?expiration_date:string ->
  ?id:string ->
  ?not_before_date:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_key_vault_secret__timeouts ->
  key_vault_id:string ->
  name:string ->
  value:string ->
  string ->
  unit
