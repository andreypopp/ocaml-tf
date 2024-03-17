(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_server_key__timeouts
type azurerm_mysql_server_key

type t = private {
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

val azurerm_mysql_server_key :
  ?id:string prop ->
  ?timeouts:azurerm_mysql_server_key__timeouts ->
  key_vault_key_id:string prop ->
  server_id:string prop ->
  string ->
  t
