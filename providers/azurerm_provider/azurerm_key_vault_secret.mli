(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_secret__timeouts
type azurerm_key_vault_secret

val azurerm_key_vault_secret :
  ?content_type:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?not_before_date:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault_secret__timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  unit
