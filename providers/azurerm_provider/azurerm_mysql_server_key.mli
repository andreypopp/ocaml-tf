(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_server_key__timeouts
type azurerm_mysql_server_key

val azurerm_mysql_server_key :
  ?timeouts:azurerm_mysql_server_key__timeouts ->
  key_vault_key_id:string ->
  server_id:string ->
  string ->
  unit
