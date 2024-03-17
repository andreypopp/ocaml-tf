(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_server_key__timeouts
type azurerm_postgresql_server_key

val azurerm_postgresql_server_key :
  ?id:string ->
  ?timeouts:azurerm_postgresql_server_key__timeouts ->
  key_vault_key_id:string ->
  server_id:string ->
  string ->
  unit
