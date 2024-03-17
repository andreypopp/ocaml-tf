(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_key__rotation_policy__automatic
type azurerm_key_vault_key__rotation_policy
type azurerm_key_vault_key__timeouts
type azurerm_key_vault_key

val azurerm_key_vault_key :
  ?expiration_date:string ->
  ?key_size:float ->
  ?not_before_date:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_key_vault_key__timeouts ->
  key_opts:string list ->
  key_type:string ->
  key_vault_id:string ->
  name:string ->
  rotation_policy:azurerm_key_vault_key__rotation_policy list ->
  string ->
  unit
