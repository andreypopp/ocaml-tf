(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_key__rotation_policy__automatic
type azurerm_key_vault_key__rotation_policy
type azurerm_key_vault_key__timeouts
type azurerm_key_vault_key

val azurerm_key_vault_key :
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault_key__timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  key_vault_id:string prop ->
  name:string prop ->
  rotation_policy:azurerm_key_vault_key__rotation_policy list ->
  string ->
  unit
